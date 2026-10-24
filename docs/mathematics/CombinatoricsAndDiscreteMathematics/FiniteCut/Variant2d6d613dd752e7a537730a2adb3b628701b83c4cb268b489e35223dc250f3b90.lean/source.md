# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteCut.Variant2d6d613dd752e7a537730a2adb3b628701b83c4cb268b489e35223dc250f3b90

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63594bc5892d4e1897a2d7a32f32ee379f78fd7b` · SHA-256 `2d6d613dd752e7a537730a2adb3b628701b83c4cb268b489e35223dc250f3b90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathlib.Data.Fintype.Basic

/-!
# Immutable finite reflective cut
-/

namespace Mathematics.StratifiedBoundary

structure FiniteReflectiveCut
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (State : Type v) where
  cutId : String
  predecessorCutRef : Option String
  stratum : CanonicalOrdinalTally profile
  stateFinite : Fintype State
  stateDecidableEq : DecidableEq State
  separatedMetricRef : String
  closedAdmissibilityRef : String
  binaryFrontierRef : String
  localRankRegistryRef : String
  authorityRef : String
  immutable : Bool := true
  immutable_exact : immutable = true

end Mathematics.StratifiedBoundary
```
