---
schema_version: 0.1.1
id: urn:uuid:7ac44c10-be39-42fa-ac8e-c3b2a3bf1e64
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {preferred: {en: Spectral theory of self-adjoint operators}, alternative: {en: []}}
definition_section: Definition
scope_section: Scope
broader: [{edge: parent-spectral, target: 'urn:uuid:0aff8294-7302-4beb-80ae-72c2de9daf58', type: subjectSpecialization, origin: direct, status: proposed, sources: [L1], rationale: 'Restricts spectral questions to self-adjoint operators.'}]
navigation_parent: urn:uuid:0aff8294-7302-4beb-80ae-72c2de9daf58
facets: [{edge: facet-operator-spectrum, axis: objects, target: 'urn:uuid:9ef6cd3e-21ce-440d-845f-702f515bda95', type: facet, origin: direct, status: proposed, sources: [L1], rationale: 'Selected bounded self-adjoint cases use this object facet; unbounded domain-aware spectra remain within the subject scope.'}]
relations: []
sources: [{key: L1, locator: 'Self-adjointness and spectral theorem, chapters 2-3'}]
warrant: {literary: 'Established self-adjoint spectral literature.', user: 'Preserve operator-domain and hypothesis distinctions.', organizational: 'Provide a justified analytic parent for the cross-boundary pilot.'}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.1, date: '2026-10-19', change: Initial draft.}, {version: '0.1.1', date: '2026-10-19', change: 'Explicit facet edge identity, provenance and proposed status; concept scope and parentage unchanged.'}]
proposal_refs: []
decision_refs: [D01, D03, D04]
---
# Spectral theory of self-adjoint operators

[Spectral theory](../index.md) · [Linear operator theory](../../index.md)

## Definition

Spectral analysis of operators equal to their Hilbert-space adjoints, including equality of domains when operators are unbounded.

## Scope

Symmetry on a domain is not automatically self-adjointness. Finite Hermitian matrices are included without exhausting the subject. The bounded-spectrum object facet is a selected facet, not a restriction of this subject to bounded operators.

Selected child division criterion: restricted self-adjoint operator family. Browse [spectral theory of finite reversible Markov chains](FiniteReversibleChains/index.md). This specialized spectral subject has an additional probability parent; not every use of a spectral method qualifies as a subject subtype.

## Sources

[L1](../../../../../standards/index.md), chapters 2-3. [Addition rationale](../../../../../proposals/new-concepts/index.md) records the cross-parent distinction.
