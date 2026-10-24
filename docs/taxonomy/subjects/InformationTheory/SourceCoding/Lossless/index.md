---
schema_version: "0.1.1"
id: "urn:uuid:c9d0ce6b-d5b5-5ec9-b653-733bc8541695"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Lossless source coding theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-source", "target": "urn:uuid:c59a8012-736c-5c7d-9e52-69fe2938217c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L39"], "rationale": "Restricts the parent subject by the explicit task or structural condition in this record."}]
navigation_parent: "urn:uuid:c59a8012-736c-5c7d-9e52-69fe2938217c"
facets: []
relations: []
sources: [{"key": "L39", "locator": "Polyanskiy/Wu 6.441 Spring 2016 chapter 6, section 6.2, printed pages 72-73 (PDF pages 10-11): injectivity, unique decodability and prefix restrictions; rendered pages inspected."}]
warrant: {"literary": "Established subject with the cited bounded source warrants; placement awaits independent review.", "user": "Separate compression, noisy communication and finite-code structure.", "organizational": "Do not infer proof, software verification or authority from classification."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Original subject description and proposed placement; no external payload import."}]
proposal_refs: ["urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Lossless source coding theory

[Source coding theory](../index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of source representations from which every admissible input can be recovered exactly, including length constraints, decodability and compression efficiency.

## Scope

For a deterministic single-message code, the encoder is injective on the admitted message set. Unique decoding of concatenated messages is a stronger requirement than single-message injectivity; framing can change the problem. This page reserves lossless for exact reconstruction, distinguishing almost-lossless schemes with a nonzero or asymptotically vanishing error probability.

## Browse

Division criterion: Stream-decoding constraint.

[Prefix-code theory (finite alphabets)](PrefixCodes/index.md)

## Example and boundary

Four equally likely messages cannot all have distinct binary descriptions of length at most one: only three binary strings, including the empty string, have those lengths. Prefix restrictions reduce the admissible set further.

## Sources and review

[L39](../../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
