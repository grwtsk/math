/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement

/-!
# The actual signed birth-cell kernel on ordered source pairs

The endpoint readout is linear and has nonnegative weights. Applying it to each
ordered off-diagonal product gives the exact prescribed birth expression. Both
orders remain; no factor of two, absolute value, or source positivity is inserted.
The active kernel is nonnegative, while its Mobius coefficient remains signed.

SOURCE_PROOF_CANDIDATE / compilation, fresh replay, transitive axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
open GRWTSK.NumberTheory.Moebius.PickupCellQuadratic
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupDyadicIncrement
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticIntegral
open GRWTSK.Analysis.ErrorBounds.ExponentialQuadraticChord

/-- One ordered pair's product of the two actual active source responses. -/
def pairPolynomial (n m : ℕ) (x : ℝ) : ℝ :=
  4 * ((Real.sqrt n)⁻¹ - x) * ((Real.sqrt m)⁻¹ - x)

/-- The actual chord integration kernel of one complete birth cell. The source
inventory is imposed by the surrounding sum, rather than hidden in this kernel. -/
def cellPairKernel (N n m : ℕ) : ℝ :=
  endpointReadout (Real.log (N : ℝ)) (Real.log ((N + 1 : ℕ) : ℝ))
    (pairPolynomial n m (Real.sqrt N)⁻¹)
    (pairPolynomial n m (Real.sqrt (N + 1 : ℕ))⁻¹)

theorem pairPolynomial_symm (n m : ℕ) (x : ℝ) :
    pairPolynomial n m x = pairPolynomial m n x := by
  unfold pairPolynomial
  ring

theorem cellPairKernel_symm (N n m : ℕ) :
    cellPairKernel N n m = cellPairKernel N m n := by
  simp only [cellPairKernel, pairPolynomial_symm]

/-- Expand the square before removing its complete self-diagonal. Zero Mobius
coefficients remain in the same closed inventory. -/
theorem polynomial_eq_ordered (N : ℕ) (x : ℝ) :
    polynomial N x =
      ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if n ≠ m then moebiusReal n * moebiusReal m * pairPolynomial n m x else 0 := by
  have hs : (∑ n ∈ Finset.Icc 1 N,
      moebiusReal n * (2 * ((Real.sqrt n)⁻¹ - x))) ^ 2 =
      ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        moebiusReal n * moebiusReal m * pairPolynomial n m x := by
    rw [pow_two, Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro n _
    apply Finset.sum_congr rfl
    intro m _
    unfold pairPolynomial
    ring
  have hd : (∑ n ∈ Finset.Icc 1 N,
      (moebiusReal n * (2 * ((Real.sqrt n)⁻¹ - x))) ^ 2) =
      ∑ n ∈ Finset.Icc 1 N, moebiusReal n ^ 2 * pairPolynomial n n x := by
    apply Finset.sum_congr rfl
    intro n _
    unfold pairPolynomial
    ring
  rw [polynomial_eq_square_sub_diagonal, hs, hd, complete_gram_split]
  ring

private theorem birth_order {N : ℕ} (hN : 1 ≤ N) :
    Real.log (N : ℝ) ≤ Real.log ((N + 1 : ℕ) : ℝ) := by
  apply Real.log_le_log
  · exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hN)
  · exact_mod_cast Nat.le_succ N

/-- The endpoint-defined kernel is literally the chord functional of this
pair's exponential quadratic, with no interpolation or source error. -/
theorem cellPairKernel_eq_chord {N : ℕ} (hN : 1 ≤ N) (n m : ℕ) :
    cellPairKernel N n m =
      chordValue (4 * (Real.sqrt n)⁻¹ * (Real.sqrt m)⁻¹)
        (-4 * ((Real.sqrt n)⁻¹ + (Real.sqrt m)⁻¹)) 4
        (Real.log (N : ℝ)) (Real.log ((N + 1 : ℕ) : ℝ)) := by
  rw [chordValue_eq_endpoints (birth_order hN)]
  have hnext : 1 ≤ N + 1 := by omega
  simp only [cellPairKernel, node, pickup_exp_negative_log_half hN,
    pickup_exp_negative_log_half hnext, endpointReadout, pairPolynomial]
  ring

