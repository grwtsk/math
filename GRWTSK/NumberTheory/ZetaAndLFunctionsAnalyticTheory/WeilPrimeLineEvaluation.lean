/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCorrelationInversion
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilReflectedSourceAdapter
import Mathlib.Analysis.Normed.Group.FunctionSeries
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# Evaluation of both prime contributions on the actual Weil line

MSC2020: 11M06, 11M41, 42A38. The line is Re(s)=2, the existing native
contour line. Absolute convergence of the genuine twisted von Mangoldt
series proves the sum/integral exchange. Tilted inversion is proved in
WeilCorrelationInversion, not postulated in a public arithmetic theorem.
The full two-leg integral for the reflected source equals the complex
embedding of the UNCHANGED twistedPrime. The strict support cutoff is
proved, including its endpoint, after evaluating the infinite series.

This component works for any positive modulus and character, including
conductor-one zeta. This is not an extension of the GRH target to
imprimitive characters. No pole is removed: pole evaluation, gamma and
conductor evaluation, and universal sign remain separate components.
The final integral is exactly the positive prime block that is SUBTRACTED
in weilRightArithmeticIntegrand. No absolute-value majorant replaces it.

Method comparison: Anthropic Zeta23/WeilEF/VerticalLine.lean and
Zeta23/ThmE/VerticalLineChi.lean, revision
16a5ce41304fcdaea4e0be7c132e1c361dc26da5. Local native implementation;
no upstream import or verification transfer. Base source
6f7d2e3b6d15f0d2c49aaba984af27c48786943c; Lean v4.34.1;
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
SOURCE_PROOF_CANDIDATE. Elaboration, full dependency build, fresh kernel,
transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED.
Coordination math#1801, scope comment 6828845884.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Topology BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimeLineEvaluation

open SourcePrimeCorrelation LowSchur CharacterWindow ReflectedSourceAdapter
open GRWTSK.NumberTheory.WeilNegativeWitness

variable {q : ℕ} [NeZero q]

private theorem term_line_norm (a : ℕ → ℂ) (n : ℕ) (t : ℝ) :
    ‖LSeries.term a (2 + Complex.I * (t : ℂ)) n‖ = ‖LSeries.term a (2 : ℂ) n‖ := by
  rw [LSeries.norm_term_eq, LSeries.norm_term_eq]
  simp

private theorem term_line_continuous (a : ℕ → ℂ) (n : ℕ) :
    Continuous (fun t : ℝ => LSeries.term a (2 + Complex.I * (t : ℂ)) n) := by
  by_cases hn : n = 0
  · subst n
    simpa only [LSeries.term_zero] using (continuous_const : Continuous (fun _ : ℝ => (0 : ℂ)))
  · simp only [LSeries.term_of_ne_zero hn]
    apply continuous_const.div
      ((show Continuous (fun t : ℝ => (2 : ℂ) + Complex.I * (t : ℂ)) by fun_prop).
        const_cpow (.inl (by exact_mod_cast hn)))
    intro t
    exact Complex.cpow_ne_zero_iff.mpr (.inl (by exact_mod_cast hn))

