---
schema_version: "0.1.1"
id: "urn:uuid:6f508e89-44f2-4875-8635-8de1a6a1500e"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Regression theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-mathematical", "target": "urn:uuid:7d6d748a-f382-4862-bcd6-1eab3c4808c0", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L19", "L22"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:7d6d748a-f382-4862-bcd6-1eab3c4808c0"
facets: []
relations: []
sources: [{"key": "L19", "locator": "First-edition contents and the public abstracts for chapters 6, 9, 12 and 13; not a full-book audit."}, {"key": "L22", "locator": "NIST/SEMATECH handbook sections 4.1.4.1 and 4.4.3.1, linearity and least-squares criterion."}]
warrant: {"literary": "Established statistical subject with cited primary scope references; the precise local boundary and parentage need independent review.", "user": "Find statistical topics without using repository filenames or the current proof agenda as the subject baseline.", "organizational": "Keep model assumptions, inferential statements, software evidence and operational permission separate."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Original local subject description; candidate placement after source-only integration of 0.4."}]
proposal_refs: ["urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Regression theory

[Mathematical statistics](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The mathematical study of models and procedures relating a response to explanatory variables, including estimation and uncertainty for features of the response conditional on those variables.

## Scope

Conditional means are common targets, but other conditional features and response distributions also occur. Regression does not inherently establish causation, and prediction at new covariate values needs its own assumptions. Model specification, parameter identifiability, fitting criteria and numerical implementation are distinct questions. Linear regression is one selected model family, not the definition of all regression.

## Browse

Selected division criterion: Response-model family; the linear-in-parameters branch is selected, not exhaustive.

Selected narrower subjects: [Linear regression theory](../LinearModels/LinearRegression/index.md).

## Example and boundary

A model for a conditional mean and a prediction interval for a new response differ: the latter must account for response variation as well as uncertainty about the fitted mean.

## Sources and review

[L19, L22](../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
