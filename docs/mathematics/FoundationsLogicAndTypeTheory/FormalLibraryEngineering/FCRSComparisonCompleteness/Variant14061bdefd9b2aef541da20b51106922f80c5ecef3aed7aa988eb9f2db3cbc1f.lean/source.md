# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FCRSComparisonCompleteness.Variant14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d22a38c6ff0b8be4a9c61ad22b95072d4dec300e` · SHA-256 `14061bdefd9b2aef541da20b51106922f80c5ecef3aed7aa988eb9f2db3cbc1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Theorems.FCRSConditionalCompleteness

namespace FCRS

/-- The comparison-equivalence consequence of the full conditional theorem. -/
theorem fcrs_comparison_complete
    (S : RealizationSystem)
    (registry : TheoremRegistry S)
    (h : FullHypotheses S) :
    EquivalenceWitness S.carrier.functors.RB ∧
    EquivalenceWitness S.carrier.functors.BA ∧
    EquivalenceWitness S.carrier.functors.RigEta := by
  have complete :=
    fcrs_full_conditional_completeness S registry h
  exact ⟨
    complete.rigidBerkovichEquivalence,
    ⟨complete.berkovichAdicEquivalence, complete.raynaudEquivalence⟩
  ⟩

end FCRS
```