/-- The actual series times any L1 line weight is integrable, and the
integral is the sum of the genuine individual line integrals. -/
theorem integral_mul_primeSeries_eq_tsum (chi : DirichletCharacter ℂ q)
    (phi : ℝ → ℂ) (hphi : Integrable phi volume) :
    Integrable (fun t : ℝ => phi t *
      LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ))
        (2 + Complex.I * (t : ℂ))) volume ∧
    (∫ t : ℝ, phi t *
      LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ))
        (2 + Complex.I * (t : ℂ))) =
      ∑' n : ℕ, ∫ t : ℝ, phi t *
        LSeries.term (fun m : ℕ => chi m * (ArithmeticFunction.vonMangoldt m : ℂ))
          (2 + Complex.I * (t : ℂ)) n := by
  let a : ℕ → ℂ := fun n => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)
  let b : ℕ → ℝ := fun n => ‖LSeries.term a (2 : ℂ) n‖
  have hb : Summable b := (chi.LSeriesSummable_twist_vonMangoldt
    (s := (2 : ℂ)) (by norm_num)).norm
  have ht (n : ℕ) : Integrable (fun t : ℝ =>
      phi t * LSeries.term a (2 + Complex.I * (t : ℂ)) n) volume :=
    hphi.mul_bdd (c := b n) (term_line_continuous a n).aestronglyMeasurable
      (Filter.Eventually.of_forall (fun t => (term_line_norm a n t).le))
  have hmass : Summable (fun n : ℕ => ∫ t : ℝ,
      ‖phi t * LSeries.term a (2 + Complex.I * (t : ℂ)) n‖) := by
    have he (n : ℕ) : (∫ t : ℝ,
        ‖phi t * LSeries.term a (2 + Complex.I * (t : ℂ)) n‖) =
        (∫ t : ℝ, ‖phi t‖) * b n := by
      simp_rw [norm_mul, term_line_norm]
      exact integral_mul_const _ _
    simpa only [he] using hb.mul_left (∫ t : ℝ, ‖phi t‖)
  have hc : Continuous (fun t : ℝ => LSeries a (2 + Complex.I * (t : ℂ))) :=
    continuous_tsum (term_line_continuous a) hb
      (fun n t => (term_line_norm a n t).le)
  have hbound (t : ℝ) : ‖LSeries a (2 + Complex.I * (t : ℂ))‖ ≤ ∑' n, b n := by
    have hs := chi.LSeriesSummable_twist_vonMangoldt
      (s := 2 + Complex.I * (t : ℂ)) (by norm_num)
    exact hs.hasSum.norm_le_of_bounded hb.hasSum
      (fun n => (term_line_norm a n t).le)
  refine ⟨hphi.mul_bdd hc.aestronglyMeasurable (Filter.Eventually.of_forall hbound), ?_⟩
  have hx := (hasSum_integral_of_summable_integral_norm ht hmass).tsum_eq.symm
  calc
    _ = ∫ t : ℝ, ∑' n : ℕ, phi t *
        LSeries.term a (2 + Complex.I * (t : ℂ)) n := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by rw [LSeries, tsum_mul_left])
    _ = _ := hx

