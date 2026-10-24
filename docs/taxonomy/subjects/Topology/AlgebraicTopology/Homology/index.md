---
schema_version: "0.1.1"
id: "urn:uuid:0273582d-e292-4d10-bc99-30189c735a38"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Homology theory (topology)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-at", "target": "urn:uuid:488ac86e-75aa-43d0-a98d-17f305f6cad9", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L11"], "rationale": "Selects the homology family of topological invariants and its associated theory."}]
navigation_parent: "urn:uuid:488ac86e-75aa-43d0-a98d-17f305f6cad9"
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
# Homology theory (topology)

[Algebraic topology](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of homology invariants of spaces and pairs, their functorial and axiomatic properties, and concrete constructions for computing them.

## Scope

Ordinary simplicial, singular and cellular constructions require their own definitions and comparison theorems. Coefficients, reduced versus unreduced conventions, and relative pairs matter. Generalized homology theories require additional axiomatic and coefficient data; the elementary chain quotient is not asserted as a universal definition of every generalized theory. Homology is not homotopy or cohomology by another spelling.

## Browse

Selected division criterion: Homology construction or coefficient context. Browse [Simplicial homology theory](SimplicialHomology/index.md).

## Example and boundary

In an ordinary chain complex, a cycle represents the same homology class after adding a boundary. This quotient is not the group of all chains.

## Sources and review

[L11](../../../../standards/index.md) records exact locations, editions and access/rights limits. [Placement proposal](../../../../proposals/new-concepts/geometry-topology.md) retains alternatives and acceptance criteria. Parentage remains proposed. Repository implementation is unassessed, not absent. Passing source checks cannot establish mathematical equivalence, source attribution, a software verification result or independent review.
