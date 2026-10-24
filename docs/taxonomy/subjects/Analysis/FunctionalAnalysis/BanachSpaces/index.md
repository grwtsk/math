---
schema_version: "0.1.1"
id: "urn:uuid:57ce1c47-e2c8-4b8d-8ed3-675cca62c991"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Banach space theory (real or complex)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-functional", "type": "subjectSpecialization", "target": "urn:uuid:b047b4e6-ba8c-4feb-bbb2-4241fca7b116", "origin": "direct", "status": "proposed", "sources": ["L49", "L50"], "rationale": "The subject specializes Functional analysis by its analytic structure or domain; placement remains proposed."}]
navigation_parent: "urn:uuid:b047b4e6-ba8c-4feb-bbb2-4241fca7b116"
facets: []
relations: []
sources: [{"key": "L49", "locator": "Registered inspection scope; see source register."}, {"key": "L50", "locator": "Registered inspection scope; see source register."}]
warrant: {"literary": "Established subject; bounded sources below.", "user": "Retrieve analytic structures and explicit hypotheses.", "organizational": "Separate subjects from source artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.11-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:a2ba1baa-9bc0-4c26-81cf-f964a90e9634"]
decision_refs: ["D01", "D03", "D04", "D15"]
---
# Banach space theory (real or complex)

[Functional analysis](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of complete normed vector spaces over the real or complex numbers, their bounded linear maps and their normed and dual-space structure.

## Scope

Completeness refers to the given norm, not merely to the existence of another topology. Finite-dimensional cases are included. A norm does not necessarily arise from an inner product; weak and norm convergence are different. Completeness of a space must not be inferred from completeness of its scalar field alone.

## Browse

Selected division criterion: Additional structure or function-space family. Browse [Hilbert space theory (real or complex)](../HilbertSpaces/index.md), [Lp space theory (1 <= p <= infinity)](../../FunctionSpaces/LebesgueSpaces/LpSpaces/index.md).

## Example and boundary

The space of finitely supported real sequences with the l2 norm is not complete: truncations of (2^(-n)) for n at least one are Cauchy but have no finitely supported limit. Completion changes the space rather than proving that the original space was already complete.

## Sources and review

[L49, L50](../../../../standards/index.md) records editions, inspection limits and rights. [The placement proposal](../../../../proposals/new-concepts/analysis-measure-fourier.md) retains alternatives and review criteria. Repository implementation is unassessed, not absent. This subject record is neither a new mathematical result nor proof, authorship or execution approval.
