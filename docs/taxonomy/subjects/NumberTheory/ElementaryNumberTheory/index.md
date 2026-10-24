---
schema_version: "0.1.1"
id: "urn:uuid:f0916dc0-8e7b-4a8f-9aa7-a0cdd6651fa0"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Elementary number theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-nt", "target": "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L27"], "rationale": "Specializes the parent subject to the stated arithmetic scope."}]
navigation_parent: "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c"
facets: []
relations: []
sources: [{"key": "L27", "locator": "Publisher edition and contents: divisibility, arithmetic functions, congruences and analytic number theory; metadata-only review."}]
warrant: {"literary": "Established terminology with bounded literature warrants; precise local scope and placement need independent review.", "user": "Find arithmetic subjects independently of repository research priorities or implementations.", "organizational": "Keep subject, algorithm, theorem, evidence and operational permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.7-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:b3592120-494d-41c9-a967-9dd0c8e653f0"]
decision_refs: ["D01", "D03", "D04", "D11"]
---
# Elementary number theory

[Number theory](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of integer arithmetic through divisibility, congruences and related arguments that do not require the general machinery of analytic or algebraic number theory.

## Scope

Elementary describes a mathematical approach, not a claim that every problem is easy, computationally cheap or settled. The local scope includes gcd arguments, integer factorization properties and modular arithmetic. A result with an elementary proof need not belong exclusively here; overlap with other branches is retained rather than resolved by a filename.

## Browse

Selected division criterion: Arithmetic problem family; only integer congruences receive a narrower page in this batch.

Selected narrower subjects: [Integer congruence theory](Congruences/index.md).

## Example and boundary

The Euclidean step gcd(30,18)=gcd(18,12) illustrates preservation of common divisors; it is not an assertion about every arithmetic algorithm.

## Sources and review

[L27](../../../standards/index.md) records the editions, inspection limits and rights. [Placement proposal](../../../proposals/new-concepts/number-theory.md) retains alternatives and acceptance criteria. These are original subject explanations, not new mathematical results. All parentage is proposed. Local implementation is unassessed, not absent; proof and source-specific attribution remain separate.
