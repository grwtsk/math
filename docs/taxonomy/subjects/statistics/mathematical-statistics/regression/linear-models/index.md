---
schema_version: "0.1.1"
id: "urn:uuid:806e39ed-f9b9-434e-83cd-6cd1152568fa"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Linear regression theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-regression", "target": "urn:uuid:6f508e89-44f2-4875-8635-8de1a6a1500e", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L22"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:6f508e89-44f2-4875-8635-8de1a6a1500e"
facets: []
relations: []
sources: [{"key": "L22", "locator": "NIST/SEMATECH handbook sections 4.1.4.1 and 4.4.3.1, linearity and least-squares criterion."}]
warrant: {"literary": "Established statistical subject with cited primary scope references; the precise local boundary and parentage need independent review.", "user": "Find statistical topics without using repository filenames or the current proof agenda as the subject baseline.", "organizational": "Keep model assumptions, inferential statements, software evidence and operational permission separate."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Original local subject description; candidate placement after source-only integration of 0.4."}]
proposal_refs: ["urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Linear regression theory

[Regression theory](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of regression models whose specified mean is linear in the unknown coefficients, and of their identifiability, estimation and inferential properties.

## Scope

Linearity concerns coefficients, not necessarily the observed covariates: prescribed polynomial or other basis functions can be columns of a design matrix. Rank-deficient designs, random designs, unequal variances and correlated errors need explicit treatment. Ordinary least squares, weighted fitting and regularized fitting are different procedures, not synonyms for the model family. Gaussian errors are an additional distributional assumption.

## Browse

Selected division criterion: Design and estimation problem; the selected child fixes a full-rank deterministic design and ordinary least squares.

Selected narrower subjects: [Least-squares estimation theory (fixed-design full-rank linear models)](../../inference/estimation/point-estimation/linear-least-squares/index.md).

## Example and boundary

A design with two identical columns cannot separately identify both corresponding coefficients from the mean vector. Renaming the columns or obtaining a small residual does not restore full rank.

## Sources and review

[L22](../../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
