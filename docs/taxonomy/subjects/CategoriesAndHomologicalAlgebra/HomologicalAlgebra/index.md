---
schema_version: "0.1.1"
id: "urn:uuid:6df6424d-8992-4247-b777-72df69afe67d"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred":{"en":"Homological algebra"},"alternative":{"en":[]}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge":"parent-algebra","type":"subjectSpecialization","target":"urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a","origin":"direct","status":"proposed","sources":["L64"],"rationale":"Studies algebraic complexes and their homology, rather than requiring a topological realization."}]
navigation_parent: "urn:uuid:e134e0c5-ee35-4f6b-8652-f5b27d7bbc9a"
facets: []
relations: []
sources: [{"key":"L64","locator":"Homological Algebra chapter and Complexes section: additive/abelian categories, chain condition and homology."}]
warrant: {"literary":"Standard subject terminology with bounded primary warrants; independent disciplinary review pending.","user":"Retrieve algebraic homology without falsely identifying it with a topological space's invariant.","organizational":"Keep subject identity independent of source paths, proof status and geometric applications."}
status: {"editorial":"proposed","mathematical_novelty":"not_claimed","proof":"not_applicable","attribution":"local_editorial_text","operational_permission":"not_conferred"}
rights: {"local_prose":"MIT","source_reuse":"reference_only"}
revision_history: [{"version":"0.15-source-review-draft","date":"2026-10-23","change":"Source-warranted standard subject; no acceptance, existing-concept redefinition or proof promotion."}]
proposal_refs: ["urn:uuid:d7230c91-95de-4631-a2c5-5e1980ad93b2"]
decision_refs: []
---
# Homological algebra

[Algebra](../../Algebra/index.md) · [Registry](../../../registry.md)

## Definition

The study of algebraic complexes, exactness, homology and cohomology, and the
maps and constructions that relate them in suitable algebraic categories.

## Scope

State the coefficient ring, ambient category, grading and differential direction.
A chain differential squares to zero; in a module complex its homology is the
kernel modulo the incoming image, regarded inside that kernel. General additive
categories need not support every quotient used in an abelian category.

An abstract complex need not be the cellular or singular chain complex of a
specified space. Such an application requires its own geometric construction and
comparison. Equal ranks do not identify source maps or homology objects. This
subject is not a renaming of [topological homology](../../Topology/AlgebraicTopology/Homology/index.md).

## Example and boundary

A three-term integer-module complex can have an explicitly calculated degree-one
quotient without any supplied topological realization. Its free abelian group
does not recover the noncommutative information lost under abelianization.

## Sources and review

[L64](../../../standards/index.md) records bounded primary terminology inspection,
not a chapter-wide proof audit. The [proposal](../../../proposals/new-concepts/homological-algebra.md)
records exact local evidence and missing bridges. Parentage and source
associations remain proposed. Local attribution: grwtsk contributors.
