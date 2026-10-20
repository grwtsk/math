---
schema_version: "0.1.1"
id: "urn:uuid:02000e3a-afda-5966-8553-36ba8980644c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Block error-correcting code theory (finite alphabets)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-ecc", "target": "urn:uuid:1a9f25eb-b5b2-5a22-a811-ff514411b9b1", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L40", "L42"], "rationale": "Restricts the parent subject by the explicit task or structural condition in this record."}]
navigation_parent: "urn:uuid:1a9f25eb-b5b2-5a22-a811-ff514411b9b1"
facets: []
relations: []
sources: [{"key": "L40", "locator": "Forney 6.451 Spring 2005 chapter 8, section 8.1 and beginning of 8.2, printed pages 101-102 (PDF pages 1-2): finite-field linear codes, distance and algebraic-code parameters; rendered pages inspected."}, {"key": "L42", "locator": "Guruswami lecture / Eric Blais scribe, CMU Spring 2010 Notes 6, section 1: polynomial-evaluation code definitions and field/point hypotheses; author course HTML inspected."}]
warrant: {"literary": "Established subject with the cited bounded source warrants; placement awaits independent review.", "user": "Separate compression, noisy communication and finite-code structure.", "organizational": "Do not infer proof, software verification or authority from classification."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Original subject description and proposed placement; no external payload import."}]
proposal_refs: ["urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Block error-correcting code theory (finite alphabets)

[Error-correcting coding theory](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of finite-length codes consisting of selected words in a fixed Cartesian power of a finite alphabet, together with their distance properties and encoding or decoding rules.

## Scope

Fix block length n at least one and a finite alphabet A. A nonempty subset of A^n is the code; an encoder and a decoder are extra data. Hamming distance counts differing coordinates, not numeric differences between symbols. Minimum-distance claims require at least two codewords or an explicit singleton convention. List decoding, unique decoding and erasure recovery have different success criteria.

## Browse

Division criterion: Algebraic structure imposed on the fixed-length code.

[Linear block code theory (finite fields)](linear-finite-fields/index.md)

## Example and boundary

The ternary words 000 and 222 differ in all three coordinates, so their Hamming distance is three, not six. An alphabet need not carry addition or scalar multiplication.

## Sources and review

[L40, L42](../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
