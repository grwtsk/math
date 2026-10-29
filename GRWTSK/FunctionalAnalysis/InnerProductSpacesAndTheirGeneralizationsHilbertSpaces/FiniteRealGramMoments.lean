/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported finite sums, Bochner integration and scalar exponential limits
retain their upstream attribution and Apache-2.0 licenses. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramIntegral
import Mathlib.Tactic.Linarith

/-!
# Individual moments controlled by the actual exponential Gram quadratic

The exact finite Taylor integral is a sum of nonnegative weighted squared
word moments. Every fixed word term is below every sufficiently long partial
sum, then below the actual dominated limit. At t>0 its coefficient is strictly
positive, even for the empty word. A zero real quadratic therefore kills EVERY
word moment. Repeated coordinates and all ordered words are retained.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open Filter

namespace GRWTSK.Analysis.InnerProductSpace.FiniteRealGramMoments

open MeasureTheory
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

variable {X C : Type*} [Fintype C] [TopologicalSpace X] [CompactSpace X]
variable [T2Space X] [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]

theorem taylorIntegral_re_eq_words (t : ℝ) (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (g : C(X, ℂ)) (m : ℕ) :
    (quadraticIntegral μ (taylorKernel t f m) g).re =
      ∑ n ∈ Finset.range m, (t ^ n / (n.factorial : ℝ)) *
        ∑ w : Fin n → C, ‖∫ x, wordObservable f hf g w x ∂μ‖ ^ 2 := by
  classical
  unfold taylorKernel
  rw [quadraticIntegral_finsetSum μ (Finset.range m)
    (fun n x y => (t * gram f x y) ^ n / (n.factorial : ℝ))
    (fun n _ => ((continuous_const.mul (continuous_gram f hf)).pow n).div_const _) g,
    Complex.re_sum]
  apply Finset.sum_congr rfl
  intro n _
  have he : (fun x y => (t * gram f x y) ^ n / (n.factorial : ℝ)) =
      fun x y => (t ^ n / (n.factorial : ℝ)) * (gram f x y) ^ n := by
    funext x y
    rw [mul_pow]
    ring
  rw [he, quadraticIntegral_scale, gramPower_integral_words μ f hf g n]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]

/-- A fixed word term survives in every sufficiently long actual partial sum. -/
theorem wordTerm_le_taylorIntegral {t : ℝ} (ht : 0 ≤ t) (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (g : C(X, ℂ))
    {n m : ℕ} (hnm : n < m) (w : Fin n → C) :
    (t ^ n / (n.factorial : ℝ)) * ‖∫ x, wordObservable f hf g w x ∂μ‖ ^ 2 ≤
      (quadraticIntegral μ (taylorKernel t f m) g).re := by
  classical
  rw [taylorIntegral_re_eq_words μ t f hf g m]
  have hc (k : ℕ) : 0 ≤ t ^ k / (k.factorial : ℝ) :=
    div_nonneg (pow_nonneg ht k) (Nat.cast_nonneg _)
  calc
    _ ≤ (t ^ n / (n.factorial : ℝ)) *
        ∑ v : Fin n → C, ‖∫ x, wordObservable f hf g v x ∂μ‖ ^ 2 :=
      mul_le_mul_of_nonneg_left
        (Finset.single_le_sum (fun v _ => sq_nonneg
          (‖∫ x, wordObservable f hf g v x ∂μ‖)) (Finset.mem_univ w)) (hc n)
    _ ≤ _ := Finset.single_le_sum
      (fun k _ => mul_nonneg (hc k) (Finset.sum_nonneg (fun v _ => sq_nonneg _)))
      (Finset.mem_range.mpr hnm)

theorem wordTerm_le_expGramIntegral {t R : ℝ} (ht : 0 ≤ t) (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k))
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ)) {n : ℕ} (w : Fin n → C) :
    (t ^ n / (n.factorial : ℝ)) * ‖∫ x, wordObservable f hf g w x ∂μ‖ ^ 2 ≤
      (quadraticIntegral μ (fun x y => Real.exp (t * gram f x y)) g).re := by
  have hlim := (Complex.continuous_re.tendsto _).comp
    (taylorIntegral_tendsto μ ht f hf hR g)
  apply ge_of_tendsto hlim
  filter_upwards [eventually_ge_atTop (n + 1)] with m hm
  exact wordTerm_le_taylorIntegral μ ht f hf g
    ((Nat.lt_succ_self n).trans_le hm) w

/-- No moment is deleted, including n=0 and words with repeated coordinates. -/
theorem wordMoment_eq_zero_of_expGramIntegral_re_eq_zero {t R : ℝ} (ht : 0 < t)
    (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ))
    (hz : (quadraticIntegral μ (fun x y => Real.exp (t * gram f x y)) g).re = 0)
    {n : ℕ} (w : Fin n → C) : ∫ x, wordObservable f hf g w x ∂μ = 0 := by
  have hc : 0 < t ^ n / (n.factorial : ℝ) :=
    div_pos (pow_pos ht n) (by exact_mod_cast Nat.factorial_pos n)
  have hb := wordTerm_le_expGramIntegral μ ht.le f hf hR g w
  rw [hz] at hb
  have he : (t ^ n / (n.factorial : ℝ)) *
      ‖∫ x, wordObservable f hf g w x ∂μ‖ ^ 2 = 0 :=
    le_antisymm hb (mul_nonneg hc.le (sq_nonneg _))
  have hs : ‖∫ x, wordObservable f hf g w x ∂μ‖ ^ 2 = 0 :=
    (mul_eq_zero.mp he).resolve_left hc.ne'
  apply norm_eq_zero.mp
  nlinarith [norm_nonneg (∫ x, wordObservable f hf g w x ∂μ)]

end GRWTSK.Analysis.InnerProductSpace.FiniteRealGramMoments
