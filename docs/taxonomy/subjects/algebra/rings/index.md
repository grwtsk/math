---
schema_version: "0.1.1"
id: "urn:uuid:6cc2d458-3117-48eb-ae4f-76ed9166720e"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Ring theory (associative unital)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-algebra", "type": "subjectSpecialization", "target": "urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a", "origin": "direct", "status": "proposed", "sources": ["L44", "L48"], "rationale": "The subject restricts the structures or coefficient setting studied by Algebra. Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a"
facets: []
relations: []
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L48", "locator": "Pavel Etingof, Rings, Ideals, and Modules resource in MIT 18.706 Spring 2023: author/title and noncommutative-course placement; resource metadata inspected, not lecture PDF."}]
warrant: {"literary": "Established subject terminology supported by the registered author, publisher and course sources; their inspected scope and conventions remain explicit.", "user": "Retrieve algebraic structure and scalar restrictions without depending on repository filenames.", "organizational": "Separate subject specialization, object equality, software artifacts, proof evidence and attribution."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Original local subject record with proposed parentage and explicit conventions."}]
proposal_refs: ["urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f"]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Ring theory (associative unital)

[Algebra](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of associative rings with a multiplicative identity, their ideals, homomorphisms and structural properties, without assuming that multiplication is commutative.

## Scope

This canonical record uses unital ring maps and permits the zero ring. Whether a source requires a nonzero identity or allows nonunital rings must be recorded, not normalized away. Left, right and two-sided ideals need not coincide. Commutative rings form a narrower subject; a field requires a nonzero commutative ring in which every nonzero element is invertible. Nonassociative algebras and rings without identity require explicitly qualified extensions.

## Browse

Selected division criterion: Commutativity of multiplication. Browse [Commutative algebra](commutative/index.md).

## Example and boundary

For matrix units over any field, E12 E21 equals E11 while E21 E12 equals E22 in two-by-two matrices. These unequal products show why associative and unital do not imply commutative.

## Placement and conventions

The Stacks Project chapter registered as L45 uses ring to mean commutative ring with identity. That chapter-specific convention is not imported into the broader ring-theory record. Neither terminology choice is described as a universal convention.

## Sources and review

[L44, L48](../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
