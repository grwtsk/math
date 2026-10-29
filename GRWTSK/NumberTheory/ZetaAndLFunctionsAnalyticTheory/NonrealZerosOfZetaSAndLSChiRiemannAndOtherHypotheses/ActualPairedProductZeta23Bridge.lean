import FormalResearch.RiemannHypothesis.ActualPairedProductPrelude
import Zeta23.WeilEF.Main

/-!
# Source bridge from FormalResearch xi to the pinned Zeta23 zero package

This module stays inside the Zeta23 import closure already admitted by the
repository: `Zeta23.WeilEF.Main`.  It does not import the later XiPrime tree.

It records exact identities between the unchanged FormalResearch xi source and
the pinned zero-configuration infrastructure:
* the exact FormalResearch nontrivial-zero predicate equals Zeta23's strip-zero
  predicate;
* analytic multiplicity of the unchanged xi source equals Zeta23's zero
  multiplicity;
* functional-equation reflection preserves zero labels and multiplicity;
* the pinned inverse-square zero sum is available for the product convergence
  argument.

No RH, PF positivity, real-zero exclusion, or Hadamard product is asserted.
-/

namespace FormalResearch.RiemannHypothesis.XiFiniteOrder

open Complex Filter Set
open scoped Topology ComplexConjugate

noncomputable section

/-- The repository's exact nontrivial-zero predicate agrees with the pinned
Zeta23 strip-zero predicate.  The forward implication uses the already-proved
open critical-strip theorem for the exact predicate; the reverse implication
uses Zeta23's exact trivial-zero/pole exclusions. -/
theorem nontrivialZetaZero_iff_zeta23 (s : ℂ) :
    NontrivialZetaZero s ↔ Zeta23.IsNontrivialZero s := by
  constructor
  · intro hs
    exact ⟨hs.1, hs.mem_critical_strip.1, hs.mem_critical_strip.2⟩
  · intro hs
    exact ⟨hs.1, hs.not_trivial.1, hs.not_trivial.2⟩

/-- Near an actual zero the unchanged FormalResearch xi is the ordinary
completed product. -/
theorem xi_eventuallyEq_completed {ρ : ℂ} (h0 : ρ ≠ 0) (h1 : ρ ≠ 1) :
    XiToeplitz.xi =ᶠ[𝓝 ρ]
      (fun s : ℂ => (s * (s - 1) / 2) * completedRiemannZeta s) := by
  filter_upwards [isOpen_compl_singleton.mem_nhds h0,
    isOpen_compl_singleton.mem_nhds h1] with s hs0 hs1
  rw [XiToeplitz.xi_eq_completed (by simpa using hs0) (by simpa using hs1)]
  ring

/-- Analytic multiplicity of the unchanged FormalResearch xi source is exactly
Zeta23's multiplicity on every actual nontrivial zero. -/
theorem xi_analyticOrderNatAt_eq_zeroMult {ρ : ℂ}
    (hρ : Zeta23.IsNontrivialZero ρ) :
    analyticOrderNatAt XiToeplitz.xi ρ = Zeta23.zeroMult ρ := by
  have hfr : NontrivialZetaZero ρ := (nontrivialZetaZero_iff_zeta23 ρ).mpr hρ
  have h0 : ρ ≠ 0 := hfr.ne_zero
  have h1 : ρ ≠ 1 := hfr.2.2
  have hev := xi_eventuallyEq_completed h0 h1
  have hΛ : AnalyticAt ℂ completedRiemannZeta ρ :=
    Zeta23.RvM.analyticAt_completedRiemannZeta h0 h1
  have hp : AnalyticAt ℂ (fun s : ℂ => s * (s - 1) / 2) ρ :=
    (by fun_prop : Differentiable ℂ (fun s : ℂ => s * (s - 1) / 2)).analyticAt ρ
  have hp0 : analyticOrderAt (fun s : ℂ => s * (s - 1) / 2) ρ = 0 :=
    hp.analyticOrderAt_eq_zero.mpr
      (div_ne_zero (mul_ne_zero h0 (sub_ne_zero.mpr h1)) two_ne_zero)
  have hmul := analyticOrderAt_mul hp hΛ
  rw [show ((fun s : ℂ => s * (s - 1) / 2) * completedRiemannZeta)
      = (fun s => (s * (s - 1) / 2) * completedRiemannZeta s) from rfl] at hmul
  unfold analyticOrderNatAt
  rw [analyticOrderAt_congr hev, hmul, hp0, zero_add]
  exact Zeta23.RvM.analyticOrderNatAt_completedRiemannZeta hρ.2.1 h1

/-- The canonical squared centered root.  This is the zero variable used by
`XiToeplitz.centeredSeries`; no square-root branch is chosen. -/
def centeredRoot (ρ : ℂ) : ℂ := (ρ - 1 / 2) ^ 2

/-- Functional-equation partners descend to the same squared root. -/
theorem centeredRoot_one_sub (ρ : ℂ) :
    centeredRoot (1 - ρ) = centeredRoot ρ := by
  unfold centeredRoot
  ring

