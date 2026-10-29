/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's finite sums, scalar exponential series and Bochner integration
retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.FunctionalAnalysis.InnerProductSpacesAndTheirGeneralizationsHilbertSpaces.FiniteRealGramExponential
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.MeasureTheory.Function.LocallyIntegrable
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.Topology.ContinuousMap.Compact

/-!
# Integrated positive type of a finite real-feature exponential kernel

Every Gram power is the sum of rank-one kernels indexed by coordinate words.
Its actual product integral is therefore a finite sum of squared complex
norms of feature moments, including the empty word. Nonnegative scalar
Taylor coefficients and dominated convergence then give the exponential
inequality. The bound on the real Gram kernel is quantitative input, supplied
by the actual SU(2) trace bound in the Wilson consumer; it is not a positivity
certificate. Compactness pays every continuity/integrability premise.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology ComplexConjugate
open Filter

namespace GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral

open MeasureTheory
open GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential

variable {X C : Type*} [Fintype C]

def wordFeature (f : X → C → ℝ) {n : ℕ} (w : Fin n → C) (x : X) : ℝ :=
  ∏ r : Fin n, f x (w r)

/-- Exact finite tensor expansion; power zero is the all-ones kernel. -/
theorem gram_pow_words (f : X → C → ℝ) (n : ℕ) (x y : X) :
    (gram f x y) ^ n =
      ∑ w : Fin n → C, wordFeature f w x * wordFeature f w y := by
  classical
  unfold gram
  rw [Fintype.sum_pow]
  apply Finset.sum_congr rfl
  intro w _
  simp only [wordFeature, Finset.prod_mul_distrib]

@[simp] theorem wordFeature_zero (f : X → C → ℝ) (w : Fin 0 → C) (x : X) :
    wordFeature f w x = 1 := by simp [wordFeature]

variable [TopologicalSpace X]

theorem continuous_gram (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k)) :
    Continuous (fun p : X × X => gram f p.1 p.2) := by
  apply continuous_finsetSum
  intro k _
  exact ((hf k).comp continuous_fst).mul ((hf k).comp continuous_snd)

theorem continuous_wordFeature (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) {n : ℕ} (w : Fin n → C) :
    Continuous (wordFeature f w) := by
  apply continuous_finsetProd
  intro r _
  exact hf (w r)

def wordObservable (f : X → C → ℝ) (hf : ∀ k, Continuous (fun x => f x k))
    (g : C(X, ℂ)) {n : ℕ} (w : Fin n → C) : C(X, ℂ) :=
  ⟨fun x => g x * (wordFeature f w x : ℂ),
    g.continuous.mul (Complex.continuous_ofReal.comp (continuous_wordFeature f hf w))⟩

theorem continuous_taylorKernel (t : ℝ) (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (n : ℕ) :
    Continuous (fun p : X × X => taylorKernel t f n p.1 p.2) := by
  apply continuous_finsetSum
  intro k _
  exact ((continuous_const.mul (continuous_gram f hf)).pow k).div_const _

/-- A pointwise absolute bound on every scalar truncation, including negative entries. -/
theorem abs_taylorKernel_le {t R : ℝ} (ht : 0 ≤ t) (f : X → C → ℝ)
    (hR : ∀ x y, |gram f x y| ≤ R) (n : ℕ) (x y : X) :
    |taylorKernel t f n x y| ≤ Real.exp (t * R) := by
  classical
  calc
    _ = ‖∑ k ∈ Finset.range n, (t * gram f x y) ^ k / (k.factorial : ℝ)‖ := by
      rw [Real.norm_eq_abs]
      rfl
    _ ≤ ∑ k ∈ Finset.range n, ‖(t * gram f x y) ^ k / (k.factorial : ℝ)‖ :=
      norm_sum_le _ _
    _ = ∑ k ∈ Finset.range n, |t * gram f x y| ^ k / (k.factorial : ℝ) := by
      apply Finset.sum_congr rfl
      intro k _
      simp only [Real.norm_eq_abs, abs_div, abs_pow,
        abs_of_nonneg (Nat.cast_nonneg k.factorial : (0 : ℝ) ≤ k.factorial)]
    _ ≤ Real.exp |t * gram f x y| := Real.sum_le_exp_of_nonneg (abs_nonneg _) n
    _ ≤ Real.exp (t * R) := by
      apply Real.exp_le_exp.mpr
      rw [abs_mul, abs_of_nonneg ht]
      exact mul_le_mul_of_nonneg_left (hR x y) ht

section CompactIntegral
variable [CompactSpace X] [T2Space X] [SecondCountableTopology X]
variable [MeasurableSpace X] [BorelSpace X]
variable (μ : Measure X) [IsProbabilityMeasure μ]

/-- The actual quadratic product integral for a real kernel and complex observable. -/
def quadraticIntegral (K : X → X → ℝ) (g : C(X, ℂ)) : ℂ :=
  ∫ p : X × X, conj (g p.2) * g p.1 * (K p.1 p.2 : ℂ) ∂μ.prod μ

theorem integrable_quadratic (K : X → X → ℝ)
    (hK : Continuous (fun p : X × X => K p.1 p.2)) (g : C(X, ℂ)) :
    Integrable (fun p : X × X => conj (g p.2) * g p.1 * (K p.1 p.2 : ℂ))
      (μ.prod μ) :=
  (((Complex.continuous_conj.comp (g.continuous.comp continuous_snd)).mul
    (g.continuous.comp continuous_fst)).mul
      (Complex.continuous_ofReal.comp hK)).integrable_of_hasCompactSupport
        (HasCompactSupport.of_compactSpace _)

theorem quadraticIntegral_eq_double (K : X → X → ℝ)
    (hK : Continuous (fun p : X × X => K p.1 p.2)) (g : C(X, ℂ)) :
    quadraticIntegral μ K g =
      ∫ x, ∫ y, conj (g y) * g x * (K x y : ℂ) ∂μ ∂μ :=
  integral_prod _ (integrable_quadratic μ K hK g)

/-- Fubini and actual integral conjugation, not pointwise nonnegativity. -/
theorem rankOne_integral (h : C(X, ℂ)) :
    (∫ p : X × X, conj (h p.2) * h p.1 ∂μ.prod μ) =
      (‖∫ x, h x ∂μ‖ ^ 2 : ℝ) := by
  calc
    _ = ∫ p : X × X, h p.1 * conj (h p.2) ∂μ.prod μ := by
      apply integral_congr_ae
      exact ae_of_all _ (fun p => mul_comm _ _)
    _ = (∫ x, h x ∂μ) * conj (∫ x, h x ∂μ) := by
      rw [integral_prod_mul, integral_conj]
    _ = _ := by rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]

