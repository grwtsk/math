# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.NotionJoin.Variant0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aff7a958f528e6844fb32640120adac61f596b4e` · SHA-256 `0f0e817dc2df58454b01d170073d7a9943dee0e13694041512dc268c56a363dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NotionDescent

/-!
# Finite observation refinement and target-relative joins

Refinement compares the semantic equivalence relations induced by finite
inventories. A union join requires an explicit common-policy proof and a new
identity supplied by the caller. Its relation is the intersection of the two
component relations. Synergy concerns recovery of a specified target: each
component can lose a different pair while their join recovers the target.
No pair equivalent in both components can become separated by this exact join.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

variable {Object Test Value Result : Type*}

namespace FiniteNotion

/-- The finite affordable inventory retains enough information to recover this target. -/
def DeterminesAt (notion : FiniteNotion Object Test Value) (budget : ℕ)
    (target : Object → Result) : Prop :=
  ∀ ⦃x y⦄, notion.Equivalent budget x y → target x = target y

/-- The finite affordable inventory determines the truth of this specified predicate. -/
def DeterminesPredicateAt (notion : FiniteNotion Object Test Value) (budget : ℕ)
    (predicate : Object → Prop) : Prop :=
  ∀ ⦃x y⦄, notion.Equivalent budget x y → (predicate x ↔ predicate y)

/-- Predicate determination is equality-valued determination for a proposition target. -/
theorem determinesPredicate_iff (notion : FiniteNotion Object Test Value) (budget : ℕ)
    (predicate : Object → Prop) :
    notion.DeterminesPredicateAt budget predicate ↔ notion.DeterminesAt budget predicate :=
  ⟨fun h {_ _} hxy ↦ propext (h hxy), fun h {_ _} hxy ↦ (h hxy).to_iff⟩

/-- Finite determination is descent through the quotient by the exact finite relation. -/
theorem determines_iff_descendsThrough (notion : FiniteNotion Object Test Value)
    (budget : ℕ) (target : Object → Result) :
    notion.DeterminesAt budget target ↔
      DescendsThrough (Quotient.mk (notion.setoid budget)) target :=
  (descendsThrough_quotient_iff (notion.setoid budget) target).symm

/-- Semantic refinement means that every finer equivalence implies the coarser one. -/
def RefinesAt (finer coarser : FiniteNotion Object Test Value) (budget : ℕ) : Prop :=
  ∀ x y, finer.Equivalent budget x y → coarser.Equivalent budget x y

/-- Every finite notion semantically refines itself. -/
theorem refines_refl (notion : FiniteNotion Object Test Value) (budget : ℕ) :
    notion.RefinesAt notion budget := fun _ _ hxy ↦ hxy

/-- Semantic refinement composes without requiring inclusion of test inventories. -/
theorem refines_trans {first second third : FiniteNotion Object Test Value} {budget : ℕ}
    (firstRefines : first.RefinesAt second budget)
    (secondRefines : second.RefinesAt third budget) : first.RefinesAt third budget :=
  fun x y hxy ↦ secondRefines x y (firstRefines x y hxy)

/-- A finer finite notion determines every target already determined by the coarser one. -/
theorem determines_of_refines {finer coarser : FiniteNotion Object Test Value}
    {budget : ℕ} {target : Object → Result} (refines : finer.RefinesAt coarser budget)
    (determined : coarser.DeterminesAt budget target) : finer.DeterminesAt budget target :=
  fun {x y} hxy ↦ determined (refines x y hxy)

/-- Refinement preserves recovery of predicate truth as well. -/
theorem determinesPredicate_of_refines {finer coarser : FiniteNotion Object Test Value}
    {budget : ℕ} {predicate : Object → Prop} (refines : finer.RefinesAt coarser budget)
    (determined : coarser.DeterminesPredicateAt budget predicate) :
    finer.DeterminesPredicateAt budget predicate :=
  fun {x y} hxy ↦ determined (refines x y hxy)

