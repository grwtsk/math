---
schema_version: "0.1.1"
id: "urn:uuid:37973241-e8ba-4a2f-a597-529739204d6f"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Computational number theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-nt", "target": "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L30", "L31"], "rationale": "Specializes the parent subject to the stated arithmetic scope."}]
navigation_parent: "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c"
facets: []
relations: []
sources: [{"key": "L30", "locator": "Author second-edition description and dated download/errata listing; full book not inspected."}, {"key": "L31", "locator": "Author abstract of 1992 algorithmic algebraic-number-theory survey: explicit number-field computations."}]
warrant: {"literary": "Established terminology with bounded literature warrants; precise local scope and placement need independent review.", "user": "Find arithmetic subjects independently of repository research priorities or implementations.", "organizational": "Keep subject, algorithm, theorem, evidence and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.7-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:b3592120-494d-41c9-a967-9dd0c8e653f0"]
decision_refs: ["D01", "D03", "D04", "D11"]
---
# Computational number theory

[Number theory](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of algorithms for arithmetic problems, including their mathematical correctness, input representations, complexity and explicit outputs.

## Scope

The field includes integer and algebraic-number computations. Deterministic, probabilistic and conditional guarantees remain distinct, and runtime must be related to an explicit input-size model. Numerical experimentation can motivate statements but does not certify unrestricted theorems. Operational scheduling, agent execution permissions and successful parsing are not number-theoretic results.

## Browse

Selected division criterion: Arithmetic input and output problem family; primality and algebraic-number computations are selected.

Selected narrower subjects: [Primality testing theory](primality-testing/index.md), [Computational algebraic number theory](algebraic-number-theory/index.md).

## Example and boundary

An algorithm using O(n) trial steps can be exponential in the number of bits used to write n. Arithmetic operation counts and bit complexity therefore need separate interpretation.

## Sources and review

[L30, L31](../../../standards/index.md) records the editions, inspection limits and rights. [Placement proposal](../../../proposals/new-concepts/number-theory.md) retains alternatives and acceptance criteria. These are original subject explanations, not new mathematical results. All parentage is proposed. Local implementation is unassessed, not absent; proof and source-specific attribution remain separate.
