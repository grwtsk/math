/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Imported project and Mathlib results retain their original credits/licenses.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owners: #354 / #350 / #347 / #343 / #335 / #334 RH-E02.
-/
import GRWTSK.NumberTheory.Moebius.CumulativeWeightedMertensSquare
import Mathlib.Data.Nat.Log

/-!
# Dyadic exhaustion of the cumulative weighted Mertens-square budget

The actual nonnegative density

`b n = M(n)^2 * n^(-1) * (n+1)^(-1)`

is grouped into the literal half-open dyadic cells `[2^j, 2^(j+1))`.
The completed dyadic prefix telescopes exactly to the existing cumulative mass
at `2^J`; the actual zero term is retained and proved to vanish.

The resulting dyadic-prefix subpolynomial condition is equivalent to the
existing all-horizon cumulative condition.  The reverse comparison uses the
exact logarithmic cover `J = Nat.log 2 N + 1`, including
`N < 2^J` and `2^J <= 2*N`, and deliberately spends half of the target
exponent.  An individual block estimate is derived as a necessary consequence;
its converse is not asserted here.

No dyadic estimate is proved, no new damping is paid, and no unconditional RH
claim is made.  All proof scripts await exact-head elaboration and transitive
trust review.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

open scoped BigOperators

/-- The literal half-open dyadic block of the existing positive density. -/
def weightedMertensDyadicBlock (j : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico (2 ^ j) (2 ^ (j + 1)),
    weightedMertensBaseTerm n

/-- The first `J` completed dyadic blocks. -/
def weightedMertensDyadicPrefix (J : ℕ) : ℝ :=
  ∑ j ∈ Finset.range J, weightedMertensDyadicBlock j

/-- The logarithmic dyadic endpoint used to cover an arbitrary positive
natural horizon. -/
def weightedMertensDyadicCover (N : ℕ) : ℕ :=
  (Nat.log 2 N).succ

/-- Subpolynomial growth at every completed dyadic endpoint. -/
def SubpolynomialDyadicPrefixWeightedMertensSquare : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ C : ℝ, 0 ≤ C ∧
    ∀ J : ℕ,
      weightedMertensDyadicPrefix J ≤
        C * (((2 ^ J : ℕ) : ℝ) ^ δ)

/-- The individual block statement obtained from the dyadic-prefix criterion.
Only the forward implication is proved in this module. -/
def SubpolynomialDyadicBlockWeightedMertensSquare : Prop :=
  ∀ δ : ℝ, 0 < δ → ∃ D : ℝ, 0 ≤ D ∧
    ∀ j : ℕ,
      weightedMertensDyadicBlock j ≤
        D * (((2 ^ j : ℕ) : ℝ) ^ δ)

/-- The source-defined zero term vanishes; it is not deleted by convention. -/
@[simp] theorem weightedMertensBaseTerm_zero :
    weightedMertensBaseTerm 0 = 0 := by
  simp [weightedMertensBaseTerm, pickupMertensPrefix]

theorem weightedMertensDyadicBlock_nonneg (j : ℕ) :
    0 ≤ weightedMertensDyadicBlock j := by
  unfold weightedMertensDyadicBlock
  exact Finset.sum_nonneg fun n _ => weightedMertensBaseTerm_nonneg n

theorem weightedMertensDyadicPrefix_nonneg (J : ℕ) :
    0 ≤ weightedMertensDyadicPrefix J := by
  unfold weightedMertensDyadicPrefix
  exact Finset.sum_nonneg fun j _ => weightedMertensDyadicBlock_nonneg j

@[simp] theorem weightedMertensDyadicPrefix_zero :
    weightedMertensDyadicPrefix 0 = 0 := by
  simp [weightedMertensDyadicPrefix]

theorem weightedMertensDyadicPrefix_succ (J : ℕ) :
    weightedMertensDyadicPrefix (J + 1) =
      weightedMertensDyadicPrefix J + weightedMertensDyadicBlock J := by
  simp [weightedMertensDyadicPrefix, Finset.sum_range_succ]

/-- Nonnegativity makes the existing cumulative mass monotone in its horizon. -/
theorem weightedMertensCumulative_mono {M N : ℕ} (hMN : M ≤ N) :
    weightedMertensCumulative M ≤ weightedMertensCumulative N := by
  unfold weightedMertensCumulative
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · exact Finset.range_mono hMN
  · intro n _ _
    exact weightedMertensBaseTerm_nonneg n

/-- One dyadic block is exactly the difference of its two cumulative endpoints. -/
theorem weightedMertensDyadicBlock_eq_cumulative_sub (j : ℕ) :
    weightedMertensDyadicBlock j =
      weightedMertensCumulative (2 ^ (j + 1)) -
        weightedMertensCumulative (2 ^ j) := by
  have hpow : 2 ^ j ≤ 2 ^ (j + 1) := by
    exact Nat.pow_le_pow_right (by norm_num : 0 < 2) (Nat.le_succ j)
  unfold weightedMertensDyadicBlock weightedMertensCumulative
  have hsplit := Finset.sum_range_add_sum_Ico
    (f := weightedMertensBaseTerm) hpow
  linarith

/-- The completed dyadic blocks telescope to the actual cumulative mass.
At `J=0`, both sides are the source-defined zero mass through horizon one. -/
theorem weightedMertensDyadicPrefix_eq_cumulative_pow (J : ℕ) :
    weightedMertensDyadicPrefix J =
      weightedMertensCumulative (2 ^ J) := by
  induction J with
  | zero =>
      simp [weightedMertensDyadicPrefix, weightedMertensCumulative]
  | succ J ih =>
      rw [show Nat.succ J = J + 1 by rfl,
        weightedMertensDyadicPrefix_succ, ih,
        weightedMertensDyadicBlock_eq_cumulative_sub]
      ring

/-- The cumulative criterion immediately controls every completed dyadic
prefix with the same exponent and constant. -/
theorem subpolynomialDyadicPrefix_of_cumulative
    (hsub : SubpolynomialCumulativeWeightedMertensSquare) :
    SubpolynomialDyadicPrefixWeightedMertensSquare := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hsub δ hδ
  refine ⟨C, hC, ?_⟩
  intro J
  rw [weightedMertensDyadicPrefix_eq_cumulative_pow]
  exact hbound (2 ^ J) (by positivity)

/-- The logarithmic cover strictly exceeds the supplied horizon. -/
theorem lt_pow_weightedMertensDyadicCover (N : ℕ) :
    N < 2 ^ weightedMertensDyadicCover N := by
  simpa only [weightedMertensDyadicCover] using
    (Nat.lt_pow_succ_log_self (b := 2) (by norm_num) N)

/-- For a positive horizon, the selected dyadic endpoint costs at most one
factor of two. -/
theorem pow_weightedMertensDyadicCover_le_two_mul
    {N : ℕ} (hN : 1 ≤ N) :
    2 ^ weightedMertensDyadicCover N ≤ 2 * N := by
  have hNne : N ≠ 0 := by omega
  have hlog : 2 ^ Nat.log 2 N ≤ N :=
    Nat.pow_log_le_self 2 hNne
  simpa [weightedMertensDyadicCover, Nat.pow_succ, Nat.mul_comm]
    using Nat.mul_le_mul_right 2 hlog

/-- A real-power normalization for one dyadic endpoint step. -/
theorem dyadicEndpoint_succ_rpow (δ : ℝ) (j : ℕ) :
    (((2 ^ (j + 1) : ℕ) : ℝ) ^ δ) =
      (2 : ℝ) ^ δ * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
  rw [Nat.pow_succ, Nat.cast_mul, Nat.cast_ofNat,
    Real.mul_rpow (Nat.cast_nonneg _) (by norm_num : (0 : ℝ) ≤ 2)]
  ring

/-- Dyadic endpoint control returns to every positive horizon.  The proof uses
half of the requested exponent and retains the factor from `2^J ≤ 2*N`. -/
theorem subpolynomialCumulative_of_dyadicPrefix
    (hdy : SubpolynomialDyadicPrefixWeightedMertensSquare) :
    SubpolynomialCumulativeWeightedMertensSquare := by
  intro δ hδ
  let η : ℝ := δ / 2
  have hη : 0 < η := by
    dsimp [η]
    linarith
  obtain ⟨C, hC, hbound⟩ := hdy η hη
  let K : ℝ := C * (2 : ℝ) ^ η
  have hK : 0 ≤ K := by
    dsimp [K]
    exact mul_nonneg hC (Real.rpow_nonneg (by norm_num) _)
  refine ⟨K, hK, ?_⟩
  intro N hN
  let J : ℕ := weightedMertensDyadicCover N
  have hcover : N ≤ 2 ^ J := by
    exact (lt_pow_weightedMertensDyadicCover N).le
  have htwo : 2 ^ J ≤ 2 * N := by
    exact pow_weightedMertensDyadicCover_le_two_mul hN
  have htwoReal : (((2 ^ J : ℕ) : ℝ)) ≤ 2 * (N : ℝ) := by
    exact_mod_cast htwo
  have hNreal : (1 : ℝ) ≤ (N : ℝ) := by
    exact_mod_cast hN
  calc
    weightedMertensCumulative N ≤
        weightedMertensCumulative (2 ^ J) :=
      weightedMertensCumulative_mono hcover
    _ = weightedMertensDyadicPrefix J :=
      (weightedMertensDyadicPrefix_eq_cumulative_pow J).symm
    _ ≤ C * (((2 ^ J : ℕ) : ℝ) ^ η) := hbound J
    _ ≤ C * ((2 * (N : ℝ)) ^ η) := by
      exact mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow (Nat.cast_nonneg _) htwoReal hη.le) hC
    _ = C * ((2 : ℝ) ^ η * (N : ℝ) ^ η) := by
      rw [Real.mul_rpow (by norm_num : (0 : ℝ) ≤ 2)
        (Nat.cast_nonneg N)]
    _ ≤ C * ((2 : ℝ) ^ η * (N : ℝ) ^ δ) := by
      apply mul_le_mul_of_nonneg_left
      · exact mul_le_mul_of_nonneg_left
          (Real.rpow_le_rpow_of_exponent_le hNreal
            (by dsimp [η]; linarith))
          (Real.rpow_nonneg (by norm_num) _)
      · exact hC
    _ = K * (N : ℝ) ^ δ := by
      dsimp [K]
      ring

