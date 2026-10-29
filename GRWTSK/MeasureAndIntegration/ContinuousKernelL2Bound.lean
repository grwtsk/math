/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib Lp, continuous-map and Bochner integration theory retain their
upstream authorship and Apache-2.0 licenses. -/
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Function.LpSpace.Complete
import Mathlib.MeasureTheory.Function.ContinuousMapDense
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Topology.ContinuousMap.Compact
import Mathlib.Tactic

/-!
# A bounded continuous kernel on a probability space gives a bounded L2 map

The operator is constructed from the literal integral of the actual L2
class. The uniform kernel bound is transferred to the operator norm. The
error theorem concerns the actual difference of the two operators; it does
not posit an independently chosen residual map.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.Analysis.Integration.ContinuousKernelL2Bound
open MeasureTheory

variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X] [SecondCountableTopology X]
  [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]

abbrev H := Lp ℝ 2 μ

theorem integrable_input (f : H μ) : Integrable f μ :=
  MemLp.integrable (by norm_num : (1 : ENNReal) ≤ 2) (Lp.memLp f)

theorem integral_norm_le (f : H μ) : (∫ x, ‖f x‖ ∂μ) ≤ ‖f‖ := by
  calc
    _ = (eLpNorm (f : X → ℝ) 1 μ).toReal := by
      rw [eLpNorm_one_eq_lintegral_enorm (Lp.aestronglyMeasurable f)]
      exact integral_norm_eq_lintegral_enorm (Lp.aestronglyMeasurable f)
    _ ≤ (eLpNorm f 2 μ).toReal :=
      ENNReal.toReal_mono (Lp.eLpNorm_ne_top f)
        (eLpNorm_le_eLpNorm_of_exponent_le (by norm_num : (1 : ENNReal) ≤ 2))
    _ = ‖f‖ := rfl

variable (K : C(X × X, ℝ))

def integralValue (f : H μ) (x : X) : ℝ := ∫ y, K (x, y) * f y ∂μ

theorem integrable_integrand (f : H μ) (x : X) :
    Integrable (fun y => K (x, y) * f y) μ :=
  (integrable_input μ f).bdd_mul
    (K.continuous.comp (continuous_const.prodMk continuous_id)).aestronglyMeasurable
    (ae_of_all _ (fun y => K.norm_coe_le_norm (x, y)))

theorem continuous_integralValue (f : H μ) : Continuous (integralValue μ K f) := by
  apply continuous_of_dominated (bound := fun y => ‖K‖ * ‖f y‖)
  · intro x
    exact (integrable_integrand μ K f x).aestronglyMeasurable
  · intro x
    exact ae_of_all _ (fun y => by
      rw [norm_mul]
      exact mul_le_mul_of_nonneg_right (K.norm_coe_le_norm (x, y)) (norm_nonneg _))
  · exact (integrable_input μ f).norm.const_mul ‖K‖
  · exact ae_of_all _ (fun y =>
      (K.continuous.comp (continuous_id.prodMk continuous_const)).mul_const (f y))

def representative (f : H μ) : C(X, ℝ) :=
  ⟨integralValue μ K f, continuous_integralValue μ K f⟩

/-- Any proved uniform bound can be used, not just the compact supremum. -/
theorem norm_value_le (f : H μ) {B : ℝ} (hB : 0 ≤ B)
    (hb : ∀ x y, ‖K (x, y)‖ ≤ B) (x : X) :
    ‖representative μ K f x‖ ≤ B * ‖f‖ := by
  calc
    _ ≤ ∫ y, B * ‖f y‖ ∂μ :=
      norm_integral_le_of_norm_le ((integrable_input μ f).norm.const_mul B)
        (ae_of_all _ (fun y => by
          rw [norm_mul]
          exact mul_le_mul_of_nonneg_right (hb x y) (norm_nonneg _)))
    _ = B * ∫ y, ‖f y‖ ∂μ := integral_const_mul B _
    _ ≤ B * ‖f‖ := mul_le_mul_of_nonneg_left (integral_norm_le μ f) hB

