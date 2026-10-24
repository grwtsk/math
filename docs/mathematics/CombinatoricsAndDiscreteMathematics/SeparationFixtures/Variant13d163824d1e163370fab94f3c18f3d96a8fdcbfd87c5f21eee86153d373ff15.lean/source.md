# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SeparationFixtures.Variant13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6a35c0b1e030b716987f023769e14e77f639caf` · SHA-256 `13d163824d1e163370fab94f3c18f3d96a8fdcbfd87c5f21eee86153d373ff15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.MinimumObservation
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# Finite target-separation examples

These finite fixtures distinguish target recovery, shared-test reuse, and the
existing per-test budget cutoff. Every finite computation uses Lean's kernel.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace SeparationFixtures

open scoped BigOperators

/-- Two independent Boolean coordinates are the objects in the projection fixtures. -/
abbrev BooleanPair := Bool × Bool

/-- The false test reads the first coordinate; the true test reads the second. -/
def coordinateObservation (test : Bool) (x : BooleanPair) : Bool :=
  if test then x.2 else x.1

/-- A constant Boolean observation loses the Boolean identity target. -/
def constantObservation (_ : Unit) (_ : Bool) : Bool := false

/-- One observation can return the entire Boolean pair for reuse by either component. -/
def sharedObservation (_ : Unit) (x : BooleanPair) : BooleanPair := x

/-- A third admitted test repeats the second coordinate observation. -/
def redundantObservation (test : Fin 3) (x : BooleanPair) : Bool :=
  if test.val = 0 then x.1 else x.2

/-- Distinct coordinate pairs that require the corresponding coordinate test. -/
def coordinateDistinction (test : Bool) : BooleanPair :=
  if test then (false, true) else (true, false)

/-- Both coordinate tests together distinguish the full pair target. -/
theorem coordinates_separate_identity :
    SeparatesTarget coordinateObservation Finset.univ (id : BooleanPair → BooleanPair) := by
  decide

/-- The nonempty pair target also has a total decoder on all coordinate observation tuples. -/
theorem coordinates_full_tuple_factorization :
    ∃ decode : (↥(Finset.univ : Finset Bool) → Bool) → BooleanPair,
      ∀ x, decode (observationCarrier coordinateObservation Finset.univ x) = x :=
  (separates_iff_carrier_factorization coordinateObservation Finset.univ id).mp
    coordinates_separate_identity

/-- The first coordinate needs only its own selected test. -/
theorem first_test_separates_first :
    SeparatesTarget coordinateObservation {false} (Prod.fst : BooleanPair → Bool) := by
  decide

/-- The second coordinate needs only its own selected test. -/
theorem second_test_separates_second :
    SeparatesTarget coordinateObservation {true} (Prod.snd : BooleanPair → Bool) := by
  decide

/-- The first test loses a pair that differs only in the second coordinate. -/
theorem first_test_loses_identity :
    ¬SeparatesTarget coordinateObservation {false} (id : BooleanPair → BooleanPair) := by
  decide

/-- The second test loses a different pair, differing only in the first coordinate. -/
theorem second_test_loses_identity :
    ¬SeparatesTarget coordinateObservation {true} (id : BooleanPair → BooleanPair) := by
  decide

/-- Splitting one collapsed pair leaves another collision and does not recover identity. -/
theorem one_insert_splits_pair_but_not_target :
    observationCarrier coordinateObservation ∅ (false, false) =
        observationCarrier coordinateObservation ∅ (true, false) ∧
      observationCarrier coordinateObservation (insert false ∅) (false, false) ≠
        observationCarrier coordinateObservation (insert false ∅) (true, false) ∧
      observationCarrier coordinateObservation (insert false ∅) (false, false) =
        observationCarrier coordinateObservation (insert false ∅) (false, true) ∧
      ¬SeparatesTarget coordinateObservation (insert false ∅)
        (id : BooleanPair → BooleanPair) := by
  have oldEqual : observationCarrier coordinateObservation ∅ (false, false) =
      observationCarrier coordinateObservation ∅ (true, false) := by
    apply (observationCarrier_eq_iff coordinateObservation ∅ _ _).mpr
    simp
  refine ⟨oldEqual, (observationCarrier_insert_ne_iff coordinateObservation ∅ false
    (false, false) (true, false) oldEqual).mpr (by decide), ?_, ?_⟩
  · apply (observationCarrier_eq_iff coordinateObservation (insert false ∅) _ _).mpr
    intro test member
    have equal : test = false := by simpa using member
    subst test
    rfl
  · simpa using first_test_loses_identity