/-- The all-horizon and completed-dyadic-prefix formulations are exactly
equivalent. -/
theorem subpolynomialDyadicPrefix_iff_cumulative :
    SubpolynomialDyadicPrefixWeightedMertensSquare ↔
      SubpolynomialCumulativeWeightedMertensSquare :=
  ⟨subpolynomialCumulative_of_dyadicPrefix,
    subpolynomialDyadicPrefix_of_cumulative⟩

/-- Every individual block is bounded by the next completed dyadic prefix. -/
theorem weightedMertensDyadicBlock_le_prefix_succ (j : ℕ) :
    weightedMertensDyadicBlock j ≤
      weightedMertensDyadicPrefix (j + 1) := by
  rw [weightedMertensDyadicPrefix_succ]
  exact le_add_of_nonneg_left (weightedMertensDyadicPrefix_nonneg j)

/-- The exact dyadic-prefix criterion implies the source-readable individual
block estimate.  No converse individual-block theorem is claimed here. -/
theorem subpolynomialDyadicBlock_of_prefix
    (hdy : SubpolynomialDyadicPrefixWeightedMertensSquare) :
    SubpolynomialDyadicBlockWeightedMertensSquare := by
  intro δ hδ
  obtain ⟨C, hC, hbound⟩ := hdy δ hδ
  let D : ℝ := C * (2 : ℝ) ^ δ
  have hD : 0 ≤ D := by
    dsimp [D]
    exact mul_nonneg hC (Real.rpow_nonneg (by norm_num) _)
  refine ⟨D, hD, ?_⟩
  intro j
  calc
    weightedMertensDyadicBlock j ≤
        weightedMertensDyadicPrefix (j + 1) :=
      weightedMertensDyadicBlock_le_prefix_succ j
    _ ≤ C * (((2 ^ (j + 1) : ℕ) : ℝ) ^ δ) :=
      hbound (j + 1)
    _ = D * (((2 ^ j : ℕ) : ℝ) ^ δ) := by
      rw [dyadicEndpoint_succ_rpow]
      dsimp [D]
      ring

/-- Conditional terminal return through the existing cumulative and RH-E02
consumers. -/
theorem riemannHypothesis_of_subpolynomialDyadicPrefixWeightedMertensSquare
    (hdy : SubpolynomialDyadicPrefixWeightedMertensSquare) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_subpolynomialCumulativeWeightedMertensSquare
    (subpolynomialDyadicPrefix_iff_cumulative.mp hdy)

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicPrefix_eq_cumulative_pow
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicPrefix_iff_cumulative
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.subpolynomialDyadicBlock_of_prefix
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.riemannHypothesis_of_subpolynomialDyadicPrefixWeightedMertensSquare
