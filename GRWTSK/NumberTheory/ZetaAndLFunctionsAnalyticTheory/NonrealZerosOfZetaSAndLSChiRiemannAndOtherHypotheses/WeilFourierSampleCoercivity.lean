/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilArchimedeanFloor
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.WeilFourierSupportQuadrature

/-!
# Finite Fourier samples control every possible archimedean low direction

MSC2020: 11M26 (primary), 42A38, 65D32.

The old estimates approximate the archimedean value from both sides. Here
we instead prove a LOWER coercivity estimate with an explicit finite-rank
correction. It applies to every supported admissible COMPLEX test, not only
to vectors in a selected finite span. Physical support supplies the modulus
of the actual Fourier mass, and every frequency cell is integrated.

With D=h*sum_j |F(t_j)|^2/(2*pi), alpha=4*A^2*U^2/(pi*m),
and S=S_N(sigma,U/2), the source result is
  arch(f) >= [beta + S*(1-alpha)]*M0(f) - S*D(f).
The sample-null sector therefore has an explicit lower floor. Under the
finite conditions U>=2*(sigma+N) and alpha<=1/2, that floor is at least
beta+H_N/4. No bound on derivative energy is assumed or discarded.

The companion returns to the COMPLETE (W)-oriented arithmetic source by
bounding all active primes and both signed poles in mass. It also supplies
written finite-codimensional positivity and explicit smooth sample-null
tests. These complete-form and test-construction arguments are NOT Lean
declarations here. The unresolved coupled finite-dimensional sign problem
is not replaced by certificate existence or a new research axiom.

SOURCE_PROOF_CANDIDATE. Elaboration, dependency build, fresh kernel replay,
transitive axiom audit, independent review and numerical certification NOT_RUN.
Source pin math@1135f59fbcee3bb4ac4d1c0a8b276cb0b739b572; Lean v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Finite-codimensional
coercivity has classical precedents; no novelty claim. See individual
provenance and the analytical companion. Coordination math#1801, 6817699521.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilFourierSampleCoercivity

open WeilNegativeWitness WeilFourierMoments WeilFourierQuadrature
open WeilFourierSupportQuadrature WeilArchimedeanFloor
open GRWTSK.SpecialFunctions.CenteredDigamma
open GRWTSK.SpecialFunctions.ArchimedeanMomentBounds

/-- Actual finite Fourier mass samples, with the established midpoint convention. -/
def sampleMass (f : ℝ → ℂ) (U : ℝ) (m : ℕ) : ℝ :=
  midpointSum (-U) (2 * U / (m : ℝ)) m (spectrumWeight (plusFourier f))

/-- Dimensionless leakage from integrating all frequency cells. Consumers use m>0. -/
def massLeakage (A U : ℝ) (m : ℕ) : ℝ :=
  4 * A ^ 2 * U ^ 2 / (Real.pi * (m : ℝ))

-- One-sided specialization of the standard whole-cell argument used in
-- WeilFourierQuadrature. Its general helper is private there; no existing
-- source or visibility is changed to add this independent consumer.
private theorem cell_upper {g : ℝ → ℝ} (hg : Continuous g) {L : ℝ}
    (hL : 0 ≤ L) (hLip : ∀ s t : ℝ, |g s - g t| ≤ L * |s - t|)
    (a h : ℝ) (hh : 0 ≤ h) :
    (∫ t in a..a + h, g t) ≤ h * g (a + h / 2) + L * h ^ 2 / 2 := by
  have heq : (∫ t in a..a + h, g t) - h * g (a + h / 2) =
      ∫ t in a..a + h, g t - g (a + h / 2) := by
    rw [intervalIntegral.integral_sub (hg.intervalIntegrable _ _) intervalIntegrable_const,
      intervalIntegral.integral_const]
    simp only [add_sub_cancel_left, smul_eq_mul]
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := a) (b := a + h) (C := L * h / 2)
    (f := fun t => g t - g (a + h / 2)) (fun t ht => by
      have ht' : t ∈ Ioc a (a + h) := by
        simpa only [uIoc_of_le (show a ≤ a + h by linarith)] using ht
      have hd : |t - (a + h / 2)| ≤ h / 2 :=
        abs_le.mpr ⟨by linarith [ht'.1], by linarith [ht'.2]⟩
      calc
        ‖g t - g (a + h / 2)‖ = |g t - g (a + h / 2)| := Real.norm_eq_abs _
        _ ≤ L * |t - (a + h / 2)| := hLip t (a + h / 2)
        _ ≤ L * (h / 2) := mul_le_mul_of_nonneg_left hd hL
        _ = L * h / 2 := by ring)
  have ha : |(∫ t in a..a + h, g t) - h * g (a + h / 2)| ≤ L * h ^ 2 / 2 := by
    rw [heq]
    simpa only [Real.norm_eq_abs, add_sub_cancel_left, abs_of_nonneg hh,
      show L * h / 2 * h = L * h ^ 2 / 2 by ring] using hb
  have hu := (abs_le.mp ha).2
  linarith

