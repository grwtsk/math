-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Units.Variant31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Units.Variant31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff","mathematical_subject":"Algebra.Groups","original_sha256":"31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Equiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Int.Order.Units
import Mathlib.GroupTheory.Perm.Finite


namespace GRWTSK.Algebra.GroupTheory.Units.Variant31f7ec478320ece35b135ed3f9ecff84bedcb3c465c3545a9e628983f68bb5ff

example : orderOf (-1 : ℤˣ) = 2 :=
  orderOf_eq_prime (Int.units_sq _) (by decide)
