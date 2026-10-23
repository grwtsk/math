/-
Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenAliasing
import Mathlib.Tactic
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

namespace GRWTSK.RiemannHypothesis

def greenPhaseAntiderivative (k : ℤ) (t : ℝ) : ℂ :=
  (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
    fourier (-k) (t : AddCircle (1 : ℝ))

theorem greenPhaseAntiderivative_hasDerivAt
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    HasDerivAt (greenPhaseAntiderivative k)
      (fourier (-k) (t : AddCircle (1 : ℝ))) t := by
  simpa [greenPhaseAntiderivative, thinFourierModeSlope] using
    fourierModePrimitive_hasDerivAt_thin hk t

def greenReciprocalComplex (t : ℝ) : ℂ :=
  (1 : ℂ) / (1 + (t : ℂ))

theorem greenReciprocalComplex_hasDerivAt
    (t : ℝ) (ht : t ≠ -1) :
    HasDerivAt greenReciprocalComplex
      (-1 / (1 + (t : ℂ))^2) t := by
  unfold greenReciprocalComplex
  convert (hasDerivAt_const t (1 : ℂ)).div
    ((hasDerivAt_id t).ofReal_clm.add_const 1)
    (by
      intro h
      apply ht
      apply_fun Complex.re at h
      norm_num at h ⊢
      linarith) using 1 <;> ring

/-- Exact integration-by-parts identity for the continuum phase integral. -/
theorem greenContinuumPhaseIntegral_ibp
    {k : ℤ} (hk : k ≠ 0) :
    greenContinuumPhaseIntegral k =
      greenPhaseAntiderivative k 1 * greenReciprocalComplex 1 -
      greenPhaseAntiderivative k 0 * greenReciprocalComplex 0 +
      ∫ t in (0 : ℝ)..1,
        greenPhaseAntiderivative k t /
          (1 + (t : ℂ))^2 := by
  unfold greenContinuumPhaseIntegral
  have hv : ∀ t ∈ Set.uIcc (0 : ℝ) 1,
      HasDerivAt (greenPhaseAntiderivative k)
        (fourier (-k) (t : AddCircle (1 : ℝ))) t :=
    fun t _ => greenPhaseAntiderivative_hasDerivAt hk t
  have hw : ∀ t ∈ Set.uIcc (0 : ℝ) 1,
      HasDerivAt greenReciprocalComplex
        (-1 / (1 + (t : ℂ))^2) t := by
    intro t ht
    exact greenReciprocalComplex_hasDerivAt t (by
      rw [Set.uIcc_of_le (by norm_num)] at ht
      linarith [ht.1])
  have hibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hv hw
  simpa [greenReciprocalComplex, mul_comm, mul_left_comm,
    mul_assoc, div_eq_mul_inv] using hibp.symm

/-- Coarse but explicit O(1/|k|) continuum phase bound. -/
theorem norm_greenContinuumPhaseIntegral_le
    {k : ℤ} (hk : k ≠ 0) :
    ‖greenContinuumPhaseIntegral k‖ ≤
      3 / (2 * Real.pi * |(k : ℝ)|) := by
  rw [greenContinuumPhaseIntegral_ibp hk]
  have hv (t : ℝ) :
      ‖greenPhaseAntiderivative k t‖ =
        1 / (2 * Real.pi * |(k : ℝ)|) := by
    unfold greenPhaseAntiderivative
    rw [norm_mul, norm_div, norm_one, norm_mul, norm_mul,
      norm_mul, norm_ofNat, Real.norm_eq_abs, abs_of_pos Real.pi_pos,
      norm_I, norm_intCast, norm_fourier]
    field_simp
    ring
  have hboundary :
      ‖greenPhaseAntiderivative k 1 * greenReciprocalComplex 1 -
        greenPhaseAntiderivative k 0 * greenReciprocalComplex 0‖ ≤
        3 / (4 * Real.pi * |(k : ℝ)|) := by
    calc
      _ ≤ ‖greenPhaseAntiderivative k 1 * greenReciprocalComplex 1‖ +
          ‖greenPhaseAntiderivative k 0 * greenReciprocalComplex 0‖ :=
        norm_sub_le _ _
      _ = 3 / (4 * Real.pi * |(k : ℝ)|) := by
        rw [norm_mul, norm_mul, hv, hv]
        norm_num [greenReciprocalComplex]
        field_simp
        ring
  have hint :
      ‖∫ t in (0 : ℝ)..1,
          greenPhaseAntiderivative k t / (1 + (t : ℂ))^2‖ ≤
        3 / (4 * Real.pi * |(k : ℝ)|) := by
    calc
      _ ≤ ∫ t in (0 : ℝ)..1,
          ‖greenPhaseAntiderivative k t / (1 + (t : ℂ))^2‖ := by
        exact intervalIntegral.norm_integral_le_integral_norm _
      _ ≤ ∫ _t in (0 : ℝ)..1,
          1 / (2 * Real.pi * |(k : ℝ)|) := by
        apply intervalIntegral.integral_mono_on
        · positivity
        · intro t ht
          rw [norm_div, norm_pow, hv]
          have hden : 1 ≤ ‖(1 + (t : ℂ))‖ := by
            rw [Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg]
            · linarith [ht.1]
            · linarith [ht.1]
          exact div_le_self (by positivity) (by nlinarith)
      _ = 1 / (2 * Real.pi * |(k : ℝ)|) := by simp
      _ ≤ 3 / (4 * Real.pi * |(k : ℝ)|) := by
        have hkabs : 0 < |(k : ℝ)| := abs_pos.mpr (by exact_mod_cast hk)
        positivity
  exact (norm_add_le _ _).trans (by linarith)

theorem greenContinuumConstantIntegral_eq_log_two :
    greenContinuumConstantIntegral = Real.log 2 := by
  unfold greenContinuumConstantIntegral
  rw [← ofReal_intervalIntegral]
  congr 1
  norm_num
  rw [intervalIntegral.integral_inv_one_add]
  norm_num

end GRWTSK.RiemannHypothesis
