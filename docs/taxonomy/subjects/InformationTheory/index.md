---
schema_version: "0.1.1"
id: "urn:uuid:b93b1a4c-0ad3-54bd-b035-50e8595fcc03"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Information theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: []
navigation_parent: "subjects"
facets: []
relations: []
sources: [{"key": "L38", "locator": "MIT 6.441 Spring 2016 course and topic outline: measures, source coding, channel coding and rate-distortion; bounded HTML inspection."}]
warrant: {"literary": "Established subject with the cited bounded source warrants; placement awaits independent review.", "user": "Separate compression, noisy communication and finite-code structure.", "organizational": "Do not infer proof, software verification or authority from classification."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Original subject description and proposed placement; no external payload import."}]
proposal_refs: ["urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Information theory

[Subjects](../index.md) · [Taxonomy](../../index.md)

## Definition

The mathematical study of quantitative information measures and the limits and constructions of representation, communication and inference under explicit source and observation models.

## Scope

Entropy, mutual information, compression and reliable communication are central questions. A probability model, logarithm base and admissible coding or decision rules must be specified for quantitative claims. Statistical uncertainty is not semantic truth or usefulness; quantum information and algorithmic information require their own settings rather than an implicit identification with classical Shannon theory.

## Browse

Division criterion: Task: representation of a source versus communication over a channel.

[Source coding theory](SourceCoding/index.md) · [Channel coding theory](ChannelCoding/index.md)

## Example and boundary

A uniformly distributed symbol with four possible values has entropy two bits. Relabeling its symbols changes neither their probabilities nor this value; it can change their interpretation to a reader.

## Sources and review

[L38](../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
