---
schema_version: "0.1.1"
id: "urn:uuid:b9675d7e-af1f-5eeb-8787-07dec92fe575"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Probability limit theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-1", "type": "subjectSpecialization", "target": "urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943", "origin": "direct", "status": "proposed", "sources": ["L54", "L55"], "rationale": "Restricts the parent subject to the stated probability limit theory."}]
navigation_parent: "urn:uuid:8abb03fc-4067-4580-9b34-47a7aaee5943"
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
# Probability limit theory

[Probability theory](../../ProbabilityTheory/index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of limiting laws and convergence of random variables, distributions and stochastic processes under specified normalization and dependence conditions.

## Scope

Each statement must name its probability spaces, limiting object and mode of convergence. Weak convergence of laws, convergence in probability, almost-sure convergence and convergence in mean are not interchangeable. A law-level limit does not supply a common coupling, a pointwise bound on every outcome or a finite-sample error rate. Functional limits additionally require a path space and topology.

## Browse

Selected division criterion: Limiting task, with normalization and convergence mode retained.

Browse [Laws of large numbers](LawsOfLargeNumbers/index.md) · [Central limit theory](CentralLimitTheorems/index.md).

## Example and boundary

For n >= 1, let mu_n=(1-1/n)delta_0+(1/n)delta_1. For any bounded continuous f, its integral is (1-1/n)f(0)+f(1)/n, which tends to f(0). Thus mu_n converges weakly to delta_0 while every mu_n still gives positive mass to 1. A limiting support statement alone cannot exclude all finite-stage exceptions.

## Sources and review

[L54, L55](../../../../standards/index.md) records editions, inspection limits and rights. [Placement proposal](../../../../proposals/new-concepts/probability-processes.md) retains alternatives and acceptance criteria. Repository implementation is unassessed, not absent. This record confers no proof, originality, attribution or execution approval.
