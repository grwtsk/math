# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoundryPhaseAdvance.Variant5ed90617f56853efcb6d688650ba99794a4243281659b3c135fbcc2e2b728b76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7637134a2bdd7734dddd23540285db17d2a4e245` · SHA-256 `5ed90617f56853efcb6d688650ba99794a4243281659b3c135fbcc2e2b728b76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.ExpressibleNumbers
import AnalyticNumber.FoundryPhilosophy
import AnalyticNumber.FoundryReducerHierarchy
import AnalyticNumber.PipelineHaltingClosure

/-!
# End-to-end foundry phase advance

The phase gate is a finite certificate projection.  It is advanceable only when
every named theorem surface, reducer witness, cache witness, self-annealing
report, AST labeling report, hierarchy audit, and authority firewall has been
recorded.
-/

namespace AnalyticNumber
namespace FoundryPhaseAdvance

structure FoundryPhaseAdvanceCertificate where
  leanTheoremsBuild : Prop
  leanProof : leanTheoremsBuild
  closureNetworkSound : Prop
  closureProof : closureNetworkSound
  expressivenessSound : Prop
  expressivenessProof : expressivenessSound
  haltingRevivalSound : Prop
  haltingProof : haltingRevivalSound
  selfAnnealingSound : Prop
  selfAnnealProof : selfAnnealingSound
  astLabelingSound : Prop
  astLabelingProof : astLabelingSound
  foundryHierarchySound : Prop
  hierarchyProof : foundryHierarchySound
  noAuthorityOverclaim : Prop
  noOverclaimProof : noAuthorityOverclaim

theorem foundry_phase_advance_sound
    (C : FoundryPhaseAdvanceCertificate) :
    C.leanTheoremsBuild ∧
    C.closureNetworkSound ∧
    C.expressivenessSound ∧
    C.haltingRevivalSound ∧
    C.selfAnnealingSound ∧
    C.astLabelingSound ∧
    C.foundryHierarchySound ∧
    C.noAuthorityOverclaim :=
  by
    exact
      ⟨C.leanProof,
       C.closureProof,
       C.expressivenessProof,
       C.haltingProof,
       C.selfAnnealProof,
       C.astLabelingProof,
       C.hierarchyProof,
       C.noOverclaimProof⟩

end FoundryPhaseAdvance
end AnalyticNumber
```
