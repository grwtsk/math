# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Notion.Variantf475b91a918edaab3eace6c417c9f53db73b287a54ea0aa8956aa7ee080418bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ed057a81bba02fe113fc9ed044d48ed13876bc0` · SHA-256 `305074534b0698e32a6b814e39eec6e42d22a80b0c79d752992aa45c68900320`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ObservationPolicy.Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ObservationPolicy.Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SUCAS/Notion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Setoid.Basic

/-!
# Semantic notions and finite observation realizations

The semantic quotient quantifies over all affordable tests. Only an explicitly
listed finite family receives an executable comparison; it is not a canonical
algorithm for unrestricted future behavior.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ObservationPolicy.Variant3b52ad21136bc57db9746d5f83360c8f8ee02d4e5f4a2471a086b6d94c94e51e

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
