---
schema_version: "0.1.1"
id: "urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:b9675d7e-af1f-5eeb-8787-07dec92fe575", "urn:uuid:412d3a6e-2fe9-53b5-b059-324a5dae1180", "urn:uuid:080e0999-f895-5e12-9c4b-7f80bee187dd", "urn:uuid:2dfac8e7-d85e-57ed-9420-389c8d2a185b", "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec", "urn:uuid:15276792-5cfc-5e34-a5e3-78dc2aaa9907", "urn:uuid:36799ca5-d52f-5e34-8cb8-415004b017f4", "urn:uuid:267a8bd8-914b-5b49-96e0-300b64649f2b", "urn:uuid:e2481db7-f168-5bed-a3d4-05edb2c826a3", "urn:uuid:f9b815ee-efe6-54a5-b004-ef07cab00158", "urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943", "urn:uuid:770ecd4c-5dc6-4ebe-88da-5033eb4ced60"]
affected_source: {"repository": "grwtsk/math", "commit": "6f2bc3fe54fb3552eb7753318d54fa5e7a8b1a50", "tree": "cbe91b0706d25973abbaa3fa606a6dff4ed8ddea", "vocabulary": "0.11-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L54", "locator": "Bounded author/publisher/course inspection recorded in the source register."}, {"key": "L55", "locator": "Bounded author/publisher/course inspection recorded in the source register."}, {"key": "L56", "locator": "Bounded author/publisher/course inspection recorded in the source register."}, {"key": "L57", "locator": "Bounded author/publisher/course inspection recorded in the source register."}, {"key": "L58", "locator": "Bounded author/publisher/course inspection recorded in the source register."}, {"key": "L59", "locator": "Bounded author/publisher/course inspection recorded in the source register."}, {"key": "L60", "locator": "Bounded author/publisher/course inspection recorded in the source register."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Ten probability subjects and eleven proposed specialization edges; two existing navigation/history updates."}]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Probability limits and stochastic processes: addition proposal

[Proposals](../index.md) · [Probability](../../subjects/probability/index.md) · [Registry](../../registry.md)

## Problem and pinned source

The 115-concept candidate has a narrow probability branch centered on discrete-time and finite reversible Markov chains. General limits and process classes need separate retrieval routes. This is a catalogue gap, not a claim of absent mathematical literature or absent local implementations.

## Proposed subjects and warrant

Add probability limit theory, laws of large numbers, central limit theory, the real iid finite-positive-variance central limit regime, stochastic processes, discrete-time integrable real martingales, real Gaussian processes, continuous-time time-homogeneous Markov processes, standard real Brownian motion and iid lattice random walks. [L54-L60](../../standards/index.md) retain bounded literary warrants and rights limitations. None is proposed as new mathematics.

## Before and after relationships

Before: 115 concepts, three mappings, twelve proposals and one association. Proposed after: 125 concepts, three mappings, thirteen proposals and one association at 0.12-pilot. Eleven new subject-specialization edges remain proposed. Brownian theory has Gaussian and continuous-time Markov parents and one canonical page. Lattice walks specialize the existing time- and state-qualified Markov-chain concept. The old Markov parent and navigation home remain unchanged; stochastic-process cross-links are navigation only, not a hidden reparenting. Probability gains separated task/model browsing and a coverage clarification; Markov-chain browsing gains lattice walks. The other 113 prior concepts remain byte-identical. No ID or path is retired or reused.

## Alternatives and scope objections

The limit-task and process-family branches are overlapping perspectives, not a single disjoint division criterion. A broader Markov-process umbrella with discrete/continuous children requires its own scope proposal; this batch does not rewrite the older chain record. Gaussian processes have arbitrary specified index sets, whereas the continuous-time Markov parent is time-indexed. Their common Brownian child restricts to real standard Brownian motion on nonnegative time with its continuous-path requirement and natural filtration. A related-topic link instead of the second parent remains reviewable.

The central-limit child is a scoped subject, not a theorem record or a proof capsule. Positive finite variance, independence, identical distribution, centering and scaling cannot be discarded. Weak convergence does not control every exceptional point or yield a uniform finite-sample rate. A mathematical model's normalization is not a repository execution permission or a choice-free construction. Standard background foundations are not replaced by an undocumented axiom-of-choice claim.

## Compatibility and acceptance criteria

Independent probability and cataloging review must check the definition/scope boundaries, both Brownian parents and the retained Markov-chain navigation. Check every convergence mode, integrability and filtration condition; distinguish Gaussian marginals from joint Gaussianity and finite-dimensional laws from a continuous version. Recheck the positive-mass weak-limit example, Bernoulli lattice/total-variation example, equal-means nonmartingale, and random-time path spike. These elementary author examples are not new research claims or completed formal verification.

Do not transfer an unqualified slide formula into a statement: the selected Brownian lecture's independent-increment line prints process values at interval lengths rather than successive differences. The local definition instead explicitly uses B_t-B_s and retains mean zero and interval variance; no external erratum is claimed. Printed lecture shorthand is not a proof audit. The three mappings change only local edition/history; external meanings and proposed status remain unchanged. No Lean dependency, source association, attribution disposition or proof implication is created. Preserve #89/#254 and prior objections.

## Disposition and remaining scope

Remain proposed. No broad branch or external baseline is complete. Native MSC acquisition still lacks bytes, hashes and reconciled identifier sets; reference-only authoring does not clear bulk-data reuse. All independent review, rights disposition, accepted exports, maintained/historical source classification and proof replay remain separate obligations.
