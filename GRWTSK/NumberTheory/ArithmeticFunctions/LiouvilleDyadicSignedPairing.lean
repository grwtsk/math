/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Finite signed-energy arithmetic proof drafting assistance: OpenAI.
Mathlib and upstream Liouville definitions retain their authorship/license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleOddLiftCanonicalTransport
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Exact signed source/odd-residual pairing for canonical Liouville energy

Owners: grwtsk/math #630, #441. Draft PR #638, direct parent
992a4d1f6d4fdb40aaac3387747451d5ae31b8ab.

The prior dyadic inequality
  E_lifted <= (E_source + E_oddResidual)/2
is a sharp convexity consequence but discards the SIGNED cross term.

For every nonempty selected subset S, the exact mean identity yields
  4 L(S)^2 = C(S)^2 + R(S)^2 + 2*(-1)^|S| C(S) R(S).
Summing over all nonempty subset characters proves the EXACT identity
  4 E_canonical_lifted = E_source + E_oddResidual + 2 X,
where X is the all-order signed mixed source/residual pairing.

This exposes a mathematically WEAKER sufficient premise for small
lifted energy: small combined signed budget, not necessarily
individually small source and residual energies. It does not
CONSTRUCT such a cancellation estimate. In particular, the
presence of a cross term does not prove it is negative.

The residual remains an ordinary positive-index Liouville product
over odd affine forms; the lifted set remains exactly {2*h+1 | h in H}.
The empty subset is EXCLUDED from every energy or pairing.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleWalshSourceBridge

open scoped BigOperators
open GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

