-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Quaternion.Variant1a125fc8d27e94e4ae6e0a2583979a469e41067891825a0c1344d7e6006b9501","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a125fc8d27e94e4ae6e0a2583979a469e41067891825a0c1344d7e6006b9501","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Quaternion.Variant1a125fc8d27e94e4ae6e0a2583979a469e41067891825a0c1344d7e6006b9501","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"1a125fc8d27e94e4ae6e0a2583979a469e41067891825a0c1344d7e6006b9501","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Quaternion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Quaternion
import Mathlib.Basic.Real.Basic
import Mathlib.NumberTheory.Zsqrtd.GaussianInt


namespace GRWTSK.Algebra.Quaternion.Variant1a125fc8d27e94e4ae6e0a2583979a469e41067891825a0c1344d7e6006b9501

open Quaternion
/--
info: { re := 0, imI := 0, imJ := 0, imK := 0 }
-/
#guard_msgs in
#eval (0 : ℍ[ℚ])

/--
info: { re := 1, imI := 0, imJ := 0, imK := 0 }
-/
#guard_msgs in
#eval (1 : ℍ[ℚ])

/--
info: { re := 4, imI := 0, imJ := 0, imK := 0 }
-/
#guard_msgs in
#eval (4 : ℍ[ℚ])

/--
info: { re := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/), imI := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/), imJ := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/), imK := Real.ofCauchy (sorry /- 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... -/) }
-/
#guard_msgs in
#eval (⟨0, 0, 0, 0⟩ : ℍ[ℝ])

/--
info: { re := Real.ofCauchy (sorry /- 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, ... -/), imI := Real.ofCauchy (sorry /- 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, ... -/), imJ := Real.ofCauchy (sorry /- 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, ... -/), imK := Real.ofCauchy (sorry /- 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, ... -/) }
-/
#guard_msgs in
#eval (⟨1, 2, 3, 4⟩ : ℍ[ℝ])

/--
info: { re := ⟨0, 0⟩, imI := ⟨0, 0⟩, imJ := ⟨0, 0⟩, imK := ⟨0, 0⟩ }
-/
#guard_msgs in
#eval (0 : ℍ[GaussianInt])
