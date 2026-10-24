---
schema_version: "0.1.1"
id: "urn:uuid:09ee87c8-34bb-4519-96ed-dbf8ea260c88"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Simplicial homology theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-hom", "target": "urn:uuid:0273582d-e292-4d10-bc99-30189c735a38", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L11"], "rationale": "Uses the simplicial chain construction for ordinary topological homology."}]
navigation_parent: "urn:uuid:0273582d-e292-4d10-bc99-30189c735a38"
facets: []
relations: []
sources: [{"key": "L11", "locator": "Author contents and chapter 2, section 2.1, including printed page 106; topological homotopy and ordinary homology conventions."}]
warrant: {"literary": "Established mathematical usage supported by the cited primary sources; depth of inspection and remaining review are explicit.", "user": "Find the subject independently of repository storage or implementation.", "organizational": "Keep subject identity, computational method, software artifact and proof status distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.4-pilot", "date": "2026-10-19", "change": "Original local subject description and proposed parentage; no external data import."}]
proposal_refs: ["urn:uuid:d53e7304-a343-4241-be9f-9de4b2ad913c"]
decision_refs: ["D01", "D03", "D04", "D08"]
---
# Simplicial homology theory

[Homology theory (topology)](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of homology formed from simplicial chains and their boundary maps, with explicit choices of simplicial object, coefficients and augmentation convention.

## Scope

For an abstract simplicial complex, simplices are finite vertex sets closed under taking nonempty subsets. This is distinct from a general delta-complex or simplicial set; comparison requires the appropriate construction. Infinite complexes are not excluded from the general subject, while the computational child below is explicitly finite. Over ordinary coefficients, homology in degree n is the kernel of the boundary map modulo the image in that degree.

## Browse

Selected division criterion: Simplicial input class or coefficient setting. Browse [Computational simplicial homology (finite complexes over prime fields)](FinitePrimeFieldComputation/index.md).

## Example and boundary

The three edges bounding a triangle and the filled triangle are different complexes: inserting the two-simplex adds a boundary that can eliminate the edge cycle.

## Sources and review

[L11](../../../../../standards/index.md) records exact locations, editions and access/rights limits. [Placement proposal](../../../../../proposals/new-concepts/geometry-topology.md) retains alternatives and acceptance criteria. Parentage remains proposed. Repository implementation is unassessed, not absent. Passing source checks cannot establish mathematical equivalence, source attribution, a software verification result or independent review.
