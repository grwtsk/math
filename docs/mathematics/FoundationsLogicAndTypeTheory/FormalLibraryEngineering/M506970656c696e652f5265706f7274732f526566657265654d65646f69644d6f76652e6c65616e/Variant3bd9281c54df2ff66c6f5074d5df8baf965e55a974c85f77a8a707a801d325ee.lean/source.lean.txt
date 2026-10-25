import Think.Bit0.Bit1.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f56616c69646174696f6e2f4d65646f6964526562616c616e63652e6c65616e


/- source-tree-label: STL1|L|addr=11011010|role=proof_code_atom|slug=pipeline-reports-refereemedoidmove|owner=canonical_owner|core=Pipeline/Reports/RefereeMedoidMove.lean|leaf=M506970656c696e652f5265706f7274732f526566657265654d65646f69644d6f76652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports.RefereeMedoidMove

inductive RefereeMedoidMoveStatus where
  | finiteWitnessGuidance
  | checkedByValidator
  | explicitResidue
deriving DecidableEq, Repr

def acceptedStatus : String := "PipelineToposBoundary"

def forbiddenStatusUnlessConstructed : String := "PipelineTopos := Sh(PipelineSite, J_pipeline)"

theorem accepted_status_exact : acceptedStatus = "PipelineToposBoundary" := by
  rfl

theorem full_topos_status_not_accepted : forbiddenStatusUnlessConstructed = "PipelineTopos := Sh(PipelineSite, J_pipeline)" := by
  rfl

end Think.Pipeline.Reports.RefereeMedoidMove
