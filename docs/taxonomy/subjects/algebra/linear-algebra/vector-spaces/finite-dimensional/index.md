---
schema_version: "0.1.1"
id: "urn:uuid:de7ef891-c454-4034-95fa-cbbcc277dbd9"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Finite-dimensional vector space theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-vectors", "type": "subjectSpecialization", "target": "urn:uuid:29dbd2d2-37a1-4cef-be3f-d8af8be15435", "origin": "direct", "status": "proposed", "sources": ["L44", "L46"], "rationale": "The subject restricts the structures or coefficient setting studied by Vector space theory (over fields). Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:29dbd2d2-37a1-4cef-be3f-d8af8be15435"
facets: []
relations: []
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L46", "locator": "Sheldon Axler, Linear Algebra Done Right fourth-edition author page: vector spaces, finite-dimensional operators, bases and matrices; author overview inspected, not full book."}]
warrant: {"literary": "Established subject terminology supported by the registered author, publisher and course sources; their inspected scope and conventions remain explicit.", "user": "Retrieve algebraic structure and scalar restrictions without depending on repository filenames.", "organizational": "Separate subject specialization, object equality, software artifacts, proof evidence and attribution."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Original local subject record with proposed parentage and explicit conventions."}]
proposal_refs: ["urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f"]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Finite-dimensional vector space theory

[Vector space theory (over fields)](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The theory of vector spaces with finite algebraic dimension over a specified commutative field and the linear maps between them.

## Scope

The zero-dimensional space is included. Finiteness refers to dimension, not necessarily to the number of vectors. Matrix representation uses selected ordered bases; it does not give a preferred basis. Rank-nullity is a finite-dimensional statement here, and diagonalization or a spectral theorem requires further hypotheses on the operator, field and any inner product. Analytic completeness and floating-point conditioning are separate questions.

## Browse

Selected division criterion: Further structural restrictions; none separately authored in this batch. No narrower canonical pages are authored here; this is not an assertion that narrower subjects are absent from mathematics.

## Example and boundary

The real vector space of polynomials of degree at most two has basis 1,t,t squared and dimension three, although it contains infinitely many vectors. Differentiation on it has rank two and a one-dimensional kernel.

## Sources and review

[L44, L46](../../../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
