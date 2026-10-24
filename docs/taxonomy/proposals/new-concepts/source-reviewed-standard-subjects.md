---
schema_version: 0.1.1
id: urn:uuid:ecc3f8d0-570a-436d-92a6-373d5b7d6254
record_kind: proposal
proposal_type: addition
lifecycle: proposed
affected_concept_ids: [urn:uuid:5e8fb445-435f-4c23-bd1a-59bb873fc838, urn:uuid:455d5220-1e27-41f9-821a-fae4fa41c4db, urn:uuid:c0e28762-6b54-4feb-bff3-115f8c63d548]
sources: [{key: L61, locator: ClosureOperator definition}, {key: L62, locator: OrderEmbedding distinction}, {key: L63, locator: Free-group subject and universal property}]
status: {editorial: proposed, mathematical_novelty: not_claimed, proof: not_applicable, attribution: local_editorial_text, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only}
revision_history: [{version: 0.14-source-review-draft, date: '2026-10-23', change: 'Add standard narrower subjects; no acceptance or proof promotion.'}]
decision_refs: []
---
# Standard subjects warranted by inspected source content

## Problem and affected identities

Broad order/group labels conceal standard distinctions in actual source bodies.
Add [closure operators](../../subjects/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/index.md),
[order embeddings](../../subjects/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/OrderEmbeddings/index.md), and
[free groups](../../subjects/Algebra/GroupTheory/CombinatorialGroupTheory/FreeGroups/index.md).
Existing concept identities and definitions are unchanged. These proposed
specializations are neither a production graph nor exhaustive coverage.

## Evidence and exact local scope

Complete bodies inspected at math `bff5daa2b6e58661f3cdb2d5bac2e580a3768f5e` include:

- `GRWTSK/Order/Closure/FiniteDependencyClosure.lean`, blob
  `a768e632066cf8bc1ec23b0137f30cb8a418f8b6`: declarations under
  `GRWTSK.ProofHorizon.CorkscrewChamberCap` establish source candidates for
  extensiveness, monotonicity, idempotence, least closure and exact finite
  reachability. Finite inventory and decidable equality are explicit; cycles are
  allowed. Completeness of an external dependency extractor is not supplied.
- `GRWTSK/Order/Embeddings/PrefixObstruction.lean`, blob
  `0bc14b783a54f04276cf5659098134487971dc76`: declarations under
  `GRWTSK.Order.Embeddings.PrefixObstruction` distinguish preservation from
  reflection, give a diamond obstruction and a natural-chain representation.
  The general relation obstruction needs neither order axioms nor injectivity;
  the concrete diamond separately supplies partial-order laws.
- `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean`:
  declarations under the identically named `GRWTSK.Topology.AlgebraicTopology`
  namespace construct free-group integer characters and a nontrivial kernel
  witness for canonical abelianization. The inspected Heisenberg definitions
  witness lost commutator information, not a topological H1 isomorphism.

L61-L63 warrant standard definitions/subject scope, not historical influence.
Source proofs, diagnostic commands and comments remain `NOT_RUN` and
`NOT_KERNEL_AUDITED` in this work. AI-assisted decisions and generated evidence
remain in Noeaaeue; independent human review is not asserted.

## Alternatives and recommendation

Broad-only indexing loses useful distinctions; a category per filename confuses
storage with mathematics. Use these narrower subjects when their definitions fit
the inspected construction. Retain broader or resource-only associations for
other bodies. A fixture specifying a type error is not a proof of its target.

## Before and after relationships

Before: order/group concepts without these three records. After: two proposed
specializations of order theory and one of group theory. New records own their
direct proposed edges; registry and subject browsing expose their canonical homes.
No parent meaning or existing source association is silently replaced.

## Compatibility, movement and retained rationale

Concept IDs do not depend on source paths. A moved occurrence needs an exact new
repository/commit/tree/path/mode/blob binding. Exact-body matches guide inspection
but confer no semantic acceptance, import resolution or proof status. Changed
hypotheses need renewed decisions. No source is renamed, excluded or made
unmaintained here. Registry additions do not redefine existing concepts.

## Acceptance criteria

Check identity uniqueness, canonical mappings, definition/scope consistency,
proposed parent endpoints, exact source associations and static links. Independent
definition/source-association review and production gates remain pending. No
compiler, verification queue or replay belongs to this editorial action. Refined
associations must pin the new vocabulary commit, not rewrite immutable reviews.
