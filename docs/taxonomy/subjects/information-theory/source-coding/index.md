---
schema_version: "0.1.1"
id: "urn:uuid:c59a8012-736c-5c7d-9e52-69fe2938217c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Source coding theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-info", "target": "urn:uuid:b93b1a4c-0ad3-54bd-b035-50e8595fcc03", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L38", "L39"], "rationale": "Restricts the parent subject by the explicit task or structural condition in this record."}]
navigation_parent: "urn:uuid:b93b1a4c-0ad3-54bd-b035-50e8595fcc03"
facets: []
relations: []
sources: [{"key": "L38", "locator": "MIT 6.441 Spring 2016 course and topic outline: measures, source coding, channel coding and rate-distortion; bounded HTML inspection."}, {"key": "L39", "locator": "Polyanskiy/Wu 6.441 Spring 2016 chapter 6, section 6.2, printed pages 72-73 (PDF pages 10-11): injectivity, unique decodability and prefix restrictions; rendered pages inspected."}]
warrant: {"literary": "Established subject with the cited bounded source warrants; placement awaits independent review.", "user": "Separate compression, noisy communication and finite-code structure.", "organizational": "Do not infer proof, software verification or authority from classification."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Original subject description and proposed placement; no external payload import."}]
proposal_refs: ["urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Source coding theory

[Information theory](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of mathematical representations of source outcomes subject to constraints on description length, reconstruction and the information available to encoder and decoder.

## Scope

Lossless and lossy formulations differ in the reconstruction requirement. Specify the source alphabet and law when probabilistic, the coding alphabet, variable or fixed lengths, block size, side information and distortion criterion. A noiseless compression problem is not already a theorem about transmission through a noisy channel.

## Browse

Division criterion: Reconstruction requirement.

[Lossless source coding theory](lossless/index.md)

## Example and boundary

Rounding a real observation to an integer is a lossy representation unless the admissible source is already restricted to integers. Its usefulness requires a declared distortion measure, not just a shorter description.

## Sources and review

[L38, L39](../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
