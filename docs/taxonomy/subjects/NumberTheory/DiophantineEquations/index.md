---
schema_version: "0.1.1"
id: "urn:uuid:6c64b305-8ae3-4988-8135-306f0463758a"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Diophantine equations"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-number-theory", "target": "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L65"], "rationale": "Restricts arithmetic inquiry to equations and constraints on arithmetic solutions, including quantitative solution questions."}]
navigation_parent: "urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c"
facets: []
relations: []
sources: [{"key": "L65", "locator": "Official MSC2020 browser, 11Dxx and selected linear, counting and inequality entries; bounded reference-only inspection 2026-10-25."}]
warrant: {"literary": "Established terminology independently identified by the official disciplinary classification; no classification dataset or crosswalk is imported.", "user": "Retrieve arithmetic equations and solution bounds without relying on a Lean storage path or a particular conjecture.", "organizational": "Separate a standard subject from finite evidence, conjectural statements and proof status."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "2026-10-25-proposed", "date": "2026-10-25", "change": "Original subject description and proposed Number theory parent; bounded standard terminology warrant."}]
proposal_refs: ["urn:uuid:95e63305-e3f6-4f91-a517-6ddd8cb2435f"]
decision_refs: []
---
# Diophantine equations

[Number theory](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of equations whose solutions are constrained to integers or specified
arithmetic domains, including existence, parametrization and quantitative bounds
on solutions.

## Scope

State the coefficient and solution domains, sign, primitivity and coprimality
restrictions, and any height or finite cutoff. Polynomial and exponential
equations require their actual hypotheses. Rational solutions must be identified
explicitly. A finite count, an all-height estimate and an equivalence between
conjectural formulations have different content. Related Diophantine geometry
and approximation are not silently identified with this subject.

## Browse

Selected division criterion: Equation family and question about its arithmetic
solutions. No narrower canonical records are authored in this increment.

## Example and boundary

For positive coprime integers with a + b = c, counting solutions with c at most
a fixed bound differs from proving a radical-height bound uniformly over all
solutions. A reformulation of the latter does not prove the conjecture.

## Sources and review

[L65](../../../standards/index.md) records the bounded official terminology
inspection. The [proposal](../../../proposals/new-concepts/diophantine-equations.md)
retains placement alternatives and acceptance criteria. This is original local
prose by grwtsk contributors. Scope and parentage remain proposed, without
independent disciplinary review, mathematical novelty or proof acceptance.