/-- Exact integrated word formula for every n, with all repeated words retained. -/
theorem gramPower_integral_words (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (g : C(X, ℂ)) (n : ℕ) :
    quadraticIntegral μ (fun x y => (gram f x y) ^ n) g =
      ((∑ w : Fin n → C, ‖∫ x, wordObservable f hf g w x ∂μ‖ ^ 2 : ℝ) : ℂ) := by
  classical
  calc
    _ = ∫ p : X × X, ∑ w : Fin n → C,
        conj (wordObservable f hf g w p.2) * wordObservable f hf g w p.1 ∂μ.prod μ := by
      apply integral_congr_ae
      exact ae_of_all _ (fun p => by
        rw [gram_pow_words, Complex.ofReal_sum, Finset.mul_sum]
        apply Finset.sum_congr rfl
        intro w _
        change conj (g p.2) * g p.1 *
          ((wordFeature f w p.1 * wordFeature f w p.2 : ℝ) : ℂ) =
            conj (g p.2 * (wordFeature f w p.2 : ℂ)) *
              (g p.1 * (wordFeature f w p.1 : ℂ))
        simp only [map_mul, Complex.conj_ofReal, Complex.ofReal_mul]
        ring)
    _ = ∑ w : Fin n → C, ∫ p : X × X,
        conj (wordObservable f hf g w p.2) * wordObservable f hf g w p.1 ∂μ.prod μ := by
      apply integral_finsetSum
      intro w _
      exact ((Complex.continuous_conj.comp
        ((wordObservable f hf g w).continuous.comp continuous_snd)).mul
          ((wordObservable f hf g w).continuous.comp continuous_fst)).integrable_of_hasCompactSupport
            (HasCompactSupport.of_compactSpace _)
    _ = _ := by
      rw [Complex.ofReal_sum]
      apply Finset.sum_congr rfl
      intro w _
      exact rankOne_integral μ (wordObservable f hf g w)

/-- Empty words contribute the square of the integral, including empty coordinates. -/
theorem gramPower_integral_zero (f : X → C → ℝ) (g : C(X, ℂ)) :
    quadraticIntegral μ (fun x y => (gram f x y) ^ 0) g =
      (‖∫ x, g x ∂μ‖ ^ 2 : ℝ) := by
  simpa only [quadraticIntegral, pow_zero, Complex.ofReal_one, mul_one] using
    rankOne_integral μ g

theorem gramPower_integral_nonnegative (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (g : C(X, ℂ)) (n : ℕ) :
    0 ≤ (quadraticIntegral μ (fun x y => (gram f x y) ^ n) g).re := by
  rw [gramPower_integral_words, Complex.ofReal_re]
  exact Finset.sum_nonneg (fun w _ => sq_nonneg _)

theorem quadraticIntegral_scale (K : X → X → ℝ) (g : C(X, ℂ)) (r : ℝ) :
    quadraticIntegral μ (fun x y => r * K x y) g =
      (r : ℂ) * quadraticIntegral μ K g := by
  unfold quadraticIntegral
  rw [← integral_const_mul]
  apply integral_congr_ae
  exact ae_of_all _ (fun p => by rw [Complex.ofReal_mul]; ring)

theorem quadraticIntegral_finsetSum {J : Type*} (s : Finset J)
    (K : J → X → X → ℝ)
    (hK : ∀ j ∈ s, Continuous (fun p : X × X => K j p.1 p.2)) (g : C(X, ℂ)) :
    quadraticIntegral μ (fun x y => ∑ j ∈ s, K j x y) g =
      ∑ j ∈ s, quadraticIntegral μ (K j) g := by
  classical
  unfold quadraticIntegral
  simp only [Complex.ofReal_sum, Finset.mul_sum]
  exact integral_finsetSum s (fun j hj => integrable_quadratic μ (K j) (hK j hj) g)

theorem taylorIntegral_nonnegative {t : ℝ} (ht : 0 ≤ t) (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k)) (g : C(X, ℂ)) (n : ℕ) :
    0 ≤ (quadraticIntegral μ (taylorKernel t f n) g).re := by
  classical
  unfold taylorKernel
  rw [quadraticIntegral_finsetSum μ (Finset.range n)
    (fun k x y => (t * gram f x y) ^ k / (k.factorial : ℝ))
    (fun k _ => ((continuous_const.mul (continuous_gram f hf)).pow k).div_const _) g,
    Complex.re_sum]
  apply Finset.sum_nonneg
  intro k _
  have heq : (fun x y => (t * gram f x y) ^ k / (k.factorial : ℝ)) =
      fun x y => (t ^ k / (k.factorial : ℝ)) * (gram f x y) ^ k := by
    funext x y
    rw [mul_pow]
    ring
  rw [heq, quadraticIntegral_scale]
  simpa only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using
    mul_nonneg (div_nonneg (pow_nonneg ht k) (Nat.cast_nonneg _))
      (gramPower_integral_nonnegative μ f hf g k)

/-- Explicit integrable constant majorant for all truncations at a fixed bound R. -/
theorem taylorIntegrand_norm_le {t R : ℝ} (ht : 0 ≤ t) (f : X → C → ℝ)
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ)) (n : ℕ) (p : X × X) :
    ‖conj (g p.2) * g p.1 * (taylorKernel t f n p.1 p.2 : ℂ)‖ ≤
      ‖g‖ ^ 2 * Real.exp (t * R) := by
  rw [norm_mul, norm_mul, Complex.norm_conj, Complex.norm_real, Real.norm_eq_abs]
  have hg : ‖g p.2‖ * ‖g p.1‖ ≤ ‖g‖ * ‖g‖ :=
    mul_le_mul (g.norm_coe_le_norm p.2) (g.norm_coe_le_norm p.1)
      (norm_nonneg _) (norm_nonneg _)
  simpa only [pow_two] using mul_le_mul hg (abs_taylorKernel_le ht f hR n p.1 p.2)
    (abs_nonneg _) (mul_nonneg (norm_nonneg g) (norm_nonneg g))

