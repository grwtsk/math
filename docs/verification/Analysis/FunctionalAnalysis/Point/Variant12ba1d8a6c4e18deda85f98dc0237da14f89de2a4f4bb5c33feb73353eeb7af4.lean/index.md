# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Point.Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d93bad534330cbc84056915825bd0d378401d562",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d93bad534330cbc84056915825bd0d378401d562`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.FeatureMap` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Rhetorical.Kernel.Regularization` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Adjoint` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RhetoricalPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/rhetoricalpoint--0afbd790abf3ed36eedec010.md) | 29 | `declaration-track:0afbd790abf3ed36eedec010abb66d36e3b653fb4926c04fd366794fe3b3ebf1` |
| 2 | `def` | [rawVector](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/rawvector--2dda881548e76f0a48bd079b.md) | 39 | `declaration-track:2dda881548e76f0a48bd079bd4d7aa41885183b657586fd078196dbf60222c5e` |
| 3 | `theorem` | [rawVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/rawvector-ne-zero--fff0b1de86cc4a28c5df6aab.md) | 43 | `result-track:fff0b1de86cc4a28c5df6aab71d50cdaff2227121dcd3e59f218cd2623d49502` |
| 4 | `def` | [vector](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/vector--53c6c4215606ac75f8fb2ca6.md) | 55 | `declaration-track:53c6c4215606ac75f8fb2ca6ddc9c51ad6d3e76e25426db5fed6e86d292fcb7f` |
| 5 | `theorem` | [vector_norm_one](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/vector-norm-one--4f2e57ff8def6d36e1ec73f3.md) | 60 | `result-track:4f2e57ff8def6d36e1ec73f3a670a0392074bf185d9d2e950246e94abf695a05` |
| 6 | `def` | [projection](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/projection--e5a7e5ec20a7e20f8ffc8e42.md) | 68 | `declaration-track:e5a7e5ec20a7e20f8ffc8e42854303e49525132f7c0c5c3090c5d102e32bd1da` |
| 7 | `theorem` | [projection_selfAdjoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/projection-selfadjoint--f68e396f4eb4b45b9fe9526c.md) | 73 | `result-track:f68e396f4eb4b45b9fe9526c87a867415c0c647eeb06b47e2866013c8f4ce153` |
| 8 | `theorem` | [projection_idempotent](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/projection-idempotent--8e336cb193fe5eb86c93be74.md) | 78 | `result-track:8e336cb193fe5eb86c93be746a555c27774f2c099133984532138e5de55d38c0` |
| 9 | `theorem` | [projection_isStarProjection](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/projection-isstarprojection--15ff676b866170c22fb66687.md) | 83 | `result-track:15ff676b866170c22fb66687ac394763507244c18809780627253c9776d8c2d8` |
| 10 | `def` | [regularizedRhetoricalPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/regularizedrhetoricalpoint--be45848f081e4c2ea136cf1b.md) | 91 | `declaration-track:be45848f081e4c2ea136cf1bfabf4a097d30ec6b323077dbe6490fcaab7e2fd5` |
| 11 | `theorem` | [regularized_rhetoricalVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/regularized-rhetoricalvector-ne-zero--f970819157293cb173e718e7.md) | 116 | `result-track:f970819157293cb173e718e77563846541ba7b23a0b6acdbce0cb913451789a4` |
| 12 | `def` | [productionRhetoricalPoint](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/productionrhetoricalpoint--2623b92f21a5818bc2e44021.md) | 126 | `declaration-track:2623b92f21a5818bc2e440216fbf70bfcd56eac005ccfb12c1431550003eab38` |
| 13 | `theorem` | [production_rhetoricalVector_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/Point/Variant12ba1d8a6c4e18deda85f98dc0237da14f89de2a4f4bb5c33feb73353eeb7af4.lean/declarations/production-rhetoricalvector-ne-zero--ccd58012ba3eb16d595b7bd1.md) | 134 | `result-track:ccd58012ba3eb16d595b7bd16a54292def3835c1e7ba6aeaafbd37b2e1489007` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
