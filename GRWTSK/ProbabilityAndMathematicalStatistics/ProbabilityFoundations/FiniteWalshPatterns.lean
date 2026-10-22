/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone.
Finite Walsh and boundary proof drafting assistance: OpenAI.
Mathlib theorems retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite Walsh reconstruction with an explicit exceptional-root boundary

Issue: grwtsk/math#630.
This is a finite, arithmetic-independent theorem package. The finite sample
is ANY finset of natural-number roots and the indexed labels are arbitrary
Boolean values. Distinct offsets, actual Liouville labels, existence of a
sofic action, and any analytic correlation estimate are NOT assumed.

The raw count identity is exact over the rationals. The normalized identity
is a consequence for nonempty root samples. Boundary agreements retain the
exact root identities and show that the entire difference in each pattern
count is supported on the declared exceptional subset.

Source draft only: NOT_RUN / NOT_KERNEL_AUDITED. No Lean/Lake invocation,
public-root import, GUE implication, Chowla theorem, or RH consequence.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

/-- The two signs encoded by a Boolean coordinate, with no arithmetic source. -/
def boolSign (b : Bool) : ℚ := if b then 1 else -1

/-- The exact (unnormalized) number of a selected finite sign pattern on
a finite sample of root identities, represented in the rationals. -/
def patternCountOn {ι : Type*} (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) : ℚ :=
  ∑ n ∈ roots, ∏ i ∈ I, if x n i = a i then (1 : ℚ) else 0

/-- The raw Walsh coefficient includes the pattern character, not only
the underlying source signs. No averaging convention is hidden. -/
def signedMomentOn {ι : Type*} (roots : Finset ℕ) (S : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) : ℚ :=
  ∑ n ∈ roots, ∏ i ∈ S, boolSign (x n i) * boolSign (a i)

/-- Each binary match is recovered exactly from a signed product. -/
theorem boolSign_match (b c : Bool) :
    (1 : ℚ) + boolSign b * boolSign c =
      2 * (if b = c then (1 : ℚ) else 0) := by
  cases b <;> cases c <;> norm_num [boolSign]

/-- Multiplication over the selected coordinates converts the Boolean
pattern indicator into a product suitable for the Walsh expansion. -/
theorem patternProduct_eq {ι : Type*} (I : Finset ι) (b a : ι → Bool) :
    (∏ i ∈ I, ((1 : ℚ) + boolSign (b i) * boolSign (a i))) =
      (2 : ℚ) ^ I.card *
        (∏ i ∈ I, if b i = a i then (1 : ℚ) else 0) := by
  classical
  simp_rw [boolSign_match]
  rw [Finset.prod_mul_distrib]
  simp

