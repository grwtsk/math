# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPointTranscendencyReduction.Variantb7ac01700efe00ec5c972e0970d704deec81ad9330ac93d97535660727a3d2e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35225f1c8ce5014ebdf037985c13d412ccaab2c0` · SHA-256 `b7ac01700efe00ec5c972e0970d704deec81ad9330ac93d97535660727a3d2e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.GrandChallenge.RH.CanonicalPathReduction

/-!
# Folder.GrandChallenge.RH.FixedPointTranscendencyReduction

Radiation role: research-boundary
BinaryMatrix spine: This module records RH fixed-point-transcendency reduction contracts.
Ontology: rh_canonical_path_reduction
Pivot role: fixed-point
Zero typology: off-critical
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/

namespace Folder
namespace GrandChallenge
namespace RH

theorem rh_fixed_point_transcendency_if_supplied
    (R : RHCanonicalPathReduction) :
    R.fixedPointTranscendencySupplied :=
  R.fixedPointTranscendencySupplied_certified

theorem rh_offcritical_obstruction_if_supplied
    (R : RHCanonicalPathReduction) :
    R.offCriticalObstructionSupplied :=
  R.offCriticalObstructionSupplied_certified

end RH
end GrandChallenge
end Folder
```
