# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceCenteredMixedWorkEnvelope.Variantd0bb4ac758b205c0b42be030f0aef0bce11291e4b2062f036cd8189d7de51ddb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb6102f2326099456cd6779f0d71970d6ab7597b` · SHA-256 `d0bb4ac758b205c0b42be030f0aef0bce11291e4b2062f036cd8189d7de51ddb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceConstantOffsetCancellation
import SourceColumnEnvelopeMass

/-!
# Actual centered-error work: temporal and column mass transport

AI attribution: OpenAI Codex. Source-column derivatives and positive-cell FTC
are retained from the kernel-checked actual-source proof. Error integrability
is constructed for e(t)-offset, with offset an arbitrary real constant at fixed A.
Temporal integration keeps this actual centered mass and the original strict
centered-prefix column mass. No uniform compensated signed witness is supplied.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCenteredMixedWorkEnvelope

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

private theorem errorColumn_work_abs_le {A k : ℝ} (hA : 1 ≤ A) (hk : 0 < k)
    (offset l b : ℝ) (hlb : l ≤ b) :
    |∫ t in l..b, (mangoldtLogError t - offset) *
      (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))| ≤
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        (∫ t in l..b, |(mangoldtLogError t - offset)| * Real.exp (t / 2)) * cellMass k := by
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  calc
    _ ≤ ∫ t in l..b, |(mangoldtLogError t - offset) *
        (sourceColumnTimeDeriv A t k - sourceColumnTimeDeriv A t (k + 1))| :=
      intervalIntegral.abs_integral_le_integral_abs hlb
    _ ≤ ∫ t in l..b,
        c * (|(mangoldtLogError t - offset)| * Real.exp (t / 2)) * cellMass k := by
      apply intervalIntegral.integral_mono_on hlb
        (errorColumn_integrable (by linarith : 0 < A) offset l b k hlb).abs
        (((weightedErrorAbs_integrable offset l b hlb).const_mul c).mul_const (cellMass k))
      intro t _
      exact errorColumn_pointwise_abs_le hA hk offset t
    _ = _ := by
      rw [intervalIntegral.integral_mul_const, intervalIntegral.integral_const_mul]

/-- All actual signed cells retain the constant-shifted arithmetic error before estimation. -/
theorem centeredErrorWork_abs_le_mixed_mass (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤ (162826 / (7623 * A ^ 2) + 1 / 4) *
      centeredErrorExpMass A offset *
        (∑ k ∈ Finset.Ico (vaughanCutoff A + 1)
          (sourceKernelCutoff A / (vaughanCutoff A + 1)),
          |∑ n ∈ Finset.Ioc (vaughanCutoff A) k, centeredBeta (vaughanCutoff A) n| *
            (∫ u in (k : ℝ)..((k : ℝ) + 1), 1 / (u * Real.sqrt u))) := by
  have hp : 0 < A := by linarith
  let U := vaughanCutoff A
  let N := sourceKernelCutoff A
  let s := Finset.Ico (U + 1) (N / (U + 1))
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  let l := Real.log (U : ℝ)
  let b := Real.log (N : ℝ)
  let c := 162826 / (7623 * A ^ 2) + (1 / 4 : ℝ)
  have hpos : ∀ k ∈ s, 0 < (k : ℝ) := by
    intro k hk
    have hk0 : 0 < k := by have := (Finset.mem_Ico.mp hk).1; omega
    exact_mod_cast hk0
  have hUN := vaughanCutoff_le_sourceKernelCutoff A hA
  have hU0 : 0 < (U : ℝ) := by
    exact_mod_cast (by have := vaughanCutoff_pos A hA; dsimp only [U]; omega : 0 < U)
  have hlb : l ≤ b := Real.log_le_log hU0 (by exact_mod_cast hUN)
  have hd (t : ℝ) : deriv (jointMangoldtTestProfile A) t =
      ∑ k ∈ s, B k * (sourceColumnTimeDeriv A t (k : ℝ) -
        sourceColumnTimeDeriv A t ((k : ℝ) + 1)) := by
    have h : HasDerivAt (fun t : ℝ => ∑ k ∈ s,
        B k * (sourceColumn A (k : ℝ) t - sourceColumn A ((k : ℝ) + 1) t))
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
  have hf : (fun t => (mangoldtLogError t - offset) * deriv (jointMangoldtTestProfile A) t) =
      (fun t : ℝ => ∑ k ∈ s, B k * ((mangoldtLogError t - offset) *
        (sourceColumnTimeDeriv A t (k : ℝ) - sourceColumnTimeDeriv A t ((k : ℝ) + 1)))) := by
    funext t
    rw [hd, Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    ring
  have he : centeredErrorWork A offset = ∑ k ∈ s, B k *
      (∫ t in l..b, (mangoldtLogError t - offset) *
        (sourceColumnTimeDeriv A t (k : ℝ) - sourceColumnTimeDeriv A t ((k : ℝ) + 1))) := by
    unfold centeredErrorWork
    rw [hf, intervalIntegral.integral_finsetSum (fun (k : ℕ) _ =>
      (errorColumn_integrable hp offset l b (k : ℝ) hlb).const_mul (B k))]
    simp_rw [intervalIntegral.integral_const_mul]
  rw [he]
  calc
    _ ≤ ∑ k ∈ s, |B k * (∫ t in l..b, (mangoldtLogError t - offset) *
        (sourceColumnTimeDeriv A t (k : ℝ) - sourceColumnTimeDeriv A t ((k : ℝ) + 1)))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ k ∈ s, |B k| * (c * centeredErrorExpMass A offset * cellMass (k : ℝ)) := by
      apply Finset.sum_le_sum
      intro k hk
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left
        (errorColumn_work_abs_le hA (hpos k hk) offset l b hlb) (abs_nonneg _)
    _ = _ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro k _
      change |B k| * (c * centeredErrorExpMass A offset * cellMass (k : ℝ)) =
        c * centeredErrorExpMass A offset * (|B k| * cellMass (k : ℝ))
      ring

/-- The new actual error mass transports against the unchanged original column mass. -/
theorem centeredErrorWork_abs_le_columnEnvelopeMass (A offset : ℝ) (hA : 1 ≤ A) :
    |centeredErrorWork A offset| ≤ (162826 / (7623 * A ^ 2) + 1 / 4) *
      centeredErrorExpMass A offset * columnEnvelopeMass A := by
  exact centeredErrorWork_abs_le_mixed_mass A offset hA

end
end FormalResearch.RiemannHypothesis.SourceCenteredMixedWorkEnvelope
```
