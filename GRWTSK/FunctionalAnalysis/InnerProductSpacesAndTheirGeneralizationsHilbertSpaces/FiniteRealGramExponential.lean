/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib's finite-sum, complex and exponential-series results retain their
upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Exponential
import Mathlib.Basic.Complex.BigOperators
import Mathlib.Topology.Algebra.InfiniteSum.NatInt
import Mathlib.Topology.Order.Basic
import Mathlib.Tactic.Ring

/-!
# Entrywise exponentials of finite real Gram kernels

Multiplication by a real Gram kernel preserves the finite real quadratic
inequality: expand over its actual coordinates and apply the original
inequality to each coordinate-weighted coefficient family. Starting with
the all-ones kernel proves the inequality for every entrywise power.
Nonnegative Taylor coefficients and the scalar exponential-series limit
give the entrywise exponential. Complex coefficients are handled by their
real and imaginary parts, using symmetry to cancel the imaginary sum.

The consumer is the literal eight-real-coordinate SU(2) Wilson kernel.
No matrix exponential, strict definiteness or distinctness is assumed.
SOURCE_PROOF_CANDIDATE / compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators Topology ComplexConjugate
open Filter

namespace GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential

variable {X I C : Type*}

/-- The real Gram kernel of the actual finite coordinate map. -/
def gram [Fintype C] (f : X → C → ℝ) (x y : X) : ℝ :=
  ∑ k : C, f x k * f y k

theorem gram_symm [Fintype C] (f : X → C → ℝ) (x y : X) :
    gram f x y = gram f y x := by
  unfold gram
  apply Finset.sum_congr rfl
  intro k _
  exact mul_comm _ _

/-- Finite real quadratic sum, with both ordered indices retained. -/
def realQuadratic [Fintype I] (K : I → I → ℝ) (c : I → ℝ) : ℝ :=
  ∑ i : I, ∑ j : I, c i * c j * K i j

/-- The complex-coefficient quadratic sum for a real-valued kernel. -/
def complexQuadratic [Fintype I] (K : I → I → ℝ) (c : I → ℂ) : ℂ :=
  ∑ i : I, ∑ j : I, conj (c i) * c j * (K i j : ℂ)

private theorem realQuadratic_const_one [Fintype I] (c : I → ℝ) :
    realQuadratic (fun _ _ : I => 1) c = (∑ i : I, c i) ^ 2 := by
  simp [realQuadratic, pow_two, Finset.sum_mul, Finset.mul_sum]

