# Complete source: GRWTSK.NumberTheory.ArithmeticFunctions.LiouvilleDyadicAffineBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `413654e13fbf04087bd6aef6b1bf1621aee01eb4` · SHA-256 `41bc5e5ede1234a039674652b9c08b6fc297368a08c662424c2f1abf32efa665`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Finite Liouville arithmetic proof drafting assistance: OpenAI.
Upstream Mathlib Liouville definition by Thomas Browning; Apache-2.0. -/
import Mathlib.NumberTheory.ArithmeticFunction.Liouville
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Liouville dyadic affine bridge: a genuine arithmetic source obstruction

Related: math #630, #441, #571; draft PR #638.
Pinned Mathlib source:
  Mathlib/NumberTheory/ArithmeticFunction/Liouville.lean.

The completely multiplicative Liouville function has λ(2n) = -λ(n)
and λ(n)^2 = 1 for n>0. The proportional affine pair (n,2n)
therefore has correlation exactly -1 at every positive cutoff.
No fixed-form Chowla theorem may be stated for ALL affine pairs
without the nonproportionality hypothesis.

Separately, the genuine adjacent ADDITIVE-shift correlation
  sum_{n=0}^{2M-1} λ(n+1)λ(n+2)
has an exact dyadic even/odd reindexing into TWO nonproportional
fixed affine-form correlations with m+1 and 2m+1 / 2m+3.
This supplies an exact finite arithmetic comparison, not a new
cancellation theorem.

No assumption about ordinary/logarithmic averages, growing shifts,
arithmetic progression uniformity, GUE, or RH is discharged.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge

open scoped BigOperators

/-- The exact local prime sign of Liouville at 2. -/
theorem liouville_at_two :
    ArithmeticFunction.liouville 2 = (-1 : ℤ) := by
  rw [ArithmeticFunction.liouville_apply (by norm_num)]
  rw [ArithmeticFunction.cardFactors_apply_prime Nat.prime_two]
  norm_num

/-- Liouville is completely multiplicative at this exact dyadic
dilation, including at zero (where both sides equal zero). -/
theorem liouville_twice (n : ℕ) :
    ArithmeticFunction.liouville (2 * n) =
      -ArithmeticFunction.liouville n := by
  rw [ArithmeticFunction.liouville_apply_mul (2 : ℕ) n, liouville_at_two]
  ring

/-- Positive natural-number Liouville values are exact unit signs.
The exclusion of zero is necessary: λ(0)=0 in Mathlib. -/
theorem liouville_positive_square (n : ℕ) (hn : 0 < n) :
    ArithmeticFunction.liouville n * ArithmeticFunction.liouville n =
      (1 : ℤ) := by
  rw [ArithmeticFunction.liouville_apply (Nat.ne_of_gt hn)]
  have hsq :
      ((-1 : ℤ) ^ ArithmeticFunction.cardFactors n) ^ 2 = 1 := by
    calc
      _ = ((-1 : ℤ) ^ 2) ^ ArithmeticFunction.cardFactors n := by
        rw [← pow_mul, Nat.mul_comm, pow_mul]
      _ = 1 := by norm_num
  simpa only [pow_two] using hsq

/-- Genuine arithmetic obstruction: proportional affine forms n and 2n
produce a constant -1 correlation for EVERY positive n. -/
theorem liouville_proportional_product (n : ℕ) (hn : 0 < n) :
    ArithmeticFunction.liouville n *
      ArithmeticFunction.liouville (2 * n) = (-1 : ℤ) := by
  calc
    ArithmeticFunction.liouville n *
        ArithmeticFunction.liouville (2 * n) =
      -(ArithmeticFunction.liouville n * ArithmeticFunction.liouville n) := by
        rw [liouville_twice]
        ring
    _ = (-1 : ℤ) := by
      rw [liouville_positive_square n hn]

