# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF06ControlNormalization.Varianta0b038a354a57e9a594765c7b55648a9fd6f66cb8ec673dbc995f19c76c025e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acb302374079713f672cdecc98388cb0ce7ce013` · SHA-256 `a0b038a354a57e9a594765c7b55648a9fd6f66cb8ec673dbc995f19c76c025e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.ControlledPlane.Registry

namespace FCRS.ControlledPlane.Theorems

/-- CF-06 research-rule projection for the abstract control contract. -/
theorem cf06_controlNormalization
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF06Claim M :=
  registry.cf06

end FCRS.ControlledPlane.Theorems
```
