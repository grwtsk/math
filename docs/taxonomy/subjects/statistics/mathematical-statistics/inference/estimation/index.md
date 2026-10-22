---
schema_version: "0.1.1"
id: "urn:uuid:e6181efd-a05a-4131-b98e-e21751c60c34"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Statistical estimation theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-inference", "target": "urn:uuid:ed407ce1-0ca3-4929-9433-7a0967b3f3dc", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L19", "L21"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:ed407ce1-0ca3-4929-9433-7a0967b3f3dc"
facets: []
relations: []
sources: [{"key": "L19", "locator": "First-edition contents and the public abstracts for chapters 6, 9, 12 and 13; not a full-book audit."}, {"key": "L21", "locator": "NIST/SEMATECH handbook sections 7.1.4 and 1.3.5.2, repeated-sampling coverage."}]
warrant: {"literary": "Established statistical subject with cited primary scope references; the precise local boundary and parentage need independent review.", "user": "Find statistical topics without using repository filenames or the current proof agenda as the subject baseline.", "organizational": "Keep model assumptions, inferential statements, software evidence and operational permission separate."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Original local subject description; candidate placement after source-only integration of 0.4."}]
proposal_refs: ["urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Statistical estimation theory

[Statistical inference theory](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of procedures that use data to estimate unknown statistical targets, and of the error and uncertainty attached to those procedures.

## Scope

Targets can be scalar parameters, vectors, functions or other features of a statistical model. The target, information available to a procedure, and criterion used to evaluate it must be specified. A numerical optimization problem is not automatically statistical estimation: it needs a statistical target and interpretation. Point estimation and interval estimation answer different questions.

## Browse

Selected division criterion: Form of estimated output: a point or a confidence interval in the selected children; functional and other outputs remain in scope.

Selected narrower subjects: [Point estimation theory](point-estimation/index.md) · [Confidence interval theory (frequentist)](confidence-intervals/index.md).

## Example and boundary

For observations from a model with an unknown mean, the sample average is an estimator; a realized value is an estimate. Attaching a confidence procedure is an additional construction, not merely extra printed digits.

## Sources and review

[L19, L21](../../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
