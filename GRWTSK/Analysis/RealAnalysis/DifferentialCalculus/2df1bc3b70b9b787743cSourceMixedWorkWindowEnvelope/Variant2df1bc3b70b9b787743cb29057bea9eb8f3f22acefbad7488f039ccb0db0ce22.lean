import SourceConstantOffsetCancellation
import SourceColumnEnvelopeMass

/-!
# Pointwise actual derivative and arbitrary temporal-window transport

AI attribution: OpenAI Codex. Source-column derivatives and positive-cell FTC
are retained from the kernel-checked actual-source proof. Error integrability
is constructed for e(t)-offset, with offset an arbitrary real constant at fixed A.
The pointwise derivative and arbitrary real ordered-window bounds use the original
strict centered-prefix column mass. No uniform compensated signed witness is supplied.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceMixedWorkWindowEnvelope

open MeasureTheory Set
open scoped BigOperators Interval
open SourcePairing SourceMangoldtAbel SourceCorrelationCurvature SourceActualMixedWorkEstimate
open SourceJointMangoldtWork SourceConstantOffsetCancellation SourceColumnEnvelopeMass
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateSourceMobiusKernel
open EstimateBetaCentering

noncomputable section

private def sourceColumn (A u t : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt u *
    sourceCorrelation explicitSecondDerivative A (t + Real.log u)

private def sourceColumnTimeDeriv (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / Real.sqrt u *
    (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u) +
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 2)

private def mixedDensity (A t u : ℝ) : ℝ :=
  Real.exp (t / 2) / (u * Real.sqrt u) *
    (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u) -
      sourceCorrelation explicitSecondDerivative A (t + Real.log u) / 4)


private theorem sourceColumn_hasDerivAt {A : ℝ} (hA : 0 < A) (u t : ℝ) :
    HasDerivAt (sourceColumn A u) (sourceColumnTimeDeriv A t u) t := by
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt
  have h := ((((hasDerivAt_id t).div_const 2).exp).div_const (Real.sqrt u)).mul
    (hc.comp t ((hasDerivAt_id t).add_const (Real.log u)))
  convert h using 1 <;> try rfl
  dsimp only [sourceColumnTimeDeriv, Function.comp_apply, id_eq]
  ring

private theorem column_derivative_algebra (u s c p d E : ℝ) (hs : s ≠ 0)
    (hsq : s * s = u) :
    (-(E * (1 / (2 * s))) / s ^ 2) * (p + c / 2) +
        (E / s) * (d * (1 / u) + p * (1 / u) / 2) =
      E / (u * s) * (d - c / 4) := by
  subst u
  field_simp [hs]
  ring

