# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.3eca7148e686acd9c6bcSourceActualAdjointLowerStrip.Variant1f1b9149632a0f32bd11277f03393ef5aeef30234ae376242aa606fcbd37bf73

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d476e5d895c0b97b2ece89e8edbf93700742304f` · SHA-256 `1f1b9149632a0f32bd11277f03393ef5aeef30234ae376242aa606fcbd37bf73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualAdjointAbelPrimitives
import RootActualCovariantWorkKernel
import SourceActualStrictWindow

/-!
The literal post-adjoint interior on a fixed lower-time strip has an
unconditional uniform bound. The original second sector and true natural
column quotient remain. This is not a bound for the remaining time tail,
opposite endpoint traces, diagonal or independent arithmetic main term.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualAdjointLowerStrip
open MeasureTheory Set
open SourceActualAdjointAbelPrimitives RootActualCovariantWorkKernel
open SourceActualDoubleMixedKernel SourceActualCovariantKernel SourceActualStrictWindow
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateVaughanSource EstimateSourceMobiusKernel RH16IndependentChallengeNext
noncomputable section

/-- The lower-time strip is clipped only at the original closed natural N seam. -/
def actualLowerStripUpper (A w : ℝ) : ℝ :=
  min (Real.log (sourceKernelCutoff A : ℝ)) (actualTimeLower A + w)

/-- The literal actual post-adjoint density keeps both arithmetic primitives. -/
def actualLowerStripDensity (A offset : ℝ) (z : ℝ × ℝ) : ℝ :=
  actualAdjointTimePrimitive A offset z.1 * actualAdjointColumnPrimitive A z.2 *
    covariantMixedDerivative (actualLogMixedDensity A) z.1 z.2

/-- Only the actual interior on the fixed lower-time strip is integrated here. -/
def actualLowerStripInterior (A offset w : ℝ) : ℝ :=
  ∫ t in actualTimeLower A..actualLowerStripUpper A w,
    ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
      actualLowerStripDensity A offset (t, s)

