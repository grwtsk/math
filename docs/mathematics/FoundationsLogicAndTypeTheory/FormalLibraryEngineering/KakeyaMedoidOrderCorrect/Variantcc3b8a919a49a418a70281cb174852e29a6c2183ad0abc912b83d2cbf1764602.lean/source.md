# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KakeyaMedoidOrderCorrect.Variantcc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b07132f5b4830ddcc2966fa524b7be9170112cf0` · SHA-256 `cc3b8a919a49a418a70281cb174852e29a6c2183ad0abc912b83d2cbf1764602`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Pipeline.Center.KakeyaMedoid

set_option autoImplicit false

namespace Think.Validation.KakeyaMedoidOrderCorrect

abbrev Phase := Think.PhaseId

theorem preceqK_total_over_finite_phases
    (graphDistance : Phase -> Phase -> Nat)
    (m p q : Phase) :
    Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m p q ∨
      Think.Pipeline.Center.KakeyaMedoid.preceqK graphDistance m q p :=
  Think.Pipeline.Center.KakeyaMedoid.preceqK_total graphDistance m p q

theorem medoid_order_preserves_61_phase_spine :
    Think.centerSpine.length = 61 :=
  Think.Pipeline.Center.KakeyaMedoid.centerSpine_preserved

theorem medoid_order_marks_nonTheorem :
    Think.RadoProjectedModularHeatflow.MemoryCore.RadoProjected.ResidueAtom.kakeyaMedoidNotKakeyaTheorem ∈
      Think.Pipeline.Center.KakeyaMedoid.medoidResidues :=
  Think.Pipeline.Center.KakeyaMedoid.medoidResidues_contains_nonTheorem

end Think.Validation.KakeyaMedoidOrderCorrect
```
