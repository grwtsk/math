# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CompactInductionCorrect.Variant7f2fe05e717af194e25e0b80bb0da6a4aec25f9120cb5a3b7b480133eea15d32

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1680c4e0eae039c338808d7976f397f0458ad48` · SHA-256 `7f2fe05e717af194e25e0b80bb0da6a4aec25f9120cb5a3b7b480133eea15d32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.CompactInduction

set_option autoImplicit false

namespace Think.Validation.CompactInductionCorrect

theorem poles_only_require_compact_conservative_residue_cover
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : Think.RadoProjectedModularHeatflow.MemoryCore.compactInductiveFromPoles H) :
    H.poleCoversCompactConservative ∧ H.poleResiduesComplete :=
  Think.RadoProjectedModularHeatflow.MemoryCore.poles_alone_need_compact_conservative_residue_cover H h

theorem admitted_compact_induction_has_poles_determine_compacts
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : H.admitted) :
    H.polesDetermineCompacts := by
  exact h.1

theorem admitted_compact_induction_has_pair_bound
    (H : Think.RadoProjectedModularHeatflow.MemoryCore.CompactInductionHypotheses)
    (h : H.admitted) :
    H.pairCorrelationBelowTolerance := by
  exact h.2.2.2.2.2

end Think.Validation.CompactInductionCorrect
```