private theorem midpoint_upper {g : ℝ → ℝ} (hg : Continuous g) {L : ℝ}
    (hL : 0 ≤ L) (hLip : ∀ s t : ℝ, |g s - g t| ≤ L * |s - t|)
    (a h : ℝ) (hh : 0 ≤ h) (m : ℕ) :
    (∫ t in a..a + (m : ℝ) * h, g t) ≤
      midpointSum a h m g + (m : ℝ) * L * h ^ 2 / 2 := by
  have hsplit : (∑ j ∈ Finset.range m,
      ∫ t in (a + (j : ℝ) * h)..(a + ((j + 1 : ℕ) : ℝ) * h), g t) =
      ∫ t in a..a + (m : ℝ) * h, g t := by
    simpa only [Nat.cast_zero, zero_mul, add_zero] using
      (intervalIntegral.sum_integral_adjacent_intervals
        (a := fun j : ℕ => a + (j : ℝ) * h) (n := m)
        (fun j _ => hg.intervalIntegrable _ _))
  have hends (j : ℕ) : a + ((j + 1 : ℕ) : ℝ) * h = a + (j : ℝ) * h + h := by
    push_cast
    ring
  simp_rw [hends] at hsplit
  rw [← hsplit]
  calc
    _ ≤ ∑ j ∈ Finset.range m,
        (h * g (a + (j : ℝ) * h + h / 2) + L * h ^ 2 / 2) :=
      Finset.sum_le_sum fun j _ => cell_upper hg hL hLip (a + (j : ℝ) * h) h hh
    _ = _ := by simp [midpointSum, Finset.sum_add_distrib, Finset.mul_sum]; ring

private theorem supported_weight_modulus {f : ℝ → ℂ} (hf : Admissible f)
    {A : ℝ} (hA : 0 < A)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) (s t : ℝ) :
    |spectrumWeight (plusFourier f) s - spectrumWeight (plusFourier f) t| ≤
      (2 * A ^ 2 / Real.pi * (∫ x : ℝ, ‖f x‖ ^ 2)) * |s - t| := by
  obtain ⟨h0, hx⟩ := admissible_supported_moment_bounds hf hA hsupport
  have hmass : 0 ≤ l1Mass f := integral_nonneg fun x => norm_nonneg (f x)
  have hp : l1Mass f * firstMoment f ≤ 2 * A ^ 2 * (∫ x : ℝ, ‖f x‖ ^ 2) := by
    calc
      _ ≤ l1Mass f * (A * l1Mass f) := mul_le_mul_of_nonneg_left hx hmass
      _ = A * l1Mass f ^ 2 := by ring
      _ ≤ A * (2 * A * (∫ x : ℝ, ‖f x‖ ^ 2)) :=
        mul_le_mul_of_nonneg_left h0 hA.le
      _ = _ := by ring
  calc
    _ ≤ (l1Mass f * firstMoment f / Real.pi) * |s - t| :=
      admissible_spectrumWeight_sub_bound hf s t
    _ ≤ ((2 * A ^ 2 * (∫ x : ℝ, ‖f x‖ ^ 2)) / Real.pi) * |s - t| :=
      mul_le_mul_of_nonneg_right
        (div_le_div_of_nonneg_right hp Real.pi_pos.le) (abs_nonneg _)
    _ = _ := by ring

