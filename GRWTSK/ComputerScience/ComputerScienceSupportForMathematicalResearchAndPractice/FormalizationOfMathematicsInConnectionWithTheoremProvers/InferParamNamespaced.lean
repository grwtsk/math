-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroLeAdd.Varianteeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ZeroLeAdd.Varianteeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"eeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/InferParam.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.InferParam


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ZeroLeAdd.Varianteeaa7bdea3a29aaf80620c7c058fedc3622ccbd3742dd72819de8f32f8ac63f7

namespace InferParamTest

theorem zero_le_add (a : Nat) (ha : 0 ≤ a := Nat.zero_le a) : 0 ≤ a + a := calc
  0 ≤ a := ha
  _ ≤ a + a := Nat.le_add_left _ _

theorem zero_le_add' (a : Nat) (ha : 0 ≤ a := by decide) : 0 ≤ a + a := zero_le_add a ha

example : 0 ≤ 2 + 2 := by
  fail_if_success infer_param
  decide

example : 0 ≤ 2 + 2 := by
  apply zero_le_add
  infer_param

example : 0 ≤ 2 + 2 := by
  apply zero_le_add'
  infer_param

end InferParamTest
