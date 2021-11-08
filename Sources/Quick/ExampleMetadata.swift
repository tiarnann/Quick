import Foundation

#if canImport(Darwin)
// swiftlint:disable type_name
@objcMembers
public class _ExampleMetadataBase: NSObject {}
#else
public class _ExampleMetadataBase: NSObject {}
// swiftlint:enable type_name
#endif

/**
    A class that encapsulates information about an example,
    including the index at which the example was executed, as
    well as the example itself.
*/
final public class ExampleMetadata: _ExampleMetadataBase {
    /**
        The example for which this metadata was collected.
    */
    public let example: Example

    /**
        The index at which this example was executed in the
        test suite.
    */
    public let exampleIndex: Int
    
    /**
        The index of the example in it's group.
    */
    public let isFirstExampleInGroup: Bool
    public let isLastExampleInGroup: Bool

    internal init(example: Example, exampleIndex: Int, isFirstExampleInGroup: Bool, isLastExampleInGroup: Bool) {
        self.example = example
        self.exampleIndex = exampleIndex
        self.isFirstExampleInGroup = isFirstExampleInGroup
        self.isLastExampleInGroup = isLastExampleInGroup
    }
}
