---
schema_version: "0.1.1"
id: "urn:uuid:577ed201-3054-4425-989c-7ed64b397dd4"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Second-order parabolic equation theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-pde", "target": "urn:uuid:87a446ea-63ab-4fa1-adc4-bae725e93fcb", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L34"], "rationale": "Restricts the parent subject to the explicitly stated equation or mechanical setting."}]
navigation_parent: "urn:uuid:87a446ea-63ab-4fa1-adc4-bae725e93fcb"
facets: []
relations: []
sources: [{"key": "L34", "locator": "Author PDE manuscript outline, publication details unresolved: equations, solution notions, heat equation and general parabolic equations."}]
warrant: {"literary": "Established subject terminology with bounded primary-source warrants; local scope and placement await independent review.", "user": "Find equation, evolution and mechanics topics without relying on repository source names.", "organizational": "Keep subject specialization, mathematical implication, implementation evidence and permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.8-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:f7e8b07d-f572-484f-9ed5-cef8e6ee863a"]
decision_refs: ["D01", "D03", "D04", "D12"]
---
# Second-order parabolic equation theory

[Partial differential equations](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of second-order partial differential equations of parabolic type, including diffusion-like evolution and its existence, regularity, comparison and long-time questions.

## Scope

A representative uniformly parabolic scalar form is u_t-sum(a_ij u_xixj)=f with a symmetric spatial coefficient matrix satisfying lambda I <= a <= Lambda I for constants 0<lambda<=Lambda<infinity, under additional stated regularity assumptions. The broader subject also examines nonlinear and degenerate regimes; those are not assigned the same hypotheses or conclusions. Initial and boundary conditions and the solution notion remain explicit. A semigroup equation alone is not a demonstrated diffusion generator or a heat-flow theorem.

## Browse

Selected division criterion: Specified equation family or degeneracy regime.

No narrower canonical pages are authored yet; their absence is not an absence of mathematical questions.

## Example and boundary

On the real line, u(x,t)=exp(-kappa t) cos(x) satisfies u_t=kappa u_xx for kappa>0. This direct example neither proves general well-posedness nor identifies an arbitrary discrete evolution with the heat equation.

## Sources and review

[L34](../../../../standards/index.md) records editions, inspection limits and source-specific rights. The [addition proposal](../../../../proposals/new-concepts/equations-dynamics-mechanics.md) retains alternatives and acceptance criteria. These original subject descriptions claim no new mathematics. Parentage is proposed; local implementation is unassessed, not absent. Proof, model adequacy and attribution remain separate.
