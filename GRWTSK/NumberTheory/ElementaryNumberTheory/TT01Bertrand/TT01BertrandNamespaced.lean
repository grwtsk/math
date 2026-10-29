-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.Tt01Bertrand.Variant8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.Tt01Bertrand.Variant8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Transport/Theorems/TT01_Bertrand.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Transport.Bertrand


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.Tt01Bertrand.Variant8c40223c710ccdf442f12cc009b1cce5adab4ec1bbf8c5a7b24af7dbd853f020

namespace FCRS.Transport.Theorems

/-- Full strict-endpoint Bertrand theorem for every natural `n > 1`. -/
theorem tt01_bertrand :
    ∀ n : Nat, 1 < n →
      ∃ q : Nat, Nat.Prime q ∧ n < q ∧ q < 2 * n :=
  bertrandProof

end FCRS.Transport.Theorems
