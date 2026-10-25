# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ResiduePatternTheoremProposalExamples.Variant38f069a308bdd7d69811e8b0093a6f816147fb86e9b6a9082ac83fa3cc38fde9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a84a2eed295dd5b01c79dad657284d6ad086527b` · SHA-256 `cf1925f580d1c9b18ac9304851b7995a38cbc478687c9390097f4a149ee63be0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyResiduePatternFeature.Variant1d929b53695b2e1a8abc4086fac70fcecce9cc102d83b206b1d28656991d7131","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1d929b53695b2e1a8abc4086fac70fcecce9cc102d83b206b1d28656991d7131","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ToyResiduePatternFeature.Variant1d929b53695b2e1a8abc4086fac70fcecce9cc102d83b206b1d28656991d7131","mathematical_subject":"Foundations.Unclassified","original_sha256":"1d929b53695b2e1a8abc4086fac70fcecce9cc102d83b206b1d28656991d7131","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber/ResiduePatternTheoremProposalExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.ResiduePatternTheoremProposal

/-!
# Residue pattern theorem proposal examples

These examples keep generated pattern features and theorem candidates inside
the finite proposal boundary.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToyResiduePatternFeature.Variant1d929b53695b2e1a8abc4086fac70fcecce9cc102d83b206b1d28656991d7131

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
```
