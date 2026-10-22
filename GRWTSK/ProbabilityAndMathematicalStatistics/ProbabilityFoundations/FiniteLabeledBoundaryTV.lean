/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Finite labeled boundary coupling proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshTotalVariation
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Finite categorical coupling and source-labeled Boolean boundaries

Issue grwtsk/math#630; draft PR #638.
Theorems below concern a shared finite root sample, matching root identities,
and label agreement away from an explicitly counted exceptional subset.
They give a total-variation error at most |exception| / |roots|.

The categorical theorem works for any finite label type. A separate exact
indicator bridge identifies full Boolean cube patterns with categorical
symbols (not just unlabeled graph neighborhoods). No spectral or Chowla
estimate is assumed, and there is no exchange of fixed/growing shifts.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic

open scoped BigOperators

variable {β : Type*} [Fintype β] [DecidableEq β]

/-- Exact unnormalized mass at one category over the given root identities. -/
def categoricalPatternCount (roots : Finset ℕ)
    (x : ℕ → β) (a : β) : ℚ :=
  ∑ n ∈ roots, if x n = a then (1 : ℚ) else 0

set_option linter.unusedSectionVars false in
/-- Categorical masses cannot be negative. -/
theorem categoricalPatternCount_nonneg (roots : Finset ℕ)
    (x : ℕ → β) (a : β) :
    0 ≤ categoricalPatternCount roots x a := by
  unfold categoricalPatternCount
  apply Finset.sum_nonneg
  intro n _
  split_ifs <;> norm_num

/-- Every root contributes mass one to exactly one category. The
entire label set is summed; no categories are silently omitted. -/
theorem categoricalPatternCount_total (roots : Finset ℕ)
    (x : ℕ → β) :
    (∑ a : β, categoricalPatternCount roots x a) = (roots.card : ℚ) := by
  classical
  unfold categoricalPatternCount
  calc
    (∑ a : β, ∑ n ∈ roots, if x n = a then (1 : ℚ) else 0) =
      ∑ n ∈ roots, ∑ a : β, if x n = a then (1 : ℚ) else 0 := by
        rw [Finset.sum_comm]
    _ = ∑ n ∈ roots, (1 : ℚ) := by
      apply Finset.sum_congr rfl
      intro n _
      simp
    _ = (roots.card : ℚ) := by simp

set_option linter.unusedSectionVars false in
/-- The exact partition of counts into good and exceptional roots. -/
theorem categoricalPatternCount_split (roots exception : Finset ℕ)
    (x : ℕ → β) (a : β) (hsub : exception ⊆ roots) :
    categoricalPatternCount (roots \ exception) x a +
      categoricalPatternCount exception x a =
        categoricalPatternCount roots x a := by
  unfold categoricalPatternCount
  exact Finset.sum_sdiff hsub

set_option linter.unusedSectionVars false in
/-- Complete category labels, not just root counts, agree off the
exception set. -/
theorem categoricalPatternCount_agree_off (roots exception : Finset ℕ)
    (x y : ℕ → β) (a : β)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    categoricalPatternCount (roots \ exception) x a =
      categoricalPatternCount (roots \ exception) y a := by
  unfold categoricalPatternCount
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hroot, hgood⟩ := Finset.mem_sdiff.mp hn
  rw [hagree n hroot hgood]

