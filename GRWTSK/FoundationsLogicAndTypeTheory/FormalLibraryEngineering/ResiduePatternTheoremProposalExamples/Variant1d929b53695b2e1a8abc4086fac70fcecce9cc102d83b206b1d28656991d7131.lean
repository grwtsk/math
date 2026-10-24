import AnalyticNumber.ResiduePatternTheoremProposal

/-!
# Residue pattern theorem proposal examples

These examples keep generated pattern features and theorem candidates inside
the finite proposal boundary.
-/

namespace AnalyticNumber
namespace ResiduePatternTheoremProposal

def toyResiduePatternFeature : ResiduePatternFeature where
  featureId := 1
  method := PatternRecognitionMethod.motifExtraction
  supportCellCount := 4
  scoreHash := 101
  finiteEvidenceOnly := True
  finiteEvidenceOnlyProof := trivial

def toyResidueCandidate : ResidueReductionTheoremCandidate where
  candidateId := 2
  feature := toyResiduePatternFeature
  statementHash := 202
  status := CandidateStatus.residueTodo
  proofAuthorityRequired := "Lean or approved theorem authority"
  patternRecognitionNotProof := True
  patternRecognitionNotProofProof := trivial
  leanOrApprovedAuthorityRequired := True
  leanOrApprovedAuthorityProof := trivial

example :
    toyResidueCandidate.patternRecognitionNotProof ∧
    toyResidueCandidate.leanOrApprovedAuthorityRequired :=
  pattern_recognition_firewall toyResidueCandidate

example (route : Prop) (routeProof : route) :
    toyResidueCandidate.leanOrApprovedAuthorityRequired ∧ route :=
  theorem_candidate_requires_authority toyResidueCandidate route routeProof

end ResiduePatternTheoremProposal
end AnalyticNumber
