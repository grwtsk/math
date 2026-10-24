---
schema_version: "0.1.1"
id: "urn:uuid:928a6590-e238-4c23-ba5d-2916d856807c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Finite field theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-fields", "type": "subjectSpecialization", "target": "urn:uuid:c67aebfc-2b99-44cd-b352-0d1da1eee8fe", "origin": "direct", "status": "proposed", "sources": ["L44", "L47", "L30"], "rationale": "The subject restricts the structures or coefficient setting studied by Field theory (commutative fields). Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:c67aebfc-2b99-44cd-b352-0d1da1eee8fe"
facets: []
relations: []
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L47", "locator": "J. S. Milne, Fields and Galois Theory author page: frozen notes v5.10 (2022), field extensions and distinct version-specific license statement; outline inspected."}, {"key": "L30", "locator": "Victor Shoup author page for A Computational Introduction to Number Theory and Algebra, second edition; previously registered bounded arithmetic/algebra warrant."}]
warrant: {"literary": "Established subject terminology supported by the registered author, publisher and course sources; their inspected scope and conventions remain explicit.", "user": "Retrieve algebraic structure and scalar restrictions without depending on repository filenames.", "organizational": "Separate subject specialization, object equality, software artifacts, proof evidence and attribution."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Original local subject record with proposed parentage and explicit conventions."}]
proposal_refs: ["urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f"]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Finite field theory

[Field theory (commutative fields)](../../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The theory of fields with finitely many elements, including their extensions, multiplicative structure, polynomial equations and automorphisms.

## Scope

Every finite field has prime-power cardinality p to the r, with p prime and r positive, and fixed cardinality determines its isomorphism class, not a chosen concrete encoding. The notation for a field of size p to the r does not identify it with the residue ring of integers modulo p to the r when r exceeds one. Algorithmic representations, coding applications and cryptographic claims require separate records or evidence.

## Browse

Selected division criterion: Characteristic or extension degree; no narrower pages authored here. No narrower canonical pages are authored here; this is not an assertion that narrower subjects are absent from mathematics.

## Example and boundary

The quotient of F2[t] by t squared plus t plus one is a field with four elements, because that quadratic has no root in F2. The ring of integers modulo four is not a field: the nonzero residue two has square zero. Their equal cardinalities do not identify their algebraic structures.

## Sources and review

[L44, L47, L30](../../../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
