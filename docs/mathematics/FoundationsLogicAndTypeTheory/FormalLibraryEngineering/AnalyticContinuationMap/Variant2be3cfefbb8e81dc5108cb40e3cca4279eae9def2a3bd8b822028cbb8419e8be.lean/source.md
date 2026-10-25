# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticContinuationMap.Variant2be3cfefbb8e81dc5108cb40e3cca4279eae9def2a3bd8b822028cbb8419e8be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed6aa3879a6eb428cc18378756259a4c8ff67014` · SHA-256 `2be3cfefbb8e81dc5108cb40e3cca4279eae9def2a3bd8b822028cbb8419e8be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.CanonicalPath.AnalyticContinuationMap

/-!
# Folder.Theorem.CanonicalPath.AnalyticContinuationMap

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports analytic continuation-map facts.
Ontology: proof.canonical_path.continuation_map
Pivot role: spectral
Zero typology: transport-boundary
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem continuation_map_respects_differential
    (C : Folder.CanonicalPath.AnalyticContinuationMap) :
    C.respectsDifferential :=
  Folder.CanonicalPath.continuation_map_respects_differential C

theorem continuation_map_has_estimates
    (C : Folder.CanonicalPath.AnalyticContinuationMap) :
    C.compactnessFredholmEstimates :=
  Folder.CanonicalPath.continuation_map_has_estimates C

end CanonicalPath
end Theorem
end Folder
```
