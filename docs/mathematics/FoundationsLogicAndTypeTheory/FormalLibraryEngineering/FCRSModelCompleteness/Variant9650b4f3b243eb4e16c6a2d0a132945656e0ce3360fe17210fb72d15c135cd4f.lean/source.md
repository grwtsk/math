# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FCRSModelCompleteness.Variant9650b4f3b243eb4e16c6a2d0a132945656e0ce3360fe17210fb72d15c135cd4f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a79830ba948cb010ecf8a94fbe240f5c9d957023` · SHA-256 `9650b4f3b243eb4e16c6a2d0a132945656e0ce3360fe17210fb72d15c135cd4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Theorems.FCRSConditionalCompleteness

namespace FCRS

/-- The formal-model consequence of the full conditional theorem. -/
theorem fcrs_model_complete
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    S.P.separatedFormalModelsExist ∧
    S.P.specializationNatural ∧
    S.P.admissibleBlowupsGenericFiberInvariant := by
  have complete :=
    fcrs_full_conditional_completeness S registry h
  exact ⟨
    complete.separatedFormalModelsExist,
    ⟨
      complete.specializationNatural,
      complete.admissibleBlowupsGenericFiberInvariant
    ⟩
  ⟩

end FCRS
```