/-- A larger budget preserves finite determination under the unchanged policy and inventory. -/
theorem determines_of_budget_le {notion : FiniteNotion Object Test Value}
    {small large : ℕ} {target : Object → Result} (bound : small ≤ large)
    (determined : notion.DeterminesAt small target) : notion.DeterminesAt large target :=
  fun {_ _} hxy ↦ determined (equivalent_of_budget_le bound hxy)

/-- Determination by a finite inventory implies determination by its full semantic policy. -/
theorem semantic_determines_of_finite {notion : FiniteNotion Object Test Value}
    {budget : ℕ} {target : Object → Result} (determined : notion.DeterminesAt budget target) :
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DeterminesAt
      notion.policy budget target :=
  fun {_ _} hxy ↦ determined (notion.equivalent_of_semantic hxy)

/-- Test inclusion suffices for refinement only under an explicit agreement of policies. -/
theorem refines_of_tests_subset {finer coarser : FiniteNotion Object Test Value}
    (commonPolicy : finer.policy = coarser.policy) (inventory : coarser.tests ⊆ finer.tests)
    (budget : ℕ) : finer.RefinesAt coarser budget := by
  intro x y equivalent test member affordable
  have affordable' : finer.policy.cost test ≤ budget := by
    simpa only [commonPolicy] using affordable
  simpa only [commonPolicy] using equivalent test (inventory member) affordable'

/-- Join two inventories under a proved common policy and a caller-supplied new identity. -/
def join [DecidableEq Test] (first second : FiniteNotion Object Test Value)
    (_commonPolicy : first.policy = second.policy) (identity : String) :
    FiniteNotion Object Test Value where
  sourceIdentity := identity
  policy := first.policy
  tests := first.tests ∪ second.tests

/-- The join retains exactly the identity chosen by its caller. -/
@[simp]
theorem join_sourceIdentity [DecidableEq Test] (first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String) :
    (first.join second commonPolicy identity).sourceIdentity = identity := rfl

/-- Equivalence under the joined inventory is exactly equivalence under both components. -/
theorem equivalent_join_iff [DecidableEq Test] (first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String)
    (budget : ℕ) (x y : Object) :
    (first.join second commonPolicy identity).Equivalent budget x y ↔
      first.Equivalent budget x y ∧ second.Equivalent budget x y := by
  constructor
  · intro equivalent
    constructor
    · intro test member affordable
      exact equivalent test (Finset.mem_union.mpr (Or.inl member)) affordable
    · intro test member affordable
      have affordable' : first.policy.cost test ≤ budget := by
        simpa only [commonPolicy] using affordable
      have equal := equivalent test (Finset.mem_union.mpr (Or.inr member)) affordable'
      simpa only [join, commonPolicy] using equal
  · rintro ⟨firstEquivalent, secondEquivalent⟩ test member affordable
    rcases Finset.mem_union.mp member with firstMember | secondMember
    · exact firstEquivalent test firstMember affordable
    · have affordable' : second.policy.cost test ≤ budget := by
        simpa only [join, commonPolicy] using affordable
      have equal := secondEquivalent test secondMember affordable'
      simpa only [join, commonPolicy] using equal

/-- A joined inventory always semantically refines its first component. -/
theorem join_refines_first [DecidableEq Test] (first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String) (budget : ℕ) :
    (first.join second commonPolicy identity).RefinesAt first budget :=
  fun x y hxy ↦ ((equivalent_join_iff first second commonPolicy identity budget x y).mp hxy).1

/-- A joined inventory always semantically refines its second component. -/
theorem join_refines_second [DecidableEq Test] (first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String) (budget : ℕ) :
    (first.join second commonPolicy identity).RefinesAt second budget :=
  fun x y hxy ↦ ((equivalent_join_iff first second commonPolicy identity budget x y).mp hxy).2

