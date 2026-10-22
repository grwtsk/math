---
schema_version: "0.1.1"
id: "urn:uuid:b3592120-494d-41c9-a967-9dd0c8e653f0"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:2a6074be-7f1b-4757-854a-b61113cf910c", "urn:uuid:f0916dc0-8e7b-4a8f-9aa7-a0cdd6651fa0", "urn:uuid:a6401fad-de38-4043-b635-0aeb5fcf85c9", "urn:uuid:52d784f7-6582-45a8-9dd3-717f0789c4bc", "urn:uuid:0e1e4320-7491-4401-88e7-399f20a4f34a", "urn:uuid:92c61d52-cfa1-4f69-9bf2-9c99145fc7d5", "urn:uuid:f323e33c-8afa-4c25-8a58-fe8d10957b96", "urn:uuid:93696268-3f9f-4855-9288-1e9286ad4177", "urn:uuid:7c60a6eb-7a03-4f69-b9db-9e13da340dbd", "urn:uuid:37973241-e8ba-4a2f-a597-529739204d6f", "urn:uuid:6f2cb4af-cae3-4956-91f9-d385910b72bf", "urn:uuid:df193821-ba5e-444b-9613-610c85927e6b"]
affected_source: {"repository": "grwtsk/math", "commit": "db30ea5a07fc4d04ef490437e64c108e3a2c4802", "tree": "030f9971b899c25467ec1fdf741b1f1929213985", "vocabulary": "0.6-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L27", "locator": "Publisher edition and contents: divisibility, arithmetic functions, congruences and analytic number theory; metadata-only review."}, {"key": "L28", "locator": "Third-edition publisher description: multiplicative questions and primes in arithmetic progressions; no full-book proof audit."}, {"key": "L29", "locator": "Author v3.08 course outline: rings of integers, ideal factorization, class number, units and fields."}, {"key": "L30", "locator": "Author second-edition description and dated download/errata listing; full book not inspected."}, {"key": "L31", "locator": "Author abstract of 1992 algorithmic algebraic-number-theory survey: explicit number-field computations."}, {"key": "L32", "locator": "2004 publisher abstract and separate 2019 errata record; no algorithm or correction proof audit."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.7-pilot", "date": "2026-10-20", "change": "Twelve-subject number-theory addition; candidate parentage and explicit computational boundaries."}]
decision_refs: ["D01", "D03", "D04", "D11"]
---
# Number theory: subject addition

[Proposals](../index.md) · [Number theory](../../subjects/number-theory/index.md) · [Registry](../../registry.md)

## Problem and affected source

Candidate 0.6 lacks a canonical number-theory subject branch in the taxonomy subtree. This says nothing about the existence or verification of number-theoretic Lean modules. This proposal extends math `db30ea5a07fc4d04ef490437e64c108e3a2c4802` without modifying source namespaces, preceding definitions or attribution dispositions.

## Proposed scope and warrant

Add twelve established-subject records spanning elementary congruences, analytic and multiplicative questions, prime distribution, algebraic number fields, computational number theory and primality testing. [L27-L32](../../standards/index.md) retain exact editions and bounded inspection scopes. The algebraic and computational routes share computational algebraic number theory at one canonical page. No absence of a local page or MSC code is evidence of mathematical novelty.

## Placement and alternatives

The five-level route number theory, analytic number theory, multiplicative number theory, prime distribution, arithmetic progressions provides navigational depth. The analytic home for multiplicative number theory follows the selected literature but is not a claim that all its proofs use analysis. Treating multiplicative number theory as another direct child of number theory remains an alternative. Elementary, analytic, algebraic and computational branches are overlapping disciplinary perspectives, not a disjoint partition.

Computational algebraic number theory has two proposed specialization parents and a computational home. Both concern the same arithmetic algorithm problems. A related-topic link instead of the algebraic parent, or finer branches by invariant, remain alternatives; duplicating definitions or identifying all algebraic number theory with algorithms is rejected as a proposed design choice, not an external standards decision.

## Before and after relationships

Before: 61 concepts, three mappings, seven proposals and one association. Proposed after: 73 concepts, three mappings, eight proposals and one association at 0.7-pilot. Twelve direct specialization edges are proposed. All 61 earlier concept pages remain byte-identical. Existing crosswalk identities retain their external meanings; only their local source edition and history change, requiring review without automatic approval transport.

## Compatibility and acceptance criteria

No Lean files, imports, dependency pins, source notices, hypotheses or #254 markers change. No operational receipt or executable generator belongs here; Noe owns validation. Independent number-theory and cataloging review must assess each definition and division criterion, the analytic placement of multiplicative theory, and the shared computational/algebraic scope. Check positive modulus, coprimality and uniformity restrictions, number field versus finite field, multiplicative versus completely multiplicative functions, and primality decision versus factorization or a probable-prime outcome.

The AKS source has a separate 2019 errata record; this proposal retains it but does not claim to have audited either proof. Existing #89 relation types and #254 attribution duties remain distinct from classification reachability. Rejection, reparenting or later scope refinement must preserve all current identities and objections.

## Retained baseline and recommended disposition

Remain proposed. Full MSC native bytes, identifiers, permitted bulk reuse and mathematical-sciences coverage are unresolved. These twelve local records do not complete MSC Section 11 or the number-theory literature. No external classification dataset or textbook material is imported; no RH claim, algorithm qualification, proof acceptance or standards submission follows from this organization.
