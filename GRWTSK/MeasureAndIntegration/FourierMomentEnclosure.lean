/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the file LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.MeasureAndIntegration.FourierDiskEnclosure
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Finite moment enclosures of the literal complex Fourier integral

MSC2020: 42A38, 65G20. Consumer: WeilZeroMomentEvaluation (11M26, 11M41).
The same finite moment data evaluate both reflected centers. The factorial
Taylor remainder is uniform on a complex frequency ball; no center integral
is assumed as an evaluation premise. Moment enclosures and finite arithmetic
remain inputs. This does not supply root certificates or arithmetic signs.

SOURCE_PROOF_CANDIDATE. Elaboration, exact-type checks, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN. Novelty UNASSESSED.
See FourierMomentEnclosure.md for the full argument and individual records.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators Topology ComplexConjugate

namespace GRWTSK.MeasureAndIntegration.FourierMomentEnclosure

open GRWTSK.MeasureAndIntegration.FourierCollisionBound

/-- Raw moments of the original test, not of a surrogate Fourier transform. -/
def rawMoment (f : ℝ → ℂ) (k : ℕ) : ℂ := ∫ t : ℝ, f t * (t : ℂ) ^ k

/-- An exact finite polynomial on supplied moment data. Rounding is separate. -/
def momentPolynomial (c : ℂ) (n : ℕ) (m : ℕ → ℂ) : ℂ :=
  ∑ k ∈ Finset.range n, ((Complex.I * c) ^ k / (k.factorial : ℂ)) * m k

/-- Valid as a Fourier remainder when `T*C/(n+1) ≤ 1/2` and `‖f‖₁ ≤ B`. -/
def momentTaylorBudget (T C B : ℝ) (n : ℕ) : ℝ :=
  ((T * C) ^ n / (n.factorial : ℝ) * 2) * B

def momentDataBudget (C : ℝ) (n : ℕ) (η : ℕ → ℝ) : ℝ :=
  ∑ k ∈ Finset.range n, (C ^ k / (k.factorial : ℝ)) * η k

def momentEvaluationBudget (T C B : ℝ) (n : ℕ) (η : ℕ → ℝ) : ℝ :=
  momentTaylorBudget T C B n + momentDataBudget C n η

/-- Compact support makes every raw moment genuinely integrable. -/
theorem integrable_monomial (f : ℝ → ℂ) (T : ℝ) (hT : 0 ≤ T)
    (hf : Integrable f volume) (hs : ∀ t : ℝ, T < |t| → f t = 0) (k : ℕ) :
    Integrable (fun t : ℝ => f t * (t : ℂ) ^ k) volume := by
  have hc : Continuous (fun t : ℝ => (t : ℂ) ^ k) := by fun_prop
  apply (hf.norm.mul_const (T ^ k)).mono'
    (hf.aestronglyMeasurable.mul hc.aestronglyMeasurable)
  apply Filter.Eventually.of_forall
  intro t
  by_cases ht : T < |t|
  · simp [hs t ht]
  · simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    gcongr <;> exact le_of_not_gt ht

