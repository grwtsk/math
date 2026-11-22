/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiPositiveDeterminantObstruction
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.CriticalStripRealAxisMellin
import Mathlib.Analysis.Calculus.Deriv.Shift

/-!
# Center slope required of a determinant normalization

The first derivative of the product anchored at zero is minus its first
reciprocal spectral moment. Locally uniform convergence to centered xi
forces the normalizer's logarithmic slope to cancel that moment. The
reciprocal moment retains multiplicity via the finite index set.
-/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped BigOperators Topology

namespace GRWTSK.NumberTheory.Zeta.XiNormalizerSlope

open XiPositiveDeterminantObstruction CompletedQuotientSource

variable {I : Type*}

/-- Multiplicity is counted with one summand per spectral index. -/
def reciprocalMoment (s : Finset I) (eigenvalue : I → ℝ) : ℂ :=
  ∑ i ∈ s, (((eigenvalue i)⁻¹ : ℝ) : ℂ)

theorem linearProduct_hasDerivAt_zero (s : Finset I) (eigenvalue : I → ℝ) :
    HasDerivAt (linearProduct s eigenvalue) (-reciprocalMoment s eigenvalue) 0 := by
  classical
  have h (i : I) (_ : i ∈ s) :
      HasDerivAt (fun z : ℂ => 1 - z * ((eigenvalue i)⁻¹ : ℝ))
        (-(((eigenvalue i)⁻¹ : ℝ) : ℂ)) 0 := by
    simpa using ((hasDerivAt_id' (0 : ℂ)).mul_const (((eigenvalue i)⁻¹ : ℝ) : ℂ)).const_sub (1 : ℂ)
  have hp := HasDerivAt.fun_finsetProd h
  change HasDerivAt (linearProduct s eigenvalue) _ 0 at hp
  simpa only [reciprocalMoment, zero_mul, sub_zero, Finset.prod_const_one,
    one_smul, Finset.sum_neg_distrib] using hp

theorem normalized_hasDerivAt_zero (s : Finset I) (eigenvalue : I → ℝ) {u : ℂ → ℂ} {du : ℂ}
    (hu : HasDerivAt u du 0) :
    HasDerivAt (fun z => u z * linearProduct s eigenvalue z)
      (du - u 0 * reciprocalMoment s eigenvalue) 0 := by
  have hp := hu.mul (linearProduct_hasDerivAt_zero s eigenvalue)
  change HasDerivAt (fun z => u z * linearProduct s eigenvalue z) _ 0 at hp
  simpa [sub_eq_add_neg] using hp

private theorem center_ne_zero : spectralSource 0 ≠ 0 := by
  intro zero
  have hx : xi (1 / 2 : ℂ) = 0 := by simpa [spectralSource] using zero
  rw [xi_eq_completed _ (by norm_num) (by norm_num)] at hx
  have factor : (1 / 2 : ℂ) * (1 / 2) * (1 / 2 - 1) ≠ 0 := by norm_num
  have completed := (mul_eq_zero.mp hx).resolve_left factor
  have hz : riemannZeta (1 / 2 : ℂ) = 0 := by
    rw [riemannZeta_def_of_ne_zero (by norm_num : (1 / 2 : ℂ) ≠ 0), completed, zero_div]
  have negative :=
    GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.riemannZeta_re_neg_on_real_critical_interval
      (s := (1 / 2 : ℝ)) (by norm_num) (by norm_num)
  have same : (((1 / 2 : ℝ) : ℂ)) = (1 / 2 : ℂ) := by norm_num
  rw [same, hz, Complex.zero_re] at negative
  exact (lt_irrefl 0 negative)

private theorem center_deriv_zero : deriv spectralSource 0 = 0 := by
  have even : (fun z => spectralSource (-z)) = spectralSource := by
    funext z
    unfold spectralSource
    rw [show (1 / 2 : ℂ) - Complex.I * -z = 1 - (1 / 2 - Complex.I * z) by ring, xi_one_sub]
  have h := deriv_comp_neg (f := spectralSource) (x := (0 : ℂ))
  rw [even, neg_zero] at h
  linear_combination h / 2

/-- A locally uniform limit to the original centered xi requires the
normalizers' logarithmic slopes to cancel the finite reciprocal moments. -/
theorem logSlope_sub_reciprocalMoment_tendsto_zero {degree : ℕ → ℕ}
    (eigenvalue : (n : ℕ) → Fin (degree n) → ℝ) (u : ℕ → ℂ → ℂ)
    (entire : ∀ n, Differentiable ℂ (u n))
    (lim : TendstoLocallyUniformlyOn
      (fun n z => u n z * linearProduct Finset.univ (eigenvalue n) z)
      spectralSource atTop univ) :
    Tendsto (fun n => deriv (u n) 0 / u n 0 - reciprocalMoment Finset.univ (eigenvalue n))
      atTop (𝓝 0) := by
  have hu : Tendsto (fun n => u n 0) atTop (𝓝 (spectralSource 0)) := by
    simpa only [linearProduct_zero, mul_one] using lim.tendsto_at (mem_univ (0 : ℂ))
  have hdiff (n : ℕ) : Differentiable ℂ
      (fun z => u n z * linearProduct Finset.univ (eigenvalue n) z) := by
    apply (entire n).mul
    unfold linearProduct
    fun_prop
  have hd := (lim.deriv (Eventually.of_forall fun n => (hdiff n).differentiableOn)
    isOpen_univ).tendsto_at (mem_univ (0 : ℂ))
  have formula (n : ℕ) :
      deriv (fun z => u n z * linearProduct Finset.univ (eigenvalue n) z) 0 =
        deriv (u n) 0 - u n 0 * reciprocalMoment Finset.univ (eigenvalue n) :=
    (normalized_hasDerivAt_zero _ _ ((entire n 0).hasDerivAt)).deriv
  have hd' : Tendsto (fun n => deriv (u n) 0 - u n 0 * reciprocalMoment Finset.univ (eigenvalue n))
      atTop (𝓝 0) := by
    simpa only [Function.comp_apply, formula, center_deriv_zero] using hd
  have hquot := hd'.div hu center_ne_zero
  rw [zero_div] at hquot
  apply hquot.congr'
  filter_upwards [hu.eventually (isOpen_ne.mem_nhds center_ne_zero)] with n hn
  change u n 0 ≠ 0 at hn
  change (deriv (u n) 0 - u n 0 * reciprocalMoment Finset.univ (eigenvalue n)) / u n 0 = _
  field_simp

/-- Cancelling the center slope still permits non-even functions. A single
positive root survives multiplication by the nowhere-zero exponential. -/
theorem exponential_center_cancellation_control :
    let D := fun z : ℂ => Complex.exp z * (1 - z)
    deriv D 0 = 0 ∧ D 1 = 0 ∧ D (-1) ≠ 0 := by
  intro D
  have hlin : HasDerivAt (fun z : ℂ => 1 - z) (-1) 0 := by
    simpa using (hasDerivAt_id' (0 : ℂ)).const_sub (1 : ℂ)
  have h := (Complex.hasDerivAt_exp 0).mul hlin
  change HasDerivAt D _ 0 at h
  refine ⟨?_, by simp [D], ?_⟩
  · simpa [D] using h.deriv
  · exact mul_ne_zero (Complex.exp_ne_zero _) (by norm_num)

end GRWTSK.NumberTheory.Zeta.XiNormalizerSlope