private theorem per_term_from_inversion (chi : DirichletCharacter ℂ q)
    (phi C : ℝ → ℂ)
    (hinv : ∀ y : ℝ, (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, phi t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
        C y * (Real.exp ((3 / 2 : ℝ) * y) : ℂ)) (n : ℕ) :
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, phi t *
        LSeries.term (fun m : ℕ => chi m * (ArithmeticFunction.vonMangoldt m : ℂ))
          (2 + Complex.I * (t : ℂ)) n) =
      (primeWeight n : ℂ) * (chi n * C (Real.log (n : ℝ))) := by
  by_cases hn : n = 0
  · subst n
    simp [primeWeight, LSeries.term_zero]
  have hnR : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  have hnC : (n : ℂ) ≠ 0 := by exact_mod_cast hn
  let c : ℂ := chi n * (ArithmeticFunction.vonMangoldt n : ℂ) *
    (Real.exp (-2 * Real.log (n : ℝ)) : ℂ)
  have hterm (t : ℝ) :
      LSeries.term (fun m : ℕ => chi m * (ArithmeticFunction.vonMangoldt m : ℂ))
        (2 + Complex.I * (t : ℂ)) n =
      c * Complex.exp (-Complex.I * (t : ℂ) * (Real.log (n : ℝ) : ℂ)) := by
    rw [LSeries.term_of_ne_zero hn, div_eq_mul_inv, ← Complex.cpow_neg,
      Complex.cpow_def_of_ne_zero hnC, Complex.natCast_log]
    have he : (Real.log (n : ℝ) : ℂ) * (-(2 + Complex.I * (t : ℂ))) =
        ((-2 * Real.log (n : ℝ) : ℝ) : ℂ) +
          (-Complex.I * (t : ℂ) * (Real.log (n : ℝ) : ℂ)) := by push_cast; ring
    rw [he, Complex.exp_add, ← Complex.ofReal_exp]
    dsimp only [c]
    ring
  have hfun : (fun t : ℝ => phi t *
      LSeries.term (fun m : ℕ => chi m * (ArithmeticFunction.vonMangoldt m : ℂ))
        (2 + Complex.I * (t : ℂ)) n) =
      fun t : ℝ => c * (phi t *
        Complex.exp (-Complex.I * (t : ℂ) * (Real.log (n : ℝ) : ℂ))) := by
    funext t
    rw [hterm]
    ring
  have hexp : Real.exp (-2 * Real.log (n : ℝ)) *
      Real.exp ((3 / 2 : ℝ) * Real.log (n : ℝ)) = 1 / Real.sqrt (n : ℝ) := by
    rw [← Real.exp_add,
      show -2 * Real.log (n : ℝ) + (3 / 2 : ℝ) * Real.log (n : ℝ) =
        -(Real.log (n : ℝ) / 2) by ring, Real.exp_neg]
    have hsqrt : Real.exp (Real.log (n : ℝ) / 2) = Real.sqrt (n : ℝ) := by
      rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos hnR]
      congr 1
      ring
    rw [hsqrt, one_div]
  rw [hfun, integral_const_mul, mul_left_comm (1 / (2 * (Real.pi : ℂ))) c,
    hinv (Real.log (n : ℝ))]
  dsimp only [c]
  calc
    _ = (chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) *
        (((Real.exp (-2 * Real.log (n : ℝ)) *
          Real.exp ((3 / 2 : ℝ) * Real.log (n : ℝ)) : ℝ) : ℂ)) *
            C (Real.log (n : ℝ)) := by push_cast; ring
    _ = _ := by rw [hexp]; simp only [primeWeight, Complex.ofReal_div, Complex.ofReal_one]; ring

/-- Internal linear evaluation lemma. Its inversion premise is discharged below
for the two actual contour orientations, never exported as a Weil assumption. -/
private theorem evaluate_line (chi : DirichletCharacter ℂ q) (phi C : ℝ → ℂ)
    (hphi : Integrable phi volume)
    (hinv : ∀ y : ℝ, (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, phi t * Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
        C y * (Real.exp ((3 / 2 : ℝ) * y) : ℂ)) :
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, phi t * LSeries
        (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ))
          (2 + Complex.I * (t : ℂ))) =
      ∑' n : ℕ, (primeWeight n : ℂ) * (chi n * C (Real.log (n : ℝ))) := by
  rw [(integral_mul_primeSeries_eq_tsum chi phi hphi).2, ← tsum_mul_left]
  exact tsum_congr (per_term_from_inversion chi phi C hinv)

/-- One actual right-line prime contribution, with all prime powers retained. -/
theorem prime_line_correlation_evaluation (chi : DirichletCharacter ℂ q)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f r *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, W (2 + Complex.I * (t : ℂ)) *
        LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ))
          (2 + Complex.I * (t : ℂ))) =
      ∑' n : ℕ, (primeWeight n : ℂ) *
        (chi n * correlation f (Real.log (n : ℝ))) := by
  intro W
  apply evaluate_line chi (fun t => W (2 + Complex.I * (t : ℂ))) (correlation f)
    (integrable_correlation_contour_weight_vertical f A hA hf hs 2).1
  intro y
  simpa only [show (2 : ℝ) - 1 / 2 = 3 / 2 by norm_num] using
    correlation_weight_inversion f A hA hf hs 2 y