private theorem realQuadratic_scale [Fintype I] (K : I → I → ℝ)
    (c : I → ℝ) (r : ℝ) :
    realQuadratic (fun i j => r * K i j) c = r * realQuadratic K c := by
  simp only [realQuadratic, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  apply Finset.sum_congr rfl
  intro j _
  ring

private theorem realQuadratic_sum [Fintype I] {J : Type*} (s : Finset J)
    (K : J → I → I → ℝ) (c : I → ℝ) :
    realQuadratic (fun i j => ∑ k ∈ s, K k i j) c =
      ∑ k ∈ s, realQuadratic (K k) c := by
  classical
  simp only [realQuadratic, Finset.mul_sum]
  calc
    (∑ i : I, ∑ j : I, ∑ k ∈ s, c i * c j * K k i j) =
        ∑ i : I, ∑ k ∈ s, ∑ j : I, c i * c j * K k i j := by
      apply Finset.sum_congr rfl
      intro i _
      rw [Finset.sum_comm]
    _ = ∑ k ∈ s, ∑ i : I, ∑ j : I, c i * c j * K k i j := by
      rw [Finset.sum_comm]

/-- Every entrywise power is positive semidefinite on real coefficients.
The power zero is the all-ones kernel, including off-diagonal entries. -/
theorem gram_pow_nonneg [Fintype I] [Fintype C] (f : I → C → ℝ)
    (n : ℕ) (c : I → ℝ) :
    0 ≤ realQuadratic (fun i j => (gram f i j) ^ n) c := by
  classical
  induction n generalizing c with
  | zero =>
      simpa only [pow_zero, realQuadratic_const_one] using
        sq_nonneg (∑ i : I, c i)
  | succ n ih =>
      have heq : realQuadratic (fun i j => (gram f i j) ^ (n + 1)) c =
          ∑ k : C, realQuadratic (fun i j => (gram f i j) ^ n)
            (fun i => c i * f i k) := by
        unfold realQuadratic
        calc
          (∑ i : I, ∑ j : I, c i * c j * (gram f i j) ^ (n + 1)) =
              ∑ i : I, ∑ j : I, ∑ k : C,
                (c i * f i k) * (c j * f j k) * (gram f i j) ^ n := by
            apply Finset.sum_congr rfl
            intro i _
            apply Finset.sum_congr rfl
            intro j _
            rw [pow_succ]
            change c i * c j * ((gram f i j) ^ n * (∑ k : C, f i k * f j k)) = _
            rw [← mul_assoc, Finset.mul_sum]
            apply Finset.sum_congr rfl
            intro k _
            ring
          _ = ∑ i : I, ∑ k : C, ∑ j : I,
                (c i * f i k) * (c j * f j k) * (gram f i j) ^ n := by
            apply Finset.sum_congr rfl
            intro i _
            rw [Finset.sum_comm]
          _ = ∑ k : C, ∑ i : I, ∑ j : I,
                (c i * f i k) * (c j * f j k) * (gram f i j) ^ n := by
            rw [Finset.sum_comm]
      rw [heq]
      exact Finset.sum_nonneg (fun k _ => ih (fun i => c i * f i k))

/-- Actual scalar Taylor sums; this is entrywise, not a matrix power. -/
def taylorKernel [Fintype C] (t : ℝ) (f : X → C → ℝ)
    (n : ℕ) (x y : X) : ℝ :=
  ∑ k ∈ Finset.range n, (t * gram f x y) ^ k / (k.factorial : ℝ)

theorem taylorKernel_nonneg [Fintype I] [Fintype C] (t : ℝ) (ht : 0 ≤ t)
    (f : I → C → ℝ) (n : ℕ) (c : I → ℝ) :
    0 ≤ realQuadratic (taylorKernel t f n) c := by
  classical
  unfold taylorKernel
  rw [realQuadratic_sum]
  apply Finset.sum_nonneg
  intro k _
  have heq : (fun i j => (t * gram f i j) ^ k / (k.factorial : ℝ)) =
      fun i j => (t ^ k / (k.factorial : ℝ)) * (gram f i j) ^ k := by
    funext i j
    rw [mul_pow]
    ring
  rw [heq, realQuadratic_scale]
  exact mul_nonneg (div_nonneg (pow_nonneg ht k) (Nat.cast_nonneg _))
    (gram_pow_nonneg f k c)

/-- All scalar entries converge, including entries with negative Gram value. -/
theorem taylorKernel_tendsto [Fintype C] (t : ℝ) (f : X → C → ℝ) (x y : X) :
    Tendsto (fun n => taylorKernel t f n x y) atTop
      (𝓝 (Real.exp (t * gram f x y))) := by
  have hs : HasSum (fun k : ℕ =>
      (t * gram f x y) ^ k / (k.factorial : ℝ))
      (Real.exp (t * gram f x y)) := by
    simpa only [Real.exp_eq_exp_ℝ] using
      NormedSpace.expSeries_div_hasSum_exp (t * gram f x y)
  exact hs.tendsto_sum_nat

theorem expGram_nonneg [Fintype I] [Fintype C] (t : ℝ) (ht : 0 ≤ t)
    (f : I → C → ℝ) (c : I → ℝ) :
    0 ≤ realQuadratic (fun i j => Real.exp (t * gram f i j)) c := by
  classical
  have hlim : Tendsto (fun n => realQuadratic (taylorKernel t f n) c) atTop
      (𝓝 (realQuadratic (fun i j => Real.exp (t * gram f i j)) c)) := by
    unfold realQuadratic
    apply tendsto_finsetSum
    intro i _
    apply tendsto_finsetSum
    intro j _
    exact tendsto_const_nhds.mul (taylorKernel_tendsto t f i j)
  exact le_of_tendsto_of_tendsto' tendsto_const_nhds hlim
    (fun n => taylorKernel_nonneg t ht f n c)

/-- Real coefficients are extended to arbitrary complex coefficients exactly. -/
theorem complexQuadratic_re [Fintype I] (K : I → I → ℝ) (c : I → ℂ) :
    (complexQuadratic K c).re =
      realQuadratic K (fun i => (c i).re) + realQuadratic K (fun i => (c i).im) := by
  classical
  calc
    (complexQuadratic K c).re = ∑ i : I, ∑ j : I,
        ((c i).re * (c j).re + (c i).im * (c j).im) * K i j := by
      simp only [complexQuadratic, Complex.re_sum]
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro j _
      simp only [Complex.mul_re, Complex.mul_im, Complex.conj_re, Complex.conj_im,
        Complex.ofReal_re, Complex.ofReal_im]
      ring
    _ = _ := by
      simp only [realQuadratic, add_mul, Finset.sum_add_distrib]

theorem complexQuadratic_im [Fintype I] (K : I → I → ℝ)
    (hK : ∀ i j, K i j = K j i) (c : I → ℂ) :
    (complexQuadratic K c).im = 0 := by
  classical
  have hswap : (∑ i : I, ∑ j : I, (c i).re * (c j).im * K i j) =
      ∑ i : I, ∑ j : I, (c i).im * (c j).re * K i j := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro i _
    apply Finset.sum_congr rfl
    intro j _
    rw [hK j i]
    ring
  calc
    (complexQuadratic K c).im = ∑ i : I, ∑ j : I,
        ((c i).re * (c j).im - (c i).im * (c j).re) * K i j := by
      simp only [complexQuadratic, Complex.im_sum]
      apply Finset.sum_congr rfl
      intro i _
      apply Finset.sum_congr rfl
      intro j _
      simp only [Complex.mul_re, Complex.mul_im, Complex.conj_re, Complex.conj_im,
        Complex.ofReal_re, Complex.ofReal_im]
      ring
    _ = 0 := by
      simp only [sub_mul, Finset.sum_sub_distrib]
      exact sub_eq_zero.mpr hswap

/-- Finite positive type for complex coefficients. Empty inventories,
zero parameters and repeated feature vectors are included. -/
theorem expGram_complex_positive [Fintype I] [Fintype C] (t : ℝ) (ht : 0 ≤ t)
    (f : I → C → ℝ) (c : I → ℂ) :
    (complexQuadratic (fun i j => Real.exp (t * gram f i j)) c).im = 0 ∧
      0 ≤ (complexQuadratic (fun i j => Real.exp (t * gram f i j)) c).re := by
  constructor
  · apply complexQuadratic_im
    intro i j
    rw [gram_symm f i j]
  · rw [complexQuadratic_re]
    exact add_nonneg (expGram_nonneg t ht f (fun i => (c i).re))
      (expGram_nonneg t ht f (fun i => (c i).im))

end GRWTSK.Analysis.InnerProductSpace.FiniteRealGramExponential
