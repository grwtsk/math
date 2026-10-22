---
schema_version: "0.1.1"
id: "urn:uuid:29dbd2d2-37a1-4cef-be3f-d8af8be15435"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Vector space theory (over fields)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-linear", "type": "subjectSpecialization", "target": "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c", "origin": "direct", "status": "proposed", "sources": ["L44", "L46", "L48"], "rationale": "The subject restricts the structures or coefficient setting studied by Linear algebra. Placement is proposed and does not assert a coercion or theorem implication."}, {"edge": "parent-modules", "type": "subjectSpecialization", "target": "urn:uuid:ff723b28-76df-464e-881a-aa717626f6c2", "origin": "direct", "status": "proposed", "sources": ["L44", "L46", "L48"], "rationale": "The subject restricts the structures or coefficient setting studied by Module theory (unital modules). Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c"
facets: []
relations: []
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L46", "locator": "Sheldon Axler, Linear Algebra Done Right fourth-edition author page: vector spaces, finite-dimensional operators, bases and matrices; author overview inspected, not full book."}, {"key": "L48", "locator": "Pavel Etingof, Rings, Ideals, and Modules resource in MIT 18.706 Spring 2023: author/title and noncommutative-course placement; resource metadata inspected, not lecture PDF."}]
warrant: {"literary": "Established subject terminology supported by the registered author, publisher and course sources; their inspected scope and conventions remain explicit.", "user": "Retrieve algebraic structure and scalar restrictions without depending on repository filenames.", "organizational": "Separate subject specialization, object equality, software artifacts, proof evidence and attribution."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Original local subject record with proposed parentage and explicit conventions."}]
proposal_refs: ["urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f"]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Vector space theory (over fields)

[Linear algebra](../index.md) · [Module theory (unital modules)](../../modules/index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The structural study of vector spaces over specified commutative fields, emphasizing subspaces, spanning, linear independence, bases, quotients and changes of scalars.

## Scope

A field and its scalar action are part of the data. Finite and infinite dimension are distinguished. No canonical basis, inner product or topology is supplied by the vector-space axioms. General basis-existence assertions in infinite dimension retain their foundational assumptions; this record makes no choice-free basis theorem. Modules over arbitrary rings and spaces over noncommutative division rings require their own conventions rather than being silently treated as this scope.

## Browse

Selected division criterion: Finiteness of algebraic dimension. Browse [Finite-dimensional vector space theory](finite-dimensional/index.md).

## Example and boundary

The field of complex numbers is one-dimensional over itself and two-dimensional over the real numbers. Changing the scalar field changes the dimension question without changing the underlying set.

## Placement and conventions

Both linear-algebra and module-theory browsing reach this single page. Restricting the coefficient ring to a commutative field is an intrinsic structural restriction, not merely using an algebraic method. Collapsing this narrower record into the broader linear-algebra subject remains a review alternative.

## Sources and review

[L44, L46, L48](../../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
