/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleWeightedPrefixTwoAdicChains
import Mathlib

/-!
# Compact support and exact multiplicative incidence for true Liouville doublets

For every positive q, the two actual coefficients lambda(q),lambda(2q)
form a signed finite difference. Its cumulative response at integer cutoff k
is exactly lambda(q) on q <= k < 2q and zero elsewhere.

The original terminal-weighted pair kernel is used without alteration.
The four cross terms between doublets at q,r vanish if r >= 2q; if
q <= r < 2q, their one-orientation total is exactly

  lambda(q)*lambda(r)*(1/r - 1/(2*q)).

The ordered opposite orientation is also part of the original quadratic
source, and must be paid with the same signed result. This is NOT a
full-prefix estimate, a cross-core all-rate bound, or RH.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.LiouvilleDyadicDoubletLocalization

open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixDoubling
open GRWTSK.NumberTheory.LiouvilleWeightedPrefixTwoAdicChains

/-- A genuine two-term signed Liouville prefix, not a simulated source. -/
def doubletPulse (q k : ℕ) : ℝ :=
  (if q ≤ k then coefficient q else 0) +
    (if 2 * q ≤ k then coefficient (2 * q) else 0)

/-- The exact compact support of a Liouville doubling difference.
All endpoint inequalities are retained, including the upper-open face. -/
theorem doubletPulse_eq_support (q k : ℕ) :
    doubletPulse q k =
      if q ≤ k ∧ k < 2 * q then coefficient q else 0 := by
  by_cases hlow : q ≤ k
  · by_cases hhigh : 2 * q ≤ k
    · simp [doubletPulse, hlow, hhigh, coefficient_doubling]
    · have hlt : k < 2 * q := by omega
      simp [doubletPulse, hlow, hhigh, hlt]
  · have hhigh : ¬ 2 * q ≤ k := by omega
    simp [doubletPulse, hlow, hhigh]

/-- Four ORIGINAL one-orientation weighted cross entries between doublets.
Unlike a full ordered mixed sector, this includes each q-row/r-column
entry once, not twice. The opposite orientation is its equal transpose. -/
def doubletCross (N q r : ℕ) : ℝ :=
  coefficient q * coefficient r * weightedPairKernel N q r +
  coefficient q * coefficient (2 * r) * weightedPairKernel N q (2 * r) +
  coefficient (2 * q) * coefficient r * weightedPairKernel N (2 * q) r +
  coefficient (2 * q) * coefficient (2 * r) *
    weightedPairKernel N (2 * q) (2 * r)

/-- The signed-source polarization retains both negative mixed terms.
No positivity premise, independent randomness or squarefree restriction. -/
theorem doubletCross_eq_signedKernel (N q r : ℕ) :
    doubletCross N q r =
      coefficient q * coefficient r *
        (weightedPairKernel N q r -
         weightedPairKernel N q (2 * r) -
         weightedPairKernel N (2 * q) r +
         weightedPairKernel N (2 * q) (2 * r)) := by
  simp only [doubletCross, coefficient_doubling]
  ring

/-- The original max-kernel is unchanged when its earlier label is moved
without passing the later label. -/
theorem weightedPairKernel_left_stable
    (N x y z : ℕ) (hx : x ≤ z) (hy : y ≤ z) :
    weightedPairKernel N x z = weightedPairKernel N y z := by
  simp [weightedPairKernel, max_eq_right hx, max_eq_right hy]

/-- The entire one-orientation covariance between nonoverlapping
doublets vanishes, including the original terminal subtraction. -/
theorem doubletCross_zero_of_separated (N q r : ℕ)
    (hsep : 2 * q ≤ r) :
    doubletCross N q r = 0 := by
  have hqr : q ≤ r := by omega
  have hq2r : q ≤ 2 * r := by omega
  have h2q2r : 2 * q ≤ 2 * r := by omega
  have hA :
      weightedPairKernel N q r = weightedPairKernel N (2 * q) r :=
    weightedPairKernel_left_stable N q (2 * q) r hqr hsep
  have hB :
      weightedPairKernel N q (2 * r) =
        weightedPairKernel N (2 * q) (2 * r) :=
    weightedPairKernel_left_stable N q (2 * q) (2 * r) hq2r h2q2r
  rw [doubletCross_eq_signedKernel, hA, hB]
  ring

