-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.LeExpSelf.Varianta8228ccf1321af80c613c43ffa5868e7cd487f0e5d142c2ed5bc8b355af9ec05","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8228ccf1321af80c613c43ffa5868e7cd487f0e5d142c2ed5bc8b355af9ec05","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.LeExpSelf.Varianta8228ccf1321af80c613c43ffa5868e7cd487f0e5d142c2ed5bc8b355af9ec05","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"a8228ccf1321af80c613c43ffa5868e7cd487f0e5d142c2ed5bc8b355af9ec05","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Analysis/SpecialFunctions/Exp.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Matteo Cipollina. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Matteo Cipollina
-/
module

public import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Elementary exponential estimates

Small real exponential inequalities used to absorb polynomial and product factors into
finite-order growth bounds.
-/


namespace GRWTSK.Analysis.SpecialFunctions.LeExpSelf.Varianta8228ccf1321af80c613c43ffa5868e7cd487f0e5d142c2ed5bc8b355af9ec05

@[expose] public section

namespace Real

/-- The elementary inequality `x ≤ exp x`. -/
theorem le_exp_self (x : ℝ) : x ≤ exp x :=
  le_trans (by linarith : x ≤ x + 1) (add_one_le_exp x)

/-- Combine four elementary exponential majorants. -/
lemma mul_four_le_exp_add {a b c d A B C D : ℝ}
    (hb0 : 0 ≤ b) (hc0 : 0 ≤ c) (hd0 : 0 ≤ d)
    (ha : a ≤ exp A) (hb : b ≤ exp B) (hc : c ≤ exp C) (hd : d ≤ exp D) :
    a * b * c * d ≤ exp (A + B + C + D) := by
  have hab : a * b ≤ exp A * exp B :=
    mul_le_mul ha hb hb0 (exp_pos A).le
  have habc : (a * b) * c ≤ (exp A * exp B) * exp C :=
    mul_le_mul hab hc hc0 (by positivity)
  have hprod : a * b * c * d ≤ exp A * exp B * exp C * exp D :=
    mul_le_mul habc hd hd0 (by positivity)
  calc
    a * b * c * d ≤ exp A * exp B * exp C * exp D := hprod
    _ = exp (A + B + C + D) := by
        rw [← exp_add, ← exp_add, ← exp_add]

/-- Once `x ≤ A` and `1 ≤ A`, the factor `2x` is dominated by `exp (2A²)`. -/
lemma two_mul_le_exp_two_mul_sq {x A : ℝ} (hx : x ≤ A) (hA1 : 1 ≤ A) :
    x * 2 ≤ exp (2 * (A * A)) := by
  have h1 : x * 2 ≤ 2 * A := by linarith [hx]
  have hA0 : 0 ≤ A := zero_le_one.trans hA1
  have hA_le_sq : A ≤ A * A := by
    simpa [one_mul] using mul_le_mul_of_nonneg_right hA1 hA0
  have h2 : 2 * A ≤ 2 * (A * A) := by nlinarith [hA_le_sq]
  exact le_trans (le_trans h1 h2) (le_exp_self (2 * (A * A)))

end Real
