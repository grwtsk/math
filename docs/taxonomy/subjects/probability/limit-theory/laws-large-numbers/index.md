---
schema_version: "0.1.1"
id: "urn:uuid:412d3a6e-2fe9-53b5-b059-324a5dae1180"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Laws of large numbers"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:b9675d7e-af1f-5eeb-8787-07dec92fe575", "origin": "direct", "status": "proposed", "sources": ["L54", "L55"], "rationale": "Restricts the parent subject to the stated laws of large numbers."}]
navigation_parent: "urn:uuid:b9675d7e-af1f-5eeb-8787-07dec92fe575"
facets: []
relations: []
sources: [{"key": "L54", "locator": "Registered bounded source inspection; see source register."}, {"key": "L55", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Laws of large numbers

[Probability limit theory](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of conditions under which normalized sums or averages concentrate around an expectation or another specified limiting value.

## Scope

Weak laws concern convergence in probability; strong laws concern almost-sure convergence on a stated probability space. For the classical independent identically distributed real-valued case, finite absolute first moment suffices for the usual strong law. Broader dependence and nonidentical sampling require their own hypotheses. An almost-sure statement allows a null exceptional set and is not a statement about every possible sequence.

## Browse

Selected division criterion: Convergence mode or specified dependence regime.

No narrower canonical pages are authored yet; this does not exhaust the subject.

## Example and boundary

For independent Bernoulli variables with fixed success probability p, the empirical mean tends almost surely to p. This does not assert that a finite empirical mean equals p or that the centered sum has Gaussian fluctuations without a separate limit statement.

## Sources and review

[L54, L55](../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