private theorem reflected_weight_identity (f : ℝ → ℂ) (s : ℂ) :
    (∫ r : ℝ, correlation f (-r) * Complex.exp ((s - 1 / 2) * (r : ℂ))) =
      ∫ r : ℝ, correlation f r * Complex.exp (((1 - s) - 1 / 2) * (r : ℂ)) := by
  have h := (integral_neg_eq_self (fun r : ℝ => correlation f (-r) *
    Complex.exp ((s - 1 / 2) * (r : ℂ))) volume).symm
  calc
    _ = ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * ((-r : ℝ) : ℂ)) := by
      simpa only [neg_neg] using h
    _ = _ := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun r => by push_cast; congr 1; congr 1; ring)

private theorem negative_correlation (f : ℝ → ℂ) (r : ℝ) :
    correlation f (-r) = conj (correlation f r) := by
  have h := (integral_add_right_eq_self
    (fun t : ℝ => conj (f t) * f (t + -r)) r).symm
  calc
    _ = ∫ t : ℝ, conj (f (t + r)) * f t := by
      simpa only [correlation, add_neg_cancel_right] using h
    _ = ∫ t : ℝ, conj (conj (f t) * f (t + r)) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by simp [mul_comm])
    _ = _ := integral_conj

/-- Both actual Dirichlet-series contributions evaluate to the SAME canonical
signed prime expression. No primitive/nonprincipal restriction is needed for
this component, so it also covers the conductor-one zeta prime block. -/
theorem reflected_prime_line_eq_twistedPrime (chi : DirichletCharacter ℂ q)
    (f : ℝ → ℂ) (A : ℝ) (hA : 0 ≤ A) (hf : Admissible f)
    (hs : tsupport f ⊆ Icc (-A) A) :
    let W := fun s : ℂ => ∫ r : ℝ, correlation f (-r) *
      Complex.exp ((s - 1 / 2) * (r : ℂ))
    (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, let s := (2 : ℂ) + Complex.I * (t : ℂ)
        W s * LSeries (fun n : ℕ => chi n * (ArithmeticFunction.vonMangoldt n : ℂ)) s +
        W (1 - s) * LSeries
          (fun n : ℕ => chi⁻¹ n * (ArithmeticFunction.vonMangoldt n : ℂ)) s) =
      (twistedPrime A chi (fun n => correlation f (Real.log (n : ℝ))) : ℂ) := by
  intro W
  let V := fun s : ℂ => ∫ r : ℝ, correlation f r * Complex.exp ((s - 1 / 2) * (r : ℂ))
  have hW (s : ℂ) : W s = V (1 - s) := reflected_weight_identity f s
  have hright (t : ℝ) : W (2 + Complex.I * (t : ℂ)) =
      V (-1 + Complex.I * ((-t : ℝ) : ℂ)) := by
    rw [hW]
    congr 1
    push_cast
    ring
  have hleft (t : ℝ) : W (1 - (2 + Complex.I * (t : ℂ))) =
      V (2 + Complex.I * (t : ℂ)) := by rw [hW, sub_sub_cancel]
  have hri : Integrable (fun t : ℝ => W (2 + Complex.I * (t : ℂ))) volume := by
    have hi := (integrable_correlation_contour_weight_vertical f A hA hf hs (-1)).1.comp_neg
    exact hi.congr (Filter.Eventually.of_forall (fun t => (hright t).symm))
  have hli : Integrable (fun t : ℝ => W (1 - (2 + Complex.I * (t : ℂ)))) volume := by
    exact (integrable_correlation_contour_weight_vertical f A hA hf hs 2).1.congr
      (Filter.Eventually.of_forall (fun t => (hleft t).symm))
  have hrInv (y : ℝ) : (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, W (2 + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      correlation f (-y) * (Real.exp ((3 / 2 : ℝ) * y) : ℂ) := by
    have he : (∫ t : ℝ, W (2 + Complex.I * (t : ℂ)) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
        ∫ t : ℝ, V (-1 + Complex.I * (t : ℂ)) *
          Complex.exp (-Complex.I * (t : ℂ) * ((-y : ℝ) : ℂ)) := by
      rw [← integral_neg_eq_self]
      apply integral_congr_ae
      exact Filter.Eventually.of_forall (fun t => by
        rw [hright, neg_neg]
        push_cast
        congr 1
        congr 1
        ring)
    rw [he]
    simpa only [show ∀ y : ℝ, ((-1 : ℝ) - 1 / 2) * (-y) = (3 / 2 : ℝ) * y by
      intro y; ring] using correlation_weight_inversion f A hA hf hs (-1) (-y)
  have hlInv (y : ℝ) : (1 / (2 * (Real.pi : ℂ))) *
      (∫ t : ℝ, W (1 - (2 + Complex.I * (t : ℂ))) *
        Complex.exp (-Complex.I * (t : ℂ) * (y : ℂ))) =
      correlation f y * (Real.exp ((3 / 2 : ℝ) * y) : ℂ) := by
    simp_rw [hleft]
    simpa only [show (2 : ℝ) - 1 / 2 = 3 / 2 by norm_num] using
      correlation_weight_inversion f A hA hf hs 2 y
  have hrEval := evaluate_line chi (fun t => W (2 + Complex.I * (t : ℂ)))
    (fun y => correlation f (-y)) hri hrInv
  have hlEval := evaluate_line chi⁻¹ (fun t => W (1 - (2 + Complex.I * (t : ℂ))))
    (correlation f) hli hlInv
  have hsupport : ∀ t, t ∉ Icc (-A) A → f t = 0 := by
    intro t ht
    by_contra hn
    exact ht (hs (subset_tsupport f hn))
  have hcut (n : ℕ) (hn : n ∉ activePrimePowers A) :
      (primeWeight n : ℂ) * (chi n * correlation f (-Real.log (n : ℝ))) = 0 ∧
      (primeWeight n : ℂ) * (chi⁻¹ n * correlation f (Real.log (n : ℝ))) = 0 := by
    by_cases hn2 : 2 ≤ n
    · have hmem : n ∈ activePrimePowers A ↔ 2 ≤ n ∧ (n : ℝ) < Real.exp (2 * A) := by
        simp only [activePrimePowers, Finset.mem_filter, Finset.mem_range, Nat.lt_ceil]
        tauto
      have hN : Real.exp (2 * A) ≤ (n : ℝ) :=
        le_of_not_gt (fun h => hn (hmem.mpr ⟨hn2, h⟩))
      have hr : 2 * A ≤ Real.log (n : ℝ) := by
        simpa only [Real.log_exp] using Real.log_le_log (Real.exp_pos _) hN
      rw [negative_correlation, correlation_eq_zero_of_cutoff hsupport hr]
      simp
    · have hn01 : n = 0 ∨ n = 1 := by omega
      rcases hn01 with rfl | rfl <;> simp [primeWeight]
  rw [tsum_eq_sum (s := activePrimePowers A) (fun n hn => (hcut n hn).1)] at hrEval
  rw [tsum_eq_sum (s := activePrimePowers A) (fun n hn => (hcut n hn).2)] at hlEval
  have hinv (n : ℕ) : chi⁻¹ n = conj (chi n) := by
    simpa only [inv_inv] using (conj_inverse_character_apply chi⁻¹ n).symm
  have hpi := (integral_mul_primeSeries_eq_tsum chi _ hri).1
  have hmi := (integral_mul_primeSeries_eq_tsum chi⁻¹ _ hli).1
  dsimp only
  rw [integral_add hpi hmi, mul_add, hrEval, hlEval, ← Finset.sum_add_distrib]
  simp_rw [hinv, ← mul_add]
  exact reflected_prime_legs_eq_twistedPrime chi A f

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimeLineEvaluation
