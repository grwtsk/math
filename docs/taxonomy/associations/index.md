---
schema_version: 0.1.0
id: urn:uuid:934fbf56-d172-43b2-8fcd-37d0f0bc3e0a
record_kind: repository_association
concept_id: urn:uuid:0aff8294-7302-4beb-80ae-72c2de9daf58
relation: relevantTo
origin: direct
source:
  repository: grwtsk/math
  commit: eb3124bd05f0f74aaa709ca36a855539f722fb92
  root_tree: 175d0a5b3fd8c76afc25e362deec135eb471f2b9
  path: GRWTSK/Spectral/FreeDirichletSpectrum.lean
  mode: '100644'
  blob: 677e01519c75daf5d28b09f290b80ff0dc65736a
  module: GRWTSK.Spectral.FreeDirichletSpectrum
  selected_declarations: [GRWTSK.Spectral.FreeDirichletSpectrum.sineVector_eigen_equation, GRWTSK.Spectral.FreeDirichletSpectrum.free_charpoly, GRWTSK.Spectral.FreeDirichletSpectrum.freeCount_eq_cosine_count]
  dependency_manifest_blob: 1f2e3e2d66253933a410e981eb359a9b454aae0b
status: {editorial: proposed, source_review: selected_file_read, independent_review: unavailable, mathematical_novelty: not_claimed, proof: NOT_RUN, attribution: ATTRIBUTION_CLARIFICATION_NEEDED, operational_permission: not_conferred}
rights: {local_prose: MIT, source_reuse: reference_only, source_notices: preserved_in_place}
sources: [{kind: repository_file, locator: 'Exact source tuple above'}, {kind: issue, repository: grwtsk/math, number: 254}, {kind: issue, repository: grwtsk/math, number: 89}]
revision_history: [{version: 0.1, date: '2026-10-19', change: Initial source-only topical association.}]
proposal_refs: []
decision_refs: [D01, D05]
---
# Source association: finite Dirichlet spectral code

[Taxonomy](../index.md) · [Spectral subject](../subjects/Analysis/OperatorTheory/SpectralTheory/index.md) · [Audit](../audit.md)

## Observed source and scope

The complete selected [source file](https://github.com/grwtsk/math/blob/eb3124bd05f0f74aaa709ca36a855539f722fb92/GRWTSK/Spectral/FreeDirichletSpectrum.lean) was read. It contains source definitions of sine vectors and cosine eigenvalues and theorem commands for a finite eigen-equation, characteristic-polynomial factorization and finite eigenvalue count. This supports a proposed topical association to spectral theory of linear operators, not a declaration that the Lean scripts have been elaborated or theorems accepted.

The source retains finite size N and the boundary conditions used by its recurrence theorem. Its named declarations and exact blob are inspection references, not a complete generated-environment inventory. No transitive import, axiom, runtime, native-evaluation or kernel audit was performed. The dependency manifest identity is pinned, but its complete resolved environment was not replayed.

## Attribution and non-implications

The existing header credits grwtsk contributors for mathematical direction and OpenAI Codex for formalization assistance and retains upstream Mathlib authorship/license obligations. It describes classical finite Dirichlet sine diagonalization and explicitly supplies no signed arithmetic pickup estimate. This association does not rewrite that header or determine originality.

The association conservatively retains attribution clarification as an unresolved review dimension; it does not claim that the inspected header literally contains the #254 marker or that this file's full historical-corpus membership was audited. Preserve every applicable marker and source-specific notice when lineage is reconciled with [#254](https://github.com/grwtsk/math/issues/254).

The edge is `relevantTo` in the [#89](https://github.com/grwtsk/math/issues/89) sense, not implies, equivalentTo, modelsExactly, a Lean coercion or a proof dependency. It supplies no identification of this finite matrix with a Markov transition operator, zeta source, RH criterion or the entire taxonomy. Source association, editorial review, mathematical proof and operational permission remain independent.
