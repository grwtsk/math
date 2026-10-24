---
schema_version: 0.1.1
id: urn:uuid:eee0910c-24a7-431f-86f9-4bec6ef9a60f
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {"preferred": {"en": "Proper vertex-coloring theory (finite simple graphs)"}, "alternative": {"en": ["Proper vertex-colouring theory (finite simple graphs)"]}}
definition_section: Definition
scope_section: Scope
broader: [{"edge": "parent-coloring", "target": "urn:uuid:4b44ded6-e5ca-43c6-b785-db103ed14cc9", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L8"], "rationale": "Selects vertices as the assignment domain, proper adjacency constraints and finite simple input graphs."}]
navigation_parent: urn:uuid:4b44ded6-e5ca-43c6-b785-db103ed14cc9
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
# Proper vertex-coloring theory (finite simple graphs)

[Graph coloring theory](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of maps from the vertices of a finite undirected simple graph to a color set such that adjacent vertices receive different colors.

## Scope

Simple means no loops or multiple edges. Existence with a specified number of available colors, minimizing that number and counting assignments are separate questions within the scope. Edge coloring, prescribed-list coloring and infinite-cardinal coloring are not silently included in this qualified record. An unused color is allowed unless surjectivity is separately required.

## Browse

Selected division criterion: Aspect of proper coloring; the pilot selects counting by available palette size. Browse [Chromatic polynomial theory (finite simple graphs)](ChromaticPolynomials/index.md).

## Example and boundary

On a three-vertex complete graph, all three vertices must have distinct colors. This elementary example does not establish a coloring bound for arbitrary graph classes.

## Sources and review

[L8](../../../../../standards/index.md) records editions, inspected limits and source-specific rights. [Placement proposal](../../../../../proposals/new-concepts/logic-algebra-discrete.md) retains alternatives and acceptance criteria. All parentage is proposed. Repository implementation is unassessed, not absent; source associations and exact proof evidence remain separate.
