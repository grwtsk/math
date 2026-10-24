# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Notion.Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `348096950286c06f1fa5d9fced13347b41f388df` · SHA-256 `3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Setoid.Basic

/-!
# Semantic notions and finite observation realizations

The semantic quotient quantifies over all affordable tests. Only an explicitly
listed finite family receives an executable comparison; it is not a canonical
algorithm for unrestricted future behavior.
-/

namespace FormalResearch.SUCAS

/-- An observation policy supplies tests and costs, rather than defining notion identity. -/
structure ObservationPolicy (Object Test Value : Type*) where
  /-- Logical finite cost of one test. -/
  cost : Test → ℕ
  /-- Extensional observation produced by a test. -/
  observe : Test → Object → Value

/-- Two objects have the same observations under every affordable semantic test. -/
def ObservationallyEquivalent {Object Test Value : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) (x y : Object) : Prop :=
  ∀ test, policy.cost test ≤ budget → policy.observe test x = policy.observe test y

/-- Budget-indexed semantic observation equality is an equivalence relation. -/
def notionSetoid {Object Test Value : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) : Setoid Object where
  r := ObservationallyEquivalent policy budget
  iseqv := ⟨fun _ _ _ => rfl, fun h t ht => (h t ht).symm,
    fun hxy hyz t ht => (hxy t ht).trans (hyz t ht)⟩

/-- The extensional semantic quotient has no claimed executable canonical representative. -/
def notionQuotient {Object Test Value : Type*}
    (policy : ObservationPolicy Object Test Value) (budget : ℕ) :=
  Quotient (notionSetoid policy budget)

/-- Lower budgets can merge semantic equivalence classes and cannot split them. -/
theorem observationallyEquivalent_of_budget_le {Object Test Value : Type*}
    {policy : ObservationPolicy Object Test Value} {small large : ℕ} {x y : Object}
    (hbudget : small ≤ large) (h : ObservationallyEquivalent policy large x y) :
    ObservationallyEquivalent policy small x y :=
  fun test hcost => h test (hcost.trans hbudget)

/-- A source-bound finite realization specifies exactly which tests were made available. -/
structure FiniteNotion (Object Test Value : Type*) where
  /-- Immutable profile identity supplied by the source-binding layer. -/
  sourceIdentity : String
  /-- Policy whose observations this finite realization samples. -/
  policy : ObservationPolicy Object Test Value
  /-- Complete finite inventory for this realization, not for all possible future tests. -/
  tests : Finset Test

/-- Equivalence relative to an explicit finite observation aperture and budget. -/
def FiniteNotion.Equivalent {Object Test Value : Type*}
    (notion : FiniteNotion Object Test Value) (budget : ℕ) (x y : Object) : Prop :=
  ∀ test ∈ notion.tests,
    notion.policy.cost test ≤ budget → notion.policy.observe test x = notion.policy.observe test y

/-- The realized finite relation is itself an equivalence relation. -/
def FiniteNotion.setoid {Object Test Value : Type*}
    (notion : FiniteNotion Object Test Value) (budget : ℕ) : Setoid Object where
  r := notion.Equivalent budget
  iseqv := ⟨fun _ _ _ _ => rfl, fun h t hm hc => (h t hm hc).symm,
    fun hxy hyz t hm hc => (hxy t hm hc).trans (hyz t hm hc)⟩

/-- Exact executable comparison, restricted to the declared finite test family. -/
def FiniteNotion.compare {Object Test Value : Type*} [DecidableEq Value]
    (notion : FiniteNotion Object Test Value) (budget : ℕ) (x y : Object) : Bool :=
  decide (∀ test ∈ notion.tests,
    notion.policy.cost test ≤ budget → notion.policy.observe test x = notion.policy.observe test y)

/-- The finite Boolean comparison is precisely its bounded extensional specification. -/
theorem FiniteNotion.compare_eq_true {Object Test Value : Type*}
    [DecidableEq Value]
    (notion : FiniteNotion Object Test Value) (budget : ℕ) (x y : Object) :
    notion.compare budget x y = true ↔ notion.Equivalent budget x y := by
  simp [FiniteNotion.compare, FiniteNotion.Equivalent]

/-- Budget reduction coarsens the executable finite notion as well. -/
theorem FiniteNotion.equivalent_of_budget_le {Object Test Value : Type*}
    {notion : FiniteNotion Object Test Value} {small large : ℕ} {x y : Object}
    (hbudget : small ≤ large) (h : notion.Equivalent large x y) :
    notion.Equivalent small x y :=
  fun test hmem hcost => h test hmem (hcost.trans hbudget)

/-- Full semantic equivalence implies equivalence in each finite subfamily. -/
theorem FiniteNotion.equivalent_of_semantic {Object Test Value : Type*}
    (notion : FiniteNotion Object Test Value) {budget : ℕ} {x y : Object}
    (h : ObservationallyEquivalent notion.policy budget x y) :
    notion.Equivalent budget x y :=
  fun test _ hcost => h test hcost

end FormalResearch.SUCAS
```
