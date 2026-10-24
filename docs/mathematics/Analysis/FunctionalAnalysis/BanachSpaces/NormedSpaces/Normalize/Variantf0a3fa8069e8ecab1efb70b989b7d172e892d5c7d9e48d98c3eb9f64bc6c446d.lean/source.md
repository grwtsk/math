# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Normalize.Variantf0a3fa8069e8ecab1efb70b989b7d172e892d5c7d9e48d98c3eb9f64bc6c446d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b4112f138324df2ef2cedee2576918a544be99d5` · SHA-256 `0ee728c581280aca4cca8642b400964ab35e984185da1f3131f38e5d7293d135`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpaceNormalize.Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.NormedSpaceNormalize.Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/Normed/Module/Normalize.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Ilmārs Cīrulis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Ilmārs Cīrulis, Alex Meiburg
-/
module

public import Mathlib.Analysis.RCLike.Basic
public import Mathlib.Basic.Sign.Defs

/-!
# Normalized vector

Function that returns unit length vector that points in the same direction
(if the given vector is nonzero vector) or returns zero vector
(if the given vector is zero vector).
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.NormedSpaceNormalize.Variant3c28aa34fa9db3b5ef03675c60bdecb5a85ecd450f6c4e139f227420525125a1

@[expose] public section

variable {V : Type*} [NormedAddCommGroup V] [NormedSpace ℝ V]

/-- For a nonzero vector `x`, `normalize x` is the unit-length vector that points
in the same direction as `x`. If `x = 0`, then `normalize x = 0`. -/
noncomputable def NormedSpace.normalize (x : V) : V := ‖x‖⁻¹ • x

namespace NormedSpace

@[simp]
theorem normalize_zero_eq_zero : normalize (0 : V) = 0 := by
  simp [normalize]

@[simp]
theorem normalize_eq_zero_iff (x : V) : normalize x = 0 ↔ x = 0 := by
  by_cases hx : x = 0 <;> simp [normalize, hx]

@[simp]
theorem norm_smul_normalize (x : V) : ‖x‖ • normalize x = x := by
  by_cases hx : x = 0 <;> simp [normalize, hx]

@[simp]
lemma norm_normalize_eq_one_iff {x : V} : ‖normalize x‖ = 1 ↔ x ≠ 0 := by
  by_cases hx : x = 0 <;> simp [normalize, hx, norm_smul]

alias ⟨_, norm_normalize⟩ := norm_normalize_eq_one_iff

lemma normalize_eq_self_of_norm_eq_one {x : V} (h : ‖x‖ = 1) : normalize x = x := by
  simp [normalize, h]

@[simp]
theorem normalize_normalize (x : V) : normalize (normalize x) = normalize x := by
  by_cases hx : x = 0
  · simp [hx]
  · simp [normalize_eq_self_of_norm_eq_one, hx]

@[simp]
theorem normalize_neg (x : V) : normalize (-x) = - normalize x := by
  simp [normalize]

theorem normalize_smul_of_pos {r : ℝ} (hr : 0 < r) (x : V) :
    normalize (r • x) = normalize x := by
  simp [normalize, norm_smul, smul_smul, abs_of_pos hr, hr.ne']

theorem normalize_smul_of_neg {r : ℝ} (hr : r < 0) (x : V) :
    normalize (r • x) = - normalize x := by
  simpa using normalize_smul_of_pos (show 0 < -r by linarith) (-x)

theorem normalize_smul (r : ℝ) (x : V) :
    normalize (r • x) = (SignType.sign r : ℝ) • normalize x := by
  rcases lt_trichotomy 0 r with (h_pos | rfl | h_neg)
  · simp [normalize_smul_of_pos, h_pos]
  · simp
  · simp [normalize_smul_of_neg, h_neg]

end NormedSpace
```
