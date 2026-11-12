/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilFourierMoments
import Mathlib.Tactic.FieldSimp

/-!
# An actual-digamma lower floor outside a finite frequency window

MSC2020: 11M26 (primary), 33B15, 42A38.

The positive rational partial sum is a LOWER bound on the original centered
multiplier at every frequency beyond the window. Integrating that inequality
charges the actual low-frequency mass, rather than supplying a positive
replacement form. The test is the unchanged complex smooth compact test;
its genuine Fourier integrability and Plancherel identity are reused.

Consumer: WeilFourierSampleCoercivity turns the low-frequency mass into
finite Fourier samples with a support-derived error, then supplies a positive
finite-codimensional sector of the full arithmetic form in the written
companion. This file does not establish all-test arithmetic positivity,
the completed explicit formula, or RH/GRH. The baseline remains signed.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent review and numerical certification NOT_RUN.
Source: math@1135f59fbcee3bb4ac4d1c0a8b276cb0b739b572. Lean v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Classical series comparator:
NIST DLMF 5.7.6. No novelty claim. Individual provenance is adjacent.
Coordination: math#1801, scope comment 6817699521.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilArchimedeanFloor

open WeilNegativeWitness WeilFourierMoments
open GRWTSK.SpecialFunctions.CenteredDigamma
open GRWTSK.SpecialFunctions.ArchimedeanMomentBounds

private theorem term_mono_square {s y z : ℝ} (hs : 0 < s)
    (hyz : y ^ 2 ≤ z ^ 2) : term s y ≤ term s z := by
  have hy : 0 < s ^ 2 + y ^ 2 :=
    add_pos_of_pos_of_nonneg (sq_pos_of_pos hs) (sq_nonneg y)
  have hz : 0 < s ^ 2 + z ^ 2 :=
    add_pos_of_pos_of_nonneg (sq_pos_of_pos hs) (sq_nonneg z)
  have hid : term s z - term s y =
      s * (z ^ 2 - y ^ 2) / ((s ^ 2 + z ^ 2) * (s ^ 2 + y ^ 2)) := by
    unfold term
    field_simp [hs.ne', hy.ne', hz.ne'] <;> ring
  apply sub_nonneg.mp
  rw [hid]
  exact div_nonneg (mul_nonneg hs.le (sub_nonneg.mpr hyz))
    (mul_pos hz hy).le

/-- Every retained term is monotone in the square of its imaginary argument.
Return to the ACTUAL centered digamma through the existing source identity. -/
theorem partialSum_le_centered_of_sq_le {sigma y z : ℝ}
    (hsigma : 0 < sigma) (hyz : y ^ 2 ≤ z ^ 2) (N : ℕ) :
    partialSum sigma y N ≤ centered sigma z := by
  have hm : partialSum sigma y N ≤ partialSum sigma z N := by
    unfold partialSum
    apply Finset.sum_le_sum
    intro n _
    exact term_mono_square
      (add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)) hyz
  exact hm.trans (sub_nonneg.mp (centered_tail_enclosure hsigma z N).1)

