---
schema_version: "0.1.1"
id: "urn:uuid:d70dea86-1940-58db-a79c-f0f58bdb2d5e"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Cyclic linear code theory (finite fields)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-linear", "target": "urn:uuid:650a7b83-fe3b-55f4-bd52-bbab11d7ad2c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L41", "L40"], "rationale": "Restricts the parent subject by the explicit task or structural condition in this record."}]
navigation_parent: "urn:uuid:650a7b83-fe3b-55f4-bd52-bbab11d7ad2c"
facets: []
relations: []
sources: [{"key": "L41", "locator": "Modiano 16.36 Spring 2009 lecture 15, PDF page 3: cyclic-shift definition and error-detection context; rendered page inspected."}, {"key": "L40", "locator": "Forney 6.451 Spring 2005 chapter 8, section 8.1 and beginning of 8.2, printed pages 101-102 (PDF pages 1-2): finite-field linear codes, distance and algebraic-code parameters; rendered pages inspected."}]
warrant: {"literary": "Established subject with the cited bounded source warrants; placement awaits independent review.", "user": "Separate compression, noisy communication and finite-code structure.", "organizational": "Do not infer proof, software verification or authority from classification."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Original subject description and proposed placement; no external payload import."}]
proposal_refs: ["urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Cyclic linear code theory (finite fields)

[Linear block code theory (finite fields)](../index.md) · [Subjects](../../../../../../index.md) · [Taxonomy](../../../../../../../index.md)

## Definition

The study of linear block codes over finite fields that are invariant under cyclic permutation of their fixed-length coordinate positions.

## Scope

For length n at least one, send (c_0,...,c_{n-1}) to (c_{n-1},c_0,...,c_{n-2}). This symmetry is stronger than linearity. With a fixed coefficient order, polynomial arithmetic is taken modulo x^n-1; ring multiplication is not ordinary unbounded polynomial multiplication. No coprimality of n and the field characteristic is assumed here, so repeated-root cases cannot be excluded silently.

## Browse

Division criterion: Alphabet, length regime or additional defining constraints.

No narrower canonical pages are authored yet; this does not assert that the subject has no specializations.

## Example and boundary

The binary length-five repetition code is invariant under cyclic shift. In contrast, the linear span of 10000 is not: shifting its nonzero word leaves that span. A cyclic-code label alone does not authenticate a stored message.

## Sources and review

[L41, L40](../../../../../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../../../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