/-- Zeta23 reflection becomes complex conjugation after squared descent. -/
theorem centeredRoot_reflect (ρ : ℂ) :
    centeredRoot (Zeta23.reflect ρ) = conj (centeredRoot ρ) := by
  apply Complex.ext <;>
    simp [centeredRoot, Zeta23.reflect, pow_two, Complex.mul_re, Complex.mul_im] <;>
    ring

/-- The reflected zero keeps the ordinate. -/
theorem reflect_im (ρ : ℂ) :
    (Zeta23.reflect ρ).im = ρ.im := by
  simp [Zeta23.reflect]

/-- Reflection mirrors the real part across 1/2. -/
theorem reflect_re_centered (ρ : ℂ) :
    (Zeta23.reflect ρ).re - 1 / 2 = -(ρ.re - 1 / 2) := by
  simp [Zeta23.reflect]
  ring

/-- Reflection preserves actual zeros in the exact FormalResearch predicate. -/
theorem criticalReflection_nontrivial {ρ : ℂ} (hρ : NontrivialZetaZero ρ) :
    NontrivialZetaZero (Zeta23.reflect ρ) := by
  have hz : Zeta23.IsNontrivialZero ρ := (nontrivialZetaZero_iff_zeta23 ρ).mp hρ
  have href : Zeta23.IsNontrivialZero (Zeta23.reflect ρ) :=
    Zeta23.zetaZeroConfig.reflect_mem ρ hz
  exact (nontrivialZetaZero_iff_zeta23 (Zeta23.reflect ρ)).mpr href

/-- Reflection preserves analytic multiplicity, with no set-level loss. -/
theorem reflected_zeroMult {ρ : ℂ} (hρ : Zeta23.IsNontrivialZero ρ) :
    Zeta23.zeroMult (Zeta23.reflect ρ) = Zeta23.zeroMult ρ :=
  Zeta23.zetaZeroConfig.mult_reflect ρ hρ

/-- Imaginary part of the squared centered root. -/
theorem centeredRoot_im (ρ : ℂ) :
    (centeredRoot ρ).im = 2 * (ρ.re - 1 / 2) * ρ.im := by
  simp [centeredRoot, pow_two, Complex.mul_im]
  ring

/-- Real part of the squared centered root. -/
theorem centeredRoot_re (ρ : ℂ) :
    (centeredRoot ρ).re = (ρ.re - 1 / 2) ^ 2 - ρ.im ^ 2 := by
  simp [centeredRoot, pow_two, Complex.mul_re]
  ring

/-- A nonzero ordinate prevents the descended root from being zero. -/
theorem centeredRoot_ne_zero_of_im_ne_zero {ρ : ℂ} (hρ : ρ.im ≠ 0) :
    centeredRoot ρ ≠ 0 := by
  intro h
  have hs : ρ - 1 / 2 = 0 := by
    exact pow_eq_zero h
  have hi := congrArg Complex.im hs
  simp at hi
  exact hρ hi

/-- For a genuine nonreal zeta zero, a real descended root occurs exactly on
the critical line. -/
theorem centeredRoot_im_eq_zero_iff_onLine {ρ : ℂ} (hρ : ρ.im ≠ 0) :
    (centeredRoot ρ).im = 0 ↔ ρ.re = 1 / 2 := by
  rw [centeredRoot_im]
  constructor
  · intro h
    have hp : (ρ.re - 1 / 2) * ρ.im = 0 := by
      linarith
    rcases mul_eq_zero.mp hp with hd | hi
    · linarith
    · exact (hρ hi).elim
  · intro h
    rw [h]
    norm_num

/-- A critical-line nonreal zero descends to a strictly negative real root. -/
theorem centeredRoot_negative_of_onLine {ρ : ℂ}
    (hline : ρ.re = 1 / 2) (him : ρ.im ≠ 0) :
    (centeredRoot ρ).im = 0 ∧ (centeredRoot ρ).re < 0 := by
  constructor
  · exact (centeredRoot_im_eq_zero_iff_onLine him).2 hline
  · rw [centeredRoot_re, hline]
    norm_num
    exact neg_neg_of_pos (sq_pos_of_ne_zero him)

/-- The pinned zero configuration's basic inverse-square weight is absolutely
summable. -/
theorem zeta23_zero_sum_inv_sq :
    Summable (fun ρ : Zeta23.zetaZeroConfig.carrier =>
      (Zeta23.zeroMult ρ : ℝ) /
        (1 + Complex.normSq (Zeta23.gammaOf ρ))) := by
  simpa using Zeta23.WeilEF.zero_sum_inv_sq Zeta23.zetaSeam

/-- Dividing by i does not change squared norm, so the Zeta23 summability
coordinate is exactly the centered xi coordinate before squaring. -/
theorem gammaOf_normSq_eq_centered (ρ : ℂ) :
    Complex.normSq (Zeta23.gammaOf ρ) =
      Complex.normSq (ρ - 1 / 2) := by
  rw [Zeta23.gammaOf]
  simp [Complex.normSq_div, Complex.normSq_I]

/-- The squared descended root has norm equal to the squared norm of the
centered xi coordinate. -/
theorem norm_centeredRoot (ρ : ℂ) :
    ‖centeredRoot ρ‖ = Complex.normSq (ρ - 1 / 2) := by
  rw [centeredRoot, norm_pow, Complex.sq_norm]
  ring

end

end FormalResearch.RiemannHypothesis.XiFiniteOrder