/-- A constant target needs no tests even when the objects have two independent coordinates. -/
theorem empty_separates_constant :
    SeparatesTarget coordinateObservation ∅ (fun _ : BooleanPair => false) :=
  separates_constant coordinateObservation ∅ false

/-- No selected constant observations can distinguish Boolean identity. -/
theorem constant_observation_loses_identity (selected : Finset Unit) :
    ¬SeparatesTarget constantObservation selected (id : Bool → Bool) := by
  intro separates
  obtain ⟨test, _, different⟩ := separates false true (by decide)
  exact different rfl

/-- A shared observation distinguishes the entire pair, and hence either coordinate. -/
theorem shared_test_separates_identity :
    SeparatesTarget sharedObservation {()} (id : BooleanPair → BooleanPair) := by
  decide

/-- Ignoring the redundant third test still suffices to separate the pair target. -/
theorem redundant_first_two_separate_identity :
    SeparatesTarget redundantObservation {0, 1} (id : BooleanPair → BooleanPair) := by
  decide

/-- The two chosen distinctions have disjoint singleton separator sets. -/
theorem coordinate_separator_sets_disjoint :
    ((Finset.univ : Finset Bool) : Set Bool).PairwiseDisjoint
      (fun test => separatorSet coordinateObservation Finset.univ
        (false, false) (coordinateDistinction test)) := by
  intro first _ second _ different
  cases first <;> cases second
  · exact (different rfl).elim
  · decide
  · decide
  · exact (different rfl).elim

/-- The disjoint-separator bound forces at least two tests for the full pair target. -/
theorem coordinate_card_lower_bound (selected : Finset Bool)
    (separates : SeparatesTarget coordinateObservation selected (id : BooleanPair → BooleanPair)) :
    2 ≤ selected.card := by
  have bound := card_le_of_pairwise_disjoint_separator_sets
    coordinateObservation Finset.univ selected (id : BooleanPair → BooleanPair)
    (Finset.univ : Finset Bool) (fun _ => (false, false)) coordinateDistinction
    (by decide) coordinate_separator_sets_disjoint (Finset.subset_univ selected) separates
  simpa using bound

/-- On this finite inventory, separation is exactly the stated hitting requirement. -/
theorem coordinate_hitting_iff (selected : Finset Bool) :
    SeparatesTarget coordinateObservation selected (id : BooleanPair → BooleanPair) ↔
      ∀ pair ∈ targetDistinctions (id : BooleanPair → BooleanPair),
        (selected ∩ separatorSet coordinateObservation Finset.univ pair.1 pair.2).Nonempty :=
  separates_iff_hits_separators coordinateObservation selected Finset.univ id
    (Finset.subset_univ selected)

/-- Each coordinate observation individually costs two units under the existing budget semantics. -/
def coordinatePolicy : ObservationPolicy BooleanPair Bool Bool where
  cost := fun _ => 2
  observe := coordinateObservation

/-- The finite notion declares exactly the two coordinate tests and their common policy. -/
def coordinateNotion : FiniteNotion BooleanPair Bool Bool where
  sourceIdentity := "fixture:two-coordinate-budget"
  policy := coordinatePolicy
  tests := Finset.univ

/-- A budget of two admits both tests under the existing per-test cutoff. -/
theorem cutoff_two_determines_identity :
    coordinateNotion.DeterminesAt 2 (id : BooleanPair → BooleanPair) := by
  apply (coordinateNotion.determinesAt_iff_separatesTarget 2 id).mpr
  simpa [coordinateNotion, coordinatePolicy] using coordinates_separate_identity

