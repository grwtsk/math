-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SourceUnit.Variantbe03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SourceUnit.Variantbe03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"be03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/instances/Ring_finiteness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

-- https://github.com/leanprover-community/mathlib4/pull/17557#issuecomment-2426920648


namespace GRWTSK.Algebra.SourceUnit.Variantbe03900f767fddf0b60d13259efdec5d489c5181809bf010a8a8f8b8d7424d60

variable (R : Type*) [Ring R] [IsSemisimpleRing R]

example : IsNoetherianRing R := inferInstance
example : IsArtinianRing R := inferInstance
