---
schema_version: "0.1.1"
id: "urn:uuid:2dfac8e7-d85e-57ed-9420-389c8d2a185b"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Central limit theory (real iid, finite positive variance)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:080e0999-f895-5e12-9c4b-7f80bee187dd", "origin": "direct", "status": "proposed", "sources": ["L55"], "rationale": "Restricts the parent subject to the stated central limit theory (real iid, finite positive variance)."}]
navigation_parent: "urn:uuid:080e0999-f895-5e12-9c4b-7f80bee187dd"
facets: []
relations: []
sources: [{"key": "L55", "locator": "Registered bounded source inspection; see source register."}]
warrant: {"literary": "Established probability subject; bounded source warrants below.", "user": "Retrieve limiting assumptions, dependence and path-version distinctions.", "organizational": "Separate universal subjects from repository artifacts and proof evidence."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.12-pilot", "date": "2026-10-20", "change": "Original local description and proposed parentage; independent review pending."}]
proposal_refs: ["urn:uuid:ef76df22-8a02-56a7-b64a-3c363473c2b1"]
decision_refs: ["D01", "D03", "D04", "D16"]
---
# Central limit theory (real iid, finite positive variance)

[Central limit theory](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The classical Gaussian limit theory for normalized sums of independent identically distributed real random variables with a finite strictly positive variance.

## Scope

Write S_n=X_1+...+X_n for n >= 1. For a common mean mu and variance sigma^2 in (0,infinity), the normalized sum (S_n-n mu)/(sigma sqrt(n)) converges in distribution to N(0,1). This record excludes zero or infinite variance and does not silently include triangular arrays or dependent inputs. The classical distributional conclusion does not supply a Berry-Esseen rate, convergence in total variation, almost-sure convergence of those normalized sums or a finite-sample normal law.

## Browse

Selected division criterion: Additional moment assumptions or specified approximation metric.

No narrower canonical pages are authored yet; this does not exhaust the subject.

## Example and boundary

For iid Bernoulli(1/2) inputs, each normalized finite sum has a finite lattice support, whereas the limiting normal law gives that support measure zero. Therefore the total-variation distance, defined as the supremum over measurable events, is one for every n despite weak convergence. This elementary distinction is not a new theorem claim or an algorithmic qualification.

## Sources and review

[L55](../../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
