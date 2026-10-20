---
schema_version: "0.1.1"
id: "urn:uuid:df2c6c73-bc6f-417b-ae79-2a7330455fb5"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Least-squares estimation theory (fixed-design full-rank linear models)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-point", "target": "urn:uuid:d26248fa-96a1-45b7-8a99-4e77a5600f05", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L22", "L19"], "rationale": "Studies a coefficient-valued estimator under a specified sampling model."}, {"edge": "parent-linear", "target": "urn:uuid:806e39ed-f9b9-434e-83cd-6cd1152568fa", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L22", "L19"], "rationale": "Restricts linear-regression estimation to the stated fixed full-rank model."}]
navigation_parent: "urn:uuid:d26248fa-96a1-45b7-8a99-4e77a5600f05"
facets: []
relations: []
sources: [{"key": "L22", "locator": "NIST/SEMATECH handbook sections 4.1.4.1 and 4.4.3.1, linearity and least-squares criterion."}, {"key": "L19", "locator": "First-edition contents and the public abstracts for chapters 6, 9, 12 and 13; not a full-book audit."}]
warrant: {"literary": "Established statistical subject with cited primary scope references; the precise local boundary and parentage need independent review.", "user": "Find statistical topics without using repository filenames or the current proof agenda as the subject baseline.", "organizational": "Keep model assumptions, inferential statements, software evidence and operational permission separate."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.5-pilot", "date": "2026-10-19", "change": "Original local subject description; candidate placement after source-only integration of 0.4."}]
proposal_refs: ["urn:uuid:140a988b-a5ac-4bd4-b922-317f55325fc8"]
decision_refs: ["D01", "D03", "D04", "D09"]
---
# Least-squares estimation theory (fixed-design full-rank linear models)

[Point estimation theory](../index.md) · [Linear regression theory](../../../../regression/linear-models/index.md) · [Subjects](../../../../../../index.md) · [Taxonomy](../../../../../../../index.md)

## Definition

The study of the ordinary least-squares coefficient estimator and its statistical properties in real linear models with a fixed full-column-rank design.

## Scope

Fix integers n >= p >= 1, a deterministic real n-by-p matrix X of rank p, and Y = X beta + epsilon. For the moment calculations below require E(epsilon) = 0 and Cov(epsilon) = sigma^2 I_n with finite sigma^2 > 0. These covariance assumptions do not imply independent or Gaussian errors. Rank-deficient designs, weighted or regularized estimators and random-design claims require separate scopes. Estimating residual variance additionally requires n > p.

## Browse

Selected division criterion: Statistical estimator property under the stated model; narrower records remain unpopulated.

No narrower canonical pages are authored here yet. This is not an assertion that narrower subjects do not exist.

## Example and boundary

The normal equations give beta_hat = (X^T X)^(-1) X^T Y. Substituting the model gives beta_hat - beta = A epsilon for A = (X^T X)^(-1) X^T, hence mean error zero and covariance sigma^2 (X^T X)^(-1). No Gaussian assumption is used in these algebraic moment identities. Exact t/F calibration and numerical stability do not follow from them. This is an explanatory derivation, not a new result or a kernel-checked proof.

## Why two parents

This subject examines a point estimator and a restricted linear-regression problem, so both proposed subject specializations concern the same mathematical questions. The second parent is not inferred merely from using linear algebra. Both routes point to this one definition; the estimation branch is only its chosen navigational home. A taxonomy edge is not a theorem implication, coercion, certificate or software dependency.

## Sources and review

[L22, L19](../../../../../../../standards/index.md) records the inspected editions, source scope and rights limitations. [Placement proposal](../../../../../../../proposals/new-concepts/statistics.md) retains alternatives and acceptance criteria. All parentage is proposed; source-reference presence does not supply specialist review. Repository implementation is unassessed, not absent. No data analysis, empirical finding, software qualification or mathematical novelty is asserted.
