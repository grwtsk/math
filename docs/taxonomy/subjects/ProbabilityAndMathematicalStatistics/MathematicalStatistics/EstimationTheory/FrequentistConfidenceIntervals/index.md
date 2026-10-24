---
schema_version: "0.1.1"
id: "urn:uuid:aa74905b-40b1-48a4-beaf-c67c506943c3"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Confidence interval theory (frequentist)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-estimation", "target": "urn:uuid:e6181efd-a05a-4131-b98e-e21751c60c34", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L21"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:e6181efd-a05a-4131-b98e-e21751c60c34"
facets: []
relations: []
sources: [{"key": "L21", "locator": "NIST/SEMATECH handbook sections 7.1.4 and 1.3.5.2, repeated-sampling coverage."}]
warrant: {"literary": "Established statistical subject with cited primary scope references; the precise local boundary and parentage need independent review.", "user": "Find statistical topics without using repository filenames or the current proof agenda as the subject baseline.", "organizational": "Keep model assumptions, inferential statements, software evidence and operational permission separate."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Original local subject description; candidate placement after source-only integration of 0.4."}]
proposal_refs: ["urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Confidence interval theory (frequentist)

[Statistical estimation theory](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of interval-valued data-dependent procedures with stated repeated-sampling coverage properties for an unknown scalar statistical target.

## Scope

Coverage is a property of the procedure under a model, not a posterior probability assigned to a fixed parameter after the interval is observed. Exact finite-sample coverage, conservative coverage and asymptotic coverage are different guarantees. Bayesian credible intervals, prediction intervals for future observations, and tolerance intervals have distinct targets or interpretations and are not aliases of this concept.

## Browse

Selected division criterion: Coverage regime and target model; no narrower canonical records are authored in this batch.

No narrower canonical pages are authored here yet. This is not an assertion that narrower subjects do not exist.

## Example and boundary

Writing P_theta(theta in C(X)) >= 1-alpha for each allowed theta specifies a coverage requirement. It does not assign a probability distribution to theta, and a narrow interval alone does not establish that requirement.

## Sources and review

[L21](../../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
