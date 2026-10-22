/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Source-only finite dyadic Liouville recurrence drafting assistance: OpenAI.
Mathlib Liouville work retains Thomas Browning's authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleWalshSourceBridge
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Dyadic renormalization of all-order Liouville correlations, with an honest residual

Owners: grwtsk/math#630, #441. Draft PR #638, direct parent
e85c3fe10cac688f782ff52a95fe9f67d5870687.

For any finite H of nonnegative shifts and ANY subset S of its actual
shift-coordinate subtype, consider the odd-lifted shifts 2*h+1.
An ordinary source moment at 2*M roots splits into even roots and
odd roots. On even roots, complete multiplicativity gives the EXACT
factor (-1)^|S| times the ordinary source product at M roots.
The ODD-root part is a distinct, explicitly retained affine-product
correlation on the forms 2*m+2*h+3. It is NOT estimated here.

Hence at M>0:
  mean_lifted(2M,2S+1)
    = ( (-1)^|S| * mean_source(M,S) + mean_odd_residual(M,S) ) / 2.

The sum and absolute-value results below are mathematically exact
finite reductions. They do NOT infer small all-order correlations from
complete multiplicativity; the residual odd-root supplier is OPEN.
The empty-subset case is included in the algebra, but is NEVER
claimed to cancel (its mean is one for positive M).

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleWalshSourceBridge

open scoped BigOperators
open GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge

