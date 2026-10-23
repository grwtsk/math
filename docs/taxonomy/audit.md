# Source-bound baseline audit

## Current source-occurrence reconciliation

The current maintained tree is now enumerated by the durable Noeaaeue source-occurrence inventory at math commit `20d18e9c383bf185719919cd1c74291c82ccd08a` and root tree `12120b756cbda0fd3d6bbc79d012179eb1df6437`. It contains all 72,343 regular `.lean` files under `GRWTSK`, including `SourceCorpus`, with exact repository, commit, tree, path, mode, Git blob, module and content-digest fields. The inventory is complete for that pinned current tree; every semantic taxonomy assignment remains `UNASSESSED`, so it does not retroactively turn the historical 2026-10-19 inspection into a semantic or historical classification review.

Inspection date: 2026-10-19. Scope: repository boundary, documentation/source-root reconciliation, selected source association, issue requirements and open-PR overlap. This is not a complete source-corpus, declaration, authorship or proof audit.

## Immutable inputs

| Input | Identity |
| --- | --- |
| math commit | `eb3124bd05f0f74aaa709ca36a855539f722fb92` |
| math root tree | `175d0a5b3fd8c76afc25e362deec135eb471f2b9` |
| `AGENTS.md` blob | `f34567ed3eb12e8ef6a268bf3e0dd14117b84c0b` |
| `README.md` blob | `63f78b31facc6e7cfbd1893a4035a0ef49ba29f6` |
| `docs/` tree | `cce2384ec895ff759f0e7c0488cf220e9e61a7b5` |
| `docs/index.md` blob | `590e06a4375f0b514ae18bff2f19b49e71c71398` |
| `GRWTSK/` tree | `bfdf232423cfbbaf9ea062e3a18a52bb8cc952bf` |
| `GRWTSK.lean` blob | `18c9070b6b9583c3d7786d2369dedfcb0126b8d8` |
| dependency manifest blob | `1f2e3e2d66253933a410e981eb359a9b454aae0b` |
| Noeaaeue commit | `48e5610d333075a317214d75575a803fe7c36c90` |
| Noeaaeue root tree | `5be24b6eb0e91b9366d967bc8eb302395f55a7d8` |

The live math branch was read again at the same commit before preparing the additive source tree. No local checkout, real index, staged changes or other actor's branch was modified. The complete nonrecursive math root and `docs/` trees contain the root `AGENTS.md` and no `docs/AGENTS.md`; `docs/taxonomy/` did not exist. The applicable instructions for this new subtree are therefore the inspected root instructions. No claim is made to have read all instructions inside unrelated source subtrees.

Sources: [root instructions](https://github.com/grwtsk/math/blob/eb3124bd05f0f74aaa709ca36a855539f722fb92/AGENTS.md), [README](https://github.com/grwtsk/math/blob/eb3124bd05f0f74aaa709ca36a855539f722fb92/README.md), [root tree](https://api.github.com/repos/grwtsk/math/git/trees/175d0a5b3fd8c76afc25e362deec135eb471f2b9), [documentation tree](https://api.github.com/repos/grwtsk/math/git/trees/cce2384ec895ff759f0e7c0488cf220e9e61a7b5).

## Separate inventories

The existing documentation index reports 12 areas, 149 object guides, 59 object groups and 886 Lean source modules. It explicitly describes its declaration-command counts as lower bounds, not accepted theorems. Those are index claims, not a fresh enumeration at this revision.

The inspected `GRWTSK/` tree instead has 22 immediate directories: Algebra; AlgebraicGeometry; Analysis; CategoriesAndHomologicalAlgebra; Combinatorics; CombinatoricsAndDiscreteMathematics; Data; DifferentialEquationsAndDynamicalSystems; DynamicalSystems; FoundationsLogicAndTypeTheory; Geometry; GroupTheory; Interfaces; LinearAlgebra; Logic; MeasureTheory; NumberTheory; Order; ProbabilityAndMathematicalStatistics; SourceCorpus; Spectral; Topology. A source root is not automatically a discipline. In particular, Interfaces and SourceCorpus are not new branches of mathematics inferred from storage names.

Sources: [existing index](https://github.com/grwtsk/math/blob/eb3124bd05f0f74aaa709ca36a855539f722fb92/docs/index.md), [source-root tree](https://api.github.com/repos/grwtsk/math/git/trees/bfdf232423cfbbaf9ea062e3a18a52bb8cc952bf).

A complete recursive response was too large for this bounded inspection. Consequently the maintained-module denominator, historical-occurrence denominator and current guide inventory remain UNRECONCILED. The three named namespace pairs are reviewed as scope questions in the [collision proposal](proposals/collisions/index.md), not merged.

## Mathematical relations and attribution

[Issue #89](https://github.com/grwtsk/math/issues/89), inspected as updated 2026-10-19T00:42:42Z, supplies noncoercible mathematical, evidentiary and provenance relation families. Its body and selected comments were read; its complete comment history was not exhaustively audited. The profile preserves these meanings and does not assert completion of #89.

[Issue #254](https://github.com/grwtsk/math/issues/254), inspected as updated 2026-10-19T17:01:13Z, keeps source-specific attribution and conceptual review open. Its reported historical occurrence counts and byte matches are not recounted here and do not become accepted-result totals. Applicable `ATTRIBUTION_CLARIFICATION_NEEDED` markers, author and upstream notices, original versions, hypotheses and dependency contexts must survive every association, split or merge. A classification cannot resolve originality or authorship.

One complete source file was read for the pilot association: [FreeDirichletSpectrum.lean](https://github.com/grwtsk/math/blob/eb3124bd05f0f74aaa709ca36a855539f722fb92/GRWTSK/Spectral/FreeDirichletSpectrum.lean), blob `677e01519c75daf5d28b09f290b80ff0dc65736a`. The [association record](associations/index.md) limits the claim to source-level spectral subject matter; it is not a kernel or dependency audit.

## Concurrent work and ownership

The open-PR search returned #269, #270, #271, #272, #273, #274, #275, #276, #277 and #278. Their descriptions were inspected for overlap, not their complete diffs. They concern active mathematical, replay-specification or history work; none is modified. In particular, the newer operator-completion source in #273 is not treated as implementation in the pinned main tree, and #274's branch-only documentation is not overwritten. The narrow open-issue title search for taxonomy returned #254; this is not an assertion that no related issue exists under another title.

Noeaaeue already owns taxonomy operations. Its [classification README](https://github.com/grwtsk/noeaaeue/blob/48e5610d333075a317214d75575a803fe7c36c90/registry/taxonomy/classification/README.md) explicitly describes the retained PMD structure as Noe-owned metadata, not a mathematical source library or proof authority. [Decision D01](decisions/index.md#d01-ownership) uses that distinction rather than recreating or migrating its framework.

Lean/Lake, compilation, native evaluation, kernel/trust audits, complete MSC reconciliation, external publication, independent mathematical/cataloging review and operational validator execution: NOT_RUN. Existing execution restrictions remain unchanged.
