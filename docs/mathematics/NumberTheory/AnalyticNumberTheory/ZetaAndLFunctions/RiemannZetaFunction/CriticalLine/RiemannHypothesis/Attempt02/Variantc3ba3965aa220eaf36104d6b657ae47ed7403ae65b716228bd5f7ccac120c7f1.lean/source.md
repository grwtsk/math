# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Attempt02.Variantc3ba3965aa220eaf36104d6b657ae47ed7403ae65b716228bd5f7ccac120c7f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38b4a12bb02c355635d40f5bd566f6e293598d5c` · SHA-256 `c3ba3965aa220eaf36104d6b657ae47ed7403ae65b716228bd5f7ccac120c7f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiDampedFiniteBound

/-!
Actual inverse-square arithmetic cancellation controls the fixed-damping
primitive. A further genuine finite Abel transfer therefore removes the old
inverse-distance norm loss on the initial REAL Laplace axis. All upper
primitive traces are retained before the improper limit. This supplies no
undamped absolute average, critical-frequency or original Psi witness.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiRealLaplaceUniform
open MeasureTheory Set Filter Complex
open scoped Interval Topology
open SourceActualXiDampedFiniteBound RootActualXiTailPrimitive
open RootActualXiExponentialEnvelope RootActualXiComplexLaplaceBudget
noncomputable section

/-- The same literal fixed-damping primitive has its true zero lower anchor. -/
theorem actualDampedXiFinitePrimitive_at_lower :
    actualDampedXiFinitePrimitive (Real.log 7) = 0 := by
  simp [actualDampedXiFinitePrimitive]

/-- Genuine finite L1 makes the same actual signed fixed-damping primitive AC. -/
theorem actualDampedXiFinitePrimitive_absolutelyContinuous {T : ℝ} (hT : Real.log 7 ≤ T) :
    AbsolutelyContinuousOnInterval actualDampedXiFinitePrimitive (Real.log 7) T := by
  have hi := actualDampedXiFinitePrimitive_intervalIntegrable hT
  exact hi.absolutelyContinuousOnInterval_intervalIntegral
    (by simp : Real.log 7 ∈ uIcc (Real.log 7) T)

/-- The actual fixed-damping primitive has its original AE derivative on finite windows. -/
theorem actualDampedXiFinitePrimitive_ae_hasDerivAt {T : ℝ} (hT : Real.log 7 ≤ T) :
    ∀ᵐ t, t ∈ uIcc (Real.log 7) T → HasDerivAt actualDampedXiFinitePrimitive
      (actualAnchoredXiTailPrimitive t * Real.exp (-t / 2)) t := by
  filter_upwards [(actualDampedXiFinitePrimitive_intervalIntegrable hT).ae_hasDerivAt_integral]
    with t ht hm
  exact ht hm (Real.log 7) (by simp)

private theorem exponential_derivative (δ t : ℝ) :
    HasDerivAt (fun t : ℝ => Real.exp (-δ * t)) (-δ * Real.exp (-δ * t)) t := by
  have hd := ((hasDerivAt_id t).const_mul (-δ)).exp
  apply hd.congr_deriv
  simp only [id_eq]
  ring

