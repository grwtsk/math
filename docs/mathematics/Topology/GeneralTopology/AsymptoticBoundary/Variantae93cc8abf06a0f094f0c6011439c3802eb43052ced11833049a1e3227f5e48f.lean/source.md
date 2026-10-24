# Complete source: GRWTSK.Topology.GeneralTopology.AsymptoticBoundary.Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `367c4c8bd9cc38ae36a67b6e0e86fffb54173edb` · SHA-256 `ae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.MobiusOntology.ContractiveBoundary

/-!
# Asymptotic boundary quotient

The quotient identifies certified traversals only by their limiting behavior.
It does not identify their finite states, schedules, or histories.
-/

namespace Mathematics.MobiusOntology

open Filter
open scoped NNReal Topology

universe u v

structure CertifiedBoundaryTraversal
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) where
  schedule : ℕ → Schedule
  initial : State
  initial_mem : initial ∈ certificate.basin

def BoundaryTraversalsAsymptoticallyEquivalent
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {certificate :
      ContractiveBoundaryCertificate State Schedule}
    (left right : CertifiedBoundaryTraversal certificate) : Prop :=
  certificate.AsymptoticallyEquivalent
    left.schedule right.schedule left.initial right.initial

theorem all_certified_boundary_traversals_equivalent
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {certificate :
      ContractiveBoundaryCertificate State Schedule}
    (left right : CertifiedBoundaryTraversal certificate) :
    BoundaryTraversalsAsymptoticallyEquivalent left right :=
  certificate.all_basin_traversals_asymptoticallyEquivalent
    left.schedule right.schedule
    left.initial_mem right.initial_mem

def asymptoticBoundarySetoid
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :
    Setoid (CertifiedBoundaryTraversal certificate) where
  r := BoundaryTraversalsAsymptoticallyEquivalent
  iseqv := ⟨
    fun traversal =>
      all_certified_boundary_traversals_equivalent
        traversal traversal,
    fun {left right} _ =>
      all_certified_boundary_traversals_equivalent
        right left,
    fun {left _ right} _ _ =>
      all_certified_boundary_traversals_equivalent
        left right⟩

/--
Semantic classes of complete certified traversals.  Under one common
contractive boundary every inhabitant has the same quotient class.
-/
abbrev AsymptoticTraversalQuotient
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :=
  Quotient (asymptoticBoundarySetoid certificate)

def asymptoticTraversalProjection
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :
    CertifiedBoundaryTraversal certificate →
      AsymptoticTraversalQuotient certificate :=
  Quotient.mk (asymptoticBoundarySetoid certificate)

theorem asymptotic_traversal_projection_unique
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (left right : CertifiedBoundaryTraversal certificate) :
    asymptoticTraversalProjection certificate left =
      asymptoticTraversalProjection certificate right := by
  apply Quotient.sound
  exact all_certified_boundary_traversals_equivalent left right

abbrev CertifiedBasinState
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :=
  {state : State // state ∈ certificate.basin}

/--
Strong asymptotic equivalence explicitly quantifies over every pair of
admitted schedules.
-/
def StronglyAsymptoticallyEquivalent
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {certificate :
      ContractiveBoundaryCertificate State Schedule}
    (left right : CertifiedBasinState certificate) : Prop :=
  ∀ leftSchedule rightSchedule : ℕ → Schedule,
    certificate.AsymptoticallyEquivalent
      leftSchedule rightSchedule left.1 right.1

theorem all_basin_states_strongly_equivalent
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    {certificate :
      ContractiveBoundaryCertificate State Schedule}
    (left right : CertifiedBasinState certificate) :
    StronglyAsymptoticallyEquivalent left right := by
  intro leftSchedule rightSchedule
  exact
    certificate.all_basin_traversals_asymptoticallyEquivalent
      leftSchedule rightSchedule left.2 right.2

def strongAsymptoticBoundarySetoid
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :
    Setoid (CertifiedBasinState certificate) where
  r := StronglyAsymptoticallyEquivalent
  iseqv := ⟨
    fun state =>
      all_basin_states_strongly_equivalent state state,
    fun {left right} _ =>
      all_basin_states_strongly_equivalent right left,
    fun {left _ right} _ _ =>
      all_basin_states_strongly_equivalent left right⟩

abbrev AsymptoticBoundaryQuotient
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :=
  Quotient (strongAsymptoticBoundarySetoid certificate)

def asymptoticBoundaryProjection
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule) :
    CertifiedBasinState certificate →
      AsymptoticBoundaryQuotient certificate :=
  Quotient.mk (strongAsymptoticBoundarySetoid certificate)

theorem asymptotic_boundary_projection_unique
    {State : Type u}
    {Schedule : Type v}
    [PseudoMetricSpace State]
    (certificate :
      ContractiveBoundaryCertificate State Schedule)
    (left right : CertifiedBasinState certificate) :
    asymptoticBoundaryProjection certificate left =
      asymptoticBoundaryProjection certificate right := by
  apply Quotient.sound
  exact all_basin_states_strongly_equivalent left right

end Mathematics.MobiusOntology
```