/-- The additive cost of the same two tests is four, strictly greater than that cutoff. -/
theorem coordinate_additive_cost_exceeds_cutoff :
    (∑ test ∈ (Finset.univ : Finset Bool), coordinatePolicy.cost test) = 4 ∧
      2 < ∑ test ∈ (Finset.univ : Finset Bool), coordinatePolicy.cost test := by
  decide

/-- Empty objects supply a target with no values without assuming the target type inhabited. -/
def emptyObservation (_ : Unit) (x : Empty) : Unit := nomatch x

/-- Empty-source target constancy and separation are vacuous. -/
theorem empty_source_separates :
    SeparatesTarget emptyObservation ∅ (id : Empty → Empty) := by
  intro x
  exact Empty.elim x

/-- The actual empty observation quotient supports its empty-valued target decoder. -/
theorem empty_source_quotient_factorization :
    ∃ recover : Quotient (observationSetoid emptyObservation ∅) → Empty,
      ∀ x, recover (Quotient.mk (observationSetoid emptyObservation ∅) x) = x :=
  (separates_iff_quotient_factorization emptyObservation ∅ id).mp empty_source_separates

/-- A total decoder on all observation tuples need not exist when the target type is empty. -/
theorem empty_source_has_no_full_tuple_decoder :
    ¬∃ recover : (↥(∅ : Finset Unit) → Unit) → Empty,
      ∀ x : Empty, recover (observationCarrier emptyObservation ∅ x) = x := by
  rintro ⟨recover, _⟩
  exact Empty.elim (recover (fun _ => ()))

/-- Constant-target rank is zero by the exact general zero-rank characterization. -/
theorem constant_target_rank_zero :
    TargetSeparationRank coordinateObservation Finset.univ (fun _ : BooleanPair => false) = 0 :=
  (targetSeparationRank_eq_zero_iff coordinateObservation Finset.univ _).mpr (fun _ _ => rfl)

/-- Constant observations have infinite identity rank because their language is insufficient. -/
theorem constant_observation_identity_rank_top :
    TargetSeparationRank constantObservation Finset.univ (id : Bool → Bool) = ⊤ :=
  (targetSeparationRank_eq_top_iff constantObservation Finset.univ id).mpr
    (constant_observation_loses_identity Finset.univ)

/-- The coordinate-pair rank is exactly two, using the proved disjoint-separator lower bound. -/
theorem coordinate_identity_rank_two :
    TargetSeparationRank coordinateObservation Finset.univ
      (id : BooleanPair → BooleanPair) = 2 := by
  apply le_antisymm
  · simpa using targetSeparationRank_le_of_sufficient
      (Finset.Subset.refl (Finset.univ : Finset Bool)) coordinates_separate_identity
  · apply le_targetSeparationRank
    intro selected _ separates
    exact WithTop.coe_le_coe.mpr (coordinate_card_lower_bound selected separates)

/-- Either individual coordinate has rank one in the same two-test language. -/
theorem coordinate_component_ranks_one :
    TargetSeparationRank coordinateObservation Finset.univ (Prod.fst : BooleanPair → Bool) = 1 ∧
      TargetSeparationRank coordinateObservation Finset.univ
        (Prod.snd : BooleanPair → Bool) = 1 := by
  decide

/-- Combining the independent coordinate tests gives equality, without a strict rank saving. -/
theorem coordinate_pair_rank_additive :
    TargetSeparationRank coordinateObservation Finset.univ (id : BooleanPair → BooleanPair) =
      TargetSeparationRank coordinateObservation Finset.univ (Prod.fst : BooleanPair → Bool) +
        TargetSeparationRank coordinateObservation Finset.univ (Prod.snd : BooleanPair → Bool) := by
  rw [coordinate_identity_rank_two, coordinate_component_ranks_one.1,
    coordinate_component_ranks_one.2]
  decide

/-- The concrete first-coordinate target refinement obeys the general rank monotonicity theorem. -/
theorem coordinate_refinement_rank_le :
    TargetSeparationRank coordinateObservation Finset.univ (Prod.fst : BooleanPair → Bool) ≤
      TargetSeparationRank coordinateObservation Finset.univ (id : BooleanPair → BooleanPair) :=
  targetSeparationRank_mono_target (fun {_ _} same => congrArg Prod.fst same)