/-- A finite notion refines the join precisely when it refines each component. -/
theorem refines_join_iff [DecidableEq Test] (finer first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String) (budget : ℕ) :
    finer.RefinesAt (first.join second commonPolicy identity) budget ↔
      finer.RefinesAt first budget ∧ finer.RefinesAt second budget := by
  constructor
  · intro refines
    exact ⟨refines_trans refines (join_refines_first first second commonPolicy identity budget),
      refines_trans refines (join_refines_second first second commonPolicy identity budget)⟩
  · rintro ⟨firstRefines, secondRefines⟩ x y equivalent
    exact (equivalent_join_iff first second commonPolicy identity budget x y).mpr
      ⟨firstRefines x y equivalent, secondRefines x y equivalent⟩

/-- A pair indistinguishable in both components stays indistinguishable in the exact union. -/
theorem join_equivalent_of_both [DecidableEq Test]
    (first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String)
    {budget : ℕ} {x y : Object} (firstEquivalent : first.Equivalent budget x y)
    (secondEquivalent : second.Equivalent budget x y) :
    (first.join second commonPolicy identity).Equivalent budget x y :=
  (equivalent_join_iff first second commonPolicy identity budget x y).mpr
    ⟨firstEquivalent, secondEquivalent⟩

/-- Synergy is recovery of this target by the join while neither component recovers it. -/
def SynergisticFor [DecidableEq Test] (first second : FiniteNotion Object Test Value)
    (commonPolicy : first.policy = second.policy) (identity : String) (budget : ℕ)
    (target : Object → Result) : Prop :=
  ¬ first.DeterminesAt budget target ∧ ¬ second.DeterminesAt budget target ∧
    (first.join second commonPolicy identity).DeterminesAt budget target

/-- A synergy proof provides recovery of exactly its specified target from the join. -/
theorem synergistic_join_determines [DecidableEq Test]
    {first second : FiniteNotion Object Test Value} {commonPolicy : first.policy = second.policy}
    {identity : String} {budget : ℕ} {target : Object → Result}
    (synergy : first.SynergisticFor second commonPolicy identity budget target) :
    (first.join second commonPolicy identity).DeterminesAt budget target := synergy.2.2

/-- Synergy includes a failure of target recovery by the first component. -/
theorem synergistic_first_not_determines [DecidableEq Test]
    {first second : FiniteNotion Object Test Value} {commonPolicy : first.policy = second.policy}
    {identity : String} {budget : ℕ} {target : Object → Result}
    (synergy : first.SynergisticFor second commonPolicy identity budget target) :
    ¬ first.DeterminesAt budget target := synergy.1

/-- Synergy includes a separate failure of target recovery by the second component. -/
theorem synergistic_second_not_determines [DecidableEq Test]
    {first second : FiniteNotion Object Test Value} {commonPolicy : first.policy = second.policy}
    {identity : String} {budget : ℕ} {target : Object → Result}
    (synergy : first.SynergisticFor second commonPolicy identity budget target) :
    ¬ second.DeterminesAt budget target := synergy.2.1

end FiniteNotion

namespace NotionJoinFixture

/-- The two Boolean tests observe the first and second coordinates, each at cost one. -/
def coordinatePolicy : ObservationPolicy (Bool × Bool) Bool Bool where
  cost := fun _ ↦ 1
  observe := fun test x ↦ if test then x.2 else x.1

/-- The first aperture lists only the first-coordinate test under its explicit identity. -/
def firstCoordinates : FiniteNotion (Bool × Bool) Bool Bool where
  sourceIdentity := "boolean-first-coordinate"
  policy := coordinatePolicy
  tests := {false}

/-- The second aperture lists only the second-coordinate test under its explicit identity. -/
def secondCoordinates : FiniteNotion (Bool × Bool) Bool Bool where
  sourceIdentity := "boolean-second-coordinate"
  policy := coordinatePolicy
  tests := {true}

/-- The empty aperture retains no coordinate test and has its own explicit source identity. -/
def emptyCoordinates : FiniteNotion (Bool × Bool) Bool Bool where
  sourceIdentity := "boolean-empty-coordinates"
  policy := coordinatePolicy
  tests := ∅

