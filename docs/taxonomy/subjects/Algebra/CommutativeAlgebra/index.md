---
schema_version: "0.1.1"
id: "urn:uuid:c8b0b274-fbca-4a2e-a73a-8585ebcab14a"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Commutative algebra"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-rings", "type": "subjectSpecialization", "target": "urn:uuid:6cc2d458-3117-48eb-ae4f-76ed9166720e", "origin": "direct", "status": "proposed", "sources": ["L44", "L45"], "rationale": "The subject restricts the structures or coefficient setting studied by Ring theory (associative unital). Placement is proposed and does not assert a coercion or theorem implication."}]
navigation_parent: "urn:uuid:6cc2d458-3117-48eb-ae4f-76ed9166720e"
facets: []
relations: []
sources: [{"key": "L44", "locator": "Michael Artin, MIT 18.702 Spring 2011 syllabus, calendar and readings: rings, fields, modules and linear algebra over a ring; HTML inspected."}, {"key": "L45", "locator": "The Stacks Project, tags 00AO, 00AQ and 00AR: chapter outline, commutative-unital ring convention and basic module notions; mutable HTML inspected."}]
warrant: {"literary": "Established subject terminology supported by the registered author, publisher and course sources; their inspected scope and conventions remain explicit.", "user": "Retrieve algebraic structure and scalar restrictions without depending on repository filenames.", "organizational": "Separate subject specialization, object equality, software artifacts, proof evidence and attribution."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.10-pilot", "date": "2026-10-20", "change": "Original local subject record with proposed parentage and explicit conventions."}]
proposal_refs: ["urn:uuid:c5134679-7a75-4f0d-9aee-4ecd34cc581f"]
decision_refs: ["D01", "D03", "D04", "D14"]
---
# Commutative algebra

[Ring theory (associative unital)](../RingTheory/index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of commutative rings with identity, their ideals, homomorphisms and modules, including localization and questions of finiteness, factorization and dimension.

## Scope

The zero ring is permitted; integral domains and fields impose a nonzero condition and further restrictions. Noetherianity, reducedness, integral closure and unique factorization are different properties, not synonyms for commutativity. Algebraic geometry and algebraic number theory use this subject but are not thereby automatically asserted as its subtypes. Results about finitely generated modules must retain that finiteness premise.

## Browse

Selected division criterion: Associated structures. Browse [Module theory over commutative rings](../ModuleTheory/ModulesOverCommutativeRings/index.md).

## Example and boundary

In the polynomial quotient F[t]/(t squared), the class of t is nonzero and its square is zero. Thus a commutative ring need not be a domain or reduced.

## Placement and conventions

The module-over-commutative-rings page has this subject and general module theory as proposed parents. Its selected navigational home is under modules; this page links there instead of duplicating its definition.

## Sources and review

[L44, L45](../../../standards/index.md) records editions, access limits and source-specific rights. [Addition proposal](../../../proposals/new-concepts/algebra-structures.md) retains alternatives and acceptance criteria. These locally authored explanations claim no new mathematics, software qualification or completed source attribution. All parentage remains proposed. Repository implementation is unassessed, not absent.
