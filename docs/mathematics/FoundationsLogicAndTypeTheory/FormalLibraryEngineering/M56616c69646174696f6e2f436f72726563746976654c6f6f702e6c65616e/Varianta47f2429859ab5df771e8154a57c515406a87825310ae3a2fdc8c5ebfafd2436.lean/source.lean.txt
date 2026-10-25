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
