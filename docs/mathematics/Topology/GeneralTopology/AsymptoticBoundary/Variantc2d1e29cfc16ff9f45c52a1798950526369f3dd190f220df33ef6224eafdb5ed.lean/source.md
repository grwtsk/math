# Complete source: GRWTSK.Topology.GeneralTopology.AsymptoticBoundary.Variantc2d1e29cfc16ff9f45c52a1798950526369f3dd190f220df33ef6224eafdb5ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82f035606ec209e7b031d3c917532f25e127e664` · SHA-256 `695072f8d2df784b83277aed2a0d500ff5851f8d094fd4328b5eb9ac94b9db76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.CertifiedBoundaryTraversal.Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.CertifiedBoundaryTraversal.Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/AsymptoticBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.ContractiveBoundary

/-!
# Asymptotic boundary quotient

The quotient identifies certified traversals only by their limiting behavior.
It does not identify their finite states, schedules, or histories.
-/


namespace GRWTSK.Topology.GeneralTopology.CertifiedBoundaryTraversal.Variantae93cc8abf06a0f094f0c6011439c3802eb43052ced11833049a1e3227f5e48f

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
