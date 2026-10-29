-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.RatSqrt.Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.RatSqrt.Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Rat/NatSqrt/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Tactic.Positivity
public import Mathlib.Algebra.Order.Field.Basic

/-!
# Rational approximations to square roots of naturals

This file defines `Nat.ratSqrt x prec`, a rational approximation of the square root of a
natural number `x` to within `1 / prec`, and proves the basic bounds it satisfies.

See also `Mathlib.Analysis.Rat.NatSqrt.Real` for comparisons with the real square root.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.RatSqrt.Variant9205f4a43754c737d96f87a24445fce73e37f8418191b65b52c884f6ae664770

@[expose] public section

namespace Nat

/--
Approximate the square root of a natural number as a rational number, to within `1 / prec`.
-/
def ratSqrt (x : ℕ) (prec : ℕ) : ℚ := ((x * prec ^ 2).sqrt : ℚ) / prec

theorem ratSqrt_nonneg (x prec : ℕ) : 0 ≤ ratSqrt x prec := by
  unfold ratSqrt
  positivity

theorem ratSqrt_sq_le (x : ℕ) {prec : ℕ} (h : 0 < prec) : (ratSqrt x prec) ^ 2 ≤ x := by
  unfold ratSqrt
  rw [div_pow, div_le_iff₀ (by positivity)]
  norm_cast
  exact sqrt_le' (x * prec ^ 2)

theorem lt_ratSqrt_add_inv_prec_sq (x : ℕ) {prec : ℕ} (h : 0 < prec) :
    x < (ratSqrt x prec + 1 / prec) ^ 2 := by
  unfold ratSqrt
  rw [← mul_lt_mul_iff_of_pos_right (a := (prec ^ 2 : ℚ)) (by positivity)]
  rw [← mul_pow, add_mul]
  rw [div_mul_cancel₀, div_mul_cancel₀]
  · norm_cast
    exact lt_succ_sqrt' (x * prec ^ 2)
  all_goals norm_cast; positivity

end Nat