private theorem sourceColumnTimeDeriv_hasDerivAt_u
    {A u : ℝ} (hA : 0 < A) (hu : 0 < u) (t : ℝ) :
    HasDerivAt (sourceColumnTimeDeriv A t) (mixedDensity A t u) u := by
  have hlog := (Real.hasDerivAt_log hu.ne').const_add t
  have hc := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hd := ((sourceCorrelation_deriv_contDiff hA).differentiable (by norm_num)
    (t + Real.log u)).hasDerivAt.comp u hlog
  have hs : Real.sqrt u ≠ 0 := Real.sqrt_ne_zero'.mpr hu
  have h := ((hasDerivAt_const u (Real.exp (t / 2))).div
    (Real.hasDerivAt_sqrt hu.ne') hs).mul (hd.add (hc.div_const 2))
  convert h using 1 <;> try rfl
  simpa only [mixedDensity, zero_mul, zero_sub, one_div, Function.comp_apply,
    Pi.mul_apply, Pi.div_apply, Pi.add_apply] using
      (column_derivative_algebra u (Real.sqrt u)
        (sourceCorrelation explicitSecondDerivative A (t + Real.log u))
        (deriv (sourceCorrelation explicitSecondDerivative A) (t + Real.log u))
        (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (t + Real.log u))
        (Real.exp (t / 2)) hs (Real.mul_self_sqrt hu.le)).symm

private theorem mixedDensity_continuousOn_cell
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    ContinuousOn (mixedDensity A t) (Icc k (k + 1)) := by
  intro u hu
  have hu0 : 0 < u := hk.trans_le hu.1
  have hl := (Real.continuousAt_log hu0.ne').const_add t
  have hc := (sourceCorrelation_contDiff A hA).continuous.continuousAt.comp hl
  have hd := ((sourceCorrelation_deriv_contDiff hA).continuous_deriv
    (by norm_num)).continuousAt.comp hl
  have hden : ContinuousAt (fun x : ℝ => x * Real.sqrt x) u :=
      continuousAt_id.mul continuousAt_id.sqrt
  have hne : u * Real.sqrt u ≠ 0 :=
    mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
  exact ((continuousAt_const.div hden hne).mul
    (hd.sub (hc.div_const 4))).continuousWithinAt

private theorem sourceColumnTimeDeriv_sub_eq_neg_cell
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1) =
      -(∫ u in k..(k + 1), mixedDensity A t u) := by
  have hab : k ≤ k + 1 := le_add_of_nonneg_right (by norm_num)
  have hc : ContinuousOn (sourceColumnTimeDeriv A t) (Icc k (k + 1)) := by
    intro u hu
    have hcont := (sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans_le hu.1) t).continuousAt
    exact hcont.continuousWithinAt
  have hi : IntervalIntegrable (mixedDensity A t) volume k (k + 1) :=
    (mixedDensity_continuousOn_cell hA hk t).intervalIntegrable_of_Icc hab
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hab hc
    (fun u hu => sourceColumnTimeDeriv_hasDerivAt_u hA (hk.trans hu.1) t) hi
  linarith


private def cellMass (k : ℝ) : ℝ := ∫ u in k..(k + 1), 1 / (u * Real.sqrt u)

private theorem inverse_cell_integrable {k : ℝ} (hk : 0 < k) :
    IntervalIntegrable (fun u : ℝ => 1 / (u * Real.sqrt u)) volume k (k + 1) := by
  have hc : ContinuousOn (fun u : ℝ => 1 / (u * Real.sqrt u)) (Icc k (k + 1)) := by
    intro u hu
    have hu0 := hk.trans_le hu.1
    have hd : ContinuousAt (fun u : ℝ => u * Real.sqrt u) u :=
      continuousAt_id.mul continuousAt_id.sqrt
    exact (continuousAt_const.div hd
      (mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0))).continuousWithinAt
  exact hc.intervalIntegrable_of_Icc (by linarith)

private theorem cellMass_nonneg {k : ℝ} (hk : 0 < k) : 0 ≤ cellMass k := by
  apply intervalIntegral.integral_nonneg (by linarith)
  intro u hu
  have hu0 := hk.trans_le hu.1
  positivity

private theorem error_integrable (offset l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => mangoldtLogError t - offset) volume l b := by
  have he : IntervalIntegrable mangoldtLogError volume l b := by
    simpa using mangoldtLogError_mul_deriv_intervalIntegrable l b hlb
      (fun t : ℝ => t) contDiff_id
  exact he.sub (intervalIntegrable_const :
    IntervalIntegrable (fun _ : ℝ => offset) volume l b)

private theorem weightedErrorAbs_integrable (offset l b : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => |mangoldtLogError t - offset| *
      Real.exp (t / 2)) volume l b := by
  have hc : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
  exact (error_integrable offset l b hlb).abs.mul_continuousOn hc.continuousOn

private theorem timeColumn_continuous {A : ℝ} (hA : 0 < A) (u : ℝ) :
    Continuous (fun t => sourceColumnTimeDeriv A t u) := by
  have hc := (sourceCorrelation_contDiff A hA).continuous
  have hd := (sourceCorrelation_deriv_contDiff hA).continuous
  have he : Continuous (fun t : ℝ => Real.exp (t / 2)) := by fun_prop
  exact (he.div_const _).mul
    ((hd.comp (continuous_id.add continuous_const)).add
      ((hc.comp (continuous_id.add continuous_const)).div_const 2))

private theorem errorColumn_integrable {A : ℝ} (hA : 0 < A)
    (offset l b k : ℝ) (hlb : l ≤ b) :
    IntervalIntegrable (fun t => (mangoldtLogError t - offset) *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))) volume l b :=
  (error_integrable offset l b hlb).mul_continuousOn
    ((timeColumn_continuous hA k).sub (timeColumn_continuous hA (k + 1))).continuousOn

private theorem errorColumn_pointwise_abs_le {A k : ℝ} (hA : 1 ≤ A)
    (hk : 0 < k) (offset t : ℝ) :
    |(mangoldtLogError t - offset) *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        (|(mangoldtLogError t - offset)| * Real.exp (t / 2)) * cellMass k := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hp : 0 < A := by linarith
  have hab : k ≤ k + 1 := by linarith
  have hi : IntervalIntegrable (mixedDensity A t) volume k (k + 1) :=
    (mixedDensity_continuousOn_cell hp hk t).intervalIntegrable_of_Icc hab
  rw [sourceColumnTimeDeriv_sub_eq_neg_cell hp hk]
  rw [show (mangoldtLogError t - offset) * -(∫ u in k..(k + 1), mixedDensity A t u) =
    -(∫ u in k..(k + 1), (mangoldtLogError t - offset) * mixedDensity A t u) by
      rw [intervalIntegral.integral_const_mul]; ring, abs_neg]
  calc
    _ ≤ ∫ u in k..(k + 1), |(mangoldtLogError t - offset) * mixedDensity A t u| :=
      intervalIntegral.abs_integral_le_integral_abs hab
    _ ≤ ∫ u in k..(k + 1),
        (c * (|(mangoldtLogError t - offset)| * Real.exp (t / 2))) * (1 / (u * Real.sqrt u)) := by
      apply intervalIntegral.integral_mono_on hab (hi.const_mul _).abs
        ((inverse_cell_integrable hk).const_mul _)
      intro u hu
      have hu0 : 0 < u := hk.trans_le hu.1
      have hden : 0 ≤ Real.exp (t / 2) / (u * Real.sqrt u) := by positivity
      dsimp only [mixedDensity]
      rw [abs_mul, abs_mul, abs_of_nonneg hden]
      have h := mul_le_mul_of_nonneg_left (actual_mixed_kernel_abs_le A (t + Real.log u) hA)
        (mul_nonneg (abs_nonneg ((mangoldtLogError t - offset))) hden)
      convert h using 1 <;> first | rfl | ring
    _ = _ := by rw [intervalIntegral.integral_const_mul]; rfl

