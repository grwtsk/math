# GRWTSK mathematics

`grwtsk/math` is the canonical repository for GRWTSK mathematical definitions, theorems, certificate relations, exact finite mathematical kernels, public source fixtures, and explicit open mathematical obligations.

The formal sources live in `GRWTSK/`, with `GRWTSK.lean` as the public library entry point.

## Repository boundary

This repository owns pure mathematics and static, source-bound verification specifications. It does **not** own process execution, mutable caches, operational receipts, scheduling, authority records, WSC coordination, Git publication workflows, or generated proof-capsule documentation. Those effects belong to [`grwtsk/noeaaeue`](https://github.com/grwtsk/noeaaeue), which consumes pinned `grwtsk/math` revisions through typed Git bindings.

A mathematical acceptance target may specify exact modules, declarations, source files, dependency revisions, trust policy, certificate relations, and hostile controls. The corresponding checkout, tool acquisition, process invocation, resource metering, log capture, receipt creation, and capsule publication are external effects.

## Build

Build the public Lean library with the committed toolchain and dependency manifest:

```sh
lake build --wfail
```

The committed `lean-toolchain` and `lake-manifest.json` pin the public Lean and Mathlib inputs. Build success alone is not an axiom audit, finite-certificate validation, or acceptance of an unresolved application premise.

Static replay targets for external verification are described under [`docs/verification/`](docs/verification/README.md). The legacy [`verification/`](verification/README.md) directory is only a compatibility boundary for non-target fixtures and custody records. No operational cache or execution receipt is canonical repository content.

## Mathematical scope

Browse the [mathematical subjects](docs/index.md), follow the [least-prime tutorial](docs/start/least-prime.md), or consult the [selected result catalogue](docs/reference/results.md). Object guides state exact hypotheses and distinguish formal proofs, conditional results, written arguments, historical checks, finite certificates, and open obligations.

[From ethical obligations to mechanistic reasoning](docs/mathematics/Logic/MechanisticReasoning/ethics-capsules.md) develops typed judgments, rooted authority, observation support, composition, bounded work, revision, and implementation refinement. Its three isolated `Init`-only companions have a [static verification target](docs/verification/_unscoped/ethics-mechanistic-reasoning-v0.1.toml); medical interpretation and actual implementation correspondence remain separate obligations.

Finite spectral calculations do not by themselves identify the complete zeta-zero divisor. Tensor or block representations do not imply a quantum algorithm or speedup. A successful build does not settle the Riemann hypothesis, GRH, ABC, or the open Möbius cross-energy bound.

## Licensing and provenance

Local contributions use the [MIT license](LICENSE). Retained upstream terms and individual credit appear in [NOTICE](NOTICE), [LICENSES](LICENSES), and source headers. Effectful verification and publication provenance is recorded by Noeaaeue against exact repository commits, trees, paths, and blobs.
