---
schema_version: "0.1.1"
id: "urn:uuid:89a513d7-fdd5-45fd-b670-021162b26a1c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Matrix theory (over fields)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-linear", "type": "subjectSpecialization", "target": "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c", "origin": "direct", "status": "proposed", "sources": ["L44", "L46"], "rationale": "The subject restricts the structures or coefficient setting studied by Linear algebra. Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:509be9db-5515-4b74-8ce8-b357def3cc4c"
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
# Matrix theory (over fields)

[Linear algebra](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The algebraic study of finite rectangular and square matrices over specified commutative fields, including rank, linear systems, determinants and canonical-form questions.

## Scope

The dimensions and coefficient field are explicit; products are defined only for compatible sizes. Eigenvalues and similarity concern square matrices, while left-right equivalence allows separate row and column changes of basis. A change of basis for one endomorphism is not the same relation as arbitrary row and column operations. Matrices over rings, infinite matrices, numerical approximation and matrices equipped with special analytic structure need additional scope.

## Browse

Selected division criterion: Shape or structural constraint; no narrower pages authored here. No narrower canonical pages are authored here; this is not an assertion that narrower subjects are absent from mathematics.

## Example and boundary

Over the real numbers, the one-by-one matrices (1) and (2) have equal rank and are left-right equivalent, but they are not similar. Their distinction prevents a rank classification from being promoted to a similarity classification.

## Sources and review

[L44, L46](../../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
