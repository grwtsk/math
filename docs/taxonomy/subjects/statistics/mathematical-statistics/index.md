---
schema_version: "0.1.1"
id: "urn:uuid:7d6d748a-f382-4862-bcd6-1eab3c4808c0"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Mathematical statistics"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-statistics", "target": "urn:uuid:12048078-5b03-49fb-8166-03585462a8dd", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L19"], "rationale": "Restricts the parent subject to the statistical questions defined on this page."}]
navigation_parent: "urn:uuid:12048078-5b03-49fb-8166-03585462a8dd"
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
# Mathematical statistics

[Statistics](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The mathematical study of statistical models and procedures, including their assumptions, identifiability, uncertainty, error and performance under specified data-generating conditions.

## Scope

Finite-sample and asymptotic theories, parametric and nonparametric models, and different inferential frameworks belong here. This is not a synonym for all applied statistical practice or for every use of probability. A proof about a procedure is conditional on its stated model; it does not verify that an observed population satisfies that model.

## Browse

Selected division criterion: Theory by its principal statistical problem: inference, procedure comparison or response modelling. These selected subject scopes overlap; they are not a disjoint partition.

Selected narrower subjects: [Statistical inference theory](inference/index.md) · [Statistical decision theory](decision-theory/index.md) · [Regression theory](regression/index.md).

## Example and boundary

One can compare the bias and variance of two procedures under the same assumed sampling law while leaving the adequacy of that law as a separate empirical question.

## Sources and review

[L19](../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
