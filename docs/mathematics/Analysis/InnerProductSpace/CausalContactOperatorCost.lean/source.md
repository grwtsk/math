# Complete source: GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `970397fd684e83af649d2e2dd3efe6a2fcbf9d5c` · SHA-256 `8cf225f0be3f8ff5839a76c25ef1e9e9ad446dd016ff2db623b582a3a3960432`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Native contact energy and the cost of individual source realization


At T >= log n, the actual native diagonal is at most (T-log n)^3/n.
The native L2 norm is identified with that actual integral, and the prescribed
source L2 norm is identified with its actual unit squared integral for A>0.
Any bounded linear map realizing this same individual label must pay the
resulting inverse energy cost. Even after exact contact is excluded, no uniform
operator norm suffices on every strictly positive gap. The final consumer uses
the actual prescribed horizon T=2A and label8, with A>=1.

This does not bound a signed arithmetic energy or an amplitude-return constant.
An arbitrary coefficient mixing has its own unpaid norm; this theorem does not
claim an operator bound after free mixing, added inputs or changed windows.
The label8 witness has Mobius coefficient zero. General transformed comparison,
signed supplier budgets, strict negative sectors, RH and converse remain open.
Research direction: grwtsk contributors. Lean implementation: OpenAI Codex.
-/

namespace GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost

open MeasureTheory Set
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open ArithmeticPickupSource ArithmeticPickupEnergy
open GRWTSK.Analysis.InnerProductSpace.CausalContactSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalContactHilbertSeparation
open GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation

noncomputable section

theorem inverse_half_square {n : ℕ} (hn : 1 ≤ n) :
    ((n : ℝ) ^ (-(1 / 2 : ℝ))) ^ 2 = 1 / (n : ℝ) := by
  have positive : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have half := exp_inverse_half (Real.log (n : ℝ))
  rw [Real.exp_log positive] at half
  rw [half, pow_two, ← Real.exp_add,
    show -Real.log (n : ℝ) / 2 + -Real.log (n : ℝ) / 2 = -Real.log (n : ℝ) by ring,
    Real.exp_neg, Real.exp_log positive, one_div]

theorem response_after_contact_bounds {n : ℕ} (hn : 1 ≤ n) {u : ℝ}
    (arrived : Real.log (n : ℝ) ≤ u) :
    0 ≤ response n u ∧
      response n u ≤ (u - Real.log (n : ℝ)) * (n : ℝ) ^ (-(1 / 2 : ℝ)) := by
  have positive : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have half := exp_inverse_half (Real.log (n : ℝ))
  rw [Real.exp_log positive] at half
  have factor : Real.exp (-u / 2) =
      Real.exp (-Real.log (n : ℝ) / 2) * Real.exp (-(u - Real.log (n : ℝ)) / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have ordered : Real.exp (-u / 2) ≤ Real.exp (-Real.log (n : ℝ) / 2) :=
    Real.exp_le_exp.mpr (by linarith)
  have tangent := mul_le_mul_of_nonneg_left
    (Real.add_one_le_exp (-(u - Real.log (n : ℝ)) / 2))
    (Real.exp_pos (-Real.log (n : ℝ) / 2)).le
  rw [← factor] at tangent
  rw [response_of_arrived arrived]
  unfold responseKernel
  rw [half]
  constructor <;> nlinarith

/-- The pre-arrival part, including contact, contributes exactly zero. -/
theorem gram_diagonal_eq_post_contact {n : ℕ} (hn : 1 ≤ n) (T : ℝ) :
    gram T n n = ∫ u in Ioc (Real.log (n : ℝ)) T, response n u * response n u := by
  have logNonnegative : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have indicators : (Ioc 0 T).indicator (fun u ↦ response n u * response n u) =
      (Ioc (Real.log (n : ℝ)) T).indicator (fun u ↦ response n u * response n u) := by
    funext u
    by_cases original : u ∈ Ioc 0 T
    · by_cases mature : Real.log (n : ℝ) < u
      · have post : u ∈ Ioc (Real.log (n : ℝ)) T := ⟨mature, original.2⟩
        rw [indicator_of_mem original, indicator_of_mem post]
      · have zero := response_zero_before_or_at_contact hn (le_of_not_gt mature)
        have outside : u ∉ Ioc (Real.log (n : ℝ)) T := fun post ↦ mature post.1
        rw [indicator_of_mem original, indicator_of_notMem outside, zero, zero_mul]
    · have outside : u ∉ Ioc (Real.log (n : ℝ)) T := by
        intro post
        exact original ⟨lt_of_le_of_lt logNonnegative post.1, post.2⟩
      rw [indicator_of_notMem original, indicator_of_notMem outside]
  unfold gram
  rw [← integral_indicator measurableSet_Ioc, indicators, integral_indicator measurableSet_Ioc]

/-- A cubic upper allowance from actual response bounds and actual window length. -/
theorem gram_diagonal_cubic_upper {n : ℕ} (hn : 1 ≤ n) {T : ℝ}
    (after : Real.log (n : ℝ) ≤ T) :
    gram T n n ≤ (T - Real.log (n : ℝ)) ^ 3 / (n : ℝ) := by
  have logNonnegative : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by exact_mod_cast hn)
  have subset : Ioc (Real.log (n : ℝ)) T ⊆ Ioc 0 T := by
    intro u hu
    exact ⟨lt_of_le_of_lt logNonnegative hu.1, hu.2⟩
  have actual := (response_product_integrable T n n).mono_set subset
  have constant : IntegrableOn
      (fun _ : ℝ ↦ (T - Real.log (n : ℝ)) ^ 2 * ((n : ℝ) ^ (-(1 / 2 : ℝ))) ^ 2)
      (Ioc (Real.log (n : ℝ)) T) := continuous_const.integrableOn_Icc.mono_set
        Ioc_subset_Icc_self
  rw [gram_diagonal_eq_post_contact hn T]
  calc
    _ ≤ ∫ _u in Ioc (Real.log (n : ℝ)) T,
        (T - Real.log (n : ℝ)) ^ 2 * ((n : ℝ) ^ (-(1 / 2 : ℝ))) ^ 2 := by
      apply setIntegral_mono_on actual constant measurableSet_Ioc
      intro u hu
      have bounds := response_after_contact_bounds hn hu.1.le
      have halfNonnegative : 0 ≤ (n : ℝ) ^ (-(1 / 2 : ℝ)) :=
        Real.rpow_nonneg (Nat.cast_nonneg n) _
      have upper := bounds.2.trans (mul_le_mul_of_nonneg_right
        (sub_le_sub_right hu.2 _) halfNonnegative)
      have squared := (sq_le_sq₀ bounds.1
        (mul_nonneg (sub_nonneg.mpr after) halfNonnegative)).mpr upper
      rw [mul_pow] at squared
      simpa only [pow_two] using squared
    _ = (T - Real.log (n : ℝ)) ^ 3 / (n : ℝ) := by
      rw [setIntegral_const, Real.volume_real_Ioc_of_le after, smul_eq_mul,
        inverse_half_square hn]
      ring

