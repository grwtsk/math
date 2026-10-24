---
schema_version: "0.1.1"
id: "urn:uuid:6d9a63c0-2e89-4f7c-8d9f-5441e07817bf"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Classical mechanics"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-mech", "target": "urn:uuid:1e4b72c0-06c9-41dd-9f3b-d8901aa3f936", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L35", "L36"], "rationale": "Restricts the parent subject to the explicitly stated equation or mechanical setting."}]
navigation_parent: "urn:uuid:1e4b72c0-06c9-41dd-9f3b-d8901aa3f936"
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
# Classical mechanics

[Mechanics (mathematical sciences)](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The theory of mechanical motion and equilibrium in the nonquantum, nonrelativistic regime, including particle, rigid-body and continuum formulations.

## Scope

Newtonian, Lagrangian and Hamiltonian descriptions use different mathematical data; their equivalence requires assumptions rather than a shared name. Constraints, dissipation, external forcing and continuum limits must be stated. Not all classical systems are conservative or Hamiltonian. A discrete numerical integrator may approximate the dynamics without inheriting every invariant exactly.

## Browse

Selected division criterion: Mathematical formulation, allowing explicitly justified overlap.

[Hamiltonian mechanics (finite-dimensional classical)](Hamiltonian/index.md)

## Example and boundary

The damped equation m q''+c q'+k q=0 with m,c,k positive is classical but dissipates the usual mechanical energy. It is not the undamped oscillator selected below.

## Sources and review

[L35, L36](../../../standards/index.md) records editions, inspection limits and source-specific rights. The [addition proposal](../../../proposals/new-concepts/equations-dynamics-mechanics.md) retains alternatives and acceptance criteria. These original subject descriptions claim no new mathematics. Parentage is proposed; local implementation is unassessed, not absent. Proof, model adequacy and attribution remain separate.
