---
schema_version: "0.1.1"
id: "urn:uuid:515b8a95-4009-5d30-9037-a039f2c7694a"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:b93b1a4c-0ad3-54bd-b035-50e8595fcc03", "urn:uuid:c59a8012-736c-5c7d-9e52-69fe2938217c", "urn:uuid:c9d0ce6b-d5b5-5ec9-b653-733bc8541695", "urn:uuid:5b8c89c9-c1fd-5558-a87a-c2a4d15074df", "urn:uuid:1b248077-71bf-5559-a777-786909549caa", "urn:uuid:1a9f25eb-b5b2-5a22-a811-ff514411b9b1", "urn:uuid:02000e3a-afda-5966-8553-36ba8980644c", "urn:uuid:b20bdfe6-320f-5caf-a418-2b0b3453752d", "urn:uuid:650a7b83-fe3b-55f4-bd52-bbab11d7ad2c", "urn:uuid:d70dea86-1940-58db-a79c-f0f58bdb2d5e"]
affected_source: {"repository": "grwtsk/math", "commit": "5763524a941479f4fa8b0229749082cbc7582635", "tree": "8d8d492c3987ea55af4753f262f716e6e2a9bf7d", "vocabulary": "0.8-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L38", "locator": "MIT 6.441 Spring 2016 course and topic outline: measures, source coding, channel coding and rate-distortion; bounded HTML inspection."}, {"key": "L39", "locator": "Polyanskiy/Wu 6.441 Spring 2016 chapter 6, section 6.2, printed pages 72-73 (PDF pages 10-11): injectivity, unique decodability and prefix restrictions; rendered pages inspected."}, {"key": "L40", "locator": "Forney 6.451 Spring 2005 chapter 8, section 8.1 and beginning of 8.2, printed pages 101-102 (PDF pages 1-2): finite-field linear codes, distance and algebraic-code parameters; rendered pages inspected."}, {"key": "L41", "locator": "Modiano 16.36 Spring 2009 lecture 15, PDF page 3: cyclic-shift definition and error-detection context; rendered page inspected."}, {"key": "L42", "locator": "Guruswami lecture / Eric Blais scribe, CMU Spring 2010 Notes 6, section 1: polynomial-evaluation code definitions and field/point hypotheses; author course HTML inspected."}, {"key": "L43", "locator": "B. H. Jiggs, Canadian Journal of Mathematics 15 (1963), pp. 178-187, DOI 10.4153/CJM-1963-021-1: publisher opening extract defines comma-free fixed-length words by forbidden overlaps; full article not audited."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.9-pilot", "date": "2026-10-20", "change": "Ten information/coding subjects; shared linear-code scope."}]
decision_refs: ["D01", "D03", "D04", "D13"]
---
# Information and coding: subject addition

[Proposals](../index.md) · [Subjects](../../subjects/index.md) · [Registry](../../registry.md)

## Problem and affected source

Candidate 0.8 has no canonical information-theory or error-correcting-code branch in this subtree. That is not absence from mathematics or a claim about repository implementations. Extend the exact preceding revision without migrating Lean sources or changing previous conceptual definitions.

## Proposed scope and warrant

Add information theory, source coding, lossless source coding, finite-alphabet prefix codes, channel coding, error-correcting coding, finite-alphabet block codes, algebraic coding over finite fields, linear block codes over finite fields and cyclic linear codes over finite fields. [L38-L43](../../standards/index.md) record selected primary course material and exact inspection limitations. These are established subjects, not novelty claims.

## Placement and alternatives

Keep information theory and error-correcting coding as separate entry points. The first groups representation and transmission tasks; the second separates block organization from an algebraic perspective. No inference that every coding problem is compression, or every finite-code property is a channel-capacity statement, is permitted. The qualified error-correcting label avoids forcing broader uses of coding theory into this record.

Linear block code theory has block-code and algebraic-coding parents with one UUID and page. Linearity is intrinsic to the code class, not a methodological-use edge. The block route is its home. An algebraic home or a related-topic link instead of the second parent remains an alternative. Channel/error-correcting links are navigation only, not asserted specialization. Prefix-free, uniquely decodable and comma-free are not interchangeable aliases; the source's comma-free wording is not adopted. L43 supplies an explicit overlap definition, and the prefix page retains a concrete counterexample to synonymy.

## Before and after relationships

Before: 85 concepts, three mappings, nine proposals and one association. Proposed after: 95 concepts, three mappings, ten proposals and one association at 0.9-pilot. Nine new direct specialization edges remain proposed. All 85 preceding concept pages stay byte-identical. Crosswalk identities retain external semantics while their local edition and history change without transporting review.

## Compatibility and acceptance criteria

Independent information-theory, coding and cataloging review must assess definitions, literary warrant and the multiple-parent arrangement. Check finite alphabets, nonempty prefix words, exact versus almost-lossless recovery, single-message injectivity versus concatenation, field versus residue ring, singleton-distance conventions, repeated-root cyclic cases, error versus erasure criteria and algebraic properties versus decoder correctness. Reviewers must not infer secrecy or authentication from error detection, or performance of a real channel from an asymptotic existence theorem.

A positive example or a lexical prose check is not a mathematical review. No source naming collision, mathematical equivalence, authorship allocation or software qualification is resolved. Preserve #89's relation types and #254's notices and unresolved attribution obligations. Rejected alternatives retain their history.

## Recommended disposition and remaining scope

Remain proposed. Native MSC acquisition, exact identifiers and permitted bulk reuse remain unresolved; the MSC publication page was read but no native payload was obtained in this increment. The batch does not complete information theory, coding, computer science or interdisciplinary applications. No external source-owned payload is imported, no outside standards submission is made, and no accepted production graph is asserted.
