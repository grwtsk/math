---
schema_version: "0.1.1"
id: "urn:uuid:1b248077-71bf-5559-a777-786909549caa"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Channel coding theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-info", "target": "urn:uuid:b93b1a4c-0ad3-54bd-b035-50e8595fcc03", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L38"], "rationale": "Restricts the parent subject by the explicit task or structural condition in this record."}]
navigation_parent: "urn:uuid:b93b1a4c-0ad3-54bd-b035-50e8595fcc03"
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
# Channel coding theory

[Information theory](../index.md) · [Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The study of message encoding and decoding over a specified noisy channel, with quantitative tradeoffs among rate, block length, error criterion and permitted resources.

## Scope

One-shot, finite-blocklength, asymptotic, zero-error, feedback and multiuser formulations are distinct. A channel law and input constraints are part of any capacity statement. Existence of a sequence approaching an asymptotic limit does not supply an efficient decoder or a zero-error guarantee for a particular finite code.

## Browse

Division criterion: Channel model and communication criterion.

No narrower canonical pages are authored yet; this does not assert that the subject has no specializations.

## Example and boundary

The same encoder can have different decoding-error probabilities on two channels with different crossover probabilities. An intrinsic Hamming distance does not specify those channel probabilities.

## Related subject, not asserted parentage

[Error-correcting coding theory](../../CombinatoricsAndDiscreteMathematics/CodingTheory/index.md) supplies a complementary viewpoint. A stochastic-channel limit and an intrinsic finite-code property are not interchangeable. This navigation link adds no semantic edge.

## Sources and review

[L38](../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
