/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Combinatorics.GraphTheory.RelationSandwich
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.LinearAlgebra.Pi

set_option autoImplicit false

open scoped BigOperators

/-!
# Rational-linear frequency screw operators

A frequency screw is a finite rational-weighted observation of a heterogeneous section.
Each vertex may carry a different rational vector space. A declared observation map returns
that stalk to a common output space before the weighted sum is taken.

The operator is linear over `ℚ` by construction. Frequency ordering is a separate edge
certificate; it does not identify vertices with primes or infer an analytic ordering.
-/

namespace GRWTSK.LinearAlgebra.LinearMap.FrequencyScrew

open GRWTSK.Combinatorics.GraphTheory.RelationSandwich

noncomputable section

/-- Rational-linear aggregation of heterogeneous stalk observations, weighted through a
function of the declared frequency. -/
def operator {V M : Type*} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    [AddCommGroup M] [Module ℚ M]
    (active : Finset V) (frequency : V → ℚ) (weight : ℚ → ℚ)
    (observe : ∀ v, Stalk v →ₗ[ℚ] M) :
    (∀ v, Stalk v) →ₗ[ℚ] M := by
  classical
  exact ∑ v ∈ active, weight (frequency v) •
    (observe v).comp (LinearMap.proj v)

@[simp]
theorem operator_apply {V M : Type*} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    [AddCommGroup M] [Module ℚ M]
    (active : Finset V) (frequency : V → ℚ) (weight : ℚ → ℚ)
    (observe : ∀ v, Stalk v →ₗ[ℚ] M) (value : ∀ v, Stalk v) :
    operator active frequency weight observe value =
      ∑ v ∈ active, weight (frequency v) • observe v (value v) := by
  classical
  simp [operator]

/-- Frequency ordering and the rational-linear operator are stored independently. -/
structure OrderedOperator (V M : Type*) (Stalk : V → Type*)
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    [AddCommGroup M] [Module ℚ M] where
  edge : EdgeRelation V
  frequency : V → ℚ
  ordered : OrderedBy frequency edge
  active : Finset V
  weight : ℚ → ℚ
  observe : ∀ v, Stalk v →ₗ[ℚ] M

/-- The rational-linear screw carried by an ordered frequency system. -/
def OrderedOperator.toLinearMap {V M : Type*} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    [AddCommGroup M] [Module ℚ M]
    (system : OrderedOperator V M Stalk) :
    (∀ v, Stalk v) →ₗ[ℚ] M :=
  operator system.active system.frequency system.weight system.observe

/-- Every nonempty directed path strictly increases the declared rational frequency. -/
theorem OrderedOperator.path_frequency_lt {V M : Type*} {Stalk : V → Type*}
    [∀ v, AddCommGroup (Stalk v)] [∀ v, Module ℚ (Stalk v)]
    [AddCommGroup M] [Module ℚ M]
    (system : OrderedOperator V M Stalk) {source target : V}
    (path : Path system.edge source target) :
    system.frequency source < system.frequency target :=
  Path.rank_lt system.frequency system.ordered path

end

end GRWTSK.LinearAlgebra.LinearMap.FrequencyScrew
