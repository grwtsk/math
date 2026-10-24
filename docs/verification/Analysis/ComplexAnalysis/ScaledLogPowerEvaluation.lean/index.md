# Verification target: GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5dd32cf82f5897f688145089415cc748f23651b7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ScaledLogPowerEvaluation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5dd32cf82f5897f688145089415cc748f23651b7`.

Source path: `GRWTSK/Analysis/Complex/ScaledLogPowerEvaluation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ScaledLogPowerEvaluation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DyadicExponentialEnclosure`](../../../../mathematics/Analysis/ComplexAnalysis/DyadicExponentialEnclosure.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Real.RationalLogEnclosure`](../../../../mathematics/Analysis/RealAnalysis/RationalLogEnclosure.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Complex.TentKernelEnclosure`](../../../../mathematics/Analysis/ComplexAnalysis/TentKernelEnclosure.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PowerInput](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/powerinput--cbbf8bf64cf3f8ba6a9fc455.md) | 34 | `declaration-track:cbbf8bf64cf3f8ba6a9fc4559e6d827c40ee68df14ab16f743a537542e84180e` |
| 2 | `def` | [radius](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/radius--a2fc261857a3e43326b0a857.md) | 46 | `declaration-track:a2fc261857a3e43326b0a85756f7e0a7d9abf2b1d1cd355fb2a9e645d2e7a6bd` |
| 3 | `def` | [displacement](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/displacement--49bc970f854e7ecfd4c849ce.md) | 49 | `declaration-track:49bc970f854e7ecfd4c849ce9a4b39c4ca2f81369dbcb64c44b4e78d9f9cd05a` |
| 4 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/value--c67485a758f4ed67e07f2dab.md) | 52 | `declaration-track:c67485a758f4ed67e07f2dab0daa5832ce1f017cb5919bc95f2610d9a2f0f531` |
| 5 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/error--37f2936d3d51011c97a8d54c.md) | 55 | `declaration-track:37f2936d3d51011c97a8d54c56c4bae9b2b9b8d81a7402d9d59fab02f40fdb28` |
| 6 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/sound--8d79e762ddd2801ee5cb00b0.md) | 60 | `result-track:8d79e762ddd2801ee5cb00b066861175046eaf8b86bf4f85c1e728a7fd7f6fb9` |
| 7 | `theorem` | [error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/error-nonneg--9d2bb762eccbfbbeafa56f43.md) | 80 | `result-track:9d2bb762eccbfbbeafa56f431650a65891424f33f889dc71df86e4a1d1398a3e` |
| 8 | `theorem` | [value_zero_squarings](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/value-zero-squarings--24b3b2b82e699872adcc4dbe.md) | 84 | `result-track:24b3b2b82e699872adcc4dbe5a103add07589a99cccafca39b3213c50a3471f6` |
| 9 | `theorem` | [exists_powerInput](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/exists-powerinput--c0d892a73f014cba8d56b70a.md) | 92 | `result-track:c0d892a73f014cba8d56b70afbacf4fc29a22b978844bc58a6c2c4a1ea8ceb75` |
| 10 | `structure` | [PointInput](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/pointinput--d310c541dfc094e19b6a445d.md) | 99 | `declaration-track:d310c541dfc094e19b6a445dfba31c8bd55037269d131dc6cfbbcf9ef0f48e34` |
| 11 | `def` | [value](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/value--a8bab87f1177e66f227e163a.md) | 115 | `declaration-track:a8bab87f1177e66f227e163a7489ec7894063959d2190d6e103a2b08022ec364` |
| 12 | `def` | [error](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/error--6a4074e8cc849d81eef90008.md) | 119 | `declaration-track:6a4074e8cc849d81eef90008606da6e3d99f3c90ae10f426de778b985fb8f7fd` |
| 13 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/sound--8b6d27bfccc0e6adeacadb94.md) | 125 | `result-track:8b6d27bfccc0e6adeacadb94417643164fc03e9788ef863ea9b9fb57e89e6e24` |
| 14 | `theorem` | [error_nonneg](../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/declarations/error-nonneg--6fa6582f00f39c36e5bc8445.md) | 150 | `result-track:6fa6582f00f39c36e5bc84455987da12fe31af320067f46a674ccefffa53fd6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
