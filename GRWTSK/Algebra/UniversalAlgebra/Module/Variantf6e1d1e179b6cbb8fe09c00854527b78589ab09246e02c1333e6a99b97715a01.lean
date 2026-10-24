-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Rat.Variantee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Rat.Variantee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"ee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/instance_diamonds/Data/Complex/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Algebra.Rat
import Mathlib.Data.Complex.Module

-- Test that the `SMul ℚ ℂ` instance is correct.

namespace GRWTSK.Algebra.UniversalAlgebra.Rat.Variantee2ff7a0311ff44280c3c06bf6710a175beaf04f490498b079897e815acc06be

example : (Complex.SMul.instSMulRealComplex : SMul ℚ ℂ) = (Algebra.toSMul : SMul ℚ ℂ) := by
  with_reducible_and_instances rfl