/-- Exact finite Walsh reconstruction, including the empty character.
There is no probabilistic approximation and no upper bound on window size. -/
theorem rawWalsh_patternCountOn {ι : Type*} (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    (2 : ℚ) ^ I.card * patternCountOn roots I x a =
      ∑ S ∈ I.powerset, signedMomentOn roots S x a := by
  classical
  have hexpand :
      (∑ n ∈ roots, ∏ i ∈ I,
        ((1 : ℚ) + boolSign (x n i) * boolSign (a i))) =
      ∑ S ∈ I.powerset, ∑ n ∈ roots, ∏ i ∈ S,
        boolSign (x n i) * boolSign (a i) := by
    simp_rw [Finset.prod_one_add]
    rw [Finset.sum_comm]
  calc
    (2 : ℚ) ^ I.card * patternCountOn roots I x a =
        ∑ n ∈ roots, ∏ i ∈ I,
          ((1 : ℚ) + boolSign (x n i) * boolSign (a i)) := by
      unfold patternCountOn
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro n hn
      exact (patternProduct_eq I (x n) a).symm
    _ = ∑ S ∈ I.powerset, signedMomentOn roots S x a := by
      simpa only [signedMomentOn] using hexpand

/-- The normalized finite pattern-frequency observable. It is intended
as a probability only when the root set is nonempty. -/
def empiricalPattern {ι : Type*} (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) : ℚ :=
  patternCountOn roots I x a / (roots.card : ℚ)

/-- The matching normalized, pattern-signed Walsh coefficient. -/
def empiricalMoment {ι : Type*} (roots : Finset ℕ) (S : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) : ℚ :=
  signedMomentOn roots S x a / (roots.card : ℚ)

/-- Exact normalized reconstruction for a nonempty sample; the division
does not supply an estimate on any individual nonempty coefficient. -/
theorem empiricalPattern_walsh {ι : Type*} (roots : Finset ℕ) (I : Finset ι)
    (x : ℕ → ι → Bool) (a : ι → Bool) (_hroots : 0 < roots.card) :
    (2 : ℚ) ^ I.card * empiricalPattern roots I x a =
      ∑ S ∈ I.powerset, empiricalMoment roots S x a := by
  unfold empiricalPattern empiricalMoment
  calc
    (2 : ℚ) ^ I.card * (patternCountOn roots I x a / (roots.card : ℚ)) =
        ((2 : ℚ) ^ I.card * patternCountOn roots I x a) / (roots.card : ℚ) := by
      ring
    _ = (∑ S ∈ I.powerset, signedMomentOn roots S x a) / (roots.card : ℚ) := by
      rw [rawWalsh_patternCountOn]
    _ = ∑ S ∈ I.powerset, signedMomentOn roots S x a / (roots.card : ℚ) := by
      rw [Finset.sum_div]

/-- No root may be discarded when partitioning the exact pattern count.
The exceptional roots are an actual subset of the selected sample. -/
theorem patternCountOn_split {ι : Type*} (roots exception : Finset ℕ)
    (I : Finset ι) (x : ℕ → ι → Bool) (a : ι → Bool)
    (hsub : exception ⊆ roots) :
    patternCountOn (roots \ exception) I x a +
      patternCountOn exception I x a = patternCountOn roots I x a := by
  unfold patternCountOn
  exact Finset.sum_sdiff hsub

/-- All indexed source labels must agree on the good roots. Matching
the unlabeled graph alone cannot discharge this hypothesis. -/
theorem patternCountOn_agree_off {ι : Type*} (roots exception : Finset ℕ)
    (I : Finset ι) (x y : ℕ → ι → Bool) (a : ι → Bool)
    (hagree : ∀ n ∈ roots, n ∉ exception → ∀ i ∈ I, x n i = y n i) :
    patternCountOn (roots \ exception) I x a =
      patternCountOn (roots \ exception) I y a := by
  unfold patternCountOn
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hroot, hgood⟩ := Finset.mem_sdiff.mp hn
  apply Finset.prod_congr rfl
  intro i hi
  rw [hagree n hroot hgood i hi]

/-- Exact boundary-support identity: any full-sample change in a
selected pattern count comes entirely from the named exceptional roots.
This is not yet the total-variation estimate; that needs an additional
finite inequality after taking absolute values and normalizing. -/
theorem patternCount_difference_supported {ι : Type*} (roots exception : Finset ℕ)
    (I : Finset ι) (x y : ℕ → ι → Bool) (a : ι → Bool)
    (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → ∀ i ∈ I, x n i = y n i) :
    patternCountOn roots I x a - patternCountOn roots I y a =
      patternCountOn exception I x a - patternCountOn exception I y a := by
  have hx := patternCountOn_split roots exception I x a hsub
  have hy := patternCountOn_split roots exception I y a hsub
  have hgood := patternCountOn_agree_off roots exception I x y a hagree
  linarith

/-- Four equiprobable algebraic samples can have all one- and two-point
correlations zero while the three-point correlation is maximal. This
finite fixture is not asserted to be a stationary infinite process. -/
def parityLeft (n : ℕ) : ℚ := if n % 2 = 0 then 1 else -1
def parityRight (n : ℕ) : ℚ := if (n / 2) % 2 = 0 then 1 else -1
def parityThird (n : ℕ) : ℚ := parityLeft n * parityRight n

theorem parity_pairwise_not_threewise_fixture :
    (∑ n ∈ Finset.range 4, parityLeft n) = 0 ∧
    (∑ n ∈ Finset.range 4, parityRight n) = 0 ∧
    (∑ n ∈ Finset.range 4, parityThird n) = 0 ∧
    (∑ n ∈ Finset.range 4, parityLeft n * parityRight n) = 0 ∧
    (∑ n ∈ Finset.range 4, parityLeft n * parityThird n) = 0 ∧
    (∑ n ∈ Finset.range 4, parityRight n * parityThird n) = 0 ∧
    (∑ n ∈ Finset.range 4, parityLeft n * parityRight n * parityThird n) = 4 := by
  norm_num [parityLeft, parityRight, parityThird, Finset.sum_range_succ]

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
