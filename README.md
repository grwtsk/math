# GRWTSK mathematics

Mathematical results, formal proofs, and explicit open problems by **grwtsk contributors**. This is the canonical source for GRWTSK mathematics.

[**Browse the results index →**](docs/mathematics/index.md)

[Every source and declaration](docs/mathematics/complete-source-index.md) · [Source-bound verification coverage](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

The complete catalogue records **72,578 source modules and 1,722,561 declaration observations** at source revision [`706c62c`](https://github.com/grwtsk/math/commit/706c62c1285a9857cb9d52e0620ec2cb514eb374). Each record retains its verification state.

## Navigating the collection

- Use the [results index](docs/mathematics/index.md) to browse every subject entry point and its result previews.
- Follow increasingly specific subjects, object guides, and result articles within [`docs/mathematics/`](docs/mathematics/), with an index at each level. The [selected-family catalogue](docs/reference/results.md) retains its original evidence records.
- Start with the [least-prime walkthrough](docs/start/least-prime.md) for a small example with an exact statement, proof, and Lean consumer.
- Browse the [complete source catalogue](docs/mathematics/complete-source-index.md) for every module and observed declaration, including definitions, instances, examples and pending or blocked checks. Each article links to its verification target and scoped public evidence.
- The [historical theorem/result occurrence catalogue](docs/reference/result-occurrences.md) retains its original source identities. A lexical occurrence is not a verified theorem.
- The [Lean library](GRWTSK/) contains the formal sources; [`GRWTSK.lean`](GRWTSK.lean) is the public library entry point. [Verification specifications](docs/verification/README.md) describe static replay targets.

Examples include [least natural prime](docs/mathematics/NumberTheory/Primes/least-prime.md), [coverage and discrete quotas](docs/mathematics/CombinatoricsAndDiscreteMathematics/Sequences/coverage-and-quotas.md), and [polynomial return with paid error](docs/mathematics/Analysis/AsymptoticAnalysis/polynomial-error.md). Their pages and catalogue records retain their individual hypotheses and evidence limits.

## Reading the results

The collection contains formal proofs, conditional results, written arguments, finite certificates, and source candidates awaiting verification. Each result must be read with its exact hypotheses, source revision, and verification scope. Historical evidence is not a fresh check of changed source bytes.

[From ethical obligations to mechanistic reasoning](docs/mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/MechanisticReasoning/ethics-capsules.md) develops typed judgments, rooted authority, observation support, composition, bounded work, revision, and implementation refinement. Its three isolated `Init`-only companions have a [static verification target](docs/verification/_unscoped/ethics-mechanistic-reasoning-v0.1.toml); medical interpretation and actual implementation correspondence remain separate obligations.

Finite spectral calculations do not by themselves identify the complete zeta-zero divisor. Tensor or block representations do not imply a quantum algorithm or speedup. A successful build does not settle the Riemann hypothesis, GRH, ABC, or the open Möbius cross-energy bound.

## Build

Build the public Lean library with the committed toolchain and dependency manifest:

```sh
lake build --wfail
```

The committed `lean-toolchain` and `lake-manifest.json` pin the public Lean and Mathlib inputs. Build success alone is not an axiom audit, finite-certificate validation, or acceptance of an unresolved application premise.

Static replay targets for external verification are described under [`docs/verification/`](docs/verification/README.md). The legacy [`verification/`](verification/README.md) directory is only a compatibility boundary for non-target fixtures and custody records. No operational cache or execution receipt is canonical repository content.

## Repository boundary

This repository owns pure mathematics and static, source-bound verification specifications. Process execution, mutable caches, operational receipts, scheduling, authority records, WSC coordination, Git publication workflows, and generated proof-capsule documentation belong to [`grwtsk/noeaaeue`](https://github.com/grwtsk/noeaaeue), which consumes pinned `grwtsk/math` revisions through typed Git bindings.

A mathematical acceptance target may specify exact modules, declarations, source files, dependency revisions, trust policy, certificate relations, and hostile controls. Checkout, tool acquisition, process invocation, resource metering, log capture, receipt creation, and capsule publication are external effects.

## Licensing and provenance

Local contributions are attributed to **grwtsk contributors** and use the [MIT license](LICENSE). Retained upstream terms and upstream individual credit appear in [NOTICE](NOTICE), [LICENSES](LICENSES), and source headers. Effectful verification and publication provenance is recorded by Noeaaeue against exact repository commits, trees, paths, and blobs.
