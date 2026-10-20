---
schema_version: "0.1.1"
id: "urn:uuid:15276792-5cfc-5e34-a5e3-78dc2aaa9907"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Martingale theory (discrete-time integrable real processes)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec", "origin": "direct", "status": "proposed", "sources": ["L56"], "rationale": "Restricts the parent subject to the stated martingale theory (discrete-time integrable real processes)."}]
navigation_parent: "urn:uuid:51a46483-2271-5808-bde1-8327d5fb8eec"
facets: []
relations: []
sources: [{"key": "L56", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Martingale theory (discrete-time integrable real processes)

[Stochastic process theory](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of adapted integrable real processes M_n on a filtered probability space satisfying E[M_(n+1) | F_n]=M_n almost surely.

## Scope

The filtration is part of the model, and integrability is required at every time. Constant expectations alone do not imply the conditional identity. A martingale need not be Markov or have independent increments. Stopping at an unbounded random time or passing expectations through a limit requires additional conditions; neither optional-stopping equality nor L1 convergence follows merely from the label.

## Browse

Selected division criterion: Integrability bound, stopping condition or convergence conclusion.

No narrower canonical pages are authored yet; this does not exhaust the subject.

## Example and boundary

For a fair sign Z, set M_0=0, M_1=Z and M_2=-Z with trivial F_0 and F_1=F_2=sigma(Z). All three expectations are zero, but E[M_2 | F_1]=-Z differs from M_1. Equal means are not the martingale property.

## Sources and review

[L56](../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
