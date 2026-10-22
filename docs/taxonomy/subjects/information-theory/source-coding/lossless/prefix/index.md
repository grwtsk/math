---
schema_version: "0.1.1"
id: "urn:uuid:5b8c89c9-c1fd-5558-a87a-c2a4d15074df"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Prefix-code theory (finite alphabets)"}, "alternative": {"en": ["Prefix-free code theory (finite alphabets)"]}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-lossless", "target": "urn:uuid:c9d0ce6b-d5b5-5ec9-b653-733bc8541695", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L39"], "rationale": "Restricts the parent subject by the explicit task or structural condition in this record."}]
navigation_parent: "urn:uuid:c9d0ce6b-d5b5-5ec9-b653-733bc8541695"
facets: []
relations: []
sources: [{"key": "L39", "locator": "Polyanskiy/Wu 6.441 Spring 2016 chapter 6, section 6.2, printed pages 72-73 (PDF pages 10-11): injectivity, unique decodability and prefix restrictions; rendered pages inspected."}, {"key": "L43", "locator": "B. H. Jiggs, Canadian Journal of Mathematics 15 (1963), pp. 178-187, DOI 10.4153/CJM-1963-021-1: publisher opening extract defines comma-free fixed-length words by forbidden overlaps; full article not audited."}]
warrant: {"literary": "Established subject with the cited bounded source warrants; placement awaits independent review.", "user": "Separate compression, noisy communication and finite-code structure.", "organizational": "Do not infer proof, software verification or authority from classification."}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Original subject description and proposed placement; no external payload import."}]
proposal_refs: ["urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Prefix-code theory (finite alphabets)

[Lossless source coding theory](../index.md) · [Subjects](../../../../index.md) · [Taxonomy](../../../../../index.md)

## Definition

The study of injective variable-length encodings of a finite source alphabet into finite nonempty words over a finite coding alphabet, with no assigned word a prefix of another distinct assigned word.

## Scope

The coding alphabet has cardinality D at least two; this local convention excludes empty codewords, including in the singleton-source case. Prefix-free codes support immediate word-boundary detection in a concatenated stream. Unique decodability alone need not provide that property. Expected-length optimality additionally requires a source distribution and an allowed code class.

## Browse

Division criterion: Coding alphabet, length constraints or optimization criterion.

No narrower canonical pages are authored yet; this does not assert that the subject has no specializations.

## Example and boundary

The binary words 00, 01, 10 and 11 form a prefix code. The set 0, 01 is not prefix-free but is uniquely decodable: a following 1 completes 01, while a following 0 or end of input completes 0. Neither example by itself supplies noise protection.

## Terminology boundary

Prefix-free is not used as a synonym for comma-free. In the fixed-length overlap definition of L43, concatenating 00 with 00 exposes the codeword 00 across the word boundary. The prefix code above is therefore not comma-free. The alias in the L39 footnote is not imported into this controlled vocabulary; this local counterexample does not assert an erratum has been issued.

## Sources and review

[L39, L43](../../../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