theorem original_window_L2_norm_square (T : ℝ) (n : ℕ) :
    ‖originalWindowL2 T n‖ ^ 2 = gram T n n := by
  rw [← real_inner_self_eq_norm_sq, L2.inner_def]
  calc
    _ = ∫ u : ℝ, windowResponse T n u * windowResponse T n u := by
      apply integral_congr_ae
      filter_upwards [MemLp.coeFn_toLp (window_response_memLp T n)] with u hu
      have representative : originalWindowL2 T n u = windowResponse T n u := hu
      rw [representative]
      simp only [real_inner_self_eq_norm_sq, Real.norm_eq_abs, sq_abs]
      rw [pow_two]
    _ = gram T n n := by
      unfold gram
      rw [← integral_indicator measurableSet_Ioc]
      congr 1
      funext u
      by_cases member : u ∈ Ioc 0 T <;> simp [windowResponse, member]

theorem prescribed_source_L2_norm_square {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) : ‖prescribedSourceL2 A hA n‖ ^ 2 = 1 := by
  have positive : 0 < n := lt_of_lt_of_le Nat.zero_lt_one hn
  rw [← real_inner_self_eq_norm_sq, L2.inner_def]
  calc
    _ = ∫ x : ℝ, SourceGram.sourceVector A n x * SourceGram.sourceVector A n x := by
      apply integral_congr_ae
      filter_upwards [MemLp.coeFn_toLp (SourceGram.source_vector_memLp hA n)] with x hx
      have representative : prescribedSourceL2 A hA n x = SourceGram.sourceVector A n x := hx
      rw [representative]
      simp only [real_inner_self_eq_norm_sq, Real.norm_eq_abs, sq_abs]
      rw [pow_two]
    _ = SourceGram.sourceGram A n n :=
      (SourceGram.source_gram_eq_integral positive positive).symm
    _ = 1 := SourceGram.source_gram_diagonal_eq_one hA n

/-- The operator norm must pay the inverse cubic native energy allowance. -/
theorem continuous_linear_realization_cubic_cost {A : ℝ} (hA : 0 < A)
    {n : ℕ} (hn : 1 ≤ n) {T : ℝ} (after : Real.log (n : ℝ) ≤ T)
    (map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ))
    (realizes : map (originalWindowL2 T n) = prescribedSourceL2 A hA n) :
    1 ≤ ‖map‖ ^ 2 * ((T - Real.log (n : ℝ)) ^ 3 / (n : ℝ)) := by
  have bound := map.le_opNorm (originalWindowL2 T n)
  rw [realizes] at bound
  have squared := (sq_le_sq₀ (norm_nonneg _)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))).mpr bound
  rw [prescribed_source_L2_norm_square hA hn, mul_pow, original_window_L2_norm_square] at squared
  exact squared.trans (mul_le_mul_of_nonneg_left (gram_diagonal_cubic_upper hn after)
    (sq_nonneg _))