/-- Every premise of dominated convergence is supplied for the actual product integral. -/
theorem taylorIntegral_tendsto {t R : ℝ} (ht : 0 ≤ t) (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k))
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ)) :
    Tendsto (fun n => quadraticIntegral μ (taylorKernel t f n) g) atTop
      (𝓝 (quadraticIntegral μ (fun x y => Real.exp (t * gram f x y)) g)) := by
  unfold quadraticIntegral
  apply tendsto_integral_of_dominated_convergence
    (fun _ : X × X => ‖g‖ ^ 2 * Real.exp (t * R))
  · intro n
    exact (integrable_quadratic μ _ (continuous_taylorKernel t f hf n) g).aestronglyMeasurable
  · exact integrable_const _
  · intro n
    exact ae_of_all _ (taylorIntegrand_norm_le ht f hR g n)
  · exact ae_of_all _ (fun p =>
      tendsto_const_nhds.mul ((Complex.continuous_ofReal.tendsto _).comp
        (taylorKernel_tendsto t f p.1 p.2)))

/-- Integrated positive type of the scalar entrywise exponential. -/
theorem expGram_integral_nonnegative {t R : ℝ} (ht : 0 ≤ t) (f : X → C → ℝ)
    (hf : ∀ k, Continuous (fun x => f x k))
    (hR : ∀ x y, |gram f x y| ≤ R) (g : C(X, ℂ)) :
    0 ≤ (quadraticIntegral μ (fun x y => Real.exp (t * gram f x y)) g).re := by
  have hlim := (Complex.continuous_re.tendsto _).comp (taylorIntegral_tendsto μ ht f hf hR g)
  exact le_of_tendsto_of_tendsto' tendsto_const_nhds hlim
    (fun n => taylorIntegral_nonnegative μ ht f hf g n)

end CompactIntegral
end GRWTSK.Analysis.InnerProductSpace.FiniteRealGramIntegral
