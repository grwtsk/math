/-
Local attribution: grwtsk contributors.
The imported source retains its public bylines and scoped licensing notice.
The upstream project LICENSE mentions some external-source files only;
no repository-wide license grant is inferred here.
-/
import ErdosProblems.Erdos350
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Disjoint positive subset-sum witnesses from reciprocal mass

The actual Erdős 350 source theorem bounds the real reciprocal sum of a set
whose subset sums are all distinct. Its contraposition supplies a collision,
but that collision can have overlapping supports. Cancelling the intersection
produces disjoint supports with an equal, strictly positive natural-number sum.

The main theorem permits zero in the input set. Removing zero leaves its exact
real reciprocal sum unchanged, since real division has `1/0 = 0`. Applying the
source theorem to that zero-free set avoids a spurious collision consisting
only of an empty subset and `{0}`. Both returned supports lie in `A.erase 0`.

The root `DistinctSubsetSums.SumDistinct` observes injectivity of the powerset
sum map, including the empty subset. The source predicate observes the same
literal subset sums through unequal-subset quantifiers. Here the actual source
theorem is consumed directly, without copying a root predicate or importing
the root module across the Lean 4.34.1 / native 4.29.1 boundary. A checked root
representation/version transport remains UNSUPPLIED. This does not prove the
stronger exponential lower bound conjectured in Erdős Problem 1.

Upstream: `plby/lean-proofs` at `8822f7ddef30fadbd92e1c6ab4ed897af356af5e`,
`src/v4.29.1/ErdosProblems/Erdos350.lean`, blob
`4bd7afe5e89ab92209eee9453031c5e80f6fe314`. Its informal byline lists Charles
Albert Ryavec and ChatGPT; its formal byline lists Aristotle and Boris Alexeev.
The actual endpoint is `Erdos350.erdos_350`. The isolated package retains
Lean 4.29.1 and Mathlib `5e932f97dd25535344f80f9dd8da3aab83df0fe6`.
Its source-level printed axiom report is not a fresh local receipt.

SOURCE_PROOF_CANDIDATE: compilation, expected-interface checking, fresh kernel
replay and complete transitive axiom auditing remain NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.AdditiveNumberTheory.ReciprocalSubsetSumCollision

/-- Cancel the common part of two distinct colliding subsets. Positivity of
the ambient elements makes the remaining common sum positive and both supports
nonempty; equality of natural sums is retained exactly. -/
theorem disjoint_positive_supports_of_collision (A X Y : Finset ℕ)
    (hpos : ∀ a ∈ A, 0 < a) (hX : X ⊆ A) (hY : Y ⊆ A) (hne : X ≠ Y)
    (heq : Finset.sum X id = Finset.sum Y id) :
    ∃ S T : Finset ℕ, S ⊆ A ∧ T ⊆ A ∧ Disjoint S T ∧
      S.Nonempty ∧ T.Nonempty ∧ 0 < Finset.sum S id ∧
      Finset.sum S id = Finset.sum T id := by
  classical
  have hcancel : Finset.sum (X \ Y) id = Finset.sum (Y \ X) id :=
    (Finset.sum_sdiff_eq_sum_sdiff_iff (s := X) (t := Y) (f := id)).mpr heq
  have hleft : (X \ Y).Nonempty := by
    by_contra hleft
    have hzero : Finset.sum (X \ Y) id = 0 := by
      apply Nat.eq_zero_of_not_pos
      intro hpositive
      obtain ⟨a, ha, _⟩ := Finset.sum_pos_iff.mp hpositive
      exact hleft ⟨a, ha⟩
    have hXY : X ⊆ Y := by
      intro a ha
      by_contra haY
      exact hleft ⟨a, Finset.mem_sdiff.mpr ⟨ha, haY⟩⟩
    have hYX : Y ⊆ X := by
      intro a ha
      by_contra haX
      have hpositive : 0 < Finset.sum (Y \ X) id :=
        Finset.sum_pos_iff.mpr
          ⟨a, Finset.mem_sdiff.mpr ⟨ha, haX⟩, hpos a (hY ha)⟩
      have hzero' : Finset.sum (Y \ X) id = 0 := hcancel.symm.trans hzero
      exact (ne_of_gt hpositive) hzero'
    exact hne (Finset.Subset.antisymm hXY hYX)
  obtain ⟨a, ha⟩ := hleft
  have hpositive : 0 < Finset.sum (X \ Y) id :=
    Finset.sum_pos_iff.mpr ⟨a, ha, hpos a (hX (Finset.mem_sdiff.mp ha).1)⟩
  have hright : (Y \ X).Nonempty := by
    have hpositive' : 0 < Finset.sum (Y \ X) id := by
      rw [← hcancel]
      exact hpositive
    obtain ⟨b, hb, _⟩ := Finset.sum_pos_iff.mp hpositive'
    exact ⟨b, hb⟩
  refine ⟨X \ Y, Y \ X, (Finset.sdiff_subset : X \ Y ⊆ X).trans hX,
    (Finset.sdiff_subset : Y \ X ⊆ Y).trans hY, ?_, ⟨a, ha⟩, hright,
    hpositive, hcancel⟩
  apply Finset.disjoint_left.mpr
  intro b hbX hbY
  exact (Finset.mem_sdiff.mp hbX).2 (Finset.mem_sdiff.mp hbY).1

/-- Reciprocal mass at least two produces disjoint nonempty positive supports.
The input may contain zero: erasing zero preserves the reciprocal mass, and
the actual Erdős 350 theorem is applied to that same zero-free set. -/
theorem disjoint_positive_supports_of_reciprocal_mass (A : Finset ℕ)
    (hmass : (2 : ℝ) ≤ Finset.sum A (fun a => (1 / a : ℝ))) :
    ∃ S T : Finset ℕ, S ⊆ A.erase 0 ∧ T ⊆ A.erase 0 ∧ Disjoint S T ∧
      S.Nonempty ∧ T.Nonempty ∧ 0 < Finset.sum S id ∧
      Finset.sum S id = Finset.sum T id := by
  classical
  have herase : Finset.sum (A.erase 0) (fun a => (1 / a : ℝ)) =
      Finset.sum A (fun a => (1 / a : ℝ)) :=
    Finset.sum_erase A (f := fun a : ℕ => (1 / a : ℝ)) (a := 0) (by simp)
  have hmass' : (2 : ℝ) ≤ Finset.sum (A.erase 0) (fun a => (1 / a : ℝ)) := by
    rw [herase]
    exact hmass
  have hnot : ¬ Erdos350.DecidableDistinctSubsetSums (A.erase 0) := by
    intro hdistinct
    exact (not_lt_of_ge hmass') (Erdos350.erdos_350 (A.erase 0) hdistinct)
  have hcollision : ∃ X : Finset ℕ, X ⊆ A.erase 0 ∧
      ∃ Y : Finset ℕ, Y ⊆ A.erase 0 ∧ X ≠ Y ∧ Finset.sum X id = Finset.sum Y id := by
    by_contra hcollision
    apply hnot
    intro X hX Y hY hne heq
    exact hcollision ⟨X, hX, Y, hY, hne, heq⟩
  obtain ⟨X, hX, Y, hY, hne, heq⟩ := hcollision
  have hpos : ∀ a ∈ A.erase 0, 0 < a := by
    intro a ha
    exact Nat.pos_of_ne_zero (Finset.mem_erase.mp ha).1
  exact disjoint_positive_supports_of_collision (A.erase 0) X Y hpos hX hY hne heq

end GRWTSK.NumberTheory.AdditiveNumberTheory.ReciprocalSubsetSumCollision