/-- The closed cell kernel retains the actual logarithmic width, both radicals,
and both mixed response terms. It is not a scale-free replacement. -/
theorem cellPairKernel_formula {N : ℕ} (hN : 1 ≤ N) (n m : ℕ) :
    cellPairKernel N n m =
      4 * (((Real.sqrt n)⁻¹ * (Real.sqrt m)⁻¹ -
        (Real.sqrt N)⁻¹ * (Real.sqrt (N + 1 : ℕ))⁻¹) *
          Real.log (1 + 1 / (N : ℝ)) +
        2 * ((Real.sqrt N)⁻¹ + (Real.sqrt (N + 1 : ℕ))⁻¹ -
          (Real.sqrt n)⁻¹ - (Real.sqrt m)⁻¹) *
            ((Real.sqrt N)⁻¹ - (Real.sqrt (N + 1 : ℕ))⁻¹)) := by
  rw [cellPairKernel_eq_chord hN]
  have hnext : 1 ≤ N + 1 := by omega
  simp only [chordValue, value, weight0, weight1, weight2, node, mul_zero, add_zero,
    pickup_exp_negative_log_half hN, pickup_exp_negative_log_half hnext,
    birth_log_width hN]
  ring

/-- Integration weights are nonnegative, as are the products of active causal
responses. This says nothing about the sign of the Mobius-weighted pair sum. -/
theorem cellPairKernel_nonnegative {N n m : ℕ}
    (hN : 1 ≤ N) (hn : 1 ≤ n) (hm : 1 ≤ m) (hnN : n ≤ N) (hmN : m ≤ N) :
    0 ≤ cellPairKernel N n m := by
  have hinv {a b : ℕ} (ha : 1 ≤ a) (hab : a ≤ b) :
      (Real.sqrt b)⁻¹ ≤ (Real.sqrt a)⁻¹ := by
    apply inv_anti₀
    · exact Real.sqrt_pos.mpr (by exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one ha))
    · exact Real.sqrt_le_sqrt (by exact_mod_cast hab)
  have hp (L : ℕ) (hnL : n ≤ L) (hmL : m ≤ L) :
      0 ≤ pairPolynomial n m (Real.sqrt L)⁻¹ := by
    unfold pairPolynomial
    exact mul_nonneg (mul_nonneg (by norm_num)
      (sub_nonneg.mpr (hinv hn hnL))) (sub_nonneg.mpr (hinv hm hmL))
  obtain ⟨hleft, hright⟩ := endpoint_weights_nonnegative (birth_order hN)
  exact add_nonneg (mul_nonneg hleft (hp N hnN hmN))
    (mul_nonneg hright (hp (N + 1) (hnN.trans (Nat.le_succ N))
      (hmN.trans (Nat.le_succ N))))

/-- Linear endpoint integration commutes with the complete ordered source sum.
Every positive label through N is kept, including zero coefficients. -/
theorem birthExpression_eq_ordered {N : ℕ} (hN : 1 ≤ N) :
    birthExpression N =
      ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if n ≠ m then moebiusReal n * moebiusReal m * cellPairKernel N n m else 0 := by
  rw [← full_birth_formula hN, cellChord_eq_endpoints (birth_order hN)]
  have hnext : 1 ≤ N + 1 := by omega
  simp only [node, pickup_exp_negative_log_half hN, pickup_exp_negative_log_half hnext]
  rw [polynomial_eq_ordered, polynomial_eq_ordered]
  unfold endpointReadout
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m _
  by_cases h : n ≠ m
  · simp only [if_pos h, cellPairKernel, endpointReadout]
    ring
  · simp only [if_neg h, mul_zero, add_zero]

/-- The literal residual is the same complete ordered pair sum, rather than a
new source chosen after inspecting its signs. -/
theorem signedBirthResidual_eq_ordered {N : ℕ} (hN : 1 ≤ N) :
    signedBirthResidual N =
      ∑ n ∈ Finset.Icc 1 N, ∑ m ∈ Finset.Icc 1 N,
        if n ≠ m then moebiusReal n * moebiusReal m * cellPairKernel N n m else 0 := by
  rw [← birthExpression_eq_signedBirthResidual]
  exact birthExpression_eq_ordered hN

/-- The new octave cells carry their own active source cutoffs. Both orientations
of each unequal pair are retained at every cell. -/
theorem dyadic_increment_eq_ordered (j : ℕ) :
    dyadicBirthSum (j + 1) - dyadicBirthSum j =
      ∑ k ∈ Finset.range (2 ^ j),
        ∑ n ∈ Finset.Icc 1 (2 ^ j + k), ∑ m ∈ Finset.Icc 1 (2 ^ j + k),
          if n ≠ m then moebiusReal n * moebiusReal m *
            cellPairKernel (2 ^ j + k) n m else 0 := by
  rw [dyadicBirthSum_sub_eq_residual]
  apply Finset.sum_congr rfl
  intro k _
  apply signedBirthResidual_eq_ordered
  have : 0 < 2 ^ j := by positivity
  omega

end GRWTSK.NumberTheory.Moebius.PickupOctavePairKernel