def representativeLinear : H μ →ₗ[ℝ] C(X, ℝ) where
  toFun := representative μ K
  map_add' f g := by
    ext x
    change integralValue μ K (f + g) x = _
    calc
      _ = ∫ y, K (x, y) * (f y + g y) ∂μ := by
        apply integral_congr_ae
        filter_upwards [Lp.coeFn_add f g] with y hy
        rw [hy]
      _ = _ := by
        simp_rw [mul_add]
        rw [integral_add (integrable_integrand μ K f x) (integrable_integrand μ K g x)]
  map_smul' r f := by
    ext x
    change integralValue μ K (r • f) x = _
    calc
      _ = ∫ y, r * (K (x, y) * f y) ∂μ := by
        apply integral_congr_ae
        filter_upwards [Lp.coeFn_smul r f] with y hy
        rw [hy]
        change K (x, y) * (r * f y) = _
        ring
      _ = _ := integral_const_mul r _

def toContinuous : H μ →L[ℝ] C(X, ℝ) :=
  (representativeLinear μ K).mkContinuous ‖K‖ (fun f =>
    (ContinuousMap.norm_le _ (mul_nonneg (norm_nonneg K) (norm_nonneg f))).mpr
      (norm_value_le μ K f (norm_nonneg K) (fun x y => K.norm_coe_le_norm (x, y))))

def operator : H μ →L[ℝ] H μ :=
  (ContinuousMap.toLp 2 μ ℝ).comp (toContinuous μ K)

theorem operator_apply_ae (f : H μ) :
    operator μ K f =ᵐ[μ] representative μ K f :=
  ContinuousMap.coeFn_toLp μ (representative μ K f)

theorem norm_operator_apply_le {B : ℝ} (hB : 0 ≤ B)
    (hb : ∀ x y, ‖K (x, y)‖ ≤ B) (f : H μ) :
    ‖operator μ K f‖ ≤ B * ‖f‖ := by
  have ha : ∀ᵐ x ∂μ, ‖operator μ K f x‖ ≤ B * ‖f‖ := by
    filter_upwards [operator_apply_ae μ K f] with x hx
    rw [hx]
    exact norm_value_le μ K f hB hb x
  have h := Lp.norm_le_of_ae_bound (mul_nonneg hB (norm_nonneg f)) ha
  simpa [measureUnivNNReal] using h

theorem norm_operator_le {B : ℝ} (hB : 0 ≤ B)
    (hb : ∀ x y, ‖K (x, y)‖ ≤ B) : ‖operator μ K‖ ≤ B :=
  ContinuousLinearMap.opNorm_le_bound _ hB (norm_operator_apply_le μ K hB hb)

theorem operator_sub (J : C(X × X, ℝ)) :
    operator μ (K - J) = operator μ K - operator μ J := by
  ext f : 1
  apply Lp.ext
  filter_upwards [operator_apply_ae μ (K - J) f, operator_apply_ae μ K f,
    operator_apply_ae μ J f, Lp.coeFn_sub (operator μ K f) (operator μ J f)] with x hD hK hJ hs
  rw [hs, hD, hK, hJ]
  change (∫ y, (K (x, y) - J (x, y)) * f y ∂μ) = _
  simp_rw [sub_mul]
  exact integral_sub (integrable_integrand μ K f x) (integrable_integrand μ J f x)

/-- Uniform error of the actual kernels bounds the norm of their actual operator difference. -/
theorem norm_operator_sub_le (J : C(X × X, ℝ)) {ε : ℝ} (hε : 0 ≤ ε)
    (he : ∀ x y, ‖K (x, y) - J (x, y)‖ ≤ ε) :
    ‖operator μ K - operator μ J‖ ≤ ε := by
  rw [← operator_sub]
  exact norm_operator_le μ (K - J) hε he

end GRWTSK.Analysis.Integration.ContinuousKernelL2Bound
