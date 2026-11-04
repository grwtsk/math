/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the repository's existing license.
-/
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.TypedEvidenceTransport
import GRWTSK.ComputerScience.TheoryOfData.DataStructures.EvidencePolicyChange

/-!
# Provenance, finite witnesses and revocation through typed evidence maps

Connect the typed comparison of records/queries to the concurrently added
policy-change results. Independence transports only when execution identities
commute with record encoding. Different record identifiers alone are irrelevant.
Finite target inventories admit source certificates bounded by their length;
projecting those very witnesses supplies the target certificate.

A policy change needs two comparisons, one before and one after. Under these
separate premises, loss of support commutes with representation. A historical
comparison is not silently reused as a current validity proof. The result uses
`PolicyChange.Lost`, not a competing notion of stale evidence.

Primary arguments: preserve the actual observed preimages and their execution
identities; apply the existing finite-certificate theorem to the mapped query
list; combine the two existing support equivalences for the revocation result.
Consumers: qualified evidence exchange, bounded certificates and revalidation.
No identity string is authenticated by these theorems, and independence here
means distinct declared executions, not independent mathematical reasoning.
Reuse includes EvidencePolicyChange at e0108ce89dd28451cd463fdf0425aea711f618c6.
AI-assisted formalization; novelty and independent review: not assessed.
Compilation, fresh kernel checking, transitive axiom audit: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.Evidence.Transport.Comparison

universe u v w

variable {A B : Presentation.{u, v}} {Execution : Type w}

/-- Record projection preserves declared independence only with an identity comparison. -/
theorem independent_witnesses_iff (f : Comparison A B)
    (sourceExecution : A.Record → Execution) (targetExecution : B.Record → Execution)
    (identity : ∀ e, targetExecution (f.record e) = sourceExecution e)
    (observed : Collection A.Record) (o : B.Obligation) :
    PolicyChange.IndependentWitnesses targetExecution B.valid (f.records observed) o ↔
      PolicyChange.IndependentWitnesses sourceExecution A.valid observed (f.query o) := by
  constructor
  · intro h
    obtain ⟨encodedA, encodedB, presentA, presentB, validA, validB, distinct⟩ := h
    obtain ⟨a, ha, observedA⟩ := presentA
    obtain ⟨b, hb, observedB⟩ := presentB
    refine ⟨a, b, observedA, observedB,
      (f.valid_iff a o).mp (ha.symm ▸ validA),
      (f.valid_iff b o).mp (hb.symm ▸ validB), ?_⟩
    intro same
    apply distinct
    calc
      targetExecution encodedA = targetExecution (f.record a) :=
        congrArg targetExecution ha.symm
      _ = sourceExecution a := identity a
      _ = sourceExecution b := same
      _ = targetExecution (f.record b) := (identity b).symm
      _ = targetExecution encodedB := congrArg targetExecution hb
  · intro h
    obtain ⟨a, b, presentA, presentB, validA, validB, distinct⟩ := h
    refine ⟨f.record a, f.record b, ⟨a, rfl, presentA⟩, ⟨b, rfl, presentB⟩,
      (f.valid_iff a o).mpr validA, (f.valid_iff b o).mpr validB, ?_⟩
    intro same
    apply distinct
    exact (identity a).symm.trans (same.trans (identity b))

/-- The certificate consists of source witnesses, not arbitrary projected claims. -/
theorem finite_source_certificate (f : Comparison A B)
    (requirements : List B.Obligation) (observed : Collection A.Record)
    (complete : Complete (fun o => o ∈ requirements) B.valid (f.records observed)) :
    ∃ certificate : List A.Record,
      (∀ e, e ∈ certificate → observed e) ∧
      Complete (fun o => o ∈ requirements) B.valid
        (fun encoded => encoded ∈ certificate.map f.record) ∧
      certificate.length ≤ requirements.length := by
  have sourceComplete : Complete (fun o => o ∈ requirements.map f.query) A.valid observed := by
    intro sourceQuery present
    obtain ⟨targetQuery, wanted, same⟩ := List.mem_map.mp present
    exact same ▸ (f.supported_iff observed targetQuery).mp (complete targetQuery wanted)
  obtain ⟨certificate, retained, covered, size⟩ :=
    PolicyChange.finite_certificate (requirements.map f.query) A.valid observed sourceComplete
  refine ⟨certificate, retained, ?_, ?_⟩
  · intro targetQuery wanted
    obtain ⟨e, present, valid⟩ :=
      covered (f.query targetQuery) (List.mem_map.mpr ⟨targetQuery, wanted, rfl⟩)
    exact ⟨f.record e, List.mem_map.mpr ⟨e, present, rfl⟩,
      (f.valid_iff e targetQuery).mpr valid⟩
  · simpa only [List.length_map] using size

/-- A source execution class cannot split into false independent target executions. -/
theorem one_execution_remains_one (f : Comparison A B)
    (sourceExecution : A.Record → Execution) (targetExecution : B.Record → Execution)
    (identity : ∀ e, targetExecution (f.record e) = sourceExecution e)
    (observed : Collection A.Record) (o : B.Obligation) (execution : Execution)
    (same : ∀ e, observed e → sourceExecution e = execution) :
    ¬ PolicyChange.IndependentWitnesses targetExecution B.valid (f.records observed) o := by
  intro independent
  have sourceIndependent :=
    (f.independent_witnesses_iff sourceExecution targetExecution identity observed o).mp independent
  exact PolicyChange.one_execution_is_not_independence same sourceIndependent

end GRWTSK.Evidence.Transport.Comparison

namespace GRWTSK.Evidence.Transport.Policy

universe u v

variable {E F : Type u} {O Q : Type v}

/-- Before/after support losses agree only with a comparison for each policy. -/
theorem lost_support_iff (encode : E → F) (query : Q → O)
    (sourceBefore sourceAfter : E → O → Prop)
    (targetBefore targetAfter : F → Q → Prop)
    (before : ∀ e q, targetBefore (encode e) q ↔ sourceBefore e (query q))
    (after : ∀ e q, targetAfter (encode e) q ↔ sourceAfter e (query q))
    (observed : Collection E) (q : Q) :
    PolicyChange.Lost targetBefore targetAfter (Projection.image encode observed) q ↔
      PolicyChange.Lost sourceBefore sourceAfter observed (query q) := by
  let first : Comparison ⟨E, O, sourceBefore⟩ ⟨F, Q, targetBefore⟩ :=
    ⟨encode, query, before⟩
  let second : Comparison ⟨E, O, sourceAfter⟩ ⟨F, Q, targetAfter⟩ :=
    ⟨encode, query, after⟩
  exact and_congr (first.supported_iff observed q)
    (not_congr (second.supported_iff observed q))

/-- Equal record maps do not turn an old validity comparison into a new one. -/
theorem historical_comparison_is_not_current :
    (∀ e q : Unit, (True ↔ True)) ∧
      ¬ (∀ e q : Unit, (True ↔ False)) := by
  constructor
  · intro e q
    exact Iff.rfl
  · intro current
    exact (current () ()).mp True.intro

end GRWTSK.Evidence.Transport.Policy
