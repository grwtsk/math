---
schema_version: "0.1.1"
id: "urn:uuid:f7e8b07d-f572-484f-9ed5-cef8e6ee863a"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:e61b0003-34bd-4c05-8efe-c8ba6c20aabb", "urn:uuid:f2a6c7a1-0edb-4420-88c5-fd4cec4f3e13", "urn:uuid:7cb72c81-2279-4942-b54d-4086f4e51a0e", "urn:uuid:202ac41c-3b35-45ea-9911-c7926248922a", "urn:uuid:87a446ea-63ab-4fa1-adc4-bae725e93fcb", "urn:uuid:577ed201-3054-4425-989c-7ed64b397dd4", "urn:uuid:7b5f9559-1a20-46bc-8fbe-5579d0f7dd89", "urn:uuid:649ecdb3-8801-4894-bddf-95ecce65af20", "urn:uuid:1e4b72c0-06c9-41dd-9f3b-d8901aa3f936", "urn:uuid:6d9a63c0-2e89-4f7c-8d9f-5441e07817bf", "urn:uuid:92c0dbfc-1893-4359-9d3e-9747dcc79016", "urn:uuid:ec3d509f-501c-4883-9c70-0c5ed187ccd7"]
affected_source: {"repository": "grwtsk/math", "commit": "32d0b2f0f33a3de78e26c8b4ebe3f6d2d90e7c60", "tree": "e68b2c79bc269ec6b7d616acd16bba29b92aa91c", "vocabulary": "0.7-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L33", "locator": "Author book outline, AMS GSM 140 (2012): initial-value theory, linear equations, autonomous linear flow and smooth dynamics."}, {"key": "L34", "locator": "Author PDE manuscript outline, publication details unresolved: equations, solution notions, heat equation and general parabolic equations."}, {"key": "L35", "locator": "Springer second-edition (1989) description and contents: classical mechanics, oscillations and Hamiltonian formalism; full book not inspected."}, {"key": "L36", "locator": "MIT 8.09 Fall 2014 public lecture-topic index, chapters 1, 3 and 4: Hamiltonian mechanics, normal coordinates and canonical formulation."}, {"key": "L37", "locator": "MIT 18.03SC Fall 2011 matrix-exponential session: homogeneous/inhomogeneous linear systems and fundamental matrices; page-level inspection."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.8-pilot", "date": "2026-10-20", "change": "Twelve equation/dynamics/mechanics subjects and two shared canonical model-class records."}]
decision_refs: ["D01", "D03", "D04", "D12"]
---
# Differential equations, dynamics and mechanics: subject addition

[Proposals](../index.md) · [Subjects](../../subjects/index.md) · [Registry](../../registry.md)

## Problem and affected source

Candidate 0.7 has no canonical differential-equations, dynamical-systems or mechanics branch in this taxonomy subtree. That is not evidence that the repository has no related sources or that these subjects are new. Extend math `32d0b2f0f33a3de78e26c8b4ebe3f6d2d90e7c60` without moving Lean files or changing previous definitions and attribution dispositions.

## Proposed scope and warrant

Add twelve established-subject records: differential equations, ordinary equations, linear ordinary equations, finite-dimensional real autonomous linear systems, partial equations, second-order parabolic equations, dynamical systems, smooth dynamics, mathematical mechanics, classical mechanics, finite-dimensional Hamiltonian mechanics and restricted linear Hamiltonian oscillators. [L33-L37](../../standards/index.md) record the actual inspection scopes. The PDE manuscript outline has unresolved publication metadata and is not described as a verified published edition.

## Placement and alternatives

Retain three disciplinary entry points rather than forcing all dynamics or mechanics below differential equations. Ordinary/partial distinction concerns independent variables; the PDE subdivision concerns principal-part type; smooth dynamics concerns regularity; the mechanics subdivisions concern physical regime and formulation. These are separate sibling criteria, not a single disjoint partition of mathematics.

Autonomous linear systems have linear-ODE and smooth-dynamics parents. The positive-definite mass/stiffness oscillator subject has autonomous-linear and Hamiltonian-mechanics parents. Each has one UUID, definition and canonical page. The oscillator's five-level differential-equations route is its chosen home. A mechanics home or related-topic links instead of either second parent remain alternatives. General linear systems are not all Hamiltonian, and general Hamiltonian systems are not all linear oscillators.

## Before and after relationships

Before: 73 concepts, three mappings, eight proposals and one association. Proposed after: 85 concepts, three mappings, nine proposals and one association at 0.8-pilot. Eleven direct specialization edges are proposed. All 73 preceding concept pages remain byte-identical. Existing mapping identities retain their external semantics; only the local vocabulary edition and retained history change, without approval transport.

## Compatibility and acceptance criteria

Independent differential-equations, mechanics and cataloging review must assess each definition and division criterion, both multiple-parent placements, and local/global, homogeneous/forced and reversible/semigroup distinctions. Check the phase-space identification p=M q', positive-definite mass/stiffness, constant coefficients, absence of damping/forcing, and boundedness versus asymptotic decay. A semigroup name or discrete update is not automatically a parabolic PDE or validated heat-flow construction.

The existing DynamicalSystems versus DifferentialEquationsAndDynamicalSystems source collision remains open. No namespace merger, theorem implication, numerical qualification, attribution decision or proof replay follows from this addition. Existing #89 relations and #254 obligations remain intact. Rejected or superseded arrangements retain their identities and reasons.

## Recommended disposition and remaining scope

Remain proposed. Full native MSC acquisition, exact identifiers, permitted bulk reuse and global coverage remain unresolved. These pages do not complete differential equations, dynamics, mechanics or MSC Sections 34, 35, 37 or 70. Classical and mathematical physics, continuum topics, control and interdisciplinary applications still need broader population. No external dataset or source-owned prose is imported; no standards submission or production admission is made.
