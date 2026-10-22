---
schema_version: "0.1.1"
id: "urn:uuid:f2a6c7a1-0edb-4420-88c5-fd4cec4f3e13"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Ordinary differential equations"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-de", "target": "urn:uuid:e61b0003-34bd-4c05-8efe-c8ba6c20aabb", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L33"], "rationale": "Restricts the parent subject to the explicitly stated equation or mechanical setting."}]
navigation_parent: "urn:uuid:e61b0003-34bd-4c05-8efe-c8ba6c20aabb"
facets: []
relations: []
sources: [{"key": "L33", "locator": "Author book outline, AMS GSM 140 (2012): initial-value theory, linear equations, autonomous linear flow and smooth dynamics."}]
warrant: {"literary": "Established subject terminology with bounded primary-source warrants; local scope and placement await independent review.", "user": "Find equation, evolution and mechanics topics without relying on repository source names.", "organizational": "Keep subject specialization, mathematical implication, implementation evidence and permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.8-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:f7e8b07d-f572-484f-9ed5-cef8e6ee863a"]
decision_refs: ["D01", "D03", "D04", "D12"]
---
# Ordinary differential equations

[Differential equations](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of differential equations in one independent variable, including scalar equations and finite systems, with their initial-value, boundary-value and qualitative theories.

## Scope

The dependent variable may be vector-valued. Order, coefficient regularity and domain are stated for each problem; rewriting a higher-order equation as a first-order system requires the appropriate solvability and regularity assumptions. Local existence is not global existence, and continuity of a vector field alone does not guarantee uniqueness. A numerical trajectory is not an exact solution without an error argument.

## Browse

Selected division criterion: Linearity in the unknown and its derivatives.

[Linear ordinary differential equations](linear/index.md)

## Example and boundary

For y' = y^2 with y(0)=1, the classical solution 1/(1-t) on t<1 shows why local solvability need not give a solution for every future time.

## Sources and review

[L33](../../../standards/index.md) records editions, inspection limits and source-specific rights. The [addition proposal](../../../proposals/new-concepts/equations-dynamics-mechanics.md) retains alternatives and acceptance criteria. These original subject descriptions claim no new mathematics. Parentage is proposed; local implementation is unassessed, not absent. Proof, model adequacy and attribution remain separate.
