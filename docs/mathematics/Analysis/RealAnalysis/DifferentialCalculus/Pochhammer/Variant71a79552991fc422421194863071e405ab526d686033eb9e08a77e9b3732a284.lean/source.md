# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Pochhammer.Variant71a79552991fc422421194863071e405ab526d686033eb9e08a77e9b3732a284

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fa9fd5db3018c80895c816036c2102ae80ee37b` · SHA-256 `78cd050bfa260d5b8ec32c3ae8c2452f90b409dc6758e2d584cd55dfa9059f81`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DifferentiableDescPochhammerEval.Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.DifferentiableDescPochhammerEval.Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616","mathematical_subject":"Analysis.Calculus","original_sha256":"350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Pochhammer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Mitchell Horner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mitchell Horner
-/
module

public import Mathlib.Algebra.BigOperators.Field
public import Mathlib.Analysis.Convex.Deriv
public import Mathlib.Analysis.Convex.Piecewise
public import Mathlib.Analysis.Convex.Jensen
public import Mathlib.RingTheory.Polynomial.Pochhammer

/-!
# Pochhammer polynomials

This file proves analysis theorems for Pochhammer polynomials.

## Main statements

* `Differentiable.descPochhammer_eval` is the proof that the descending Pochhammer polynomial
  `descPochhammer ℝ n` is differentiable.

* `ConvexOn.descPochhammer_eval` is the proof that the descending Pochhammer polynomial
  `descPochhammer ℝ n` is convex on `[n-1, ∞)`.

* `descPochhammer_eval_le_sum_descFactorial` is a special case of **Jensen's inequality**
  for `Nat.descFactorial`.

* `descPochhammer_eval_div_factorial_le_sum_choose` is a special case of **Jensen's inequality**
  for `Nat.choose`.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DifferentiableDescPochhammerEval.Variant350ed01bedf641506bcfea626986efb9ddac30344ec7a558e6a4d5c7ac3f2616

public section


section DescPochhammer

variable {n : ℕ} {𝕜 : Type*} {k : 𝕜} [NontriviallyNormedField 𝕜]

/-- `descPochhammer 𝕜 n` is differentiable. -/
theorem differentiable_descPochhammer_eval : Differentiable 𝕜 (descPochhammer 𝕜 n).eval := by
  simp [descPochhammer_eval_eq_prod_range, Differentiable.fun_finsetProd]

/-- `descPochhammer 𝕜 n` is continuous. -/
theorem continuous_descPochhammer_eval : Continuous (descPochhammer 𝕜 n).eval := by
  exact differentiable_descPochhammer_eval.continuous

lemma deriv_descPochhammer_eval_eq_sum_prod_range_erase (n : ℕ) (k : 𝕜) :
    deriv (descPochhammer 𝕜 n).eval k
      = ∑ i ∈ Finset.range n, ∏ j ∈ (Finset.range n).erase i, (k - j) := by
  simp [descPochhammer_eval_eq_prod_range, deriv_fun_finsetProd]

/-- `deriv (descPochhammer ℝ n)` is monotone on `(n-1, ∞)`. -/
lemma monotoneOn_deriv_descPochhammer_eval (n : ℕ) :
    MonotoneOn (deriv (descPochhammer ℝ n).eval) (Set.Ioi (n - 1 : ℝ)) := by
  induction n with
  | zero => simp [monotoneOn_const]
  | succ n ih =>
    intro a ha b hb hab
    rw [Set.mem_Ioi, Nat.cast_add_one, add_sub_cancel_right] at ha hb
    simp_rw [deriv_descPochhammer_eval_eq_sum_prod_range_erase]
    gcongr with i hi
    intro j hj
    rw [Finset.mem_erase, Finset.mem_range] at hj
    apply sub_nonneg_of_le
    exact ha.le.trans' (mod_cast Nat.le_pred_of_lt hj.2)

/-- `descPochhammer ℝ n` is convex on `[n-1, ∞)`. -/
theorem convexOn_descPochhammer_eval (n : ℕ) :
    ConvexOn ℝ (Set.Ici (n - 1 : ℝ)) (descPochhammer ℝ n).eval := by
  rcases n.eq_zero_or_pos with h_eq | _
  · simp [h_eq, convexOn_const, convex_Ici]
  · apply MonotoneOn.convexOn_of_deriv (convex_Ici (n - 1 : ℝ))
      continuous_descPochhammer_eval.continuousOn
      differentiable_descPochhammer_eval.differentiableOn
    rw [interior_Ici]
    exact monotoneOn_deriv_descPochhammer_eval n

private lemma piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial (k n : ℕ) :
    (Set.Ici (n - 1 : ℝ)).piecewise (descPochhammer ℝ n).eval 0 k
      = k.descFactorial n := by
  rw [Set.piecewise, descPochhammer_eval_eq_descFactorial, ite_eq_left_iff, Set.mem_Ici, not_le,
    eq_comm, Pi.zero_apply, Nat.cast_eq_zero, Nat.descFactorial_eq_zero_iff_lt, ← @Nat.cast_lt ℝ]
  exact (sub_lt_self (n : ℝ) zero_lt_one).trans'

private lemma convexOn_piecewise_Ici_descPochhammer_eval_zero (hn : n ≠ 0) :
    ConvexOn ℝ Set.univ ((Set.Ici (n - 1 : ℝ)).piecewise (descPochhammer ℝ n).eval 0) := by
  rw [← Nat.pos_iff_ne_zero] at hn
  apply convexOn_univ_piecewise_Ici_of_monotoneOn_Ici_antitoneOn_Iic
    (convexOn_descPochhammer_eval n) (convexOn_const 0 (convex_Iic (n - 1 : ℝ)))
    (monotoneOn_descPochhammer_eval n) antitoneOn_const
  simpa [← Nat.cast_pred hn] using descPochhammer_eval_coe_nat_of_lt (Nat.sub_one_lt_of_lt hn)

/-- Special case of **Jensen's inequality** for `Nat.descFactorial`. -/
theorem descPochhammer_eval_le_sum_descFactorial
    (hn : n ≠ 0) {ι : Type*} {t : Finset ι} (p : ι → ℕ) (w : ι → ℝ)
    (h₀ : ∀ i ∈ t, 0 ≤ w i) (h₁ : ∑ i ∈ t, w i = 1) (h_avg : n - 1 ≤ ∑ i ∈ t, w i * p i) :
    (descPochhammer ℝ n).eval (∑ i ∈ t, w i * p i)
      ≤ ∑ i ∈ t, w i * (p i).descFactorial n := by
  let f : ℝ → ℝ := (Set.Ici (n - 1 : ℝ)).piecewise (descPochhammer ℝ n).eval 0
  suffices h_jensen : f (∑ i ∈ t, w i • p i) ≤ ∑ i ∈ t, w i • f (p i) by
    simpa only [smul_eq_mul, f, Set.piecewise_eq_of_mem (Set.Ici (n - 1 : ℝ)) _ _ h_avg,
      piecewise_Ici_descPochhammer_eval_zero_eq_descFactorial] using h_jensen
  exact ConvexOn.map_sum_le (convexOn_piecewise_Ici_descPochhammer_eval_zero hn) h₀ h₁ (by simp)

/-- Special case of **Jensen's inequality** for `Nat.choose`. -/
theorem descPochhammer_eval_div_factorial_le_sum_choose
    (hn : n ≠ 0) {ι : Type*} {t : Finset ι} (p : ι → ℕ) (w : ι → ℝ)
    (h₀ : ∀ i ∈ t, 0 ≤ w i) (h₁ : ∑ i ∈ t, w i = 1) (h_avg : n - 1 ≤ ∑ i ∈ t, w i * p i) :
    (descPochhammer ℝ n).eval (∑ i ∈ t, w i * p i) / n.factorial
      ≤ ∑ i ∈ t, w i * (p i).choose n := by
  simp_rw [Nat.cast_choose_eq_descPochhammer_div,
    mul_div, ← Finset.sum_div, descPochhammer_eval_eq_descFactorial]
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact descPochhammer_eval_le_sum_descFactorial hn p w h₀ h₁ h_avg

end DescPochhammer
```