/-- A finite sum controls the entire low-frequency mass, with a derived mass-relative
cell error. No frequency-cell value is inferred from a point value alone. -/
theorem admissible_lowMass_le_samples {f : ℝ → ℂ} (hf : Admissible f)
    {A U : ℝ} (hA : 0 < A) (hU : 0 < U)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0)
    (m : ℕ) (hm : 0 < m) :
    (∫ t in Icc (-U) U, spectrumWeight (plusFourier f) t) ≤
      sampleMass f U m + massLeakage A U m * (∫ x : ℝ, ‖f x‖ ^ 2) := by
  have hc : Continuous (spectrumWeight (plusFourier f)) :=
    ((admissible_plusFourier_continuous hf).norm.pow 2).div_const _
  have hmass : 0 ≤ ∫ x : ℝ, ‖f x‖ ^ 2 := integral_nonneg fun x => sq_nonneg _
  have hL : 0 ≤ 2 * A ^ 2 / Real.pi * (∫ x : ℝ, ‖f x‖ ^ 2) := by positivity
  have hmR : 0 < (m : ℝ) := Nat.cast_pos.mpr hm
  have hp := midpoint_upper hc hL (supported_weight_modulus hf hA hsupport)
    (-U) (2 * U / (m : ℝ)) (by positivity) m
  have hend : -U + (m : ℝ) * (2 * U / (m : ℝ)) = U := by
    field_simp [hmR.ne'] <;> ring
  rw [hend] at hp
  have hset : (∫ t in Icc (-U) U, spectrumWeight (plusFourier f) t) =
      ∫ t in (-U)..U, spectrumWeight (plusFourier f) t := by
    rw [intervalIntegral.integral_of_le (show -U ≤ U by linarith),
      integral_Icc_eq_integral_Ioc]
  have hcharge : (m : ℝ) *
      (2 * A ^ 2 / Real.pi * (∫ x : ℝ, ‖f x‖ ^ 2)) *
      (2 * U / (m : ℝ)) ^ 2 / 2 =
      massLeakage A U m * (∫ x : ℝ, ‖f x‖ ^ 2) := by
    unfold massLeakage
    field_simp [hmR.ne', Real.pi_ne_zero] <;> ring
  rw [hcharge] at hp
  rw [hset]
  simpa only [sampleMass] using hp

private theorem floor_nonneg {sigma : ℝ} (hsigma : 0 < sigma) (U : ℝ) (N : ℕ) :
    0 ≤ partialSum sigma (U / 2) N := by
  unfold partialSum
  apply Finset.sum_nonneg
  intro n _
  have hs : 0 < sigma + (n : ℝ) :=
    add_pos_of_pos_of_nonneg hsigma (Nat.cast_nonneg n)
  unfold term
  positivity

/-- The actual archimedean source is bounded BELOW by mass minus an explicit
finite Fourier-sample correction. No derivative-energy upper bound is needed. -/
theorem admissible_archimedean_sample_lower (q : ℕ) (hq : 1 ≤ q)
    {sigma A U : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hU : 0 < U)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) (m : ℕ) (hm : 0 < m) :
    (baseline q sigma + partialSum sigma (U / 2) N * (1 - massLeakage A U m)) *
        (∫ x : ℝ, ‖f x‖ ^ 2) -
      partialSum sigma (U / 2) N * sampleMass f U m ≤
        spectralFunctional q sigma (spectrumWeight (plusFourier f)) := by
  have ha := admissible_archimedean_lower_of_lowMass q hq hsigma hU N hf
  have hl := admissible_lowMass_le_samples hf hA hU hsupport m hm
  have hmul := mul_le_mul_of_nonneg_left hl (floor_nonneg hsigma U N)
  calc
    _ = (baseline q sigma + partialSum sigma (U / 2) N) *
        (∫ x : ℝ, ‖f x‖ ^ 2) - partialSum sigma (U / 2) N *
        (sampleMass f U m + massLeakage A U m * (∫ x : ℝ, ‖f x‖ ^ 2)) := by ring
    _ ≤ (baseline q sigma + partialSum sigma (U / 2) N) *
        (∫ x : ℝ, ‖f x‖ ^ 2) - partialSum sigma (U / 2) N *
        (∫ t in Icc (-U) U, spectrumWeight (plusFourier f) t) := sub_le_sub_left hmul _
    _ ≤ _ := ha

/-- Every exact sample-null test is covered, not only a finite list of vectors.
The companion separately constructs nonzero smooth examples. -/
theorem admissible_archimedean_sample_null_lower (q : ℕ) (hq : 1 ≤ q)
    {sigma A U : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hU : 0 < U)
    (N : ℕ) {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) (m : ℕ) (hm : 0 < m)
    (hzero : ∀ j < m,
      plusFourier f (-U + (j : ℝ) * (2 * U / (m : ℝ)) + (2 * U / (m : ℝ)) / 2) = 0) :
    (baseline q sigma + partialSum sigma (U / 2) N * (1 - massLeakage A U m)) *
        (∫ x : ℝ, ‖f x‖ ^ 2) ≤
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) := by
  have hz : sampleMass f U m = 0 := by
    unfold sampleMass midpointSum
    have hs : (∑ j ∈ Finset.range m,
        spectrumWeight (plusFourier f)
          (-U + (j : ℝ) * (2 * U / (m : ℝ)) + (2 * U / (m : ℝ)) / 2)) = 0 := by
      apply Finset.sum_eq_zero
      intro j hj
      simp only [spectrumWeight, hzero j (Finset.mem_range.mp hj), norm_zero,
        zero_pow (by norm_num : (2 : ℕ) ≠ 0), zero_div]
    rw [hs, mul_zero]
  have h := admissible_archimedean_sample_lower q hq hsigma hA hU N hf hsupport m hm
  simpa only [hz, mul_zero, sub_zero] using h

