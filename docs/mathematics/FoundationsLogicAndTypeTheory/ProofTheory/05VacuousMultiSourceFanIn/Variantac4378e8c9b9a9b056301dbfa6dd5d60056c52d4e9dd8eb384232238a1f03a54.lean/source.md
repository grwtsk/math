# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.05VacuousMultiSourceFanIn.Variantac4378e8c9b9a9b056301dbfa6dd5d60056c52d4e9dd8eb384232238a1f03a54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c4fce7944fee810b131831a865e5102bf5243d1` · SHA-256 `ac4378e8c9b9a9b056301dbfa6dd5d60056c52d4e9dd8eb384232238a1f03a54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.TheoremTransfer.MultiSourceExample

namespace FCRS.TheoremTransfer.Cycle6.VacuousFanIn

open FCRS.TheoremTransfer.MultiSourceExample

/--
The aggregate type accepts a replacement `jointInference` that ignores every
translated source premise.  The proof-use equality is still inhabited because
the derived target proposition is independently true.  Graph fan-in therefore
does not establish proof-bearing semantic dependence on either source.
-/
def vacuousDerivation : MultiSourceTheoremTransferDerivation
    targetVersion targetAssumptions targetScope := {
  derivation with
  jointInference := fun _premises => ⟨True.intro, True.intro⟩
  derivedProofUsesJointInference := by intros; rfl
}

theorem acceptedDespiteIgnoringEverySource :
    ∃ left right : vacuousDerivation.SourceIndex,
      left ≠ right ∧
      vacuousDerivation.sourceNode left ≠ vacuousDerivation.sourceNode right := by
  obtain ⟨left, right, distinct, nodeDistinct, _, _⟩ :=
    vacuousDerivation.hasDistinctFanIn
  exact ⟨left, right, distinct, nodeDistinct⟩

/-- The accepted inference result is obtainable with no source-premise input. -/
theorem targetProofWithoutSources : targetTheory.Holds (True ∧ True) :=
  ⟨True.intro, True.intro⟩

#check vacuousDerivation
#check acceptedDespiteIgnoringEverySource
#check targetProofWithoutSources

end FCRS.TheoremTransfer.Cycle6.VacuousFanIn
```
