# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointPositivityAudit.Variantb5b00195781bfa4b66da0d9c006af55545114c40e2041fb8b62852b3037b6bb0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1dd7b67e9b6fc564a7ba1e0583c816f1773d8284` · SHA-256 `b5b00195781bfa4b66da0d9c006af55545114c40e2041fb8b62852b3037b6bb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.mertens.EndpointPositivity
set_option pp.universes true
set_option pp.explicit true
#check @EndpointPositivityScratch.normalizedTest_endpoint_pos
#print axioms EndpointPositivityScratch.normalizedTest_endpoint_pos
#check @EndpointPositivityScratch.sourceCorrelation_endpoint_pos
#print axioms EndpointPositivityScratch.sourceCorrelation_endpoint_pos
#check @EndpointPositivityScratch.sourceSamplingKernel_upper_pos
#print axioms EndpointPositivityScratch.sourceSamplingKernel_upper_pos
```