/-- Two explicit finite parameter inequalities guarantee an arbitrarily raisable
archimedean floor on the sample-null sector. The complete arithmetic application
sets its required floor above the prime-and-signed-pole mass budget. -/
theorem admissible_archimedean_sample_null_cap_lower (q : ℕ) (hq : 1 ≤ q)
    {sigma A U : ℝ} (hsigma : 0 < sigma) (hA : 0 < A) (hU : 0 < U)
    (N : ℕ) (hfrequency : 2 * (sigma + (N : ℝ)) ≤ U)
    {f : ℝ → ℂ} (hf : Admissible f)
    (hsupport : ∀ x, x ∉ Icc (-A) A → f x = 0) (m : ℕ) (hm : 0 < m)
    (hmesh : massLeakage A U m ≤ 1 / 2)
    (hzero : ∀ j < m,
      plusFourier f (-U + (j : ℝ) * (2 * U / (m : ℝ)) + (2 * U / (m : ℝ)) / 2) = 0) :
    (baseline q sigma + reciprocalCap sigma N / 4) * (∫ x : ℝ, ‖f x‖ ^ 2) ≤
      spectralFunctional q sigma (spectrumWeight (plusFourier f)) := by
  have hs := half_reciprocalCap_le_partialSum hsigma N hfrequency
  have hs0 := floor_nonneg hsigma U N
  have hcoef : baseline q sigma + reciprocalCap sigma N / 4 ≤
      baseline q sigma + partialSum sigma (U / 2) N * (1 - massLeakage A U m) := by
    have hp := mul_le_mul_of_nonneg_left
      (show (1 / 2 : ℝ) ≤ 1 - massLeakage A U m by linarith) hs0
    nlinarith
  have hmass : 0 ≤ ∫ x : ℝ, ‖f x‖ ^ 2 := integral_nonneg fun x => sq_nonneg _
  exact (mul_le_mul_of_nonneg_right hcoef hmass).trans
    (admissible_archimedean_sample_null_lower q hq hsigma hA hU N hf hsupport m hm hzero)

end GRWTSK.NumberTheory.WeilFourierSampleCoercivity
