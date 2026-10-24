# Verification target: GRWTSK.NumberTheory.Moebius.FiniteLaplaceSums

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b088bd8623b04393a9e7c53586933567c329034",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/FiniteLaplaceSums.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b088bd8623b04393a9e7c53586933567c329034`.

Source path: `GRWTSK/NumberTheory/Moebius/FiniteLaplaceSums.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/FiniteLaplaceSums.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LaplaceTransform.CausalExponentialResponse`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/CausalExponentialResponse.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSignal](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/finitesignal--a457dc12bdc07bcb837b9747.md) | 25 | `declaration-track:a457dc12bdc07bcb837b974774dc1a8a9ae2892b88991a7d96e0b45270eb0592` |
| 2 | `def` | [finiteLaplaceSignal](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/finitelaplacesignal--442fc7a866931414b19ffaa0.md) | 28 | `declaration-track:442fc7a866931414b19ffaa0bf87f6ecc7d4f22b3d39ee84442780cabba32834` |
| 3 | `theorem` | [finite_laplace_signal_expansion](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/finite-laplace-signal-expansion--b469af2d0b4eb2ce189493f0.md) | 31 | `result-track:b469af2d0b4eb2ce189493f073bc69b83b63bbba8ce9cb049059db19325d0495` |
| 4 | `theorem` | [finite_laplace_signal_integrable](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/finite-laplace-signal-integrable--57d5ff022dd7a22d68be62a0.md) | 43 | `result-track:57d5ff022dd7a22d68be62a088e90b4964e723610a84de91cea583e6726c69c1` |
| 5 | `theorem` | [finite_laplace_signal_integral](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/finite-laplace-signal-integral--55f88d03e9640effbfba5082.md) | 52 | `result-track:55f88d03e9640effbfba5082c80772a26513cce02572a50866725f2fb2338a73` |
| 6 | `theorem` | [finite_inventory_signal_eq_pickup](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/finite-inventory-signal-eq-pickup--4c23b32e85e244400fad0cc6.md) | 66 | `result-track:4c23b32e85e244400fad0cc6513b7708b65be6b12c643f425b67f190dad665a9` |
| 7 | `theorem` | [finite_inventory_laplace_signal_eq_pickup](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/finite-inventory-laplace-signal-eq-pickup--33b4a40aeef6abfe90f06f46.md) | 70 | `result-track:33b4a40aeef6abfe90f06f4679a598a118fe38c1ce1eb98764f0eb298ac122de` |
| 8 | `theorem` | [inventory_laplace_signal_integral](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/declarations/inventory-laplace-signal-integral--1bc4782f80e125cd28b42188.md) | 77 | `result-track:1bc4782f80e125cd28b4218843408c036e4267fb933eec6db8f179f75c9c5c2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
