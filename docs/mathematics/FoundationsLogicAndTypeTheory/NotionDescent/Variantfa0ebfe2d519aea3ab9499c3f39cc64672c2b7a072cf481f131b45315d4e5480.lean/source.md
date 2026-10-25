# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.NotionDescent.Variantfa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2d28b1b6a52afd6d8e95974a7c122eb11309e77` · SHA-256 `fa0ebfe2d519aea3ab9499c3f39cc64672c2b7a072cf481f131b45315d4e5480`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Notion
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent
import Mathlib.Data.Nat.Find

/-!
# Target recovery from budgeted observations

A target descends to the observation quotient exactly when affordable observations
determine it. Increasing a budget can enable recovery; the canonical quotient
transition therefore goes from a larger budget to a smaller one. The least
determining budget is defined only after a finite determining budget is known to
exist. None of these semantic constructions is an executable search procedure.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

variable {Object Test Value : Type*} {Result : Type*}

/-- The target is constant on every observation class at this budget. -/
def DeterminesAt (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (target : Object → Result) : Prop :=
  ∀ ⦃x y⦄, ObservationallyEquivalent policy budget x y → target x = target y

/-- Information sufficiency means precisely determination of this target at this budget. -/
abbrev InformationSufficientAt (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (target : Object → Result) : Prop :=
  DeterminesAt policy budget target

/-- The truth of a predicate is constant on every observation class at this budget. -/
def DeterminesPredicateAt (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (predicate : Object → Prop) : Prop :=
  ∀ ⦃x y⦄, ObservationallyEquivalent policy budget x y → (predicate x ↔ predicate y)

/-- Predicate determination is ordinary determination of a proposition-valued target. -/
theorem predicate_determines_iff (policy : ObservationPolicy Object Test Value)
    (budget : ℕ) (predicate : Object → Prop) :
    DeterminesPredicateAt policy budget predicate ↔ DeterminesAt policy budget predicate :=
  ⟨fun h {_ _} hxy ↦ propext (h hxy), fun h {_ _} hxy ↦ (h hxy).to_iff⟩

/-- Each object has a canonical class, without choosing a representative of any class. -/
def notionProjection (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (object : Object) : notionQuotient policy budget :=
  Quotient.mk (notionSetoid policy budget) object

/-- Equality of canonical classes is exactly the original observation relation. -/
theorem notionProjection_eq_iff (policy : ObservationPolicy Object Test Value)
    (budget : ℕ) (x y : Object) :
    notionProjection policy budget x = notionProjection policy budget y ↔
      ObservationallyEquivalent policy budget x y :=
  Quotient.eq

/-- Budgeted determination is exactly descent through the canonical observation projection. -/
theorem determines_iff_descendsThrough (policy : ObservationPolicy Object Test Value)
    (budget : ℕ) (target : Object → Result) :
    DeterminesAt policy budget target ↔ DescendsThrough (notionProjection policy budget) target :=
  (descendsThrough_quotient_iff (notionSetoid policy budget) target).symm

/-- The predicate interface has the same precise connection to generic predicate descent. -/
theorem determinesPredicate_iff_descendsThrough (policy : ObservationPolicy Object Test Value)
    (budget : ℕ) (predicate : Object → Prop) :
    DeterminesPredicateAt policy budget predicate ↔
      PredicateDescendsThrough (notionProjection policy budget) predicate := by
  constructor
  · intro determined x y equal
    exact determined (Quotient.exact equal)
  · intro descends x y equivalent
    exact descends (Quotient.sound equivalent)

/-- A determined target has a well-defined value on every semantic observation class. -/
def notionTargetLift (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (target : Object → Result) (determined : DeterminesAt policy budget target) :
    notionQuotient policy budget → Result :=
  descentQuotientLift (notionSetoid policy budget) target
    ((determines_iff_descendsThrough policy budget target).mp determined)

/-- The quotient target recovers the original target on each canonical class. -/
@[simp]
theorem notionTargetLift_projection (policy : ObservationPolicy Object Test Value)
    (budget : ℕ) (target : Object → Result) (determined : DeterminesAt policy budget target)
    (x : Object) :
    notionTargetLift policy budget target determined (notionProjection policy budget x) =
      target x := rfl

/-- Any target recovered from the quotient is constant on its original observation classes. -/
theorem determines_of_quotient_factorization (policy : ObservationPolicy Object Test Value)
    (budget : ℕ) (target : Object → Result) (lift : notionQuotient policy budget → Result)
    (recovers : ∀ x, lift (notionProjection policy budget x) = target x) :
    DeterminesAt policy budget target := by
  intro x y hxy
  rw [← recovers x, ← recovers y]
  exact congrArg lift (Quotient.sound hxy)

/-- The quotient recovery map is unique because every class has an original object. -/
theorem notionTargetLift_unique (policy : ObservationPolicy Object Test Value) (budget : ℕ)
    (target : Object → Result) (determined : DeterminesAt policy budget target)
    (lift : notionQuotient policy budget → Result)
    (recovers : ∀ x, lift (notionProjection policy budget x) = target x) :
    lift = notionTargetLift policy budget target determined := by
  funext q
  induction q using Quotient.inductionOn with
  | h x => exact recovers x

/-- Determination is equivalent to the existence of a unique quotient recovery map. -/
theorem determines_iff_unique_quotient_factorization
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) (target : Object → Result) :
    DeterminesAt policy budget target ↔
      ∃! lift : notionQuotient policy budget → Result,
        ∀ x, lift (notionProjection policy budget x) = target x := by
  constructor
  · intro determined
    exact ⟨notionTargetLift policy budget target determined, fun _ ↦ rfl,
      fun lift recovers ↦ notionTargetLift_unique policy budget target determined lift recovers⟩
  · rintro ⟨lift, recovers, _⟩
    exact determines_of_quotient_factorization policy budget target lift recovers

/-- Increasing the available budget preserves determination of the same target. -/
theorem determines_of_budget_le {policy : ObservationPolicy Object Test Value}
    {small large : ℕ} {target : Object → Result} (bound : small ≤ large)
    (determined : DeterminesAt policy small target) : DeterminesAt policy large target :=
  fun {_ _} hxy ↦ determined (observationallyEquivalent_of_budget_le bound hxy)

/-- Predicate recovery is also preserved by increasing the budget. -/
theorem predicate_determines_of_budget_le {policy : ObservationPolicy Object Test Value}
    {small large : ℕ} {predicate : Object → Prop} (bound : small ≤ large)
    (determined : DeterminesPredicateAt policy small predicate) :
    DeterminesPredicateAt policy large predicate :=
  fun {_ _} hxy ↦ determined (observationallyEquivalent_of_budget_le bound hxy)

/-- Forgetting tests induces a transition from the larger-budget quotient to the smaller one. -/
def budgetTransition (policy : ObservationPolicy Object Test Value) {small large : ℕ}
    (bound : small ≤ large) : notionQuotient policy large → notionQuotient policy small :=
  Quotient.lift (notionProjection policy small)
    (fun _ _ hxy ↦ Quotient.sound (observationallyEquivalent_of_budget_le bound hxy))

/-- A budget transition sends each original object to its class at the smaller budget. -/
@[simp]
theorem budgetTransition_projection (policy : ObservationPolicy Object Test Value)
    {small large : ℕ} (bound : small ≤ large) (x : Object) :
    budgetTransition policy bound (notionProjection policy large x) =
      notionProjection policy small x := rfl

/-- Forgetting no budget is the identity on the semantic quotient. -/
theorem budgetTransition_id (policy : ObservationPolicy Object Test Value) (budget : ℕ) :
    budgetTransition policy (le_refl budget) = id := by
  funext q
  induction q using Quotient.inductionOn with
  | h x => rfl

/-- Successive budget reductions compose to the direct reduction. -/
theorem budgetTransition_comp (policy : ObservationPolicy Object Test Value)
    {small middle large : ℕ} (first : small ≤ middle) (second : middle ≤ large) :
    budgetTransition policy first ∘ budgetTransition policy second =
      budgetTransition policy (first.trans second) := by
  funext q
  induction q using Quotient.inductionOn with
  | h x => rfl

/-- The least determining budget is defined only from an explicit finite-existence proof. -/
noncomputable def InformationRadius (policy : ObservationPolicy Object Test Value)
    (target : Object → Result)
    (existsBudget : ∃ budget, DeterminesAt policy budget target) : ℕ := by
  classical
  exact Nat.find existsBudget

/-- The existence-indexed information radius actually determines the target. -/
theorem informationRadius_determines (policy : ObservationPolicy Object Test Value)
    (target : Object → Result) (existsBudget : ∃ budget, DeterminesAt policy budget target) :
    DeterminesAt policy (InformationRadius policy target existsBudget) target := by
  classical
  exact Nat.find_spec existsBudget

/-- Every strictly smaller budget fails to determine the target. -/
theorem informationRadius_minimal (policy : ObservationPolicy Object Test Value)
    (target : Object → Result) (existsBudget : ∃ budget, DeterminesAt policy budget target)
    {budget : ℕ} (smaller : budget < InformationRadius policy target existsBudget) :
    ¬ DeterminesAt policy budget target := by
  classical
  exact Nat.find_min existsBudget smaller

/-- Any determining budget bounds the information radius from above. -/
theorem informationRadius_le (policy : ObservationPolicy Object Test Value)
    (target : Object → Result) (existsBudget : ∃ budget, DeterminesAt policy budget target)
    {budget : ℕ} (determined : DeterminesAt policy budget target) :
    InformationRadius policy target existsBudget ≤ budget := by
  classical
  exact Nat.find_min' existsBudget determined

/-- Determination holds exactly at and above the existence-indexed information radius. -/
theorem determines_iff_informationRadius_le (policy : ObservationPolicy Object Test Value)
    (target : Object → Result) (existsBudget : ∃ budget, DeterminesAt policy budget target)
    (budget : ℕ) :
    DeterminesAt policy budget target ↔ InformationRadius policy target existsBudget ≤ budget :=
  ⟨informationRadius_le policy target existsBudget,
    fun bound ↦ determines_of_budget_le bound
      (informationRadius_determines policy target existsBudget)⟩

namespace NotionDescentFixture

/-- A single test observes the whole Boolean vector and costs one unit. -/
def vectorPolicy : ObservationPolicy (Bool × Bool) Unit (Bool × Bool) where
  cost := fun _ ↦ 1
  observe := fun _ x ↦ x

/-- At budget zero no test is affordable, so every pair is observationally equivalent. -/
theorem equivalent_at_zero (x y : Bool × Bool) :
    ObservationallyEquivalent vectorPolicy 0 x y := by
  intro test affordable
  simp [vectorPolicy] at affordable

/-- Budget one recovers the full vector through the affordable whole-vector test. -/
theorem identity_determined_at_one : DeterminesAt vectorPolicy 1 id := by
  intro x y equivalent
  exact equivalent () (by decide)

/-- The concrete determining budget remains sufficient after increasing it to two. -/
theorem identity_determined_at_two : DeterminesAt vectorPolicy 2 id :=
  determines_of_budget_le (by decide) identity_determined_at_one

/-- Budget zero cannot recover the identity target, as witnessed by two distinct vectors. -/
theorem identity_not_determined_at_zero : ¬ DeterminesAt vectorPolicy 0 id := by
  intro determined
  have impossible := determined (equivalent_at_zero (false, false) (true, false))
  simp at impossible

/-- The reverse implication between budget relations fails for these explicit vectors. -/
theorem budget_equivalence_does_not_reverse :
    ¬ (∀ x y, ObservationallyEquivalent vectorPolicy 0 x y →
      ObservationallyEquivalent vectorPolicy 1 x y) := by
  intro reverse
  apply identity_not_determined_at_zero
  exact fun {x y} hxy ↦ identity_determined_at_one (reverse x y hxy)

end NotionDescentFixture
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
