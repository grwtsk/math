-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecamanProposal.Variantf7f5b80b7c5f7c681235a73906e150cb1f93fac07dbae698ff6e9e16c8c58614","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7f5b80b7c5f7c681235a73906e150cb1f93fac07dbae698ff6e9e16c8c58614","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RecamanProposal.Variantf7f5b80b7c5f7c681235a73906e150cb1f93fac07dbae698ff6e9e16c8c58614","mathematical_subject":"Foundations.Unclassified","original_sha256":"f7f5b80b7c5f7c681235a73906e150cb1f93fac07dbae698ff6e9e16c8c58614","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/GraphAccess/Exploration/Recaman.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Proposal-only Recamán diversification
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RecamanProposal.Variantf7f5b80b7c5f7c681235a73906e150cb1f93fac07dbae698ff6e9e16c8c58614

namespace Mathematics.GraphAccess

structure RecamanProposal where
  step : Nat
  value : Nat
  actionRef : String
  plateauDeclared : Prop
  plateauEvidence : plateauDeclared
  authoritativeEffect : Bool := false
  authoritativeEffect_exact : authoritativeEffect = false
deriving Repr

theorem recaman_proposal_has_no_authority
    (proposal : RecamanProposal) :
    proposal.authoritativeEffect = false :=
  proposal.authoritativeEffect_exact

theorem recaman_requires_declared_plateau
    (proposal : RecamanProposal) :
    proposal.plateauDeclared :=
  proposal.plateauEvidence

end Mathematics.GraphAccess
