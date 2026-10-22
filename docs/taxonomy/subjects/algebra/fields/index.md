---
schema_version: "0.1.1"
id: "urn:uuid:c67aebfc-2b99-44cd-b352-0d1da1eee8fe"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Field theory (commutative fields)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-algebra", "type": "subjectSpecialization", "target": "urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a", "origin": "direct", "status": "proposed", "sources": ["L44", "L47"], "rationale": "The subject restricts the structures or coefficient setting studied by Algebra. Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a"
facets: []
relations: []
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L47", "locator": "J. S. Milne, Fields and Galois Theory author page: frozen notes v5.10 (2022), field extensions and distinct version-specific license statement; outline inspected."}]
warrant: {"literary": "Established subject terminology supported by the registered author, publisher and course sources; their inspected scope and conventions remain explicit.", "user": "Retrieve algebraic structure and scalar restrictions without depending on repository filenames.", "organizational": "Separate subject specialization, object equality, software artifacts, proof evidence and attribution."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Original local subject record with proposed parentage and explicit conventions."}]
proposal_refs: ["urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f"]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Field theory (commutative fields)

[Algebra](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of commutative fields and their extensions, including characteristic, algebraic and transcendental elements, splitting, separability and automorphisms.

## Scope

A field has distinct zero and identity elements and every nonzero element has an inverse. Noncommutative division rings are not silently included under the local preferred label. An extension retains the embedding of the base field. Algebraic, finite-degree, separable, normal and Galois extensions impose distinct conditions. A field-theory topic is not a physical field theory. Its placement directly under algebra avoids treating applications as automatic subtype edges.

## Browse

Selected division criterion: Cardinality of the underlying field. Browse [Finite field theory](finite-fields/index.md).

## Example and boundary

The rational function t in F(t) is transcendental over F, while the class of t in F[t]/(f) is algebraic when f is irreducible of positive degree. The quotient is a field only under the needed irreducibility assumption.

## Sources and review

[L44, L47](../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
