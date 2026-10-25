# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.M56616c69646174696f6e2f436f72726563746976654c6f6f702e6c65616e.Varianta47f2429859ab5df771e8154a57c515406a87825310ae3a2fdc8c5ebfafd2436

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ab997a306e609c6ae9174190f2c06a589591681` · SHA-256 `a47f2429859ab5df771e8154a57c515406a87825310ae3a2fdc8c5ebfafd2436`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Bit1.Bit1.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f43656e7465722f436f72726563746976654c6f6f702e6c65616e


/- source-tree-label: STL1|L|addr=1110111|role=proof_code_atom|slug=validation-correctiveloop|owner=canonical_owner|core=Validation/CorrectiveLoop.lean|leaf=M56616c69646174696f6e2f436f72726563746976654c6f6f702e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Validation

theorem correctiveReplay_is_centerControlled :
    ∀ p ∈ Think.Pipeline.Center.correctiveReplayPhases,
      p ∈ Think.Pipeline.Center.spine := by
  exact Think.Pipeline.Center.correctiveReplayPhases_centerControlled

theorem residueFreeExercise_is_stable :
    Think.Pipeline.Center.stabilityStatus
        Think.Pipeline.Center.residueFreeCorrectionStep.previous
        Think.Pipeline.Center.residueFreeCorrectionStep.next =
      Think.Pipeline.Center.FixedPointStatus.stableResidueFree := by
  exact Think.Pipeline.Center.residueFreeCorrection_status

theorem containedResidueExercise_is_stableContainment :
    Think.Pipeline.Center.stableContainment
        Think.Pipeline.Center.containedResidueCorrectionStep.previous
        Think.Pipeline.Center.containedResidueCorrectionStep.next := by
  exact Think.Pipeline.Center.containedResidueCorrection_stableContainment

theorem containedResidueExercise_preservesAuthority :
    Think.Pipeline.Center.containedResidueCorrectionStep.next.authorityBoundary =
      Think.Pipeline.Center.containedResidueCorrectionStep.previous.authorityBoundary := by
  exact Think.Pipeline.Center.containedResidueCorrectionStep.authorityPreserved

theorem containmentExpanded_implies_ledgerContains
    (previous next : Think.Pipeline.Center.LoopState)
    (h :
      Think.Pipeline.Center.stabilityStatus previous next =
        Think.Pipeline.Center.FixedPointStatus.containmentExpanded) :
    Think.Pipeline.Center.ledgerContains
      previous.containedLedger
      next.containedLedger := by
  exact
    Think.Pipeline.Center.stabilityStatus_containmentExpanded_implies_contains
      previous
      next
      h

end Think.Validation
```