/-- Further finite AC Abel keeps the actual fixed-damping upper trace for every real parameter. -/
theorem actualXiFiniteRealLaplace_abel (σ : ℝ) {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)) =
      actualDampedXiFinitePrimitive T * Real.exp (-(σ - 1 / 2) * T) +
        (σ - 1 / 2) * ∫ t in Real.log 7..T,
          actualDampedXiFinitePrimitive t * Real.exp (-(σ - 1 / 2) * t) := by
  let δ := σ - 1 / 2
  have hq : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-δ * t)) := by fun_prop
  have ha := (actualDampedXiFinitePrimitive_absolutelyContinuous hT).integral_deriv_mul_eq_sub
    hq.contDiffOn.absolutelyContinuousOnInterval
  rw [actualDampedXiFinitePrimitive_at_lower, zero_mul, sub_zero] at ha
  have hefun (t : ℝ) : (actualAnchoredXiTailPrimitive t * Real.exp (-t / 2)) *
      Real.exp (-δ * t) = actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) := by
    rw [mul_assoc, ← Real.exp_add]
    congr 2
    dsimp only [δ]
    ring
  have he : (∫ t in Real.log 7..T,
      actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) +
        -δ * (actualDampedXiFinitePrimitive t * Real.exp (-δ * t))) =
          actualDampedXiFinitePrimitive T * Real.exp (-δ * T) := by
    rw [← ha]
    apply intervalIntegral.integral_congr_ae
    filter_upwards [actualDampedXiFinitePrimitive_ae_hasDerivAt hT] with t ht hmem
    rw [(ht (uIoc_subset_uIcc hmem)).deriv, (exponential_derivative δ t).deriv, hefun]
    ring
  have hiF : IntervalIntegrable (fun t => actualAnchoredXiTailPrimitive t * Real.exp (-σ * t))
      volume (Real.log 7) T :=
    ((actualAnchoredXiTailPrimitive_absolutelyContinuous hT).continuousOn.mul
      (by fun_prop : Continuous (fun t : ℝ => Real.exp (-σ * t))).continuousOn).intervalIntegrable
  have hiJ : IntervalIntegrable (fun t => actualDampedXiFinitePrimitive t * Real.exp (-δ * t))
      volume (Real.log 7) T :=
    ((actualDampedXiFinitePrimitive_absolutelyContinuous hT).continuousOn.mul hq.continuous.continuousOn).intervalIntegrable
  rw [intervalIntegral.integral_add hiF (hiJ.const_mul (-δ)),
    intervalIntegral.integral_const_mul] at he
  change _ = _ + δ * _
  linarith

/-- Returning to the undamped actual primitive reinstates the exponential weight and both terms. -/
theorem actualXiUndampedFinitePrimitive_eq_damped {T : ℝ} (hT : Real.log 7 ≤ T) :
    (∫ t in Real.log 7..T, actualAnchoredXiTailPrimitive t) =
      Real.exp (T / 2) * actualDampedXiFinitePrimitive T -
        (1 / 2 : ℝ) * ∫ t in Real.log 7..T,
          actualDampedXiFinitePrimitive t * Real.exp (t / 2) := by
  have he := actualXiFiniteRealLaplace_abel 0 hT
  have hfun (t : ℝ) : -(0 - 1 / 2 : ℝ) * t = t / 2 := by ring
  simp only [hfun, zero_mul, neg_zero, Real.exp_zero, mul_one] at he
  linear_combination he

private theorem exponential_integral {δ : ℝ} (hδ : 0 < δ) {T : ℝ} :
    (∫ t in Real.log 7..T, Real.exp (-δ * t)) =
      (Real.exp (-δ * Real.log 7) - Real.exp (-δ * T)) / δ := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => Real.exp (-δ * t) / (-δ))
      (Real.exp (-δ * t)) t := by
    apply ((exponential_derivative δ t).div_const (-δ)).congr_deriv
    field_simp
  have he := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (by fun_prop : Continuous (fun t : ℝ => Real.exp (-δ * t))).intervalIntegrable _ _
  rw [he]
  ring

