---
schema_version: "0.1.1"
id: "urn:uuid:650a7b83-fe3b-55f4-bd52-bbab11d7ad2c"
record_kind: "subject_concept"
scheme: "grwtsk-mathematics"
labels: {"preferred": {"en": "Linear block code theory (finite fields)"}, "alternative": {"en": []}}
definition_section: "Definition"
scope_section: "Scope"
broader: [{"edge": "parent-block", "target": "urn:uuid:02000e3a-afda-5966-8553-36ba8980644c", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L40", "L42"], "rationale": "The same finite-field linear-code subject is both a block-code specialization and an intrinsically algebraic code class."}, {"edge": "parent-algebraic", "target": "urn:uuid:b20bdfe6-320f-5caf-a418-2b0b3453752d", "type": "subjectSpecialization", "origin": "direct", "status": "proposed", "sources": ["L40", "L42"], "rationale": "The same finite-field linear-code subject is both a block-code specialization and an intrinsically algebraic code class."}]
navigation_parent: "urn:uuid:02000e3a-afda-5966-8553-36ba8980644c"
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
# Linear block code theory (finite fields)

[Block error-correcting code theory (finite alphabets)](../index.md) · [Algebraic coding theory (finite fields)](../../algebraic-finite-fields/index.md) · [Subjects](../../../index.md) · [Taxonomy](../../../../index.md)

## Definition

The study of fixed-length codes that are linear subspaces of a finite-dimensional coordinate space over a specified finite field, including their generators, parity constraints and decoding problems.

## Scope

Fix a finite field F_q, n at least one and a k-dimensional subspace C of F_q^n. The zero subspace is allowed; any minimum-distance convention for that singleton must be declared. Generator and parity-check matrices describe a code but do not independently certify a decoder. Coordinate representations over a smaller field can change the metric and block parameters.

## Browse

Division criterion: Additional invariance or algebraic construction.

[Cyclic linear code theory (finite fields)](cyclic/index.md)

## Example and boundary

The solutions of x_1+x_2+x_3+x_4=0 over F_2 form a dimension-three length-four linear code. The word 1100 shows minimum distance two: single substitutions can be detected, but all single substitutions cannot be uniquely corrected.

## Why two parents

Linearity is intrinsic to this code class, not merely a method applied to an unrelated object. Both parents reach this one definition. The block-code route is the navigational home; using a related-topic link instead of the algebraic parent remains an explicit review alternative. Neither edge is mathematical equality, a Lean coercion or theorem implication.

## Sources and review

[L40, L42](../../../../standards/index.md) record editions, inspected locations and source-specific rights. [The addition proposal](../../../../proposals/new-concepts/information-coding.md) retains scope alternatives. No new result, decoder qualification or empirical-channel validation is claimed. Local implementation is unassessed, not absent; all parentage remains proposed.
