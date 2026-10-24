---
schema_version: "0.1.1"
id: "urn:uuid:4af35b29-a93b-4113-b480-84b9d963846d"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Computational simplicial homology (finite complexes over prime fields)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-simp", "target": "urn:uuid:09ee87c8-34bb-4519-96ed-dbf8ea260c88", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L11", "L16", "L17"], "rationale": "Restricts simplicial homology to a finite, explicitly encoded prime-field computation problem."}, {"edge": "parent-ct", "target": "urn:uuid:73ef9d25-86ae-4bde-88a8-da55dc2a2fa5", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L11", "L16", "L17"], "rationale": "Studies exact algorithms for this specified topological invariant, not merely an incidental application of a method."}]
navigation_parent: "urn:uuid:09ee87c8-34bb-4519-96ed-dbf8ea260c88"
facets: []
relations: []
sources: [{"key": "L11", "locator": "Author contents and chapter 2, section 2.1, including printed page 106; topological homotopy and ordinary homology conventions."}, {"key": "L16", "locator": "Author institutional book record: AMS 2010; published description of topology, algorithms and persistence; full book not audited."}, {"key": "L17", "locator": "Version 3.13.0 SimplexTree reference, representation, betti_numbers and compute_persistence coefficient/output restrictions."}]
warrant: {"literary": "Established mathematical usage supported by the cited primary sources; depth of inspection and remaining review are explicit.", "user": "Find the subject independently of repository storage or implementation.", "organizational": "Keep subject identity, computational method, software artifact and proof status distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.4-pilot", "date": "2026-10-19", "change": "Original local subject description and proposed parentage; no external data import."}]
proposal_refs: ["urn:uuid:d53e7304-a343-4241-be9f-9de4b2ad913c"]
decision_refs: ["D01", "D03", "D04", "D08"]
---
# Computational simplicial homology (finite complexes over prime fields)

[Simplicial homology theory](../index.md) · [Computational topology](../../../../ComputationalTopology/index.md) · [Subjects](../../../../../index.md) · [Taxonomy](../../../../../../index.md)

## Definition

The study of exact algorithms for ordinary simplicial homology of explicitly given finite abstract simplicial complexes with coefficients in a specified prime field F_p.

## Scope

The integer p must be prime. A total vertex ordering fixes compatible simplex orientations; the input includes every required face. With boundary matrices D_n over F_p satisfying D_n D_(n+1) = 0, the dimension of unreduced H_n is the number of n-simplices minus rank(D_n) minus rank(D_(n+1)), with D_0 = 0. Composite-modulus arithmetic, integral torsion, infinite inputs and inference from sampled spaces require different contracts. Library prime-size limits and omitted top-dimensional output are implementation details, not restrictions of the mathematical definition.

## Browse

Selected division criterion: Algorithm, output certificate or restricted complex family. No narrower canonical pages are authored here yet; this does not assert that no narrower subjects exist.

## Example and boundary

For the unfilled triangle over F_2, D_1 has rank two and no two-simplex is present, so dim H_1 = 3 - 2 - 0 = 1. Adding the face makes D_2 have rank one and gives dim H_1 = 3 - 2 - 1 = 0. This exact illustrative calculation is not a Lean replay or a new theorem.

## Why two parents

The restricted homology construction and its exact algorithmic study are both essential to this subject. Both parent routes reach this single record; the canonical home under simplicial homology is not exclusive ownership. An alias would erase the restriction, an object facet would not describe the subject, and a crosswalk cannot supply within-scheme parentage. The proposal retains a one-parent-plus-related-link alternative for independent review.

## Sources and review

[L11, L16, L17](../../../../../../standards/index.md) records exact locations, editions and access/rights limits. [Placement proposal](../../../../../../proposals/new-concepts/geometry-topology.md) retains alternatives and acceptance criteria. Parentage remains proposed. Repository implementation is unassessed, not absent. Passing source checks cannot establish mathematical equivalence, source attribution, a software verification result or independent review.
