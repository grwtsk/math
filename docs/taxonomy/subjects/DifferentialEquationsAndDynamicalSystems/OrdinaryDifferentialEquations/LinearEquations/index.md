---
schema_version: "0.1.1"
id: "urn:uuid:7cb72c81-2279-4942-b54d-4086f4e51a0e"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Linear ordinary differential equations"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-ode", "target": "urn:uuid:f2a6c7a1-0edb-4420-88c5-fd4cec4f3e13", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L33", "L37"], "rationale": "Restricts the parent subject to the explicitly stated equation or mechanical setting."}]
navigation_parent: "urn:uuid:f2a6c7a1-0edb-4420-88c5-fd4cec4f3e13"
facets: []
relations: []
sources: [{"key": "L33", "locator": "Author book outline, AMS GSM 140 (2012): initial-value theory, linear equations, autonomous linear flow and smooth dynamics."}, {"key": "L37", "locator": "MIT 18.03SC Fall 2011 matrix-exponential session: homogeneous/inhomogeneous linear systems and fundamental matrices; page-level inspection."}]
warrant: {"literary": "Established subject terminology with bounded primary-source warrants; local scope and placement await independent review.", "user": "Find equation, evolution and mechanics topics without relying on repository source names.", "organizational": "Keep subject specialization, mathematical implication, implementation evidence and permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.8-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:f7e8b07d-f572-484f-9ed5-cef8e6ee863a"]
decision_refs: ["D01", "D03", "D04", "D12"]
---
# Linear ordinary differential equations

[Ordinary differential equations](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The theory of ordinary differential equations whose differential operator is linear in the unknown function and its derivatives, including homogeneous equations and specified inhomogeneous forcing.

## Scope

A standard finite-system form is x'(t)=A(t)x(t)+f(t), on a stated interval with assumptions on A and f. Homogeneous solutions form a vector space, whereas solutions with a fixed nonzero forcing generally form an affine space. A fundamental matrix must be invertible on the interval concerned. The expression exp(tA) is specific to constant A; variable matrices cannot in general be handled by exponentiating their entrywise integral.

## Browse

Selected division criterion: Time dependence of the coefficients and forcing.

[Autonomous linear system theory (finite-dimensional real)](AutonomousReal/index.md)

## Example and boundary

For x' = x+1, adding two solutions produces derivative x_1+x_2+2, not x_1+x_2+1. Superposition must therefore distinguish homogeneous solutions from fixed-forcing solutions.

## Sources and review

[L33, L37](../../../../standards/index.md) records editions, inspection limits and source-specific rights. The [addition proposal](../../../../proposals/new-concepts/equations-dynamics-mechanics.md) retains alternatives and acceptance criteria. These original subject descriptions claim no new mathematics. Parentage is proposed; local implementation is unassessed, not absent. Proof, model adequacy and attribution remain separate.
