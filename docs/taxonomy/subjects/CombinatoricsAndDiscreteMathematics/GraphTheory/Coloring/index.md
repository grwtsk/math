---
schema_version: 0.1.1
id: urn:uuid:4b44ded6-e5ca-43c6-b785-db103ed14cc9
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {"preferred": {"en": "Graph coloring theory"}, "alternative": {"en": ["Graph colouring theory"]}}
definition_section: Definition
scope_section: Scope
broader: [{"edge": "parent-graphs", "target": "urn:uuid:7a3f0995-b0b9-4b1b-9a97-00e9b7bb3baa", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L8"], "rationale": "Restricts graph-theoretic questions to constrained color assignments and their invariants."}]
navigation_parent: urn:uuid:7a3f0995-b0b9-4b1b-9a97-00e9b7bb3baa
facets: []
relations: []
sources: [{"key": "L8", "locator": "Sixth-edition preview: chapter 5 introduction, section 5.2 and exercise 19; graph conventions and subject breadth."}]
warrant: {"literary": "Established subject terminology supported by the cited primary author/publisher sources; scope and placement need independent review.", "user": "Find the subject independently of local implementations and storage names.", "organizational": "Keep discipline, object, method, source occurrence and proof status distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.3-pilot", "date": "2026-10-19", "change": "Original local subject record; proposed placement; no external dataset import."}]
proposal_refs: ["urn:uuid:4411692c-0d6e-47b0-a68b-67fffcca577d"]
decision_refs: ["D01", "D03", "D04", "D07"]
---
# Graph coloring theory

[Graph theory](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of assignments of colors to graph constituents subject to specified compatibility constraints, and of the existence, optimization and counting of such assignments.

## Scope

Vertex, edge, list and total coloring pose different constraints. Colors are labels, not physical pigments or presentation styles. A relation between edge coloring and vertex coloring of a constructed line graph requires that construction; it does not make the two input graphs identical. Variants need explicit qualifiers.

## Browse

Selected division criterion: Colored constituent and coloring constraint. Browse [Proper vertex-coloring theory (finite simple graphs)](FiniteSimpleVertexColoring/index.md).

## Example and boundary

Two incident edges must receive different colors in a proper edge coloring; two adjacent vertices must differ in a proper vertex coloring. These are different domains for the assignment.

## Sources and review

[L8](../../../../standards/index.md) records editions, inspected limits and source-specific rights. [Placement proposal](../../../../proposals/new-concepts/logic-algebra-discrete.md) retains alternatives and acceptance criteria. All parentage is proposed. Repository implementation is unassessed, not absent; source associations and exact proof evidence remain separate.
