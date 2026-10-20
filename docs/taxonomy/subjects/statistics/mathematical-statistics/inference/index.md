---
schema_version: "0.1.1"
id: "urn:uuid:ed407ce1-0ca3-4929-9433-7a0967b3f3dc"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Statistical inference theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-mathematical", "target": "urn:uuid:7d6d748a-f382-4862-bcd6-1eab3c4808c0", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L19"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:7d6d748a-f382-4862-bcd6-1eab3c4808c0"
facets: []
relations: []
sources: [{"key": "L19", "locator": "First-edition contents and the public abstracts for chapters 6, 9, 12 and 13; not a full-book audit."}]
warrant: {"literary": "Established statistical subject with cited primary scope references; the precise local boundary and parentage need independent review.", "user": "Find statistical topics without using repository filenames or the current proof agenda as the subject baseline.", "organizational": "Keep model assumptions, inferential statements, software evidence and operational permission separate."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Original local subject description; candidate placement after source-only integration of 0.4."}]
proposal_refs: ["urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Statistical inference theory

[Mathematical statistics](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The mathematical theory of learning about unknown distributions, parameters or other population features from observed data under explicit statistical assumptions.

## Scope

The record covers construction and evaluation of inferential procedures, not just calculation of descriptive summaries. Estimation and hypothesis testing are selected branches, not an exhaustive list. Frequentist and Bayesian interpretations must retain their own probability statements and assumptions; neither is silently made the universal meaning of inference. Causal identification needs assumptions beyond a fitted observational association.

## Browse

Selected division criterion: Inferential task, including estimation and testing; additional tasks and frameworks remain unpopulated.

Selected narrower subjects: [Statistical estimation theory](estimation/index.md) · [Statistical hypothesis testing theory](hypothesis-testing/index.md).

## Example and boundary

The sample and the inferential target are different objects: a realized list of observations can inform a population quantity without being that quantity.

## Sources and review

[L19](../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