/-- Every term of the shifted, positive-index proportional pair is -1.
The indexing n+1 avoids the special value λ(0)=0. -/
theorem liouville_proportional_pair_term (n : ℕ) :
    ArithmeticFunction.liouville (n + 1) *
      ArithmeticFunction.liouville (2 * (n + 1)) = (-1 : ℤ) :=
  liouville_proportional_product (n + 1) (Nat.succ_pos n)

/-- The unnormalized proportional affine correlation is exactly -M. -/
theorem liouville_proportional_prefix (M : ℕ) :
    (∑ n ∈ Finset.range M,
      ArithmeticFunction.liouville (n + 1) *
        ArithmeticFunction.liouville (2 * (n + 1))) = -(M : ℤ) := by
  calc
    _ = ∑ _n ∈ Finset.range M, (-1 : ℤ) := by
      apply Finset.sum_congr rfl
      intro n _
      exact liouville_proportional_pair_term n
    _ = -(M : ℤ) := by simp

/-- Rational normalization is defined only as an algebraic expression.
Positive M is required below to interpret it as an empirical average. -/
def proportionalLiouvilleMean (M : ℕ) : ℚ :=
  (∑ n ∈ Finset.range M,
    (((ArithmeticFunction.liouville (n + 1) : ℤ) : ℚ) *
      ((ArithmeticFunction.liouville (2 * (n + 1)) : ℤ) : ℚ))) / (M : ℚ)

/-- The proportional pair fails ordinary Chowla cancellation at EVERY
positive cutoff. This is not a result about distinct additive shifts. -/
theorem proportionalLiouvilleMean_eq_neg_one (M : ℕ) (hM : 0 < M) :
    proportionalLiouvilleMean M = (-1 : ℚ) := by
  have hM0 : (M : ℚ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hM)
  have hp :
      (∑ n ∈ Finset.range M,
          (((ArithmeticFunction.liouville (n + 1) : ℤ) : ℚ) *
            ((ArithmeticFunction.liouville (2 * (n + 1)) : ℤ) : ℚ))) =
        -(M : ℚ) := by
    exact_mod_cast liouville_proportional_prefix M
  unfold proportionalLiouvilleMean
  rw [hp]
  apply (div_eq_iff hM0).2
  ring

/-- A bound below one cannot hold for the normalized proportional pair.
This is a negative control on any would-be 'all affine forms' adapter. -/
theorem proportional_bound_below_one_impossible
    (M : ℕ) (hM : 0 < M) (epsilon : ℚ) (he : epsilon < 1) :
    ¬ |proportionalLiouvilleMean M| ≤ epsilon := by
  have hbad : ¬ (1 : ℚ) ≤ epsilon := not_le.mpr he
  simpa [proportionalLiouvilleMean_eq_neg_one M hM] using hbad

/-- The actual adjacent additive-shift Liouville correlation term. -/
def adjacentLiouvilleTerm (n : ℕ) : ℤ :=
  ArithmeticFunction.liouville (n + 1) *
    ArithmeticFunction.liouville (n + 2)

/-- The two dyadically reindexed affine pairs, with NO artificial
absolute value inside the signed sum. -/
def dyadicAffineTerm (m : ℕ) : ℤ :=
  -(ArithmeticFunction.liouville (m + 1) *
      (ArithmeticFunction.liouville (2 * m + 1) +
        ArithmeticFunction.liouville (2 * m + 3)))

