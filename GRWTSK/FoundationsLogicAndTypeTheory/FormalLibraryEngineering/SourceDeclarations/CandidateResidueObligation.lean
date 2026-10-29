import Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit1.M546172676574732f496d706f7274506c616e2e6c65616e
import Think.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.Bit0.Bit0.M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e


/- source-tree-label: STL1|L|addr=0100111|role=proof_code_atom|slug=transfers-candidateresidueobligation|owner=canonical_owner|core=Transfers/CandidateResidueObligation.lean|leaf=M5472616e73666572732f43616e646964617465526573696475654f626c69676174696f6e2e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Transfers

structure CandidateResidueObligation
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue) where
  obligation : ResidueObligation r
  candidateTargetMatches : candidate.target = r.target
  candidateAtomMatches : candidate.atomId = r.atomId
  candidateKindMatches : candidate.residueKind = r.kind
  candidateRetainsFinal : candidate.finalTargetRetained = true

theorem candidateResidueObligation_retains_final_target
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.finalTargetRetained = true := by
  exact h.candidateRetainsFinal

theorem candidateResidueObligation_matches_residue_kind
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.residueKind = r.kind := by
  exact h.candidateKindMatches

theorem candidateResidueObligation_matches_atom
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.atomId = r.atomId := by
  exact h.candidateAtomMatches

theorem candidateResidueObligation_matches_target
    (candidate : Think.Targets.ImportPlan.TargetImportCandidate)
    (r : FWR.Residue)
    (h : CandidateResidueObligation candidate r) :
    candidate.target = r.target := by
  exact h.candidateTargetMatches

end Think.Transfers
