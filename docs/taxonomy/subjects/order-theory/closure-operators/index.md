---
schema_version: "0.1.1"
id: "urn:uuid:5e8fb445-435f-4c23-bd1a-59bb873fc838"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred":{"en":"Closure operator theory"},"alternative":{"en":[]}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge":"parent-1","type":"subjectSpecialization","target":"urn:uuid:c4f54bfa-058b-52ee-8611-9795fe7f7a0c","origin":"direct","status":"proposed","sources":["L61"],"rationale":"Restricts ordered-structure questions to closure operations and their fixed elements."}]
navigation_parent: "urn:uuid:c4f54bfa-058b-52ee-8611-9795fe7f7a0c"
facets: []
relations: []
sources: [{"key":"L61","locator":"Bounded primary definition/subject warrant; exact scope in source register."}]
warrant: {"literary":"Standard mathematical terminology with bounded primary warrants; independent disciplinary review pending.","user":"Retrieve the precise mathematics independently of moving source paths.","organizational":"Separate source-specific subject decisions, source identity, proof and editorial acceptance."}
status: {"editorial":"proposed","mathematical_novelty":"not_claimed","proof":"not_applicable","attribution":"local_editorial_text","operational_permission":"not_conferred"}
rights: {"local_prose":"MIT","source_reuse":"reference_only"}
revision_history: [{"version":"0.14-source-review-draft","date":"2026-10-23","change":"Narrower standard concept from source-specific review; independent review pending."}]
proposal_refs: ["urn:uuid:ecc3f8d0-570a-436d-92a6-373d5b7d6254"]
decision_refs: []
---
# Closure operator theory

[Order theory](../index.md) · [Registry](../../../registry.md)

## Definition

The study of self-maps on ordered structures satisfying all three laws:
`x <= c(x)`, order preservation, and `c(c(x)) = c(x)`, together with
their fixed elements and structural relationships.

## Scope

The order and carrier must be explicit. Finite directed reachability can define
such an operation on seed sets ordered by inclusion even when the graph has
cycles. Monotonicity alone is insufficient. Topological closure has additional
conditions; this subject is not an operational invalidation policy.

## Example and boundary

In a fixed finite graph, include each vertex with a directed path to a seed.
Correct extraction of an external dependency graph remains a separate obligation.

## Sources and review

[L61](../../../standards/index.md) and the [proposal](../../../proposals/new-concepts/source-reviewed-standard-subjects.md)
retain bounded definition inspection and exact local source scope. No new theorem,
compiler result, production acceptance or independent human review is asserted.