/-- Adding a repeated coordinate test does not change the minimum sufficient cardinality. -/
theorem redundant_test_leaves_rank :
    TargetSeparationRank redundantObservation (Finset.univ : Finset (Fin 3))
        (id : BooleanPair → BooleanPair) =
      TargetSeparationRank redundantObservation {0, 1} (id : BooleanPair → BooleanPair) := by
  decide

/-- The inventory containing the redundant third test still has exact rank two. -/
theorem redundant_inventory_rank_two :
    TargetSeparationRank redundantObservation Finset.univ (id : BooleanPair → BooleanPair) = 2 := by
  decide

/-- One shared observation suffices for the whole pair target. -/
theorem shared_pair_rank_one :
    TargetSeparationRank sharedObservation {()} (id : BooleanPair → BooleanPair) = 1 := by
  decide

/-- Each coordinate separately also needs that one shared observation. -/
theorem shared_component_ranks_one :
    TargetSeparationRank sharedObservation {()} (Prod.fst : BooleanPair → Bool) = 1 ∧
      TargetSeparationRank sharedObservation {()} (Prod.snd : BooleanPair → Bool) = 1 := by
  decide

/-- Reusing a shared test gives a strict cardinal saving over the sum of the component ranks. -/
theorem shared_test_strict_rank_saving :
    TargetSeparationRank sharedObservation {()} (id : BooleanPair → BooleanPair) <
      TargetSeparationRank sharedObservation {()} (Prod.fst : BooleanPair → Bool) +
        TargetSeparationRank sharedObservation {()} (Prod.snd : BooleanPair → Bool) := by
  rw [shared_pair_rank_one, shared_component_ranks_one.1, shared_component_ranks_one.2]
  decide

/-- The same strict reuse saving holds for the explicit unit natural-number cost assignment. -/
theorem shared_test_strict_unit_cost_saving :
    TargetSeparationCost sharedObservation {()} (id : BooleanPair → BooleanPair)
        (fun _ => (1 : ℕ)) <
      TargetSeparationCost sharedObservation {()} (Prod.fst : BooleanPair → Bool)
          (fun _ => (1 : ℕ)) +
        TargetSeparationCost sharedObservation {()} (Prod.snd : BooleanPair → Bool)
          (fun _ => (1 : ℕ)) := by
  simp only [targetSeparationCost_unit_eq_rank]
  exact shared_test_strict_rank_saving

/-- Declared additive costs can use integer units without changing the observation rank. -/
theorem integer_declared_cost_three :
    TargetSeparationCost sharedObservation {()} (id : BooleanPair → BooleanPair)
      (fun _ => (3 : ℤ)) = 3 := by
  decide

/-- Zero test cost permits zero minimum cost for a nonconstant target whose rank is one. -/
theorem zero_cost_nonconstant_target :
    TargetSeparationCost sharedObservation {()} (id : BooleanPair → BooleanPair)
        (fun _ => (0 : ℕ)) = 0 ∧
      TargetSeparationRank sharedObservation {()} (id : BooleanPair → BooleanPair) = 1 ∧
        ¬∀ x y : BooleanPair, x = y := by
  decide

/-- Existing cutoff determination at two coexists with an exact additive minimum cost of four. -/
theorem cutoff_vs_minimum_additive_cost :
    coordinateNotion.DeterminesAt 2 (id : BooleanPair → BooleanPair) ∧
      TargetSeparationCost coordinateObservation Finset.univ (id : BooleanPair → BooleanPair)
          coordinatePolicy.cost = 4 ∧
        2 < TargetSeparationCost coordinateObservation Finset.univ
          (id : BooleanPair → BooleanPair) coordinatePolicy.cost := by
  exact ⟨cutoff_two_determines_identity, by decide, by decide⟩

/-- Vacuous target constancy gives rank zero when both object and target types are empty. -/
theorem empty_source_rank_zero :
    TargetSeparationRank emptyObservation ∅ (id : Empty → Empty) = 0 :=
  (targetSeparationRank_eq_zero_iff emptyObservation ∅ id).mpr (fun x => Empty.elim x)

end SeparationFixtures
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
