---
schema_version: "0.1.1"
id: "urn:uuid:202ac41c-3b35-45ea-9911-c7926248922a"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Autonomous linear system theory (finite-dimensional real)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-linear", "target": "urn:uuid:7cb72c81-2279-4942-b54d-4086f4e51a0e", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L33", "L37"], "rationale": "Restricts the parent subject to the explicitly stated equation or mechanical setting."}, {"edge": "parent-smooth", "target": "urn:uuid:649ecdb3-8801-4894-bddf-95ecce65af20", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L33", "L37"], "rationale": "Constant real linear equations define a specific class of smooth global flows; the same subject is retained at one page."}]
navigation_parent: "urn:uuid:7cb72c81-2279-4942-b54d-4086f4e51a0e"
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
# Autonomous linear system theory (finite-dimensional real)

[Linear ordinary differential equations](../index.md) · [Smooth dynamical systems](../../../../dynamical-systems/smooth/index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of homogeneous constant-coefficient real systems x'=Ax on finite-dimensional vector spaces, viewed both as linear ordinary differential equations and as smooth linear flows.

## Scope

Fix n>=1 and a real n-by-n matrix A. The evolution x(t)=exp(tA)x(0) is defined for every real t. No diagonalizability, normality, spectral sign or Hamiltonian structure is assumed. Stability criteria must distinguish boundedness, convergence and defective eigenvalues. Adding forcing changes the selected homogeneous problem; finite-dimensional global existence is not automatically inherited by nonlinear vector fields or unbounded operators.

## Browse

Selected division criterion: Specified coefficient structure.

[Linear Hamiltonian oscillator theory (positive-definite mass and stiffness)](hamiltonian-oscillators/index.md)

## Example and boundary

For A=[[0,1],[0,0]], exp(tA)=I+tA. The zero eigenvalues do not prevent growth along some initial conditions; diagonalizable intuition would lose the Jordan contribution.

## Why two parents

The two parents concern the same explicitly restricted mathematical systems in different formulations. The selected directory is a navigational home, not exclusive ownership. A related-topic link instead of the second specialization remains a reviewable alternative. Neither edge is theorem implication, a Lean coercion, or a cross-scheme exact match.

## Sources and review

[L33, L37](../../../../../standards/index.md) records editions, inspection limits and source-specific rights. The [addition proposal](../../../../../proposals/new-concepts/equations-dynamics-mechanics.md) retains alternatives and acceptance criteria. These original subject descriptions claim no new mathematics. Parentage is proposed; local implementation is unassessed, not absent. Proof, model adequacy and attribution remain separate.
