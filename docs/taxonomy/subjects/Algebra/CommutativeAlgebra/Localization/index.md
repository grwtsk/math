---
schema_version: "0.1.1"
id: "urn:uuid:b4e2fb1e-4ebf-4c6c-954a-cf663cc8efd3"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Localization theory (commutative rings)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-localization", "type": "subjectSpecialization", "target": "urn:uuid:c8b0b274-fbca-4a2e-a73a-8585ebcab14a", "origin": "direct", "status": "proposed", "sources": ["L67"], "rationale": "Selects a standard construction or structural relation within the specified parent subject; no object identity, source dependency or theorem implication follows."}]
navigation_parent: "urn:uuid:c8b0b274-fbca-4a2e-a73a-8585ebcab14a"
facets: []
relations: []
sources: [{"key": "L67", "locator": "Stacks Project, section 10.9, tag 00CM; definitions 10.9.1–2, proposition 10.9.3 and lemma 10.9.4, bounded reference-only inspection 2026-10-25."}]
warrant: {"literary": "Established subject terminology at the cited bounded authoritative source; original local explanatory prose, not imported source text.", "user": "Retrieve the actual algebraic construction independently of storage paths and generic coefficient labels.", "organizational": "Separate structural hypotheses, source interpretation, proposed taxonomy and proof acceptance."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "2026-10-25-proposed", "date": "2026-10-25", "change": "Original local standard subject scope and proposed parent; no source move or proof acceptance."}]
proposal_refs: ["urn:uuid:ed21ffa1-e8ad-47ee-a485-d83441f4235f"]
decision_refs: []
---
# Localization theory (commutative rings)

[Parent subject](../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of commutative unital rings and their modules after specified multiplicatively closed subsets are made invertible, together with the canonical maps and their universal properties.

## Scope

Retain the original ring, multiplicative subset and scalar maps. The subset contains one and is closed under multiplication; excluding zero is an additional condition. Zero rings and zero localizations are permitted. A localization map need not be injective. Localization of modules is included with its scalar ring specified. Completion, arbitrary coefficient replacement and localization of categories require different scopes; a structure name alone supplies none of their universal properties.

## Browse

Selected division criterion: specified construction data and retained hypotheses. No narrower records or disjoint partition are asserted here.

## Example and boundary

For a domain, inverting all nonzero elements produces its field of fractions. This case does not identify every localization of a ring with a field.

## Sources and review

[L67](../../../../standards/index.md) supplies a bounded terminology warrant. The [proposal](../../../../proposals/new-concepts/localization-field-extensions.md) retains alternatives and acceptance criteria. Original local prose by grwtsk contributors; proposed scope and parentage, with no independent review, novelty or proof acceptance.