private theorem strip_orders {A w : ℝ} (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    actualTimeLower A ≤ actualLowerStripUpper A w ∧
    actualTimeLower A ≤ Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ∧
    Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ actualColumnUpper A := by
  have hU : 0 < (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hUN : (vaughanCutoff A : ℝ) ≤ (sourceKernelCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_le_sourceKernelCutoff A (by linarith)
  have hU1 : (vaughanCutoff A : ℝ) ≤ ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
    norm_num
  have hK : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤
      ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) := by
    exact_mod_cast (show vaughanCutoff A + 1 ≤
      sourceKernelCutoff A / (vaughanCutoff A + 1) by
        have h := actual_strict_quotient_lower hA
        omega)
  refine ⟨le_min (Real.log_le_log hU hUN) (by linarith),
    Real.log_le_log hU hU1, ?_⟩
  exact Real.log_le_log (hU.trans_le hU1) hK

private theorem kernel_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (fun z : ℝ × ℝ =>
      covariantMixedDerivative (actualLogMixedDensity A) z.1 z.2) := by
  have h4 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 4
    (by norm_num)
  have h2 := (actual_correlation_contDiff_four A hA).continuous_iteratedDeriv 2
    (by norm_num)
  simp_rw [actual_covariant_ordinary_work_kernel A hA]
  exact ((by fun_prop : Continuous (fun z : ℝ × ℝ =>
      Real.exp (z.1 / 2) * Real.exp (-z.2 / 2)))).mul
    ((h4.comp (continuous_fst.add continuous_snd)).sub
      ((h2.comp (continuous_fst.add continuous_snd)).div_const 4))

/-- The literal actual density is genuinely L1 on the closed strip rectangle. -/
theorem actualLowerStripDensity_integrableOn {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    IntegrableOn (actualLowerStripDensity A offset)
      (Icc (actualTimeLower A) (actualLowerStripUpper A w) ×ˢ
        Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A))
      (volume.prod volume) := by
  obtain ⟨hb, hl, hs⟩ := strip_orders hA hw
  have hp : ContinuousOn (actualAdjointTimePrimitive A offset)
      (Icc (actualTimeLower A) (actualLowerStripUpper A w)) := by
    simpa only [uIcc_of_le hb] using
      (actualAdjointTimePrimitive_absolutelyContinuous A offset _ hb).continuousOn
  have hq : ContinuousOn (actualAdjointColumnPrimitive A)
      (Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) := by
    simpa only [uIcc_of_le hs] using
      (actualAdjointColumnPrimitive_absolutelyContinuous (by linarith) hl hs).continuousOn
  have hc : ContinuousOn (actualLowerStripDensity A offset)
      (Icc (actualTimeLower A) (actualLowerStripUpper A w) ×ˢ
        Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) := by
    exact ((hp.comp continuous_fst.continuousOn (fun z hz => hz.1)).mul
      (hq.comp continuous_snd.continuousOn (fun z hz => hz.2))).mul
      (kernel_continuous (by linarith)).continuousOn
  exact hc.integrableOn_compact (isCompact_Icc.prod isCompact_Icc)

/-- Fubini gives genuine interval integrability of the literal inner integrals. -/
theorem actualLowerStripInterior_intervalIntegrable {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    IntervalIntegrable (fun t =>
      ∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLowerStripDensity A offset (t, s)) volume
      (actualTimeLower A) (actualLowerStripUpper A w) := by
  obtain ⟨hb, _, hs⟩ := strip_orders hA hw
  have hi := (actualLowerStripDensity_integrableOn (offset := offset) hA hw).mono_set
    (Set.prod_mono Ioc_subset_Icc_self Ioc_subset_Icc_self)
  rw [IntegrableOn, ← Measure.prod_restrict] at hi
  rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hb]
  simpa only [IntegrableOn, intervalIntegral.integral_of_le hs] using hi.integral_prod_left

private theorem exp_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (t / 2)) =
      2 * (Real.exp (b / 2) - Real.exp (l / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => 2 * Real.exp (t / 2))
      (Real.exp (t / 2)) t := by
    convert (((hasDerivAt_id t).div_const 2).exp).const_mul 2 using 1 <;> try rfl
    simp only [id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => 2 * Real.exp (t / 2))).continuousOn
    (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _)
  simpa only [mul_sub] using h

private theorem exp_neg_half_integral (l b : ℝ) (hlb : l ≤ b) :
    (∫ t in l..b, Real.exp (-t / 2)) =
      2 * (Real.exp (-l / 2) - Real.exp (-b / 2)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => -2 * Real.exp (-t / 2))
      (Real.exp (-t / 2)) t := by
    convert (((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2) using 1 <;> try rfl
    simp only [Pi.neg_apply, id_eq]
    ring
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le hlb
    (by fun_prop : Continuous (fun t : ℝ => -2 * Real.exp (-t / 2))).continuousOn
    (fun t _ => hd t)
    ((by fun_prop : Continuous (fun t : ℝ => Real.exp (-t / 2))).intervalIntegrable _ _)
  linarith

private theorem strip_density_abs_le {A offset w t s : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w)
    (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w))
    (hs : s ∈ Icc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) (actualColumnUpper A)) :
    |actualLowerStripDensity A offset (t, s)| ≤
      (4 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        ((vaughanCutoff A : ℝ) - 1) * (67 / A ^ 4 + 5 / (4 * A ^ 2))) *
        Real.exp (t / 2) * Real.exp (-s / 2) := by
  have hp := actualAdjointTimePrimitive_abs_le (offset := offset) (by linarith : 1 ≤ A) ht.1
  have hq := actualAdjointColumnPrimitive_abs_le (by linarith : 1 ≤ A)
    ((strip_orders hA hw).2.1.trans hs.1) hs.2
  have hk := actual_covariant_ordinary_work_abs_le A t s (by linarith)
  have hU1 : 1 ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  unfold actualLowerStripDensity
  rw [abs_mul, abs_mul]
  calc
    _ ≤ (2 * (Real.log 4 + 4 + Real.log 2 + |offset|)) *
        (2 * ((vaughanCutoff A : ℝ) - 1)) *
        (Real.exp (t / 2) * Real.exp (-s / 2) * (67 / A ^ 4 + 5 / (4 * A ^ 2))) := by
      gcongr
    _ = _ := by ring

/-- A fixed lower-time strip has a uniform actual interior bound, with all traces excluded. -/
theorem actualLowerStripInterior_abs_le {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |actualLowerStripInterior A offset w| ≤
      32 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (Real.exp (w / 2) - 1) := by
  obtain ⟨hb, hl, hs⟩ := strip_orders hA hw
  let D : ℝ := 4 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
    ((vaughanCutoff A : ℝ) - 1) * (67 / A ^ 4 + 5 / (4 * A ^ 2))
  have hU1 : 1 ≤ (vaughanCutoff A : ℝ) := by
    exact_mod_cast vaughanCutoff_pos A (by linarith)
  have hD : 0 ≤ D := by dsimp [D]; positivity
  have he (t : ℝ) : 0 ≤ D * Real.exp (t / 2) := by positivity
  have hi (t : ℝ) (ht : t ∈ Icc (actualTimeLower A) (actualLowerStripUpper A w)) :
      |∫ s in Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)..actualColumnUpper A,
        actualLowerStripDensity A offset (t, s)| ≤
          (2 * D * Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2)) *
            Real.exp (t / 2) := by
    have hn := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hs
      (Filter.Eventually.of_forall (fun s hs' => by
        rw [Real.norm_eq_abs]
        exact strip_density_abs_le hA hw ht ⟨hs'.1.le, hs'.2⟩))
      (((by fun_prop : Continuous (fun s : ℝ => Real.exp (-s / 2))).intervalIntegrable
        _ _).const_mul (D * Real.exp (t / 2)))
    rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_neg_half_integral _ _ hs] at hn
    nlinarith [mul_nonneg (he t) (Real.exp_pos (-actualColumnUpper A / 2)).le]
  have ho := intervalIntegral.norm_integral_le_of_norm_le (μ := volume) hb
    (Filter.Eventually.of_forall (fun t ht => by
      rw [Real.norm_eq_abs]
      exact hi t ⟨ht.1.le, ht.2⟩))
    (((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).intervalIntegrable _ _).const_mul
      (2 * D * Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2)))
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul, exp_half_integral _ _ hb] at ho
  have hbexp : Real.exp (actualLowerStripUpper A w / 2) ≤
      Real.exp (actualTimeLower A / 2) * Real.exp (w / 2) := by
    rw [← Real.exp_add]
    apply Real.exp_le_exp.mpr
    have hm := min_le_right (Real.log (sourceKernelCutoff A : ℝ)) (actualTimeLower A + w)
    dsimp only [actualLowerStripUpper]
    linarith
  have heprod : Real.exp (actualTimeLower A / 2) *
      Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) ≤ 1 := by
    rw [← Real.exp_add, ← Real.exp_zero]
    exact Real.exp_le_exp.mpr (by linarith)
  have hdelta : 0 ≤ Real.exp (w / 2) - 1 := by
    have := Real.exp_le_exp.mpr (show (0 : ℝ) ≤ w / 2 by linarith)
    simpa using sub_nonneg.mpr this
  have hmass : |actualLowerStripInterior A offset w| ≤
      4 * D * (Real.exp (w / 2) - 1) := by
    have hcoef : 0 ≤ 2 * D *
        Real.exp (-Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) / 2) := by positivity
    have he1 := mul_le_mul_of_nonneg_left
      (sub_le_sub_right hbexp (Real.exp (actualTimeLower A / 2))) hcoef
    have he2 := mul_le_mul_of_nonneg_left
      (mul_le_mul_of_nonneg_right heprod hdelta) (by positivity : 0 ≤ 4 * D)
    dsimp only [actualLowerStripInterior]
    nlinarith
  have hUA : (vaughanCutoff A : ℝ) - 1 ≤ A ^ 2 := by
    have hf : (vaughanCutoff A : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
    linarith
  have hscale : A ^ 2 * (67 / A ^ 4 + 5 / (4 * A ^ 2)) ≤ 2 := by
    have h67 : 67 / A ^ 2 ≤ (3 / 4 : ℝ) :=
      (div_le_iff₀ (by positivity : 0 < A ^ 2)).mpr (by nlinarith)
    calc
      _ = 67 / A ^ 2 + 5 / 4 := by field_simp
      _ ≤ 2 := by linarith
  have hUb : ((vaughanCutoff A : ℝ) - 1) *
      (67 / A ^ 4 + 5 / (4 * A ^ 2)) ≤ 2 :=
    (mul_le_mul_of_nonneg_right hUA (by positivity)).trans hscale
  have hCE : 0 ≤ Real.log 4 + 4 + Real.log 2 + |offset| := by positivity
  have hDb : 4 * D ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) := by
    have hh := mul_le_mul_of_nonneg_left hUb (show 0 ≤
      16 * (Real.log 4 + 4 + Real.log 2 + |offset|) by positivity)
    dsimp only [D]
    nlinarith
  exact hmass.trans (mul_le_mul_of_nonneg_right hDb hdelta)

end
end FormalResearch.RiemannHypothesis.SourceActualAdjointLowerStrip
```