/-- Ordinary source product on the exact selected shift SUBSET.
Its finite arithmetic mean is the previously defined
liouvilleSubsetMean, with the SAME roots, offsets and normalization. -/
def ordinaryProductTerm (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (m : ℕ) : ℚ :=
  ∏ h ∈ S, ((ArithmeticFunction.liouville (m + h.val + 1) : ℤ) : ℚ)

/-- Odd-lifted shift product:
lambda(n+(2*h+1)+1) = lambda(n+2*h+2).
At n=2*m, every factor is even and can be reduced. -/
def oddLiftedProductTerm (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (n : ℕ) : ℚ :=
  ∏ h ∈ S, ((ArithmeticFunction.liouville (n + 2 * h.val + 2) : ℤ) : ℚ)

/-- The UNREDUCED odd-root affine product:
lambda(2*m+2*h+3) for each selected h. This is an independently
required higher-order supplier, not an error asserted to vanish. -/
def oddResidualProductTerm (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (m : ℕ) : ℚ :=
  ∏ h ∈ S, ((ArithmeticFunction.liouville (2 * m + 2 * h.val + 3) : ℤ) : ℚ)

/-- The even-root product descends by exactly one dyadic scale
with one sign -1 for EACH selected coordinate. -/
theorem oddLiftedProduct_evenRoot (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (m : ℕ) :
    oddLiftedProductTerm H S (2 * m) =
      (-1 : ℚ) ^ S.card * ordinaryProductTerm H S m := by
  unfold oddLiftedProductTerm ordinaryProductTerm
  calc
    (∏ h ∈ S,
        ((ArithmeticFunction.liouville (2 * m + 2 * h.val + 2) : ℤ) : ℚ)) =
      ∏ h ∈ S,
        (-1 : ℚ) *
          ((ArithmeticFunction.liouville (m + h.val + 1) : ℤ) : ℚ) := by
      apply Finset.prod_congr rfl
      intro h _
      have heq : 2 * m + 2 * h.val + 2 = 2 * (m + h.val + 1) := by omega
      rw [heq, liouville_twice]
      push_cast
      ring
    _ = (∏ _h ∈ S, (-1 : ℚ)) *
        (∏ h ∈ S,
          ((ArithmeticFunction.liouville (m + h.val + 1) : ℤ) : ℚ)) := by
      rw [Finset.prod_mul_distrib]
    _ = _ := by simp

/-- At odd roots the lifted correlation is precisely the still-open
odd-affine residual, with NO missing parity sign. -/
theorem oddLiftedProduct_oddRoot (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (m : ℕ) :
    oddLiftedProductTerm H S (2 * m + 1) =
      oddResidualProductTerm H S m := by
  unfold oddLiftedProductTerm oddResidualProductTerm
  apply Finset.prod_congr rfl
  intro h _
  have heq :
      (2 * m + 1) + 2 * h.val + 2 =
        2 * m + 2 * h.val + 3 := by omega
  rw [heq]

/-- Pure rational finite reindexing; exactly 2*M roots are partitioned
into pairs (2*m,2*m+1), with no endpoint discarded. -/
theorem rational_evenOdd_sum (f : ℕ → ℚ) (M : ℕ) :
    (∑ n ∈ Finset.range (2 * M), f n) =
      ∑ m ∈ Finset.range M, (f (2 * m) + f (2 * m + 1)) := by
  induction M with
  | zero => simp
  | succ M ih =>
    calc
      (∑ n ∈ Finset.range (2 * (M + 1)), f n) =
          (∑ n ∈ Finset.range (2 * M + 1 + 1), f n) := by
            congr 1
            omega
      _ = (∑ n ∈ Finset.range (2 * M), f n) +
            f (2 * M) + f (2 * M + 1) := by
        rw [Finset.sum_range_succ, Finset.sum_range_succ]
      _ = (∑ m ∈ Finset.range M,
            (f (2 * m) + f (2 * m + 1))) +
            (f (2 * M) + f (2 * M + 1)) := by
        rw [ih]
        ring
      _ = ∑ m ∈ Finset.range (M + 1),
            (f (2 * m) + f (2 * m + 1)) := by
        rw [Finset.sum_range_succ]

/-- Exact UNNORMALIZED all-order Liouville dyadic recurrence.
The odd-residual sum is retained independently and with coefficient 1. -/
theorem oddLifted_sum_split (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) :
    (∑ n ∈ Finset.range (2 * M), oddLiftedProductTerm H S n) =
      (-1 : ℚ) ^ S.card *
        (∑ m ∈ Finset.range M, ordinaryProductTerm H S m) +
        (∑ m ∈ Finset.range M, oddResidualProductTerm H S m) := by
  rw [rational_evenOdd_sum]
  calc
    _ = ∑ m ∈ Finset.range M,
        ((-1 : ℚ) ^ S.card * ordinaryProductTerm H S m +
          oddResidualProductTerm H S m) := by
      apply Finset.sum_congr rfl
      intro m _
      rw [oddLiftedProduct_evenRoot, oddLiftedProduct_oddRoot]
    _ = _ := by
      rw [Finset.sum_add_distrib, Finset.mul_sum]

/-- Normalized mean of odd-lifted shifts on EXACTLY 2*M roots.
At M=0 this is only a rational algebraic convention, not an empirical
probability. -/
def oddLiftedMean (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) : ℚ :=
  (∑ n ∈ Finset.range (2 * M), oddLiftedProductTerm H S n) /
    ((2 * M : ℕ) : ℚ)

/-- The independent normalized odd-residual mean on M roots. -/
def oddResidualMean (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) : ℚ :=
  (∑ m ∈ Finset.range M, oddResidualProductTerm H S m) / (M : ℚ)

/-- Exact NORMALIZED two-branch recurrence, with its indispensable
positive sample hypothesis and factor 1/2. The smaller-scale source
moment is the already typed actual Liouville subset mean. -/
theorem oddLiftedMean_half_source_plus_residual (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (hM : 0 < M) :
    oddLiftedMean M H S =
      (((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S) +
        oddResidualMean M H S) / 2 := by
  have hbase :
      liouvilleSubsetMean M H S =
        (∑ m ∈ Finset.range M, ordinaryProductTerm H S m) / (M : ℚ) := rfl
  rw [hbase]
  unfold oddLiftedMean oddResidualMean
  rw [oddLifted_sum_split]
  have hM0 : (M : ℚ) ≠ 0 := by
    exact_mod_cast Nat.ne_of_gt hM
  simp only [Nat.cast_mul, Nat.cast_ofNat]
  field_simp [hM0]
  ring

/-- The lifted higher-order correlation can be bounded by the average
of TWO *independently required* arithmetic suppliers. Multiplicativity
alone provides the equality, not smallness of either term. -/
theorem oddLiftedMean_abs_le_source_add_residual
    (M : ℕ) (H : Finset ℕ) (S : Finset {h : ℕ // h ∈ H})
    (hM : 0 < M) :
    |oddLiftedMean M H S| ≤
      (|liouvilleSubsetMean M H S| +
        |oddResidualMean M H S|) / 2 := by
  rw [oddLiftedMean_half_source_plus_residual M H S hM]
  calc
    |(((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S) +
        oddResidualMean M H S) / 2| =
      |((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S) +
        oddResidualMean M H S| / 2 := by
      rw [abs_div]
      norm_num
    _ ≤ (|(-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S| +
          |oddResidualMean M H S|) / 2 :=
      div_le_div_of_nonneg_right (abs_add_le _ _) (by norm_num)
    _ = _ := by simp [abs_mul]

/-- Source-bound supplier: the residual is not silently assigned zero.
This proposition is an explicit prerequisite, NOT a result here. -/
def OddResidualEnvelope (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (delta : ℚ) : Prop :=
  0 ≤ delta ∧ |oddResidualMean M H S| ≤ delta

/-- Conditional quantitative two-branch return. One bound comes from
the already exposed source mean; the other must bound the odd-residual
affine product. Neither estimate is constructed here. -/
theorem oddLiftedMean_le_of_two_suppliers
    (M : ℕ) (H : Finset ℕ) (S : Finset {h : ℕ // h ∈ H})
    (epsilon delta : ℚ) (hM : 0 < M)
    (hsource : |liouvilleSubsetMean M H S| ≤ epsilon)
    (hodd : OddResidualEnvelope M H S delta) :
    |oddLiftedMean M H S| ≤ (epsilon + delta) / 2 := by
  exact (oddLiftedMean_abs_le_source_add_residual M H S hM).trans
    (div_le_div_of_nonneg_right
      (add_le_add hsource hodd.2) (by norm_num))

/-- All nonempty characters of the ODD-LIFTED source at 2*M roots.
The coordinate type is still the finite subtype of H. A later
separate transport lemma is needed to rewrite this as the canonical
liouvilleAllOrderEnergy on the IMAGE shift set {2*h+1 | h∈H}. -/
def oddLiftedAllOrderEnergy (M : ℕ) (H : Finset ℕ) : ℚ :=
  ∑ S ∈ (Finset.univ : Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
    (oddLiftedMean M H S) ^ 2

/-- Independent residual energy of all ODD-ROOT affine products.
No smallness is assumed by this definition. -/
def oddResidualAllOrderEnergy (M : ℕ) (H : Finset ℕ) : ℚ :=
  ∑ S ∈ (Finset.univ : Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
    (oddResidualMean M H S) ^ 2

/-- Squared dyadic mean is bounded by the arithmetic mean of its
source and residual squared means, retaining the exact factor 1/2.
This is the sharp convexity inequality (a+b)^2/4 ≤ (a²+b²)/2. -/
theorem oddLiftedMean_sq_le_source_residual_average
    (M : ℕ) (H : Finset ℕ)
    (S : Finset {h : ℕ // h ∈ H}) (hM : 0 < M) :
    (oddLiftedMean M H S) ^ 2 ≤
      ((liouvilleSubsetMean M H S) ^ 2 +
        (oddResidualMean M H S) ^ 2) / 2 := by
  rw [oddLiftedMean_half_source_plus_residual M H S hM]
  have hsgn : ((-1 : ℚ) ^ S.card) ^ 2 = 1 := by
    calc
      _ = (-1 : ℚ) ^ (S.card * 2) :=
        (pow_mul (-1 : ℚ) S.card 2).symm
      _ = (-1 : ℚ) ^ (2 * S.card) := by rw [Nat.mul_comm]
      _ = ((-1 : ℚ) ^ 2) ^ S.card :=
        pow_mul (-1 : ℚ) 2 S.card
      _ = 1 := by norm_num
  have havg (a b : ℚ) :
      ((a + b) / 2) ^ 2 ≤ (a ^ 2 + b ^ 2) / 2 := by
    nlinarith [sq_nonneg (a - b)]
  calc
    _ ≤ (((-1 : ℚ) ^ S.card * liouvilleSubsetMean M H S) ^ 2 +
          (oddResidualMean M H S) ^ 2) / 2 := havg _ _
    _ = _ := by rw [mul_pow, hsgn, one_mul]

/-- The full odd-lifted energy is at most the average of TWO complete
nonempty-character energies. Multiplicativity alone cannot remove the
independent ODD-residual energy term. This inequality is sharp. -/
theorem oddLiftedAllOrderEnergy_le_source_add_residual
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M) :
    oddLiftedAllOrderEnergy M H ≤
      (liouvilleAllOrderEnergy M H +
        oddResidualAllOrderEnergy M H) / 2 := by
  unfold oddLiftedAllOrderEnergy liouvilleAllOrderEnergy
    oddResidualAllOrderEnergy
  calc
    (∑ S ∈ (Finset.univ :
          Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
        (oddLiftedMean M H S) ^ 2) ≤
      ∑ S ∈ (Finset.univ :
          Finset (Finset {h : ℕ // h ∈ H})).erase ∅,
        ((liouvilleSubsetMean M H S) ^ 2 +
          (oddResidualMean M H S) ^ 2) / 2 := by
      apply Finset.sum_le_sum
      intro S _
      exact oddLiftedMean_sq_le_source_residual_average M H S hM
    _ = _ := by
      rw [Finset.sum_div, Finset.sum_add_distrib]

/-- An honest TWO-supplier quantitative energy return. Any estimate of
the smaller ordinary Liouville energy must be accompanied by a SECOND
estimate of the odd-affine residual energy. Neither is supplied here. -/
theorem oddLiftedAllOrderEnergy_le_of_two_bounds
    (M : ℕ) (H : Finset ℕ) (hM : 0 < M)
    (epsilon delta : ℚ)
    (hsource : liouvilleAllOrderEnergy M H ≤ epsilon)
    (hresidual : oddResidualAllOrderEnergy M H ≤ delta) :
    oddLiftedAllOrderEnergy M H ≤ (epsilon + delta) / 2 := by
  exact (oddLiftedAllOrderEnergy_le_source_add_residual M H hM).trans
    (div_le_div_of_nonneg_right
      (add_le_add hsource hresidual) (by norm_num))

end GRWTSK.NumberTheory.LiouvilleWalshSourceBridge