/-- The two component policies agree as complete cost-and-observation structures. -/
theorem common_policy : firstCoordinates.policy = secondCoordinates.policy := rfl

/-- The joined fixture has a third identity supplied explicitly by this construction. -/
def jointCoordinates : FiniteNotion (Bool × Bool) Bool Bool :=
  firstCoordinates.join secondCoordinates common_policy "boolean-joint-coordinates"

/-- The first-coordinate inventory refines the empty inventory by actual test inclusion. -/
theorem first_refines_empty (budget : ℕ) :
    firstCoordinates.RefinesAt emptyCoordinates budget :=
  FiniteNotion.refines_of_tests_subset (finer := firstCoordinates) (coarser := emptyCoordinates)
    rfl (by simp [emptyCoordinates]) budget

/-- The concrete join-to-coordinate-to-empty refinement chain composes. -/
theorem joint_refines_empty (budget : ℕ) : jointCoordinates.RefinesAt emptyCoordinates budget :=
  FiniteNotion.refines_trans
    (FiniteNotion.join_refines_first firstCoordinates secondCoordinates common_policy
      "boolean-joint-coordinates" budget)
    (first_refines_empty budget)

/-- The first coordinate loses the pair differing only in its second coordinate. -/
theorem first_loses_pair :
    firstCoordinates.Equivalent 1 (false, false) (false, true) := by
  simp [FiniteNotion.Equivalent, firstCoordinates, coordinatePolicy]

/-- The second coordinate loses a different pair, differing only in its first coordinate. -/
theorem second_loses_pair :
    secondCoordinates.Equivalent 1 (false, false) (true, false) := by
  simp [FiniteNotion.Equivalent, secondCoordinates, coordinatePolicy]

/-- The first-coordinate aperture cannot recover the full vector target. -/
theorem first_not_determines_identity : ¬ firstCoordinates.DeterminesAt 1 id := by
  intro determined
  have impossible := determined first_loses_pair
  simp at impossible

/-- The second-coordinate aperture cannot recover the full vector target either. -/
theorem second_not_determines_identity : ¬ secondCoordinates.DeterminesAt 1 id := by
  intro determined
  have impossible := determined second_loses_pair
  simp at impossible

/-- Both affordable coordinate tests together determine the full vector identity. -/
theorem joint_determines_identity : jointCoordinates.DeterminesAt 1 id := by
  intro x y equivalent
  have firstEqual := equivalent false (by simp [jointCoordinates, FiniteNotion.join,
    firstCoordinates, secondCoordinates]) (by decide)
  have secondEqual := equivalent true (by simp [jointCoordinates, FiniteNotion.join,
    firstCoordinates, secondCoordinates]) (by decide)
  apply Prod.ext
  · simpa [jointCoordinates, FiniteNotion.join, firstCoordinates, coordinatePolicy] using firstEqual
  · simpa [jointCoordinates, FiniteNotion.join, firstCoordinates, coordinatePolicy]
      using secondEqual

/-- Recovery of the full vector is synergistic, with different failure pairs in each component. -/
theorem identity_synergy :
    firstCoordinates.SynergisticFor secondCoordinates common_policy
      "boolean-joint-coordinates" 1 id :=
  ⟨first_not_determines_identity, second_not_determines_identity, joint_determines_identity⟩

/-- The fixture cannot separate a same pair that both coordinate apertures identify. -/
theorem same_pair_remains_equivalent {budget : ℕ} {x y : Bool × Bool}
    (firstEquivalent : firstCoordinates.Equivalent budget x y)
    (secondEquivalent : secondCoordinates.Equivalent budget x y) :
    jointCoordinates.Equivalent budget x y :=
  FiniteNotion.join_equivalent_of_both firstCoordinates secondCoordinates common_policy
    "boolean-joint-coordinates" firstEquivalent secondEquivalent

end NotionJoinFixture
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