/-- The complete SIGNED mixed source/odd-affine correlation energy.
Its weights are exactly (-1)^|S|, one for each nonempty selected
shift subset. This is a true rational number, not always nonnegative. -/
def dyadicSignedMixedEnergy (M : ℕ) (H : Finset ℕ) : ℚ :=
  ∑ S ∈ (Finset.univ : Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
    (-1 : ℚ) ^ S.card *
      liouvilleSubsetMean M H S *
      oddResidualMean M H S

/-- Exact squared mixed-term identity for EACH selected subset,
including the empty subset when M>0. The factor (-1)^|S|
survives squaring in the cross term; it must NOT be erased. -/
theorem oddLiftedMean_square_exact (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (hM : 0 < M) :
    (4 : ℚ) * (oddLiftedMean M H S) ^ 2 =
      (liouvilleSubsetMean M H S) ^ 2 +
        (oddResidualMean M H S) ^ 2 +
          2 * ((-1 : ℚ) ^ S.card *
            liouvilleSubsetMean M H S *
            oddResidualMean M H S) := by
  rw [oddLiftedMean_half_source_plus_residual M H S hM]
  have hsgn : ((-1 : ℚ) ^ S.card) ^ 2 = 1 := by
    calc
      _ = (-1 : ℚ) ^ (S.card * 2) :=
        (pow_mul (-1 : ℚ) S.card 2).symm
      _ = (-1 : ℚ) ^ (2 * S.card) := by rw [Nat.mul_comm]
      _ = ((-1 : ℚ) ^ 2) ^ S.card :=
        pow_mul (-1 : ℚ) 2 S.card
      _ = 1 := by norm_num
  calc
    (4 : ℚ) *
      ((((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S +
           oddResidualMean M H S) / 2) ^ 2) =
      (((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S +
           oddResidualMean M H S) ^ 2) := by ring
    _ = (((-1 : ℚ) ^ S.card) ^ 2 *
           (liouvilleSubsetMean M H S) ^ 2 +
         (oddResidualMean M H S) ^ 2 +
           2 * ((-1 : ℚ) ^ S.card *
             liouvilleSubsetMean M H S *
             oddResidualMean M H S)) := by ring
    _ = _ := by rw [hsgn]; ring

/-- Sum the pointwise identity over ALL nonempty Walsh characters.
The signed pairing retains every character and the exact coefficient 2.
This identity is stronger than the previous convexity inequality. -/
theorem oddLiftedAllOrderEnergy_signed_identity (M : ℕ)
    (H : Finset ℕ) (hM : 0 < M) :
    (4 : ℚ) * oddLiftedAllOrderEnergy M H =
      liouvilleAllOrderEnergy M H +
        oddResidualAllOrderEnergy M H +
          2 * dyadicSignedMixedEnergy M H := by
  let K : Finset (Finset {h : ℕ // h ∈ H}) :=
    (Finset.univ : Finset (Finset {h : ℕ // h ∈ H})).erase ∅
  change (4 : ℚ) * (∑ S ∈ K, (oddLiftedMean M H S) ^ 2) =
    (∑ S ∈ K, (liouvilleSubsetMean M H S) ^ 2) +
      (∑ S ∈ K, (oddResidualMean M H S) ^ 2) +
        2 * (∑ S ∈ K,
          (-1 : ℚ) ^ S.card *
            liouvilleSubsetMean M H S *
            oddResidualMean M H S)
  calc
    _ = ∑ S ∈ K, (4 : ℚ) * (oddLiftedMean M H S) ^ 2 := by
      rw [Finset.mul_sum]
    _ = ∑ S ∈ K,
          ((liouvilleSubsetMean M H S) ^ 2 +
            (oddResidualMean M H S) ^ 2 +
              2 * ((-1 : ℚ) ^ S.card *
                liouvilleSubsetMean M H S *
                oddResidualMean M H S)) := by
      apply Finset.sum_congr rfl
      intro S _
      exact oddLiftedMean_square_exact M H S hM
    _ = _ := by
      rw [Finset.sum_add_distrib, Finset.sum_add_distrib,
        ← Finset.mul_sum]

/-- The signed identity now has a CANONICAL arithmetic output on the
actual finite image shift set {2*h+1 | h in H}, not the old subtype. -/
theorem canonicalOddLiftEnergy_signed_identity (M : ℕ)
    (H : Finset ℕ) (hM : 0 < M) :
    (4 : ℚ) *
      liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) =
        liouvilleAllOrderEnergy M H +
          oddResidualAllOrderEnergy M H +
            2 * dyadicSignedMixedEnergy M H := by
  rw [← oddLiftedAllOrderEnergy_eq_canonical]
  exact oddLiftedAllOrderEnergy_signed_identity M H hM

/-- Exact rational expression for canonical lifted energy. In
particular the signed numerator is nonnegative, because it equals
four times an energy, but individual summands can be large. -/
theorem canonicalOddLiftEnergy_eq_signed_budget (M : ℕ)
    (H : Finset ℕ) (hM : 0 < M) :
    liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) =
      (liouvilleAllOrderEnergy M H +
        oddResidualAllOrderEnergy M H +
          2 * dyadicSignedMixedEnergy M H) / 4 := by
  have h := canonicalOddLiftEnergy_signed_identity M H hM
  linarith

/-- One proof-relevant SIGNED cancellation premise. It controls the
specific COMBINATION required by the canonical lifted energy,
rather than demanding separate decay of its two constituent energies.
There is no theorem inhabiting this analytic premise in this module. -/
def DyadicSignedMixedBudget (M : ℕ) (H : Finset ℕ)
    (epsilon : ℚ) : Prop :=
  0 ≤ epsilon ∧
    liouvilleAllOrderEnergy M H +
      oddResidualAllOrderEnergy M H +
        2 * dyadicSignedMixedEnergy M H ≤ 4 * epsilon

/-- A signed cancellation budget, if actually supplied, would control
the CANONICAL odd-lifted higher-order Liouville energy.
No source, residual, or mixed-energy estimate is asserted here. -/
theorem canonicalOddLiftEnergy_le_of_signed_budget
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) (epsilon : ℚ)
    (hbudget : DyadicSignedMixedBudget M H epsilon) :
    liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) ≤ epsilon := by
  have h := canonicalOddLiftEnergy_signed_identity M H hM
  rcases hbudget with ⟨_, hb⟩
  linarith

/-- The original finite cyclic pattern interface now consumes the
ONE signed all-order arithmetic budget, while keeping the exact
lifted-collar fraction. This is a CONDITIONAL theorem only. -/
theorem canonicalOddLiftCyclicTV_le_of_signed_budget
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) (epsilon : ℚ)
    (hr : cyclicMaxOffset (oddLiftOffsets H) < 2 * M)
    (hbudget : DyadicSignedMixedBudget M H epsilon) :
    (totalVariationFromUniform (Finset.range (2 * M))
      (cyclicShiftWord (2 * M) (oddLiftOffsets H)
        liouvillePositiveBool) : ℝ) ≤
      ((cyclicMaxOffset (oddLiftOffsets H) : ℚ) /
        ((2 * M : ℕ) : ℚ) : ℝ) +
        Real.sqrt (epsilon : ℝ) / 2 := by
  have htv :=
    liouvilleCyclicTV_le_energy (2 * M) (oddLiftOffsets H) hr
  have hE :=
    canonicalOddLiftEnergy_le_of_signed_budget M H hM epsilon hbudget
  have hEreal :
      (liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) : ℝ) ≤
        (epsilon : ℝ) := by exact_mod_cast hE
  have hsqrt := Real.sqrt_le_sqrt hEreal
  exact htv.trans
    (add_le_add_left
      (div_le_div_of_nonneg_right hsqrt (by norm_num)) _)

/-- Explicit source-vs-signed-pairing nonnegativity consequence.
The signed interaction cannot be arbitrarily negative:
X >= -(E_source+E_residual)/2. -/
theorem dyadicSignedMixedEnergy_lower_bound
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    -(liouvilleAllOrderEnergy M H +
        oddResidualAllOrderEnergy M H) / 2 ≤
      dyadicSignedMixedEnergy M H := by
  have h := canonicalOddLiftEnergy_signed_identity M H hM
  have hpos :
      0 ≤ liouvilleAllOrderEnergy (2 * M) (oddLiftOffsets H) := by
    unfold liouvilleAllOrderEnergy
    positivity
  linarith

end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
