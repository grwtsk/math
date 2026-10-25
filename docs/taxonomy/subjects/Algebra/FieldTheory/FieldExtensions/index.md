---
schema_version: "0.1.1"
id: "urn:uuid:3f6d760c-4e4d-4946-af53-7e4008e23dc1"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Field extension theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-extensions", "type": "subjectSpecialization", "target": "urn:uuid:c67aebfc-2b99-44cd-b352-0d1da1eee8fe", "origin": "direct", "status": "proposed", "sources": ["L47"], "rationale": "Selects a standard construction or structural relation within the specified parent subject; no object identity, source dependency or theorem implication follows."}]
navigation_parent: "urn:uuid:c67aebfc-2b99-44cd-b352-0d1da1eee8fe"
facets: []
relations: []
sources: [{"key": "L47", "locator": "J. S. Milne, Fields and Galois Theory author page and its field-extension outline; renewed bounded HTML inspection 2026-10-25, not a full-book proof audit."}]
warrant: {"literary": "Established subject terminology at the cited bounded authoritative source; original local explanatory prose, not imported source text.", "user": "Retrieve the actual algebraic construction independently of storage paths and generic coefficient labels.", "organizational": "Separate structural hypotheses, source interpretation, proposed taxonomy and proof acceptance."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "2026-10-25-proposed", "date": "2026-10-25", "change": "Original local standard subject scope and proposed parent; no source move or proof acceptance."}]
proposal_refs: ["urn:uuid:ed21ffa1-e8ad-47ee-a485-d83441f4235f"]
decision_refs: []
---
# Field extension theory

[Parent subject](../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of commutative fields together with specified embeddings of base fields, intermediate fields, generated subfields, composita and compatible field maps.

## Scope

Keep the base embedding and common ambient field explicit. Finite-degree, algebraic, separable, normal and Galois extensions have distinct additional hypotheses; none is a default restriction. A finite list of intermediate fields need not have finite extension degree. Its compositum means the smallest intermediate field containing every listed field, not their union. Intersections, composita and comparison maps depend on the specified embeddings. Analytic and topological completions are separate constructions.

## Browse

Selected division criterion: specified construction data and retained hypotheses. No narrower records or disjoint partition are asserted here.

## Example and boundary

A finite prefix of intermediate fields has its join in the intermediate-field lattice; the empty prefix is the embedded base field. This says nothing about finite degree without further assumptions.

## Sources and review

[L47](../../../../standards/index.md) supplies a bounded terminology warrant. The [proposal](../../../../proposals/new-concepts/localization-field-extensions.md) retains alternatives and acceptance criteria. Original local prose by grwtsk contributors; proposed scope and parentage, with no independent review, novelty or proof acceptance.