/-- In the overlapping range the four exact terminal charges cancel.
The remaining local incidence factor is multiplied by the TRUE
possibly positive or negative arithmetic sign lambda(q)*lambda(r). -/
theorem doubletCross_overlap (N q r : ℕ)
    (hqr : q ≤ r) (hover : r < 2 * q) :
    doubletCross N q r =
      coefficient q * coefficient r *
        (1 / (r : ℝ) - 1 / (((2 * q : ℕ) : ℝ))) := by
  have hq2r : q ≤ 2 * r := by omega
  have hr2q : r ≤ 2 * q := by omega
  have h2q2r : 2 * q ≤ 2 * r := by omega
  have hA :
      weightedPairKernel N q r =
        1 / (r : ℝ) - 1 / (((N + 1 : ℕ) : ℝ)) := by
    simp [weightedPairKernel, max_eq_right hqr]
  have hB :
      weightedPairKernel N q (2 * r) =
        1 / (((2 * r : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ)) := by
    simp [weightedPairKernel, max_eq_right hq2r]
  have hC :
      weightedPairKernel N (2 * q) r =
        1 / (((2 * q : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ)) := by
    simp [weightedPairKernel, max_eq_left hr2q]
  have hD :
      weightedPairKernel N (2 * q) (2 * r) =
        1 / (((2 * r : ℕ) : ℝ)) - 1 / (((N + 1 : ℕ) : ℝ)) := by
    simp [weightedPairKernel, max_eq_right h2q2r]
  rw [doubletCross_eq_signedKernel, hA, hB, hC, hD]
  ring

/-- The original diagonal plus the two opposite orientations within one
Liouville doublet is exactly the positive local pulse energy 1/(2q). -/
theorem doubletCross_self (N q : ℕ) (hq : 1 ≤ q) :
    doubletCross N q q = 1 / (2 * (q : ℝ)) := by
  have hlt : q < 2 * q := by omega
  rw [doubletCross_overlap N q q (le_refl q) hlt]
  have hsq : coefficient q * coefficient q = 1 := by
    simpa [pow_two] using coefficient_square_one hq
  rw [hsq]
  have hq0 : (q : ℝ) ≠ 0 := by
    exact_mod_cast (show q ≠ 0 by omega)
  push_cast
  field_simp
  ring

/-- Both ordered block orientations between distinct q and r.
The transpose agrees because the source coefficient product and kernel
are symmetric, but no separate arithmetic sign has been suppressed. -/
def fullyOrderedDoubletCross (N q r : ℕ) : ℝ :=
  doubletCross N q r + doubletCross N r q

/-- The ordered two-direction cross packet vanishes under multiplicative
separation. -/
theorem fullyOrderedDoubletCross_zero (N q r : ℕ)
    (hsep : 2 * q ≤ r) :
    fullyOrderedDoubletCross N q r = 0 := by
  have hsym : doubletCross N r q = doubletCross N q r := by
    unfold doubletCross weightedPairKernel
    simp only [max_comm]
    ring
  simp only [fullyOrderedDoubletCross, hsym,
    doubletCross_zero_of_separated N q r hsep]
  ring

/-- The source doublet at q has no cross interaction with its prime-three
translated doublet, explaining the former 2-by-3 corner as two self packets. -/
theorem doubletCross_three_multiple_zero (N q : ℕ) :
    doubletCross N q (3 * q) = 0 := by
  apply doubletCross_zero_of_separated
  omega

/-- Both true source coefficients of every complete doublet have exact zero
Fourier/cyclic zero-mode mass. This is not the full Liouville L(N). -/
theorem doublet_zero_mode (q : ℕ) :
    coefficient q + coefficient (2 * q) = 0 := by
  rw [coefficient_doubling]
  ring

/-- An arbitrarily long family of disjoint four-adic doublets has exactly
vanishing signed total mass; the remaining original coefficients are NOT zero. -/
theorem fourAdic_selected_zero_mode (q K : ℕ) :
    (∑ j ∈ Finset.range K,
      (coefficient (4 ^ j * q) + coefficient (2 * (4 ^ j * q)))) = 0 := by
  apply Finset.sum_eq_zero
  intro j hj
  exact doublet_zero_mode (4 ^ j * q)

/-- Exact scalar cost of the geometric four-adic packet inventory.
The source-to-packet identity is proved analytically in the companion review;
this theorem is ONLY a finite real geometric-series identity. -/
theorem fourAdic_geometric_scalar_closed (K : ℕ) :
    (∑ j ∈ Finset.range K, ((1 : ℝ) / 4) ^ j) =
      (4 / 3 : ℝ) * (1 - ((1 : ℝ) / 4) ^ K) := by
  induction K with
  | zero =>
      norm_num
  | succ K ih =>
      rw [Finset.sum_range_succ, ih, pow_succ]
      ring

/-- Finite nonnegative geometric allowance: no stochastic upper bound used. -/
theorem fourAdic_geometric_scalar_le (K : ℕ) :
    (∑ j ∈ Finset.range K, ((1 : ℝ) / 4) ^ j) ≤ 4 / 3 := by
  rw [fourAdic_geometric_scalar_closed]
  have hp : 0 ≤ ((1 : ℝ) / 4) ^ K := by positivity
  nlinarith

end GRWTSK.NumberTheory.LiouvilleDyadicDoubletLocalization