/-- Two consecutive adjacent correlations reindex to one exact
dyadic affine term. Only complete multiplicativity is used. -/
theorem adjacentLiouville_pair_dyadic (m : ℕ) :
    adjacentLiouvilleTerm (2 * m) +
        adjacentLiouvilleTerm (2 * m + 1) =
      dyadicAffineTerm m := by
  dsimp [adjacentLiouvilleTerm, dyadicAffineTerm]
  have heven : 2 * m + 2 = 2 * (m + 1) := by omega
  have hodd : 2 * m + 1 + 1 = 2 * (m + 1) := by omega
  have hodd' : 2 * m + 1 + 2 = 2 * m + 3 := by omega
  rw [heven, hodd', liouville_twice]
  ring

/-- General finite even/odd reindexing, with EXACT endpoint 2*M
and no missing zero-index or terminal term. -/
theorem sum_even_odd_reindex (f : ℕ → ℤ) (M : ℕ) :
    (∑ n ∈ Finset.range (2 * M), f n) =
      ∑ m ∈ Finset.range M, (f (2 * m) + f (2 * m + 1)) := by
  induction M with
  | zero => simp
  | succ M ih =>
    calc
      (∑ n ∈ Finset.range (2 * (M + 1)), f n) =
          (∑ n ∈ Finset.range (2 * M + 1 + 1), f n) := by
            congr 1
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

/-- Every even-length adjacent additive correlation is an EXACT
signed sum of two fixed affine correlations. This does not prove
cancellation of either affine sum. -/
theorem adjacentLiouville_prefix_dyadic (M : ℕ) :
    (∑ n ∈ Finset.range (2 * M), adjacentLiouvilleTerm n) =
      ∑ m ∈ Finset.range M, dyadicAffineTerm m := by
  rw [sum_even_odd_reindex]
  apply Finset.sum_congr rfl
  intro m _
  exact adjacentLiouville_pair_dyadic m

/-- The two explicit fixed nonproportional affine-form correlations. -/
def leftDyadicAffineSum (M : ℕ) : ℤ :=
  ∑ m ∈ Finset.range M,
    ArithmeticFunction.liouville (m + 1) *
      ArithmeticFunction.liouville (2 * m + 1)

def rightDyadicAffineSum (M : ℕ) : ℤ :=
  ∑ m ∈ Finset.range M,
    ArithmeticFunction.liouville (m + 1) *
      ArithmeticFunction.liouville (2 * m + 3)

/-- Exact signed additive-to-affine comparison, without applying any
unproven fixed-form or growing-shift Chowla estimate. -/
theorem adjacentLiouville_prefix_affine (M : ℕ) :
    (∑ n ∈ Finset.range (2 * M), adjacentLiouvilleTerm n) =
      -(leftDyadicAffineSum M + rightDyadicAffineSum M) := by
  rw [adjacentLiouville_prefix_dyadic]
  unfold leftDyadicAffineSum rightDyadicAffineSum
  rw [← Finset.sum_add_distrib, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m _
  unfold dyadicAffineTerm
  ring

/-- A genuine bounded comparison consumed by binary Chowla work:
two independently supplied affine estimates control one even-length
adjacent additive-shift sum. It DOES NOT construct these estimates. -/
theorem adjacentLiouville_abs_le_of_affine_bounds
    (M : ℕ) (leftBound rightBound : ℤ)
    (hleft : |leftDyadicAffineSum M| ≤ leftBound)
    (hright : |rightDyadicAffineSum M| ≤ rightBound) :
    |∑ n ∈ Finset.range (2 * M), adjacentLiouvilleTerm n| ≤
      leftBound + rightBound := by
  rw [adjacentLiouville_prefix_affine]
  rw [abs_neg]
  exact (abs_add_le _ _).trans (add_le_add hleft hright)

/-- Fixed pairs m+1 with 2m+1, and m+1 with 2m+3, have nonzero
coefficient determinants -1 and +1 respectively.
The proportional comparison m+1 with 2m+2 has determinant zero. -/
theorem dyadicAffine_determinant_controls :
    ((1 : ℤ) * 1 - 2 * 1 ≠ 0) ∧
      ((1 : ℤ) * 3 - 2 * 1 ≠ 0) ∧
      ((1 : ℤ) * 2 - 2 * 1 = 0) := by
  norm_num

end GRWTSK.NumberTheory.LiouvilleDyadicAffineBridge
```
