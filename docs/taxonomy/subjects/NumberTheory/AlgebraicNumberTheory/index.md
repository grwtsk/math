---
schema_version: "0.1.1"
id: "urn:uuid:93696268-3f9f-4855-9288-1e9286ad4177"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Algebraic number theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-nt", "target": "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L29"], "rationale": "Specializes the parent subject to the stated arithmetic scope."}]
navigation_parent: "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c"
facets: []
relations: []
sources: [{"key": "L29", "locator": "Author v3.08 course outline: rings of integers, ideal factorization, class number, units and fields."}]
warrant: {"literary": "Established terminology with bounded literature warrants; precise local scope and placement need independent review.", "user": "Find arithmetic subjects independently of repository research priorities or implementations.", "organizational": "Keep subject, algorithm, theorem, evidence and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.7-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:b3592120-494d-41c9-a967-9dd0c8e653f0"]
decision_refs: ["D01", "D03", "D04", "D11"]
---
# Algebraic number theory

[Number theory](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of arithmetic through algebraic extensions of the rational numbers and related rings, ideals, valuations and field structures.

## Scope

Number fields and their rings of integers are central; local fields and other extensions provide further contexts requiring their own hypotheses. This is not all abstract algebra or all algebraic geometry. Ideal arithmetic and factorization of elements must not be conflated. Arithmetic invariants and algorithms that compute them require separate statements of their domains.

## Browse

Selected division criterion: Arithmetic setting; number-field theory is the selected setting branch.

Selected narrower setting: [Algebraic number field theory](NumberFields/index.md).

A separate algorithmic-perspective specialization is [Computational algebraic number theory](../ComputationalNumberTheory/AlgebraicNumberTheory/index.md). It is not another arithmetic setting in the preceding division.

## Example and boundary

An algebraic integer must satisfy a monic polynomial with integer coefficients. Being a root of an arbitrary integer polynomial alone does not impose that stronger condition.

## Sources and review

[L29](../../../standards/index.md) records the editions, inspection limits and rights. [Placement proposal](../../../proposals/new-concepts/number-theory.md) retains alternatives and acceptance criteria. These are original subject explanations, not new mathematical results. All parentage is proposed. Local implementation is unassessed, not absent; proof and source-specific attribution remain separate.
