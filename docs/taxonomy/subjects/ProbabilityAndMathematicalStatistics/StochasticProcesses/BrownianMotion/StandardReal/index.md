---
schema_version: "0.1.1"
id: "urn:uuid:e2481db7-f168-5bed-a3d4-05edb2c826a3"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Brownian motion theory (standard real)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:36799ca5-d52f-5e34-8cb8-415004b017f4", "origin": "direct", "status": "proposed", "sources": ["L57", "L60"], "rationale": "Restricts the parent subject to the stated Gaussian and Markov Brownian model."}, {"edge": "parent-2", "type": "subjectSpecialization", "target": "urn:uuid:267a8bd8-914b-5b49-96e0-300b64649f2b", "origin": "direct", "status": "proposed", "sources": ["L57", "L60"], "rationale": "Restricts the parent subject to the stated Gaussian and Markov Brownian model."}]
navigation_parent: "urn:uuid:36799ca5-d52f-5e34-8cb8-415004b017f4"
facets: []
relations: []
sources: [{"key": "L57", "locator": "Registered bounded source inspection; see source register."}, {"key": "L60", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Brownian motion theory (standard real)

[Gaussian process theory (real-valued)](../../../RandomStructures/GaussianProcesses/RealValued/index.md) · [Markov process theory (continuous time, time-homogeneous)](../../MarkovProcesses/ContinuousTimeHomogeneous/index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of real standard Brownian motion: a process B_t for t >= 0, starting at zero, with continuous paths almost surely and increments B_t-B_s that are independent over disjoint time intervals, Gaussian with mean zero and variance t-s for 0 <= s < t.

## Scope

The normalization is E[B_s B_t]=min(s,t); drifted, rescaled, bridged and fractional variants are not silently included. The Markov parent uses the natural filtration. Matching finite-dimensional laws does not by itself select a continuous version or make two processes indistinguishable. Transition-law descriptions and physical diffusion models require separate assumptions.

## Browse

Selected division criterion: Specified path question or boundary/hitting problem without changing the normalization.

No narrower canonical pages are authored yet; this does not exhaust the subject.

## Example and boundary

On a product space, let B have continuous Brownian paths and U be an independent uniform variable in (0,1). Define X_t=B_t+1_{t=U}. At every finite collection of deterministic times, X agrees with B almost surely, but X has a spike at U and fails continuity there. This distinguishes finite-dimensional laws from a path-version requirement.

## Parentage

The Gaussian and continuous-time Markov routes describe the same restricted process class. Both proposed parents lead here; the Gaussian directory is the navigational home, not exclusive ownership. A related-topic link remains an explicit alternative for independent review.

## Sources and review

[L57, L60](../../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
