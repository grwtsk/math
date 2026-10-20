---
schema_version: "0.1.1"
id: "urn:uuid:f9b815ee-efe6-54a5-b004-ef07cab00158"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Random walk theory (iid lattice increments)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:770ecd4c-5dc6-4ebe-88da-5033eb4ced60", "origin": "direct", "status": "proposed", "sources": ["L59", "L2"], "rationale": "Restricts the parent subject to the stated random walk theory (iid lattice increments)."}]
navigation_parent: "urn:uuid:770ecd4c-5dc6-4ebe-88da-5033eb4ced60"
facets: []
relations: []
sources: [{"key": "L59", "locator": "Registered bounded source inspection; see source register."}, {"key": "L2", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Random walk theory (iid lattice increments)

[Markov chain theory (discrete time)](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of discrete-time sums S_n=x+Y_1+...+Y_n of independent identically distributed increments in Z^d, for a fixed positive integer d and fixed starting point x.

## Scope

This scoped class has countable state space and time-homogeneous transitions, matching the existing Markov-chain parent. Symmetry, nearest-neighbor support, irreducibility, recurrence and finite moments are not assumed. Real-space, graph, environment-dependent and reinforced walks need separate scope records. Even within this class, the martingale conclusion requires the relevant first-moment and zero-drift conditions.

## Browse

Selected division criterion: Dimension and increment-law restrictions.

No narrower canonical pages are authored yet; this does not exhaust the subject.

## Example and boundary

On Z, take every increment equal to 1. The resulting deterministic rightward walk is time-homogeneous but neither symmetric nor recurrent. The phrase random walk does not insert those additional properties.

## Sources and review

[L59, L2](../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
