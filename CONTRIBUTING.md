# Contributing to GRWTSK mathematics

Local attribution: **grwtsk contributors**.

Questions, mathematical explanations, rigorous counterexamples, source corrections, proof candidates, and checked formalizations are welcome. **Reading, education and ordinary discussion do not require Lean or repository submission.** When a contribution is authorized, return a durable, source-bound result rather than an unattached chat transcript. Generated documentation is optional, not a condition of contribution.

Begin with the [mathematics index](docs/mathematics/index.md), [formalization guide](docs/mathematics/_support/start/formalization-contributions.md), [proof-comparison standard](docs/mathematics/_support/reference/proof-comparison-disposition.md), and [repository instructions](AGENTS.md).

## Pick the right route

| Purpose | Route |
| --- | --- |
| Ask, read, teach or explore | [Mathematical subjects](docs/mathematics/index.md); no submission required |
| Report a counterexample or missing analytical bridge | [Open the mathematical obstruction form](https://github.com/grwtsk/math/issues/new?template=01-obstruction.yml) |
| Propose a formal statement or source correspondence | [Open the formalization form](https://github.com/grwtsk/math/issues/new?template=02-formalization.yml) |
| Request exact compilation, kernel or axiom evidence | [Record a source-bound verification target](https://github.com/grwtsk/math/issues/new?template=03-verification.yml); this does **not** dispatch execution |
| Propose authored source or an explanation | Use the existing subject path and an authorized commit or [pull request](https://github.com/grwtsk/math/pulls) |

A negative result and an unresolved premise can be useful contributions. State the downstream consumer, not just the candidate formula.

## Source and mathematical review contract

1. **Pin the object.** Give the repository and commit SHA; files and fully qualified declarations; original problem, objects, quantifiers, hypotheses, source author and edition; and what downstream theorem would consume the result.
2. **Preserve the argument.** Explain the principal proof, intended application, comparison with the strongest relevant original mathematics, error terms, supports, signs, limits and counterexamples. Record missing transfers; distinguish independent proof paths from shared premises. A second proof is useful when available, not mandatory.
3. **Place by mathematics.** Use the official [MSC2020 layout](docs/taxonomy/msc2020/source-layout-v1.json) for [`GRWTSK/`](GRWTSK/) source. Link existing relevant documentation when useful; do not create matching prose documents merely because a source was added. Maintain existing namespaces and provenance. External providers use [isolated adapters](docs/adapters/README.md). Taxonomy relocations go to [#1425](https://github.com/grwtsk/math/issues/1425) pending coordinated authorization.
4. **Keep evidence orthogonal.** Record actual source inspection, Lean compilation, fresh kernel checking, transitive axiom audit, mathematical comparison and historical novelty at the precise revision checked. Use `NOT_RUN` for an unexecuted check, not an inferred pass. Neither a previous receipt nor a Git commit certifies changed bytes.
5. **Preserve source and permissions.** Review the complete diff, concurrent changes, upstream licenses and original bylines. Do not casually modify toolchain versions, umbrella imports or source paths. Paper-derived work cites the exact source and theorem in the source or associated issue/PR. The [literature register](docs/mathematics/_support/reference/literature/reading-background/paper-to-formalization-references.md) and [article standard](docs/mathematics/_support/reference/result-article-standard.md) apply only to separately requested authored documentation.

## Optional local reading and checking

This large repository supports a Git partial clone for *browsing* a subject:

```sh
git clone --filter=blob:none --sparse https://github.com/grwtsk/math.git
cd math
git sparse-checkout set GRWTSK/NumberTheory docs/mathematics docs/taxonomy
git rev-parse HEAD
git show HEAD:GRWTSK/NumberTheory/FirstPrime.lean
```

A sparse checkout can omit Lean dependencies: it is **not** a working proof-verification environment. To build a local target with the pinned toolchain and dependencies, follow the [README's single-module instructions](README.md#practical-lean-checks-optional). Report commands and outcomes only if actually run. `git diff --check` checks whitespace, not links, source fidelity or proof validity.

## Publish and review without inventing acceptance

A bounded [pull request](https://github.com/grwtsk/math/pulls) can carry an inspectable diff and the [review template](.github/PULL_REQUEST_TEMPLATE.md); an issue can retain competing arguments and negative controls. Explicitly authorized direct source changes to `main` follow [AGENTS.md](AGENTS.md): checked complete tree, concurrent-change preservation, non-force update with expected-head lease, and commit/blob readback. Unmerged PRs and detached blobs are not completed publication.

[Noeaaeue](https://github.com/grwtsk/noeaaeue) owns effectful checking, generated artefacts, mutable receipts, orchestration and proof-capsule admission. Opening an issue or adding a static target here does not trigger execution. Local attribution is **grwtsk contributors**; preserve contributors' chosen Git identities, source bylines, privacy and upstream terms. The [collection citation](CITATION.cff) is not a substitute for citing individual mathematical results.
