---
schema_version: 0.1.1
id: urn:uuid:0aff8294-7302-4beb-80ae-72c2de9daf58
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {preferred: {en: Spectral theory of linear operators}, alternative: {en: []}}
definition_section: Definition
scope_section: Scope
broader: [{edge: parent-operators, target: 'urn:uuid:827f5db9-1422-479e-a716-d9993230180c', type: subjectSpecialization, origin: direct, status: proposed, sources: [L1], rationale: 'Specializes operator theory by spectral questions.'}]
navigation_parent: urn:uuid:827f5db9-1422-479e-a716-d9993230180c
facets: [{edge: facet-operator-spectrum, axis: objects, target: 'urn:uuid:9ef6cd3e-21ce-440d-845f-702f515bda95', type: facet, origin: direct, status: proposed, sources: [L1], rationale: 'Selected bounded-operator spectrum object for retrieval; this does not restrict the whole spectral subject to bounded operators.'}]
relations: []
sources: [{key: L1, locator: 'Spectrum/resolvent and chapter 3'}]
warrant: {literary: 'Established spectral literature.', user: 'Keep object and subject meanings of spectrum distinct.', organizational: 'Attach source-level results without claiming universal proof acceptance.'}
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.1, date: '2026-10-19', change: Initial draft.}, {version: '0.1.1', date: '2026-10-19', change: 'Explicit facet edge identity, provenance and proposed status; concept scope and parentage unchanged.'}]
proposal_refs: []
decision_refs: [D01, D03, D04]
---
# Spectral theory of linear operators

[Linear operator theory](../index.md) · [Functional analysis](../../FunctionalAnalysis/index.md)

## Definition

The study of operator spectra and resolvents, spectral decompositions and their consequences.

## Scope

Spectra need not consist only of eigenvalues. Operator hypotheses and domains must remain explicit. The prime-ideal spectrum of a ring is a different object, not another name for this whole subject.

Selected child division criterion: operator class. Browse [self-adjoint operators](SelfAdjointOperators/index.md). The [bounded-operator spectrum facet](../../../../facets/objects/operator-spectrum.md) covers one object class, not every unbounded spectral construction. The [source association](../../../../associations/index.md) is source-only and supplies no theorem of mathematical equivalence to another domain.

## Sources

[L1](../../../../standards/index.md). All semantic parentage remains proposed.
