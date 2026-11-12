/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.SpecialFunctions.CompensatedDigammaIntegral
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationInversion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData

/-!
# Compensated gamma inversion on the unchanged Weil right line

MSC2020: 11M41 (primary), 11M06, 33B15, 42A38.
Use V(s)=integral C_f(r) exp((s-1/2)r)dr and H(t)=V(2+it)+V(-1-it).
The paired inversion of H(t)*(1-exp(-(3/2+it)r)) is the ORIGINAL shift
energy, not a model energy. The new actual-source digamma integral uses
exactly the existing parityKernel. The conductor line gives log(q)*E.

These component theorems have no unproved inversion, Gauss-integral,
correlation-regularity or positivity premise. Their final product-Fubini
assembly into the full gamma line is supplied as a written argument in the
individual provenance records; it is NOT yet a Lean declaration in this file.
The needed weighted whole-line decay and integrable r*kernel budget are
specified there. The signed prime block and both zeta poles stay unchanged.
No claim of universal arithmetic positivity, RH or GRH is made.

Native source pin c1085fe36d0bddaf69bf6b6ab67a708d5721eeb3.
Lean v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel,
transitive axiom audit, numerical certification and independent review NOT_RUN.
Novelty UNASSESSED. Attribution: grwtsk contributors. Refs #1801, 6829876246.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Topology ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompensatedInversion

open SourcePrimeCorrelation OddRootProjection
open GRWTSK.NumberTheory.WeilNegativeWitness
open GRWTSK.SpecialFunctions.CompensatedDigammaIntegral

private theorem correlation_neg (f : ℝ → ℂ) (r : ℝ) :
    correlation f (-r) = conj (correlation f r) := by
  calc
    _ = ∫ t : ℝ, conj (f (t + r)) * f t := by
      simpa only [correlation, add_neg_cancel_right] using
        (integral_add_right_eq_self
          (fun t : ℝ => conj (f t) * f (t + -r)) r).symm
    _ = ∫ t : ℝ, conj (conj (f t) * f (t + r)) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by simp [mul_comm])
    _ = _ := integral_conj

private theorem correlation_zero (f : ℝ → ℂ) : correlation f 0 = (energy f : ℂ) := by
  have hp (t : ℝ) : conj (f t) * f t = ((‖f t‖ ^ 2 : ℝ) : ℂ) := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  unfold correlation energy
  simp_rw [add_zero, hp]
  exact integral_ofReal

/-- The whole-line squared increment is the signed complex correlation difference.
Actual L2 integrability is supplied for every term before splitting its integral. -/
theorem shiftEnergy_eq_correlation_pair {f : ℝ → ℂ} (hf : MemLp f 2 volume) (r : ℝ) :
    (energy (fun t => f (t + r) - f t) : ℂ) =
      2 * (energy f : ℂ) - correlation f r - correlation f (-r) := by
  have hsq : Integrable (fun t : ℝ => ‖f t‖ ^ 2) :=
    hf.integrable_norm_pow (p := 2) (by norm_num)
  have hshift : Integrable (fun t : ℝ => ‖f (t + r)‖ ^ 2) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hsq
  have hc := integrable_correlation_integrand hf r
  have hp (u v : ℂ) : ‖v - u‖ ^ 2 =
      ‖v‖ ^ 2 + ‖u‖ ^ 2 - 2 * (conj u * v).re := by
    simp only [← Complex.normSq_eq_norm_sq, Complex.normSq_apply,
      Complex.sub_re, Complex.sub_im, Complex.mul_re,
      Complex.conj_re, Complex.conj_im]
    ring
  have he : energy (fun t => f (t + r) - f t) =
      2 * energy f - 2 * (correlation f r).re := by
    unfold energy correlation
    simp_rw [hp]
    rw [integral_sub (hshift.add hsq) (hc.re.const_mul 2),
      integral_add hshift hsq, integral_const_mul, integral_re hc,
      integral_add_right_eq_self (fun t : ℝ => ‖f t‖ ^ 2) r]
    ring
  rw [he, correlation_neg]
  apply Complex.ext <;> simp [Complex.mul_re, Complex.mul_im] <;> ring