/-- The count difference is EXACTLY supported on exceptional roots.
It need not vanish on the exceptional part. -/
theorem categoricalPatternDifference_supported (roots exception : Finset ℕ)
    (x y : ℕ → β) (a : β) (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    categoricalPatternCount roots x a -
        categoricalPatternCount roots y a =
      categoricalPatternCount exception x a -
        categoricalPatternCount exception y a := by
  have hx := categoricalPatternCount_split roots exception x a hsub
  have hy := categoricalPatternCount_split roots exception y a hsub
  have hg := categoricalPatternCount_agree_off roots exception x y a hagree
  linarith

/-- The absolute discrepancy of one category is bounded by its two
nonnegative exceptional counts; summing this is the coupling proof. -/
theorem categoricalPatternDifference_abs_le (roots exception : Finset ℕ)
    (x y : ℕ → β) (a : β) (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    |categoricalPatternCount roots x a -
        categoricalPatternCount roots y a| ≤
      categoricalPatternCount exception x a +
        categoricalPatternCount exception y a := by
  rw [categoricalPatternDifference_supported roots exception x y a hsub hagree]
  have hx := categoricalPatternCount_nonneg exception x a
  have hy := categoricalPatternCount_nonneg exception y a
  apply abs_le.mpr
  constructor <;> linarith

/-- Exact sharp general coupling estimate before normalization:
the L1 discrepancy of the categorical count distributions is at most
twice the number of exception roots. -/
theorem categoricalPatternL1_le_twice_exception (roots exception : Finset ℕ)
    (x y : ℕ → β) (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    (∑ a : β, |categoricalPatternCount roots x a -
        categoricalPatternCount roots y a|) ≤
      2 * (exception.card : ℚ) := by
  calc
    _ ≤ ∑ a : β, (categoricalPatternCount exception x a +
                     categoricalPatternCount exception y a) := by
      apply Finset.sum_le_sum
      intro a _
      exact categoricalPatternDifference_abs_le roots exception x y a hsub hagree
    _ = (∑ a : β, categoricalPatternCount exception x a) +
          (∑ a : β, categoricalPatternCount exception y a) := by
      rw [Finset.sum_add_distrib]
    _ = (exception.card : ℚ) + (exception.card : ℚ) := by
      rw [categoricalPatternCount_total, categoricalPatternCount_total]
    _ = 2 * (exception.card : ℚ) := by ring

/-- Half the L1 discrepancy between the empirical categorical laws.
When the root count is zero this is only an algebraic expression,
not a distance between probability distributions. -/
def categoricalTotalVariation (roots : Finset ℕ)
    (x y : ℕ → β) : ℚ :=
  (∑ a : β, |categoricalPatternCount roots x a -
    categoricalPatternCount roots y a|) / (2 * (roots.card : ℚ))

/-- Finite labeled-boundary coupling: the same root in both models is
used in the comparison, and the sole loss is exceptional-root mass.
Every quantified exceptional root must be in the actual sample. -/
theorem categoricalTotalVariation_le_exception (roots exception : Finset ℕ)
    (x y : ℕ → β) (hroots : 0 < roots.card)
    (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    categoricalTotalVariation roots x y ≤
      (exception.card : ℚ) / (roots.card : ℚ) := by
  have hcard : (0 : ℚ) < (roots.card : ℚ) := by exact_mod_cast hroots
  have hden : (0 : ℚ) < 2 * (roots.card : ℚ) := by positivity
  have hratio :
      ((exception.card : ℚ) / (roots.card : ℚ)) *
        (2 * (roots.card : ℚ)) = 2 * (exception.card : ℚ) := by
    field_simp [ne_of_gt hcard]
  unfold categoricalTotalVariation
  apply (div_le_iff₀ hden).2
  rw [hratio]
  exact categoricalPatternL1_le_twice_exception roots exception x y hsub hagree

section BooleanCube

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

set_option linter.unusedSectionVars false in
/-- The product of Boolean-coordinate match indicators equals the
single categorical indicator for the entire Boolean word. -/
theorem coordinateIndicator_eq_pattern (b a : ι → Bool) :
    (∏ i : ι, if b i = a i then (1 : ℚ) else 0) =
      if b = a then (1 : ℚ) else 0 := by
  classical
  by_cases h : b = a
  · subst a
    simp
  · have hcoord : ∃ i : ι, b i ≠ a i := by
      by_contra hn
      apply h
      funext i
      by_contra hi
      exact hn ⟨i, hi⟩
    obtain ⟨i, hi⟩ := hcoord
    have hp : (∏ i : ι, if b i = a i then (1 : ℚ) else 0) = 0 := by
      apply Finset.prod_eq_zero (Finset.mem_univ i)
      simp [hi]
    simpa [h] using hp

/-- The original Walsh pattern count agrees EXACTLY with the finite
categorical count when all Boolean coordinates are selected. -/
theorem fullCubePatternCount_eq_categorical (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    patternCountOn roots (Finset.univ : Finset ι) x a =
      categoricalPatternCount roots x a := by
  classical
  unfold patternCountOn categoricalPatternCount
  apply Finset.sum_congr rfl
  intro n _
  exact coordinateIndicator_eq_pattern (x n) a

/-- The empirical Walsh convention has the same exact normalization
as the categorical distribution. This equality itself needs no
positive-cardinality premise; only its probability interpretation does. -/
theorem fullCubeEmpirical_eq_categorical (roots : Finset ℕ)
    (x : ℕ → ι → Bool) (a : ι → Bool) :
    empiricalPattern roots (Finset.univ : Finset ι) x a =
      categoricalPatternCount roots x a / (roots.card : ℚ) := by
  unfold empiricalPattern
  rw [fullCubePatternCount_eq_categorical]

/-- Instantiation of the categorical coupling to the ACTUAL complete
Boolean sign words used in the preceding Walsh modules. The rootwise
label agreement is required in the full function type. -/
theorem fullCubeBoundaryTV_le (roots exception : Finset ℕ)
    (x y : ℕ → ι → Bool) (hroots : 0 < roots.card)
    (hsub : exception ⊆ roots)
    (hagree : ∀ n ∈ roots, n ∉ exception → x n = y n) :
    categoricalTotalVariation roots x y ≤
      (exception.card : ℚ) / (roots.card : ℚ) :=
  categoricalTotalVariation_le_exception roots exception x y hroots hsub hagree

end BooleanCube

/-- Hostile control: different category labels at the same good root
make the claimed zero-exception agreement hypothesis false. -/
theorem missing_label_agreement_fixture :
    ¬ (∀ n ∈ ({0} : Finset ℕ), n ∉ (∅ : Finset ℕ) →
        (fun _ : ℕ => false) n = (fun _ : ℕ => true) n) := by
  simp

/-- Sharpness: a single fully exceptional Boolean root whose label
flips achieves maximal total variation one. -/
theorem one_root_sharp_tv_fixture :
    categoricalTotalVariation ({0} : Finset ℕ)
      (fun _ : ℕ => false) (fun _ : ℕ => true) = 1 := by
  norm_num [categoricalTotalVariation, categoricalPatternCount, Fintype.sum_bool]

end GRWTSK.ProbabilityAndMathematicalStatistics.ChowlaSofic
