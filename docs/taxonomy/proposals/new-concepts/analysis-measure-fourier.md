---
schema_version: "0.1.1"
id: "urn:uuid:a2ba1baa-9bc0-4c26-81cf-f964a90e9634"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:08e5fed0-7528-4d4c-aa1f-01c11c97eb49", "urn:uuid:ba9c47a2-28b3-4974-81e0-73c0981dcc2d", "urn:uuid:bc652585-5fb0-4cb6-a91a-20769447862b", "urn:uuid:57ce1c47-e2c8-4b8d-8ed3-675cca62c991", "urn:uuid:866d44e7-8be3-4b23-b2ea-03cab0ce63b9", "urn:uuid:718b562b-0637-4e67-99b0-95fecae91bea", "urn:uuid:20fa8652-bedb-41d6-8b6e-5a4e676c19aa", "urn:uuid:948ee492-5740-466a-8fca-bbf258941dfb", "urn:uuid:3e341d08-e48b-4e18-86b6-fb26d4ff8e28", "urn:uuid:b4db3856-ce8f-470a-967f-727c9313831c", "urn:uuid:f9dfc34e-20f8-4ee4-8c63-c54e06947ed9", "urn:uuid:b047b4e6-ba8c-4feb-bbb2-4241fca7b116"]
affected_source: {"repository": "grwtsk/math", "commit": "709291d9a54842c6793320fa0f343f3169658dc2", "tree": "87cf5e1d06baf4a65d4a093f68be8d34e1fc21b0", "vocabulary": "0.10-pilot"}
status: {"editorial": "proposed", "mathematical_novelty": "not_claimed", "proof": "not_applicable", "attribution": "local_editorial_text", "operational_permission": "not_conferred"}
sources: [{"key": "L49", "locator": "Axler, Measure, Integration & Real Analysis: 2020 book; author PDF dated 2026-06-12, cover and contents pp. vii-x inspected; not a full-book proof audit."}, {"key": "L50", "locator": "Casey Rodriguez, MIT 18.102 Spring 2021: lecture list; Lecture 13 Definitions 128/133 and Lecture 14 Definition 145/Examples 146-148 inspected, with selected PDF pages rendered. Lebesgue-subset examples are not a general measure-space proof audit."}, {"key": "L51", "locator": "Jeremy Orloff, MIT 18.04 Spring 2018: course description and syllabus; one-complex-variable subject warrant, not a full-course proof audit."}, {"key": "L52", "locator": "David Jerison, MIT 18.103 Fall 2013: syllabus and calendar, measure integration, Hilbert spaces and Fourier convergence; HTML inspected."}, {"key": "L53", "locator": "Elias M. Stein, with assistance of Timothy S. Murphy, Harmonic Analysis (1993), Princeton University Press/JSTOR publisher record: description and chapter headings/previews; full book inaccessible."}]
rights: {"local_prose": "MIT", "source_reuse": "reference_only"}
revision_history: [{"version": "0.11-pilot", "date": "2026-10-20", "change": "Ten analytic subjects, twelve proposed specialization edges and two existing-parent navigation updates."}]
decision_refs: ["D01", "D03", "D04", "D15"]
---
# Analysis, measure and Fourier subjects: addition proposal

[Proposals](../index.md) · [Analysis](../../subjects/analysis/index.md) · [Registry](../../registry.md)

## Problem and pinned source

The preceding 105-concept candidate has an operator-focused analysis branch but lacks general real/complex, measure/integration, Banach/Hilbert and harmonic entry records. This is a gap in the selected catalogue, not evidence of missing mathematical literature or missing repository implementations.

## Proposed subjects and warrant

Add real analysis, measure theory, Lebesgue integration, Banach space theory, Hilbert space theory, restricted Lp space theory, L2 space theory, complex analysis, harmonic analysis and Fourier series on the circle. [L49-L53](../../standards/index.md) record author, course and publisher warrants and their limits. These are established subjects; new local descriptions are not mathematical novelty claims.

## Before and after relationships

Before: 105 concepts, three mappings, eleven proposals and one association. Proposed after: 115 concepts, three mappings, twelve proposals and one association at 0.11-pilot. Twelve new subject-specialization edges remain proposed. Lp spaces have Lebesgue-integration and Banach-space parents; L2 spaces have Lp-space and Hilbert-space parents. Each has one canonical page. No IDs or paths are retired or reused. Analysis and Functional analysis gain navigation and history; 103 other preceding concept pages remain byte-identical. Analysis adds a coverage clarification, not a different mathematical definition.

## Placement alternatives and scope objections

Abstract measure spaces need not have real underlying sets. The conventional real-analysis home is proposed navigation; a direct Analysis home remains an alternative. Lebesgue integration means integration by the measure-theoretic construction, not only integration against Euclidean Lebesgue measure. Lp theory here excludes p below one so Banach parentage does not assert completeness in a norm where only a quasi-norm is supplied. The alternative is a wider Lp concept with a narrower Banach-range child, or a related-topic link rather than the second parent.

Hilbert spaces are not assumed separable. L2 does not silently select a Fourier basis, differential operator or representative at each point. The first-linear complex inner-product convention is explicit. Fourier series on the circle is not equated with a finite discrete transform. The harmonic-analysis record is broader than harmonic-function theory. These are scope distinctions, not a merge of equal labels or a coercion of mathematical objects.

## Compatibility and acceptance criteria

Independent analysis and cataloging review must assess scope overlap, conventional placement and both multiple-parent records. Check almost-everywhere quotients, essential versus pointwise supremum, exact exponent range, scalar field, completeness/separability, and the convergence mode in every example. Verify that a theorem on a Lebesgue-measurable subset is not silently promoted to every measure space; cited course examples do not provide a general proof audit. Check normalizations before translating Fourier identities.

The three existing mappings change local edition/history only and require renewed review; external targets, directions and compound semantics are preserved. No new mapping, source association, Lean dependency, source migration, authorship disposition or proof implication is inferred. Retain #89 and #254 obligations.

## Disposition and remaining scope

Remain proposed. These ten records do not complete any broad branch or the mathematical-sciences baseline. Original MSC source bytes and checksums remain unavailable; complete identifier reconciliation and permitted bulk reuse remain unresolved. No source-owned dataset, book or lecture payload is imported or relicensed. Independent review, accepted exports and source-library classification remain unfinished.
