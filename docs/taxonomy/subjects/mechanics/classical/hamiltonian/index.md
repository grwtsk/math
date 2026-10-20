---
schema_version: "0.1.1"
id: "urn:uuid:92c0dbfc-1893-4359-9d3e-9747dcc79016"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Hamiltonian mechanics (finite-dimensional classical)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-classical", "target": "urn:uuid:6d9a63c0-2e89-4f7c-8d9f-5441e07817bf", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L35", "L36"], "rationale": "Restricts the parent subject to the explicitly stated equation or mechanical setting."}]
navigation_parent: "urn:uuid:6d9a63c0-2e89-4f7c-8d9f-5441e07817bf"
facets: []
relations: []
sources: [{"key": "L35", "locator": "Springer second-edition (1989) description and contents: classical mechanics, oscillations and Hamiltonian formalism; full book not inspected."}, {"key": "L36", "locator": "MIT 8.09 Fall 2014 public lecture-topic index, chapters 1, 3 and 4: Hamiltonian mechanics, normal coordinates and canonical formulation."}]
warrant: {"literary": "Established subject terminology with bounded primary-source warrants; local scope and placement await independent review.", "user": "Find equation, evolution and mechanics topics without relying on repository source names.", "organizational": "Keep subject specialization, mathematical implication, implementation evidence and permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.8-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:f7e8b07d-f572-484f-9ed5-cef8e6ee863a"]
decision_refs: ["D01", "D03", "D04", "D12"]
---
# Hamiltonian mechanics (finite-dimensional classical)

[Classical mechanics](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The classical theory of finite-dimensional mechanical systems formulated through a symplectic phase space and a Hamiltonian function generating their evolution.

## Scope

In canonical coordinates the convention is q'=partial H/partial p and p'=-partial H/partial q. Regularity and domain assumptions are explicit. Time-independent H yields conservation along its classical trajectories; time-dependent H does not generally do so. Nondegenerate symplectic structure is not interchangeable with an arbitrary Poisson tensor, and damping is not silently absorbed into the conservative canonical equations.

## Browse

Selected division criterion: Hamiltonian and configuration structure.

[Linear Hamiltonian oscillator theory (positive-definite mass and stiffness)](../../../differential-equations/ordinary/linear/autonomous-real/hamiltonian-oscillators/index.md)

## Example and boundary

For H(q,p)=p^2/(2m)+k q^2/2 with m,k>0, the canonical equations give q'=p/m and p'=-kq. Quantization or numerical integration is a separate construction.

## Sources and review

[L35, L36](../../../../standards/index.md) records editions, inspection limits and source-specific rights. The [addition proposal](../../../../proposals/new-concepts/equations-dynamics-mechanics.md) retains alternatives and acceptance criteria. These original subject descriptions claim no new mathematics. Parentage is proposed; local implementation is unassessed, not absent. Proof, model adequacy and attribution remain separate.