private theorem actual_derivative_eq_cells (A : ℝ) (hA : 1 ≤ A) (t : ℝ) :
    deriv (jointMangoldtTestProfile A) t =
      ∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
          (sourceKernelCutoff A / (vaughanCutoff A + 1)),
        (∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n) *
          (sourceColumnTimeDeriv A t (k : ℝ) -
            sourceColumnTimeDeriv A t ((k : ℝ) + 1)) := by
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let s := Finset.Ico (U + 1) (N / (U + 1))
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  have h : HasDerivAt (fun z : ℝ => ∑ k ∈ s,
      B k * (sourceColumn A (k : ℝ) z - sourceColumn A ((k : ℝ) + 1) z))
      (∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1))) t := by
    apply HasDerivAt.fun_sum
    intro k _
    exact ((sourceColumn_hasDerivAt hp (k : ℝ) t).sub
      (sourceColumn_hasDerivAt hp ((k : ℝ) + 1) t)).const_mul (B k)
  convert h.deriv using 1
  congr 2
  funext z
  simp only [jointMangoldtTestProfile, sourceColumn, U, N, s, B, Nat.cast_add, Nat.cast_one]

/-- Pointwise bound for the derivative of the original strict source profile, for every real t. -/
theorem actual_jointTest_derivative_abs_le_columnMass (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (jointMangoldtTestProfile A) t| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) * Real.exp (t / 2) * columnEnvelopeMass A := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let s := Finset.Ico (U + 1) (N / (U + 1))
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  rw [actual_derivative_eq_cells A hA t]
  calc
    _ ≤ ∑ k ∈ s, |B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1))| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ s, |B k| * (c * Real.exp (t / 2) * cellMass (k : ℝ)) := by
      apply Finset.sum_le_sum
      intro k hk
      have hk0 : 0 < (k : ℝ) := by
        exact_mod_cast (by have := (Finset.mem_Ico.mp hk).1; omega : 0 < k)
      have h := errorColumn_pointwise_abs_le hA hk0 (mangoldtLogError t - 1) t
      have he : mangoldtLogError t - (mangoldtLogError t - 1) = 1 := by ring
      rw [he, one_mul, abs_one, one_mul] at h
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left h (abs_nonneg _)
    _ = _ := by
      change (∑ k ∈ s, |B k| * (c * Real.exp (t / 2) * cellMass (k : ℝ))) =
        c * Real.exp (t / 2) * (∑ k ∈ s, |B k| * cellMass (k : ℝ))
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      ring

/-- Arbitrary real ordered windows keep their actual centered error mass and original columns. -/
theorem actual_centered_work_window_abs_le_mass
    (A offset p q : ℝ) (hA : 1 ≤ A) (hpq : p ≤ q) :
    |∫ t in p..q, (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        (∫ t in p..q, |mangoldtLogError t - offset| * Real.exp (t / 2)) *
          columnEnvelopeMass A := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hd := (actual_jointTest_contDiff A (by linarith : 0 < A)).continuous_deriv_one
  have hi : IntervalIntegrable
      (fun t => (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t)
      volume p q := (error_integrable offset p q hpq).mul_continuousOn hd.continuousOn
  have he := weightedErrorAbs_integrable offset p q hpq
  calc
    _ ≤ ∫ t in p..q,
        |(mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t| :=
      intervalIntegral.abs_integral_le_integral_abs hpq
    _ ≤ ∫ t in p..q,
        c * (|mangoldtLogError t - offset| * Real.exp (t / 2)) * columnEnvelopeMass A := by
      apply intervalIntegral.integral_mono_on hpq hi.abs
        ((he.const_mul c).mul_const (columnEnvelopeMass A))
      intro t _
      rw [abs_mul]
      have h := mul_le_mul_of_nonneg_left
        (actual_jointTest_derivative_abs_le_columnMass A t hA)
        (abs_nonneg (mangoldtLogError t - offset))
      convert h using 1 <;> first | rfl | ring
    _ = _ := by
      rw [intervalIntegral.integral_mul_const, intervalIntegral.integral_const_mul]

end
end FormalResearch.RiemannHypothesis.SourceMixedWorkWindowEnvelope