private theorem oscillation_integrable (phi : ℝ → ℂ) (hphi : Integrable phi volume)
    (y : ℝ) :
    Integrable (fun t : ℝ => phi t *
      Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) volume := by
  apply hphi.mul_bdd (c := 1) (by fun_prop)
  exact Filter.Eventually.of_forall (fun t => by
    simp [Complex.norm_exp, Complex.mul_re, Complex.mul_im])

private theorem paired_inversion (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (y : ℝ) :
    let V := fun s : ℂ => ∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    let H := fun t : ℝ => V (2 + Complex.I * (t : ℂ)) +
      V (-1 + Complex.I * ((-t : ℝ) : ℂ))
    Integrable H volume ∧
    (1 / (2 * (Real.pi : ℂ))) * (∫ t : ℝ, H t *
      Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      (correlation f y + correlation f (-y)) * (Real.exp ((3 / 2 : ℝ) * y) : ℂ) := by
  intro V H
  have hr := (integrable_correlation_contour_weight_vertical f A hA hf hs 2).1
  have hl := (integrable_correlation_contour_weight_vertical f A hA hf hs (-1)).1.comp_neg
  refine ⟨hr.add hl, ?_⟩
  have hleft : (∫ t : ℝ, V (-1 + Complex.I * ((-t : ℝ) : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      ∫ t : ℝ, V (-1 + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * ((-y : ℝ) : ℂ)) := by
    have he := (integral_neg_eq_self
      (fun t : ℝ => V (-1 + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * ((-y : ℝ) : ℂ))) volume)
    calc
      _ = ∫ t : ℝ, V (-1 + Complex.I * ((-t : ℝ) : ℂ)) *
          Complex.exp (-Complex.I * ((-t : ℝ) : ℂ) * ((-y : ℝ) : ℂ)) := by
        apply integral_congr_ae
        exact Filter.Eventually.of_forall (fun t => by
          push_cast
          congr 1
          congr 1
          ring)
      _ = _ := he
  have hri := correlation_weight_inversion f A hA hf hs 2 y
  have hli := correlation_weight_inversion f A hA hf hs (-1) (-y)
  have he : ((-1 : ℝ) - 1 / 2) * (-y) = (3 / 2 : ℝ) * y := by ring
  simp only [show (2 : ℝ) - 1 / 2 = 3 / 2 by norm_num] at hri
  simp only [he] at hli
  dsimp only [H]
  simp_rw [add_mul]
  rw [integral_add (oscillation_integrable _ hr y) (oscillation_integrable _ hl y),
    mul_add, hleft, hri, hli]
  ring

/-- The compensation on the actual pair of vertical lines inverts to the
original shift energy, for every real shift. Cancellation occurs before the
singular gamma kernel is integrated; no midpoint or spectral-sign input is used. -/
theorem compensated_pair_inversion (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) (r : ℝ) :
    let V := fun s : ℂ => ∫ u : ℝ, correlation f u *
      Complex.exp ((s - 1 / 2) * (u : ℂ))
    let H := fun t : ℝ => V (2 + Complex.I * (t : ℂ)) +
      V (-1 + Complex.I * ((-t : ℝ) : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, H t * (1 - Complex.exp
        (-((3 / 2 : ℂ) + Complex.I * (t : ℂ)) * (r : ℂ)))) =
      (energy (fun u => f (u + r) - f u) : ℂ) := by
  intro V H
  have hpair := paired_inversion f A hA hf hs r
  have hzero := (paired_inversion f A hA hf hs 0).2
  change (1 / (2 * (Real.pi : ℂ))) * (∫ t : ℝ, H t *
    Complex.exp (-Complex.I * (t : ℂ) * (0 : ℂ))) = _ at hzero
  simp only [mul_zero, Complex.exp_zero, mul_one, neg_zero, Real.exp_zero,
    Complex.ofReal_one, correlation_zero] at hzero
  have hphase := oscillation_integrable H hpair.1 r
  let c : ℂ := (Real.exp (-(3 / 2 : ℝ) * r) : ℂ)
  have he (t : ℝ) : Complex.exp
      (-((3 / 2 : ℂ) + Complex.I * (t : ℂ)) * (r : ℂ)) =
      c * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ)) := by
    have ha : -((3 / 2 : ℂ) + Complex.I * (t : ℂ)) * (r : ℂ) =
        ((-(3 / 2 : ℝ) * r : ℝ) : ℂ) +
          -Complex.I * (t : ℂ) * (r : ℂ) := by push_cast; ring
    rw [ha, Complex.exp_add, ← Complex.ofReal_exp]
  have hfun : (fun t : ℝ => H t * (1 - Complex.exp
      (-((3 / 2 : ℂ) + Complex.I * (t : ℂ)) * (r : ℂ)))) =
      fun t => H t - c * (H t * Complex.exp (-Complex.I * (t : ℂ) * (r : ℂ))) := by
    funext t
    rw [he]
    ring
  rw [hfun, integral_sub hpair.1 (hphase.const_mul c), integral_const_mul, mul_sub,
    mul_left_comm (1 / (2 * (Real.pi : ℂ))) c, hzero, hpair.2]
  have hc : c * (Real.exp ((3 / 2 : ℝ) * r) : ℂ) = 1 := by
    dsimp only [c]
    rw [← Complex.ofReal_mul, ← Real.exp_add]
    simp
  have hf2 : MemLp f 2 volume := hf.1.continuous.memLp_of_hasCompactSupport hf.2
  rw [shiftEnergy_eq_correlation_pair hf2 r]
  calc
    _ = 2 * (energy f : ℂ) - (correlation f r + correlation f (-r)) *
        (c * (Real.exp ((3 / 2 : ℝ) * r) : ℂ)) := by ring
    _ = _ := by rw [hc]; ring

/-- The exact complex digamma multiplier on Re(s)=2, with the unchanged parity
kernel. Both integrability and its identification are supplied by native Euler
convergence, not added as hypotheses to the arithmetic source. -/
theorem digamma_right_line_compensation (a : ℕ) (t : ℝ) :
    let d : ℂ := (3 / 2 : ℂ) + Complex.I * (t : ℂ)
    let g := fun r : ℝ => (parityKernel a r : ℂ) *
      (1 - Complex.exp (-d * (r : ℂ)))
    IntegrableOn g (Ioi 0) ∧
    Complex.digamma (((2 : ℂ) + (a : ℂ) + Complex.I * (t : ℂ)) / 2) -
      Complex.digamma ((a : ℂ) / 2 + 1 / 4) =
        2 * ∫ r in Ioi (0 : ℝ), g r := by
  intro d g
  have ha : 0 < (a : ℝ) + 1 / 2 := by positivity
  have hd : 0 ≤ d.re := by dsimp [d]; norm_num
  have he : compensatedDensity ((a : ℝ) + 1 / 2) d = g := by
    funext r
    unfold compensatedDensity g parityKernel
    push_cast
    ring
  have hz : ((((a : ℝ) + 1 / 2 : ℝ) : ℂ) + d) / 2 =
      ((2 : ℂ) + (a : ℂ) + Complex.I * (t : ℂ)) / 2 := by dsimp [d]; push_cast; ring
  have hx : (((a : ℝ) + 1 / 2 : ℝ) : ℂ) / 2 = (a : ℂ) / 2 + 1 / 4 := by
    push_cast
    ring
  exact ⟨by simpa only [he] using compensatedDensity_integrable ha hd,
    by simpa only [he, hz, hx] using digamma_sub_eq_compensated_integral ha hd⟩

/-- The conductor contribution of the SAME reflected source is exactly log(q)*E.
The statement is meaningful at q=1 and gives zero there; it does not discard poles. -/
theorem conductor_line_evaluation (q : ℕ) (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A)
    (hf : Admissible f) (hs : tsupport f ⊆ Icc (-A) A) :
    let V := fun s : ℂ => ∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, (Real.log (q : ℝ) : ℂ) * V (2 + Complex.I * (t : ℂ))) =
        ((Real.log (q : ℝ) * energy f : ℝ) : ℂ) := by
  intro V
  have h := correlation_weight_inversion f A hA hf hs 2 0
  simp only [mul_zero, Complex.exp_zero, mul_one, Real.exp_zero,
    Complex.ofReal_one, correlation_zero] at h
  rw [integral_const_mul, mul_left_comm, h]
  norm_cast

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompensatedInversion
