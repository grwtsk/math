---
schema_version: "0.1.1"
id: "urn:uuid:d7230c91-95de-4631-a2c5-5e1980ad93b2"
record_kind: "proposal"
proposal_type: "addition"
lifecycle: "proposed"
affected_concept_ids: ["urn:uuid:6df6424d-8992-4247-b777-72df69afe67d"]
sources: [{"key":"L64","locator":"Chapter 12 and section 12.13, chain complexes and homology in algebraic categories."}]
status: {"editorial":"proposed","mathematical_novelty":"not_claimed","proof":"not_applicable","attribution":"local_editorial_text","operational_permission":"not_conferred"}
rights: {"local_prose":"MIT","source_reuse":"reference_only"}
revision_history: [{"version":"0.15-source-review-draft","date":"2026-10-23","change":"Separate algebraic homology from a claim of topological realization."}]
decision_refs: []
---
# Homological algebra: a source-warranted standard subject

## Problem and affected identities

The existing homology subject explicitly concerns invariants of spaces and pairs.
The maintained corpus also constructs abstract algebraic complexes and their
homology without supplying such a space. Add [Homological algebra](../../subjects/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/index.md)
with a fresh persistent identity; retain the meaning and identity of topological
homology and all other canonical records.

## Evidence and exact local scope

At math commit `f1d58129853437b290762b5678c01c01433da57a`, complete source inspection
of these bodies supplies the local warrant:

- `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCandidateH1.lean`, blob
  `e3e3eaf5f425a58c1c686aa08df3706aa1812012`, constructs an integer-linear
  cycle kernel, the incoming image pulled back into that kernel, and their actual
  quotient. Its equivalence with one-chains uses the source model's particular
  vanishing differentials, not a general chain-complex assertion.
- `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonCategoricalH1.lean`, blob
  `725364f5acc11389b94be1957b1ce53e810014bf`, constructs a three-term
  `ModuleCat` chain complex and compares its categorical degree-one homology
  with that exact quotient, including the actual map-to-cycles image.

All declarations are under the corresponding
`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCandidateH1` and
`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCategoricalH1` namespaces.
For each natural `k`, their integer chain carrier is `GenusLetter k → ℤ`,
with the source genus label `k + 2`. Source proof terms are `NOT_RUN` and
`NOT_KERNEL_AUDITED` in this review. Both blobs were checked against the pinned
tree; no filename supplies a source identity.

L64 warrants established terminology and the algebraic distinction, not historical
influence. No closed surface, authentic cellular/singular comparison, Hurewicz,
van Kampen, geometric metric or arithmetic application is established here.

## Alternatives and recommendation

Broad module/category indexing remains useful but hides the actual homological
construction. Reusing the topological record would change its scope without an
explicit split or decision. Prefer a separate standard subject, and associate
only inspected bodies that actually construct or study the relevant complexes.
An integer coordinate equivalence alone does not automatically acquire this
association merely because another module imports it.

## Before and after relationships

Before: module theory, category theory and topological homology have distinct
canonical scopes. After: the new record owns one direct proposed specialization
of Algebra. Its canonical home and browsing links do not assert a theorem
dependency, equivalence, topological realization or accepted production edge.

## Compatibility and retained rationale

No source is moved or excluded. A source move requires exact occurrence rebinding;
the concept identity does not depend on its current directory. Source-specific
decisions and immutable evidence remain in Noeaaeue, pinned separately to source
and vocabulary commits. Refined decisions must be explicitly reconciled with
earlier associations rather than collected as conflicting parallel approvals.

## Acceptance criteria

Check the new ID, source blob pins, definition/scope, primary warrant, proposed
parent endpoint and relative links. Preserve all prior ID-to-path assignments and
concept bytes. Independent disciplinary/source review and production release
gates remain pending. No compiler, replay, trust audit or verification-state
mutation is part of this editorial addition. Local attribution: grwtsk contributors.