/-- Uniform Fourier Taylor bound. Both original integrals are integrable,
and the finite polynomial is identified with its literal integral first. -/
theorem norm_fourier_sub_exact_momentPolynomial_le
    (f : ℝ → ℂ) (T C B : ℝ) (hT : 0 ≤ T) (hC : 0 ≤ C)
    (hf : Integrable f volume) (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (hB : (∫ t : ℝ, ‖f t‖) ≤ B) (c : ℂ) (hc : ‖c‖ ≤ C)
    (n : ℕ) (hn : T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ)) :
    ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ))) -
        momentPolynomial c n (rawMoment f)‖ ≤ momentTaylorBudget T C B n := by
  let a : ℕ → ℂ := fun k => (Complex.I * c) ^ k / (k.factorial : ℂ)
  let g : ℝ → ℂ := fun t => ∑ k ∈ Finset.range n, a k * (f t * (t : ℂ) ^ k)
  have hi (k : ℕ) : Integrable (fun t : ℝ => a k * (f t * (t : ℂ) ^ k)) volume :=
    (integrable_monomial f T hT hf hs k).const_mul (a k)
  have hsum (j : ℕ) :
      Integrable (fun t : ℝ => ∑ k ∈ Finset.range j, a k * (f t * (t : ℂ) ^ k)) volume := by
    induction j with
    | zero => simp
    | succ j ih => simpa only [Finset.sum_range_succ] using ih.add (hi j)
  have hg : Integrable g volume := hsum n
  have heq : (∫ t : ℝ, g t) = momentPolynomial c n (rawMoment f) := by
    dsimp only [g]
    rw [integral_finsetSum _ (fun k _ => hi k)]
    simp only [integral_const_mul, momentPolynomial, rawMoment, a]
  have hgpoint (t : ℝ) :
      g t = f t * ∑ k ∈ Finset.range n,
        (Complex.I * c * (t : ℂ)) ^ k / (k.factorial : ℂ) := by
    dsimp only [g]
    rw [Finset.mul_sum]
    apply Finset.sum_congr rfl
    intro k _
    dsimp only [a]
    rw [mul_pow]
    ring
  let K : ℝ := (T * C) ^ n / (n.factorial : ℝ) * 2
  have hK : 0 ≤ K := by dsimp [K]; positivity
  have hpoint (t : ℝ) :
      ‖f t * Complex.exp (Complex.I * c * (t : ℂ)) - g t‖ ≤ K * ‖f t‖ := by
    rw [hgpoint]
    by_cases ht : T < |t|
    · simp [hs t ht]
    · have hw : ‖Complex.I * c * (t : ℂ)‖ ≤ T * C := by
        simp only [norm_mul, Complex.norm_I, one_mul, Complex.norm_real, Real.norm_eq_abs]
        exact (mul_le_mul hc (le_of_not_gt ht) (abs_nonneg _) hC).trans_eq (mul_comm C T)
      have hsmall : ‖Complex.I * c * (t : ℂ)‖ / (n + 1 : ℕ) ≤ (1 / 2 : ℝ) :=
        (div_le_div_of_nonneg_right hw (by positivity)).trans hn
      have he := Complex.exp_bound' (x := Complex.I * c * (t : ℂ)) (n := n) (by simpa only [Nat.succ_eq_add_one] using hsmall)
      have he' : ‖Complex.exp (Complex.I * c * (t : ℂ)) -
          ∑ k ∈ Finset.range n, (Complex.I * c * (t : ℂ)) ^ k / (k.factorial : ℂ)‖ ≤ K := by
        apply he.trans
        dsimp only [K]
        gcongr <;> exact hw
      rw [← mul_sub, norm_mul]
      exact (mul_le_mul_of_nonneg_left he' (norm_nonneg _)).trans_eq (mul_comm _ _)
  rw [← heq, ← integral_sub (integrable_fourier_integrand f T hf hs c) hg]
  calc
    _ ≤ ∫ t : ℝ, K * ‖f t‖ :=
      norm_integral_le_of_norm_le (hf.norm.const_mul K) (Filter.Eventually.of_forall hpoint)
    _ = K * ∫ t : ℝ, ‖f t‖ := integral_const_mul _ _
    _ ≤ K * B := mul_le_mul_of_nonneg_left hB hK
    _ = momentTaylorBudget T C B n := rfl

/-- Finite moment uncertainty is amplified by the exact coefficient magnitudes.
No unweighted error tolerance is silently substituted. -/
theorem norm_momentPolynomial_sub_le (c : ℂ) (C : ℝ) (hC : 0 ≤ C)
    (hc : ‖c‖ ≤ C) (n : ℕ) (m μ : ℕ → ℂ) (η : ℕ → ℝ)
    (hm : ∀ k < n, ‖m k - μ k‖ ≤ η k) :
    ‖momentPolynomial c n m - momentPolynomial c n μ‖ ≤ momentDataBudget C n η := by
  have he : momentPolynomial c n m - momentPolynomial c n μ =
      ∑ k ∈ Finset.range n, ((Complex.I * c) ^ k / (k.factorial : ℂ)) * (m k - μ k) := by
    simp only [momentPolynomial, mul_sub, Finset.sum_sub_distrib]
  rw [he]
  apply (norm_sum_le _ _).trans
  apply Finset.sum_le_sum
  intro k hk
  have hη : 0 ≤ η k := (norm_nonneg _).trans (hm k (Finset.mem_range.mp hk))
  simp only [norm_mul, norm_div, norm_pow, Complex.norm_I, one_mul, Complex.norm_natCast]
  apply mul_le_mul _ (hm k (Finset.mem_range.mp hk)) (norm_nonneg _) (by positivity)
  gcongr <;> exact hc

/-- The center-transform enclosure is derived from moments and the remainder,
not retained as an input hypothesis. -/
theorem norm_fourier_sub_momentPolynomial_le
    (f : ℝ → ℂ) (T C B : ℝ) (hT : 0 ≤ T) (hC : 0 ≤ C)
    (hf : Integrable f volume) (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (hB : (∫ t : ℝ, ‖f t‖) ≤ B) (c : ℂ) (hc : ‖c‖ ≤ C)
    (n : ℕ) (hn : T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (μ : ℕ → ℂ) (η : ℕ → ℝ) (hm : ∀ k < n, ‖rawMoment f k - μ k‖ ≤ η k) :
    ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ))) -
        momentPolynomial c n μ‖ ≤ momentEvaluationBudget T C B n η := by
  have ht := dist_triangle
    (∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ)))
    (momentPolynomial c n (rawMoment f)) (momentPolynomial c n μ)
  simp only [dist_eq_norm] at ht
  exact ht.trans (add_le_add
    (norm_fourier_sub_exact_momentPolynomial_le f T C B hT hC hf hs hB c hc n hn)
    (norm_momentPolynomial_sub_le c C hC hc n (rawMoment f) μ η hm))

