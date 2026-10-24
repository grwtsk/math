---
schema_version: "0.1.1"
id: "urn:uuid:1a9f25eb-b5b2-5a22-a811-ff514411b9b1"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Error-correcting coding theory"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: []
navigation_parent: "subjects"
facets: []
relations: []
sources: [{"key": "L40", "locator": "Forney 6.451 Spring 2005 chapter 8, section 8.1 and beginning of 8.2, printed pages 101-102 (PDF pages 1-2): finite-field linear codes, distance and algebraic-code parameters; rendered pages inspected."}, {"key": "L41", "locator": "Modiano 16.36 Spring 2009 lecture 15, PDF page 3: cyclic-shift definition and error-detection context; rendered page inspected."}, {"key": "L42", "locator": "Guruswami lecture / Eric Blais scribe, CMU Spring 2010 Notes 6, section 1: polynomial-evaluation code definitions and field/point hypotheses; author course HTML inspected."}]
warrant: {"literary": "Established subject with the cited bounded source warrants; placement awaits independent review.", "user": "Separate compression, noisy communication and finite-code structure.", "organizational": "Do not infer proof, software verification or authority from classification."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Original subject description and proposed placement; no external payload import."}]
proposal_refs: ["urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Error-correcting coding theory

[Subjects](../../index.md) · [Taxonomy](../../../index.md)

## Definition

The mathematical study of redundancy, code constructions, bounds and decoding rules intended to detect or recover from specified corruption of represented messages.

## Scope

The corruption model may describe substitutions, erasures or other faults; the alphabet, metric and decoding criterion must be stated. The qualified label avoids confusing this subject with source compression, programming, or cryptographic secrecy. Error-detecting codes are included as a limiting recovery objective; the subject is not a claim that every studied code corrects a positive number of errors.

## Browse

Division criterion: Block organization and algebraic perspective are separate browsing groups.

Block organization: [Block error-correcting code theory (finite alphabets)](BlockCodes/index.md).

Algebraic perspective: [Algebraic coding theory (finite fields)](AlgebraicCodes/FiniteFields/index.md). These overlap and are not a disjoint partition.

## Example and boundary

Sending a bit five times yields two binary length-five words whose Hamming distance is five. Majority decoding recovers that bit after at most two substitutions; this finite observation says nothing about confidentiality.

## Related subject, not asserted parentage

[Channel coding theory](../../InformationTheory/ChannelCoding/index.md) supplies a complementary viewpoint. A stochastic-channel limit and an intrinsic finite-code property are not interchangeable. This navigation link adds no semantic edge.

## Sources and review

[L40, L41, L42](../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
