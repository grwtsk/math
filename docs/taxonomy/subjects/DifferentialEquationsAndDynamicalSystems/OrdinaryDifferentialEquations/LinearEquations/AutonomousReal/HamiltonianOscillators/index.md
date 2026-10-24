---
schema_version: "0.1.1"
id: "urn:uuid:ec3d509f-501c-4883-9c70-0c5ed187ccd7"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Linear Hamiltonian oscillator theory (positive-definite mass and stiffness)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-autonomous", "target": "urn:uuid:202ac41c-3b35-45ea-9911-c7926248922a", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L35", "L36", "L37"], "rationale": "The specified mechanical systems have homogeneous constant real first-order equations with retained phase-space structure."}, {"edge": "parent-hamiltonian", "target": "urn:uuid:92c0dbfc-1893-4359-9d3e-9747dcc79016", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L35", "L36", "L37"], "rationale": "The explicitly specified mass-stiffness systems are a restricted classical Hamiltonian model class, not merely users of a method."}]
navigation_parent: "urn:uuid:202ac41c-3b35-45ea-9911-c7926248922a"
facets: []
relations: []
sources: [{"key": "L35", "locator": "Springer second-edition (1989) description and contents: classical mechanics, oscillations and Hamiltonian formalism; full book not inspected."}, {"key": "L36", "locator": "MIT 8.09 Fall 2014 public lecture-topic index, chapters 1, 3 and 4: Hamiltonian mechanics, normal coordinates and canonical formulation."}, {"key": "L37", "locator": "MIT 18.03SC Fall 2011 matrix-exponential session: homogeneous/inhomogeneous linear systems and fundamental matrices; page-level inspection."}]
warrant: {"literary": "Established subject terminology with bounded primary-source warrants; local scope and placement await independent review.", "user": "Find equation, evolution and mechanics topics without relying on repository source names.", "organizational": "Keep subject specialization, mathematical implication, implementation evidence and permission distinct."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.8-pilot", "date": "2026-10-20", "change": "Original local subject description and proposed placement; no source migration or external-data import."}]
proposal_refs: ["urn:uuid:f7e8b07d-f572-484f-9ed5-cef8e6ee863a"]
decision_refs: ["D01", "D03", "D04", "D12"]
---
# Linear Hamiltonian oscillator theory (positive-definite mass and stiffness)

[Autonomous linear system theory (finite-dimensional real)](../index.md) · [Hamiltonian mechanics (finite-dimensional classical)](../../../../../Mechanics/Classical/Hamiltonian/index.md) · [Subjects](../../../../../index.md) · [Taxonomy](../../../../../../index.md)

## Definition

The study of finite-dimensional undamped linear mechanical oscillators M q''+Kq=0 with constant real symmetric positive-definite mass and stiffness matrices, in their equivalent first-order and canonical Hamiltonian formulations.

## Scope

Fix n>=1, M and K real symmetric positive definite, q,p in R^n, p=M q', and H=(p^T M^(-1)p+q^T Kq)/2. Then q'=M^(-1)p and p'=-Kq form a homogeneous constant-coefficient system and a canonical Hamiltonian system. No damping, forcing, gyroscopic term, time variation or numerical discretization is included. Semidefinite stiffness permits zero modes and requires a different scope. Oscillatory bounded motion is not asymptotic decay to equilibrium.

## Browse

Selected division criterion: Mode structure or additional specified constraints.

No narrower canonical pages are authored yet; their absence is not an absence of mathematical questions.

## Example and boundary

With n=1 and M=K=1, q(t)=a cos(t)+b sin(t) and p(t)=-a sin(t)+b cos(t); substitution gives H=(a^2+b^2)/2. The calculation is an elementary example, not a new theorem, numerical experiment or statement that all higher-dimensional trajectories are periodic.

## Why two parents

The two parents concern the same explicitly restricted mathematical systems in different formulations. The selected directory is a navigational home, not exclusive ownership. A related-topic link instead of the second specialization remains a reviewable alternative. Neither edge is theorem implication, a Lean coercion, or a cross-scheme exact match.

## Sources and review

[L35, L36, L37](../../../../../../standards/index.md) records editions, inspection limits and source-specific rights. The [addition proposal](../../../../../../proposals/new-concepts/equations-dynamics-mechanics.md) retains alternatives and acceptance criteria. These original subject descriptions claim no new mathematics. Parentage is proposed; local implementation is unassessed, not absent. Proof, model adequacy and attribution remain separate.
