---
schema_version: 0.1.1
id: urn:uuid:1f0d03cb-9777-4213-ac8c-b5d04a6d46ee
record_kind: subject_concept
scheme: grwtsk-mathematics
labels: {"preferred": {"en": "Chromatic polynomial theory (finite simple graphs)"}, "alternative": {"en": []}}
definition_section: Definition
scope_section: Scope
broader: [{"edge": "parent-vertex-coloring", "target": "urn:uuid:eee0910c-24a7-431f-86f9-4bec6ef9a60f", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L8", "L9"], "rationale": "Selects the palette-size counting polynomial within finite proper vertex-coloring questions."}, {"edge": "parent-enumerative", "target": "urn:uuid:fb73471d-d70b-4551-8879-248eb57489d6", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L8", "L9"], "rationale": "Counts the specified graph-coloring assignments and studies their counting polynomial."}]
navigation_parent: urn:uuid:eee0910c-24a7-431f-86f9-4bec6ef9a60f
facets: []
relations: []
sources: [{"key": "L8", "locator": "Sixth-edition preview: chapter 5 introduction, section 5.2 and exercise 19; graph conventions and subject breadth."}, {"key": "L9", "locator": "Volume 1, second edition: author edition record and publisher description of enumerative scope."}]
warrant: {"literary": "Established subject terminology supported by the cited primary author/publisher sources; scope and placement need independent review.", "user": "Find the subject independently of local implementations and storage names.", "organizational": "Keep discipline, object, method, source occurrence and proof status distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.3-pilot", "date": "2026-10-19", "change": "Original local subject record; proposed placement; no external dataset import."}]
proposal_refs: ["urn:uuid:4411692c-0d6e-47b0-a68b-67fffcca577d"]
decision_refs: ["D01", "D03", "D04", "D07"]
---
# Chromatic polynomial theory (finite simple graphs)

[Proper vertex-coloring theory (finite simple graphs)](../index.md) · [Enumerative combinatorics](../../../../EnumerativeCombinatorics/index.md) · [Subjects](../../../../../index.md) · [Taxonomy](../../../../../../index.md)

## Definition

The study of the polynomial associated with a finite simple graph whose value at a nonnegative integer k counts its proper vertex colorings from a fixed palette of k labeled colors.

## Scope

The graph is finite, undirected and simple. Colorings differing by a permutation of the palette are counted separately, as are distinct assignments related by graph automorphisms. The polynomial is not the chromatic number; equal chromatic polynomials do not themselves identify graphs. Generalized graph polynomials and list-color functions need their own definitions.

## Browse

Selected division criterion: Polynomial invariant or graph-family question; narrower records remain unpopulated. No narrower canonical pages are authored here yet; that is not a claim that no narrower subjects exist.

## Example and boundary

For a three-vertex complete graph the count is k(k-1)(k-2): choose three distinct palette entries in vertex order. This explains the counting convention without claiming a new theorem or a kernel-checked result.

## Why two parents

The same question concerns proper vertex assignments and enumeration of a defined combinatorial family. It is therefore proposed as a specialization of both parents, not as an application-of-method shortcut. Both browsing paths lead to this page, whose home is the coloring branch. No binary crosswalk, coercion or equality of objects is inferred.

## Sources and review

[L8, L9](../../../../../../standards/index.md) records editions, inspected limits and source-specific rights. [Placement proposal](../../../../../../proposals/new-concepts/logic-algebra-discrete.md) retains alternatives and acceptance criteria. All parentage is proposed. Repository implementation is unassessed, not absent; source associations and exact proof evidence remain separate.
