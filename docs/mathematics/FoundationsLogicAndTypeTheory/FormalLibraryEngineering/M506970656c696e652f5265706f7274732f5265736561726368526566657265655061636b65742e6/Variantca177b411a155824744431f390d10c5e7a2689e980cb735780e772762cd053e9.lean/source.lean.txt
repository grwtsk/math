import Think.Bit0.Bit0.Bit1.Bit0.Bit1.Bit0.Bit1.Bit0.M506970656c696e652f56616c69646174696f6e2f526573656172636853756273756d7074696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=101001|role=proof_code_atom|slug=pipeline-reports-researchrefereepacket|owner=canonical_owner|core=Pipeline/Reports/ResearchRefereePacket.lean|leaf=M506970656c696e652f5265706f7274732f5265736561726368526566657265655061636b65742e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Pipeline.Reports

structure ResearchRefereePacket where
  verdict : String
  requiredValidatorCount : Nat
  residueLedgerPresent : Bool
  nonClaimsPreserved : Bool
  deriving Repr, DecidableEq

def researchRefereePacket : ResearchRefereePacket := {
  verdict := "accepted_with_residue"
  requiredValidatorCount := Think.Pipeline.Validation.requiredResearchSubsumptionValidators.length
  residueLedgerPresent := true
  nonClaimsPreserved := true
}

theorem research_referee_verdict_is_residue_bounded :
    researchRefereePacket.verdict = "accepted_with_residue" := by
  rfl

theorem research_referee_validator_count_is_sixteen :
    researchRefereePacket.requiredValidatorCount = 16 := by
  rfl

end Think.Pipeline.Reports
