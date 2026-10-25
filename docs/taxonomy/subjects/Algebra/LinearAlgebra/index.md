---
schema_version: "0.1.1"
id: "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Linear algebra"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-algebra", "type": "subjectSpecialization", "target": "urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a", "origin": "direct", "status": "proposed", "sources": ["L44", "L46"], "rationale": "The subject restricts the structures or coefficient setting studied by Algebra. Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a"
facets: []
relations: []
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L46", "locator": "Sheldon Axler, Linear Algebra Done Right fourth-edition author page: vector spaces, finite-dimensional operators, bases and matrices; author overview inspected, not full book."}]
warrant: {"literary": "Established subject terminology supported by the registered author, publisher and course sources; their inspected scope and conventions remain explicit.", "user": "Retrieve algebraic structure and scalar restrictions without depending on repository filenames.", "organizational": "Separate subject specialization, object equality, software artifacts, proof evidence and attribution."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Original local subject record with proposed parentage and explicit conventions."}, {"version": "2026-10-25-form-navigation", "date": "2026-10-25", "change": "Add proposed bilinear/quadratic form browse link; preserve definition and scope."}]
proposal_refs: ["urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f", "urn:uuid:9302bac7-b930-46d0-a980-1fd4b95f1d25"]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Linear algebra

[Algebra](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of vector spaces and linear maps, including coordinate representations, linear equations and additional algebraic structures such as bilinear forms.

## Scope

The default scalar system here is a specified commutative field. Both finite-dimensional and algebraic infinite-dimensional settings belong to the subject, but a norm, topology, inner product or numerical error model is additional structure. Methods for floating-point computation are not the definition of linear algebra. Results stated for real or complex scalars in one reference must not be transferred to arbitrary characteristic without checking their hypotheses.

## Browse

Selected division criterion: Principal object of study. Browse [Vector space theory (over fields)](VectorSpaces/index.md), [Matrix theory (over fields)](MatrixTheory/index.md), [Bilinear and quadratic form theory](BilinearAndQuadraticForms/index.md).

## Example and boundary

For a field F, the map from F squared to F sending (x,y) to x+y is linear; adding a nonzero constant makes it affine rather than linear. Matrix entries require chosen bases, whereas the linear map itself does not.

## Placement and conventions

A vector space over a field is also a unital module over that field. This object-level relationship warrants a proposed subject specialization below, not a Lean coercion or a blanket identification of linear algebra with module theory.

## Sources and review

[L44, L46](../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