/-- Every genuine finite real Laplace integral has a bound uniform up to its initial boundary. -/
theorem actualXiFiniteRealLaplace_abs_le {σ T : ℝ} (hσ : 1 / 2 < σ)
    (hT : Real.log 7 ≤ T) :
    |∫ t in Real.log 7..T, actualAnchoredXiTailPrimitive t * Real.exp (-σ * t)| ≤
      actualDampedXiFiniteBudget * Real.exp (-(σ - 1 / 2) * Real.log 7) := by
  let δ := σ - 1 / 2
  have hδ : 0 < δ := by dsimp only [δ]; linarith
  have hC : 0 ≤ actualDampedXiFiniteBudget := by
    unfold actualDampedXiFiniteBudget actualXiExponentialEnvelopeConstant
    positivity
  have hi : IntervalIntegrable (fun t : ℝ => actualDampedXiFiniteBudget * Real.exp (-δ * t))
      volume (Real.log 7) T := (by fun_prop : Continuous
        (fun t : ℝ => actualDampedXiFiniteBudget * Real.exp (-δ * t))).intervalIntegrable _ _
  have hh := intervalIntegral.norm_integral_le_of_norm_le
    (f := fun t => actualDampedXiFinitePrimitive t * Real.exp (-δ * t)) hT
    (Eventually.of_forall (fun t ht => by
      rw [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
      exact mul_le_mul_of_nonneg_right (actualDampedXiFinitePrimitive_abs_le_budget ht.1.le)
        (Real.exp_pos _).le)) hi
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exponential_integral hδ] at hh
  have hbulk : δ * |∫ t in Real.log 7..T,
      actualDampedXiFinitePrimitive t * Real.exp (-δ * t)| ≤
        actualDampedXiFiniteBudget *
          (Real.exp (-δ * Real.log 7) - Real.exp (-δ * T)) := by
    apply (mul_le_mul_of_nonneg_left hh hδ.le).trans_eq
    field_simp
  have hhead : |actualDampedXiFinitePrimitive T * Real.exp (-δ * T)| ≤
      actualDampedXiFiniteBudget * Real.exp (-δ * T) := by
    rw [abs_mul, abs_of_pos (Real.exp_pos _)]
    exact mul_le_mul_of_nonneg_right (actualDampedXiFinitePrimitive_abs_le_budget hT)
      (Real.exp_pos _).le
  rw [actualXiFiniteRealLaplace_abel σ hT]
  change |actualDampedXiFinitePrimitive T * Real.exp (-δ * T) + δ * _| ≤ _
  have ha := abs_add_le (actualDampedXiFinitePrimitive T * Real.exp (-δ * T))
    (δ * ∫ t in Real.log 7..T, actualDampedXiFinitePrimitive t * Real.exp (-δ * t))
  have hsecond : |δ * ∫ t in Real.log 7..T,
      actualDampedXiFinitePrimitive t * Real.exp (-δ * t)| =
        δ * |∫ t in Real.log 7..T, actualDampedXiFinitePrimitive t * Real.exp (-δ * t)| := by
    rw [abs_mul, abs_of_pos hδ]
  rw [hsecond] at ha
  linarith

/-- Positive-real embedding identifies the SAME literal actual complex Laplace integral. -/
theorem actualXiComplexLaplace_ofReal (σ : ℝ) :
    actualXiComplexLaplace (σ : ℂ) =
      ((∫ t in Ioi (Real.log 7), actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) : ℝ) : ℂ) := by
  unfold actualXiComplexLaplace
  have he (t : ℝ) : (actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-(σ : ℂ) * (t : ℂ)) =
      ((actualAnchoredXiTailPrimitive t * Real.exp (-σ * t) : ℝ) : ℂ) := by
    rw [show -(σ : ℂ) * (t : ℂ) = ((-σ * t : ℝ) : ℂ) by norm_cast,
      ← Complex.ofReal_exp, ← Complex.ofReal_mul]
  simp_rw [he]
  exact integral_ofReal

/-- Actual inverse-square cancellation removes the old inverse-distance loss on the real axis. -/
theorem actualXiComplexLaplace_real_norm_le {σ : ℝ} (hσ : 1 / 2 < σ) :
    ‖actualXiComplexLaplace (σ : ℂ)‖ ≤
      actualDampedXiFiniteBudget * Real.exp (-(σ - 1 / 2) * Real.log 7) := by
  have ht := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiLaplace_integrableOn hσ) tendsto_id
  have hb := le_of_tendsto ht.abs (by
    filter_upwards [eventually_ge_atTop (Real.log 7)] with T hT
    exact actualXiFiniteRealLaplace_abs_le hσ hT)
  rw [actualXiComplexLaplace_ofReal, Complex.norm_real, Real.norm_eq_abs]
  exact hb

end
end FormalResearch.RiemannHypothesis.SourceActualXiRealLaplaceUniform
```
