# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FoundryPhaseAdvance.Variant8a6d58bec1e19e0b189fdd2a3684d237a2ab2d8e4db06e5e85bd75082f8b9d41

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18e671bdb3b378e49478b8ed551041f326db4982` · SHA-256 `8a6d58bec1e19e0b189fdd2a3684d237a2ab2d8e4db06e5e85bd75082f8b9d41`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import AnalyticNumber.ExpressibleNumbers
import AnalyticNumber.FoundryPhilosophy
import AnalyticNumber.FoundryReducerHierarchy
import AnalyticNumber.PipelineHaltingClosure
import Presentation.AstLabeling
import Presentation.ClosureNetwork
import Presentation.Expressiveness
import Presentation.SelfAnneal

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