/-- Every positive gap is quantified; exact contact is not used in this contradiction. -/
theorem no_uniform_bounded_realization_for_scale_family {n : ℕ} (hn : 1 ≤ n)
    (scale : ℝ → ℝ) (positive : ∀ δ : ℝ, 0 < δ → 0 < scale δ)
    {C : ℝ} (nonnegative : 0 ≤ C) :
    ¬ ∀ δ : ℝ, ∀ gap : 0 < δ,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        ‖map‖ ≤ C ∧ map (originalWindowL2 (Real.log (n : ℝ) + δ) n) =
          prescribedSourceL2 (scale δ) (positive δ gap) n := by
  intro uniform
  let δ : ℝ := 1 / (2 * (C + 1))
  have denominator : 0 < 2 * (C + 1) := by positivity
  have gap : 0 < δ := by dsimp [δ]; positivity
  have small : δ ≤ 1 / 2 := by
    dsimp [δ]
    apply (div_le_div_iff₀ denominator (by norm_num : (0 : ℝ) < 2)).mpr
    linarith
  have identity : δ * (2 * (C + 1)) = 1 := by
    dsimp [δ]
    field_simp
  have scaled : C * δ ≤ 1 / 2 := by nlinarith
  have squareBound := (sq_le_sq₀ (mul_nonneg nonnegative gap.le)
    (by norm_num : (0 : ℝ) ≤ 1 / 2)).mpr scaled
  have cubic : C ^ 2 * δ ^ 3 ≤ 1 / 8 := by
    calc
      _ = (C * δ) ^ 2 * δ := by ring
      _ ≤ (1 / 2 : ℝ) ^ 2 * δ := mul_le_mul_of_nonneg_right squareBound gap.le
      _ ≤ (1 / 2 : ℝ) ^ 2 * (1 / 2) :=
        mul_le_mul_of_nonneg_left small (by norm_num)
      _ = 1 / 8 := by norm_num
  obtain ⟨map, normBound, realizes⟩ := uniform δ gap
  have cost := continuous_linear_realization_cubic_cost (positive δ gap) hn
    (by linarith : Real.log (n : ℝ) ≤ Real.log (n : ℝ) + δ) map realizes
  rw [add_sub_cancel_left] at cost
  have normSquare := (sq_le_sq₀ (norm_nonneg _) nonnegative).mpr normBound
  have nPositive : (0 : ℝ) < n := Nat.cast_pos.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
  have nAtLeastOne : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have oneLe : (1 : ℝ) ≤ 1 / 8 := by
    calc
      1 ≤ ‖map‖ ^ 2 * (δ ^ 3 / (n : ℝ)) := cost
      _ ≤ C ^ 2 * (δ ^ 3 / (n : ℝ)) :=
        mul_le_mul_of_nonneg_right normSquare (div_nonneg (pow_nonneg gap.le _) nPositive.le)
      _ = (C ^ 2 * δ ^ 3) / (n : ℝ) := by ring
      _ ≤ C ^ 2 * δ ^ 3 :=
        div_le_self (mul_nonneg (sq_nonneg C) (pow_nonneg gap.le _)) nAtLeastOne
      _ ≤ 1 / 8 := cubic
  norm_num at oneLe

theorem log_eight_near_contact_scale_bounds {δ : ℝ} (gap : 0 < δ) :
    1 ≤ (Real.log (8 : ℝ) + δ) / 2 ∧ 0 < (Real.log (8 : ℝ) + δ) / 2 := by
  have logEight : Real.log (8 : ℝ) = 3 * Real.log 2 := by
    rw [show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  rw [logEight]
  constructor <;> linarith [Real.log_two_gt_d9]

/-- Literal T=2A, A>=1, and strictly positive arrival gaps for the admitted label8. -/
theorem prescribed_horizon_no_uniform_bounded_realization {C : ℝ} (nonnegative : 0 ≤ C) :
    ¬ ∀ δ : ℝ, ∀ gap : 0 < δ,
      ∃ map : Lp ℝ 2 (volume : Measure ℝ) →L[ℝ] Lp ℝ 2 (volume : Measure ℝ),
        ‖map‖ ≤ C ∧
          map (originalWindowL2 (2 * ((Real.log (8 : ℝ) + δ) / 2)) 8) =
            prescribedSourceL2 ((Real.log (8 : ℝ) + δ) / 2)
              (log_eight_near_contact_scale_bounds gap).2 8 := by
  intro uniform
  apply no_uniform_bounded_realization_for_scale_family (n := 8) (by norm_num)
    (fun δ ↦ (Real.log (8 : ℝ) + δ) / 2)
    (fun _ gap ↦ (log_eight_near_contact_scale_bounds gap).2) nonnegative
  intro δ gap
  obtain ⟨map, normBound, realizes⟩ := uniform δ gap
  refine ⟨map, normBound, ?_⟩
  rw [show 2 * ((Real.log (8 : ℝ) + δ) / 2) = Real.log (8 : ℝ) + δ by ring] at realizes
  exact realizes

end

end GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost
```