/-- An explicit, increasing-in-N floor. All N rational summands are retained.
No asymptotic estimate of the actual digamma function is assumed. -/
theorem half_reciprocalCap_le_partialSum {sigma U : ℝ}
    (hsigma : 0 < sigma) (N : ℕ)
    (hU : 2 * (sigma + (N : ℝ)) ≤ U) :
    reciprocalCap sigma N / 2 ≤ partialSum sigma (U / 2) N := by
  have hterm (n : ℕ) (hn : n ∈ Finset.range N) :
      1 / (2 * (sigma + (n : ℝ))) ≤ term (sigma + (n : ℝ)) (U / 2) := by
    have hs : 0 < sigma + (n : ℝ) :=
      add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
    have hnR : (n : ℝ) ≤ (N : ℝ) :=
      Nat.cast_le.mpr (Nat.le_of_lt (Finset.mem_range.mp hn))
    have hsy : sigma + (n : ℝ) ≤ U / 2 := by linarith
    have hy0 : 0 ≤ U / 2 := hs.le.trans hsy
    have hsq : (sigma + (n : ℝ)) ^ 2 ≤ (U / 2) ^ 2 := by nlinarith
    have hden : 0 < (sigma + (n : ℝ)) *
        ((sigma + (n : ℝ)) ^ 2 + (U / 2) ^ 2) := by positivity
    unfold term
    apply (div_le_div_iff₀ (show 0 < 2 * (sigma + (n : ℝ)) by positivity) hden).2
    nlinarith [mul_nonneg hs.le (sub_nonneg.mpr hsq)]
  calc
    reciprocalCap sigma N / 2 =
        ∑ n ∈ Finset.range N, 1 / (2 * (sigma + (n : ℝ))) := by
      unfold reciprocalCap
      rw [Finset.sum_div]
      apply Finset.sum_congr rfl
      intro n _
      have hp : 0 < sigma + (n : ℝ) :=
        add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
      field_simp [hp.ne'] <;> ring
    _ ≤ partialSum sigma (U / 2) N := by
      unfold partialSum
      exact Finset.sum_le_sum hterm

private theorem outside_square {U t : ℝ} (hU : 0 < U)
    (ht : t ∉ Icc (-U) U) : (U / 2) ^ 2 ≤ (t / 2) ^ 2 := by
  have habs : U ≤ |t| := by
    by_cases hl : -U ≤ t
    · have hr : U < t := lt_of_not_ge (fun h => ht ⟨hl, h⟩)
      exact hr.le.trans (le_abs_self t)
    · have hl' : t < -U := lt_of_not_ge hl
      have ha := neg_le_abs t
      linarith
  nlinarith [sq_abs t, mul_nonneg (sub_nonneg.mpr habs)
    (add_nonneg (abs_nonneg t) hU.le)]

/-- A lower bound for the complete, uncentered archimedean source. The only
subtracted quantity is the actual Fourier mass in the finite window. Its
integrability is derived from admissibility before any integral subtraction. -/
theorem admissible_archimedean_lower_of_lowMass (q : ℕ) (hq : 1 ≤ q)
    {sigma U : ℝ} (hsigma : 0 < sigma) (hU : 0 < U)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f) :
    (baseline q sigma + partialSum sigma (U / 2) N) *
        (∫ x : ℝ, ‖f x‖ ^ 2) -
      partialSum sigma (U / 2) N *
        (∫ t in Icc (-U) U, spectrumWeight (plusFourier f) t) ≤
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) := by
  let w : ℝ → ℝ := spectrumWeight (plusFourier f)
  let S : ℝ := partialSum sigma (U / 2) N
  have hw : Measurable w :=
    (((admissible_plusFourier_continuous hf).norm.pow 2).div_const _).measurable
  have hw0 (t : ℝ) : 0 ≤ w t := by dsimp [w, spectrumWeight]; positivity
  obtain ⟨h0, h2⟩ := admissible_spectral_integrability hf
  have hc := integrable_weighted_centered hsigma hw hw0 h2
  have hi : Integrable ((Icc (-U) U).indicator w) :=
    h0.indicator measurableSet_Icc
  have hpoint (t : ℝ) :
      S * w t - S * (Icc (-U) U).indicator w t ≤ w t * centered sigma (t / 2) := by
    by_cases ht : t ∈ Icc (-U) U
    · rw [indicator_of_mem ht, sub_self]
      exact mul_nonneg (hw0 t) (centered_bounds hsigma (t / 2)).1
    · rw [indicator_of_notMem ht, mul_zero, sub_zero]
      have hb := partialSum_le_centered_of_sq_le hsigma (outside_square hU ht) N
      simpa only [S, mul_comm] using mul_le_mul_of_nonneg_left hb (hw0 t)
  have hbound := integral_mono ((h0.const_mul S).sub (hi.const_mul S)) hc hpoint
  rw [integral_sub (h0.const_mul S) (hi.const_mul S),
    integral_const_mul, integral_const_mul,
    integral_indicator measurableSet_Icc] at hbound
  have hmass : (∫ t : ℝ, w t) = ∫ x : ℝ, ‖f x‖ ^ 2 :=
    admissible_zeroth_moment hf
  change (baseline q sigma + S) * (∫ x : ℝ, ‖f x‖ ^ 2) -
    S * (∫ t in Icc (-U) U, w t) ≤ spectralFunctional q sigma w
  rw [spectral_eq_baseline_add_centered q hsigma hw hw0 h0 h2, hmass]
  rw [hmass] at hbound
  calc
    _ = baseline q sigma * (∫ x : ℝ, ‖f x‖ ^ 2) +
        (S * (∫ x : ℝ, ‖f x‖ ^ 2) - S * (∫ t in Icc (-U) U, w t)) := by ring
    _ ≤ _ := add_le_add_left hbound _

end GRWTSK.NumberTheory.WeilArchimedeanFloor
