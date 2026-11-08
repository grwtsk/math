# teorth/IEANTN adapters

[Adapter index](../README.md) · [Consumer comparisons](../CONSUMERS.md) · [MSC2020 source layout](../../taxonomy/msc2020/README.md)

Local attribution: grwtsk contributors.

Pinned upstream: [teorth/IEANTN@ec66e388e6e117c6881367f38665f310edf7cacf](https://github.com/teorth/IEANTN/tree/ec66e388e6e117c6881367f38665f310edf7cacf).
This provider imports exact upstream modules in isolated native-version packages.
The complete pinned source inventory contains 326 Lean files; inventory
coverage is not a claim that every source file is compiled or every statement proved.

Mathematical use: Explicit analytic number-theory dependency interfaces.
Missing bridge: Its claim graph tracks varying evidence roles. Admit only exact proved declarations; finite numerical or literature claims are not all kernel proofs.

| Isolated adapter directory | Upstream project | Toolchain | Import surfaces |
| --- | --- | --- | --- |
| [`docs/adapters/ieantn/Solutions/CH2.v1`](Solutions/CH2.v1/) | `Solutions/CH2.v1` | `leanprover/lean4:v4.34.0-rc2` | 51 |
| [`docs/adapters/ieantn/Solutions/CH2.v2`](Solutions/CH2.v2/) | `Solutions/CH2.v2` | `leanprover/lean4:v4.34.0-rc2` | 8 |
| [`docs/adapters/ieantn/Solutions/CH2.v3`](Solutions/CH2.v3/) | `Solutions/CH2.v3` | `leanprover/lean4:v4.34.0-rc2` | 6 |
| [`docs/adapters/ieantn/Solutions/CH2.v4`](Solutions/CH2.v4/) | `Solutions/CH2.v4` | `leanprover/lean4:v4.34.0-rc2` | 1 |
| [`docs/adapters/ieantn/Solutions/Chebyshev.v1`](Solutions/Chebyshev.v1/) | `Solutions/Chebyshev.v1` | `leanprover/lean4:v4.34.0-rc2` | 3 |
| [`docs/adapters/ieantn/Solutions/DudekPlatt.v2`](Solutions/DudekPlatt.v2/) | `Solutions/DudekPlatt.v2` | `leanprover/lean4:v4.34.0-rc2` | 1 |
| [`docs/adapters/ieantn/Solutions/DudekPlatt.v3`](Solutions/DudekPlatt.v3/) | `Solutions/DudekPlatt.v3` | `leanprover/lean4:v4.34.0-rc2` | 3 |
| [`docs/adapters/ieantn/Solutions/DudekPlatt.v4`](Solutions/DudekPlatt.v4/) | `Solutions/DudekPlatt.v4` | `leanprover/lean4:v4.34.0-rc2` | 2 |
| [`docs/adapters/ieantn/Solutions/DudekPlattNumerics.v4`](Solutions/DudekPlattNumerics.v4/) | `Solutions/DudekPlattNumerics.v4` | `leanprover/lean4:v4.34.0-rc2` | 5 |
| [`docs/adapters/ieantn/Solutions/Erdos392.v1`](Solutions/Erdos392.v1/) | `Solutions/Erdos392.v1` | `leanprover/lean4:v4.34.0-rc2` | 3 |
| [`docs/adapters/ieantn/Solutions/FKS2.v1`](Solutions/FKS2.v1/) | `Solutions/FKS2.v1` | `leanprover/lean4:v4.34.0-rc2` | 7 |
| [`docs/adapters/ieantn/Solutions/FKS2.v2`](Solutions/FKS2.v2/) | `Solutions/FKS2.v2` | `leanprover/lean4:v4.34.0-rc2` | 7 |
| [`docs/adapters/ieantn/Solutions/GammaAsymptotics.v2`](Solutions/GammaAsymptotics.v2/) | `Solutions/GammaAsymptotics.v2` | `leanprover/lean4:v4.34.0-rc2` | 10 |
| [`docs/adapters/ieantn/Solutions/Goldbach.v1`](Solutions/Goldbach.v1/) | `Solutions/Goldbach.v1` | `leanprover/lean4:v4.34.0-rc2` | 2 |
| [`docs/adapters/ieantn/Solutions/Lcm.v1`](Solutions/Lcm.v1/) | `Solutions/Lcm.v1` | `leanprover/lean4:v4.34.0-rc2` | 2 |
| [`docs/adapters/ieantn/Solutions/Lcm.v2`](Solutions/Lcm.v2/) | `Solutions/Lcm.v2` | `leanprover/lean4:v4.34.0-rc2` | 2 |
| [`docs/adapters/ieantn/Solutions/PrimeInterval.v1`](Solutions/PrimeInterval.v1/) | `Solutions/PrimeInterval.v1` | `leanprover/lean4:v4.34.0-rc2` | 1 |
| [`docs/adapters/ieantn/Solutions/RosserSchoenfeld1962.v1`](Solutions/RosserSchoenfeld1962.v1/) | `Solutions/RosserSchoenfeld1962.v1` | `leanprover/lean4:v4.34.0-rc2` | 2 |
| [`docs/adapters/ieantn/Solutions/ZeroFreeHeight.v1`](Solutions/ZeroFreeHeight.v1/) | `Solutions/ZeroFreeHeight.v1` | `leanprover/lean4:v4.34.0-rc2` | 1 |
| [`docs/adapters/ieantn/Solutions/ZetaLogDeriv.v1`](Solutions/ZetaLogDeriv.v1/) | `Solutions/ZetaLogDeriv.v1` | `leanprover/lean4:v4.34.0-rc2` | 1 |
| [`docs/adapters/ieantn/Solutions/ZetaZeroes.v1`](Solutions/ZetaZeroes.v1/) | `Solutions/ZetaZeroes.v1` | `leanprover/lean4:v4.34.0-rc2` | 2 |
| [`docs/adapters/ieantn`](./) | `.` | `leanprover/lean4:v4.34.0-rc2` | 1 |

Run `lake build` only inside the selected adapter directory using its exact toolchain. This is a requested check, not a successful receipt. Path dependencies in the copied lock are explicitly rebound to the same immutable repository subdirectory; originals and conversions are retained in catalogue.json. Upstream Lake configuration remains the pinned dependency configuration.

All compilation, fresh kernel replay, transitive axiom audits and statement-fidelity
checks are **NOT_RUN**. These are import surfaces, not newly proved GRWTSK bridges.
Conjectures, challenge stubs, unproved source premises and finite evidence retain
their original scope. Imports may expose `sorryAx` or other unapproved dependencies;
no proof acceptance is asserted. Select actual consumer declarations and reject
unapproved axiom closures before making a mathematical acceptance claim.

No process runners or upstream post-update hooks are copied into math. Some
upstream configurations have effectful hooks: `catalogue.json` records their
presence; none was executed. Source replay must reproduce or explicitly qualify
that boundary through supported Noe tooling, not silently assume an unmodified
Git checkout equals a locally patched dependency.

Original authorship remains in upstream sources; repository license/notice files
are retained when present. This package is outside root default imports/builds.
See [catalogue.json](catalogue.json) for every library, source module/blob, config and dependency
pin. Evidence scope and unresolved bridges are stated in the source and consumer notes.

## Consecutive-square consumer

The isolated PrimeInterval.v1 package now contains three subject-organized source
candidates in GRWTSK/NumberTheory/MultiplicativeNumberTheory/ConsecutiveSquarePrimeWitness.lean.
They consume the proved numerical Eθ interval criterion, remove the nonprime square
endpoint and return an actual open-interval prime/count witness. Uniform error,
threshold and strict margin premises remain explicit. No root version-port or
numerical bound is supplied. [Consumer provenance](consumer-integrations.json)
binds exact source and hypotheses. Native checks remain NOT_RUN.