/-- A finite polynomial computation can itself be enclosed, with its rounding charged. -/
theorem norm_fourier_sub_rounded_momentPolynomial_le
    (f : ℝ → ℂ) (T C B : ℝ) (hT : 0 ≤ T) (hC : 0 ≤ C)
    (hf : Integrable f volume) (hs : ∀ t : ℝ, T < |t| → f t = 0)
    (hB : (∫ t : ℝ, ‖f t‖) ≤ B) (c : ℂ) (hc : ‖c‖ ≤ C)
    (n : ℕ) (hn : T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ))
    (μ : ℕ → ℂ) (η : ℕ → ℝ) (hm : ∀ k < n, ‖rawMoment f k - μ k‖ ≤ η k)
    (a : ℂ) (r : ℝ) (ha : ‖momentPolynomial c n μ - a‖ ≤ r) :
    ‖(∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ))) - a‖ ≤
      momentEvaluationBudget T C B n η + r := by
  have ht := dist_triangle
    (∫ t : ℝ, f t * Complex.exp (Complex.I * c * (t : ℂ))) (momentPolynomial c n μ) a
  simp only [dist_eq_norm] at ht
  exact ht.trans (add_le_add
    (norm_fourier_sub_momentPolynomial_le f T C B hT hC hf hs hB c hc n hn μ η hm) ha)

/-- The analytic truncation charge tends to zero for every fixed support,
frequency ball and L1 bound. This says nothing about supplied moment errors. -/
theorem momentTaylorBudget_tendsto_zero (T C B : ℝ) :
    Tendsto (fun n : ℕ => momentTaylorBudget T C B n) atTop (𝓝 0) := by
  have h := ((Real.summable_pow_div_factorial (T * C)).tendsto_atTop_zero.mul_const 2).mul_const B
  simpa only [momentTaylorBudget, zero_mul] using h

/-- Every positive tail accuracy admits a finite, valid Taylor order, uniformly
on the specified frequency ball. This is not universal Weil certificate supply. -/
theorem exists_order_momentTaylorBudget_lt (T C B ε : ℝ) (hε : 0 < ε) :
    ∃ n : ℕ, T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ) ∧ momentTaylorBudget T C B n < ε := by
  obtain ⟨N, hN⟩ := exists_nat_gt (2 * (T * C))
  have hord : ∀ᶠ n : ℕ in atTop, T * C / (n + 1 : ℕ) ≤ (1 / 2 : ℝ) := by
    filter_upwards [eventually_ge_atTop N] with n hn
    have hcast : (N : ℝ) ≤ n := by exact_mod_cast hn
    apply (div_le_iff₀ (by positivity : (0 : ℝ) < (n + 1 : ℕ))).mpr
    push_cast
    linarith
  exact (hord.and ((momentTaylorBudget_tendsto_zero T C B).eventually (gt_mem_nhds hε))).exists

end GRWTSK.MeasureAndIntegration.FourierMomentEnclosure
