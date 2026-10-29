/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported Mathlib and GRWTSK mathematics retain their upstream attribution and licenses. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramMoments

/-!
# Whole finite moment sums below the actual exponential Gram form

The complete Taylor quadratic is bounded once by the limiting quadratic.
This does NOT sum individual inequalities with the same right-hand side.
All ordered words, including the empty word and repetitions, are retained.
The remainder is defined by the actual difference, not a free certificate.
SOURCE_PROOF_CANDIDATE: compilation, fresh kernel replay and transitive axiom audit NOT_RUN.
No operator-norm Taylor rate or spectral theorem is asserted in this module.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology
open Filter

namespace GRWTSK.Analysis.InnerProductSpace.FiniteRealGramTruncation

open MeasureTheory
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramMoments

variable {X C : Type*} [Fintype C] [TopologicalSpace X] [CompactSpace X]
variable [T2Space X] [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]

theorem taylorIntegral_re_nonnegative {t : ℝ} (ht : 0 ≤ t)
    (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))
    (g : C(X, ℂ)) (m : ℕ) :
    0 ≤ (quadraticIntegral μ (taylorKernel t f m) g).re := by
  classical
  rw [taylorIntegral_re_eq_words μ t f hf g m]
  exact Finset.sum_nonneg (fun n _ =>
    mul_nonneg (div_nonneg (pow_nonneg ht n) (Nat.cast_nonneg _))
      (Finset.sum_nonneg (fun _ _ => sq_nonneg _)))

theorem taylorIntegral_re_mono {t : ℝ} (ht : 0 ≤ t)
    (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))
    (g : C(X, ℂ)) {m k : ℕ} (hmk : m ≤ k) :
    (quadraticIntegral μ (taylorKernel t f m) g).re ≤
      (quadraticIntegral μ (taylorKernel t f k) g).re := by
  classical
  rw [taylorIntegral_re_eq_words μ t f hf g m,
    taylorIntegral_re_eq_words μ t f hf g k]
  apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono hmk)
  intro n _ _
  exact mul_nonneg (div_nonneg (pow_nonneg ht n) (Nat.cast_nonneg _))
    (Finset.sum_nonneg (fun _ _ => sq_nonneg _))

/-- A whole partial sum, not the sum of separately paid single-word bounds. -/
theorem taylorIntegral_re_le_expGramIntegral {t R : ℝ} (ht : 0 ≤ t)
    (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ)) (m : ℕ) :
    (quadraticIntegral μ (taylorKernel t f m) g).re ≤
      (quadraticIntegral μ (fun x y => Real.exp (t * gram f x y)) g).re := by
  have hlim := (Complex.continuous_re.tendsto _).comp
    (taylorIntegral_tendsto μ ht f hf hR g)
  apply ge_of_tendsto hlim
  filter_upwards [eventually_ge_atTop m] with k hk
  exact taylorIntegral_re_mono μ ht f hf g hk

theorem finiteWordSum_le_expGramIntegral {t R : ℝ} (ht : 0 ≤ t)
    (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ)) (m : ℕ) :
    (∑ n ∈ Finset.range m, (t ^ n / (n.factorial : ℝ)) *
      ∑ w : Fin n → C, ‖∫ x, wordObservable f hf g w x ∂μ‖ ^ 2) ≤
      (quadraticIntegral μ (fun x y => Real.exp (t * gram f x y)) g).re := by
  rw [← taylorIntegral_re_eq_words μ t f hf g m]
  exact taylorIntegral_re_le_expGramIntegral μ ht f hf hR g m

/-- The positive remainder is the literal difference of the source quadratics. -/
theorem remainder_nonnegative {t R : ℝ} (ht : 0 ≤ t)
    (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ)) (m : ℕ) :
    0 ≤ (quadraticIntegral μ (fun x y => Real.exp (t * gram f x y)) g).re -
      (quadraticIntegral μ (taylorKernel t f m) g).re :=
  sub_nonneg.mpr (taylorIntegral_re_le_expGramIntegral μ ht f hf hR g m)

end GRWTSK.Analysis.InnerProductSpace.FiniteRealGramTruncation
