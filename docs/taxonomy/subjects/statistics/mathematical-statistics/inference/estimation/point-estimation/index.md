---
schema_version: "0.1.1"
id: "urn:uuid:d26248fa-96a1-45b7-8a99-4e77a5600f05"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Point estimation theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-estimation", "target": "urn:uuid:e6181efd-a05a-4131-b98e-e21751c60c34", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L19"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:e6181efd-a05a-4131-b98e-e21751c60c34"
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
# Point estimation theory

[Statistical estimation theory](../index.md) · [Subjects](../../../../../index.md) · [Taxonomy](../../../../../../index.md)

## Definition

The study of data-dependent procedures that return one value in a specified target space as an estimate of an unknown statistical quantity.

## Scope

The value may be a vector or function rather than a single real number. Bias, risk, consistency and efficiency refer to a specified model, loss and sampling regime. They are not interchangeable optimality claims. An estimator is the rule before observing data; an estimate is its realized output. A rule that is unbiased need not minimize every loss.

## Browse

Selected division criterion: Point-estimation problem by model and target; the selected child studies ordinary least squares in a restricted linear model.

Selected narrower subjects: [Least-squares estimation theory (fixed-design full-rank linear models)](linear-least-squares/index.md).

## Example and boundary

For independent observations with common finite mean and variance, linearity of expectation makes the sample average unbiased for that mean. This conditional observation says nothing about a different target or a dependent sampling model.

## Sources and review

[L19](../../../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
