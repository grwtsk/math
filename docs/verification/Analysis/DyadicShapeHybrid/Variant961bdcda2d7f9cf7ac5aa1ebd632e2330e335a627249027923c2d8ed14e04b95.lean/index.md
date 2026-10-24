# Verification target: GRWTSK.Analysis.DyadicShapeHybrid.Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3e8943dfd2754df0fa6b6d22a743f976a534db6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean/index.md) · [Full source](../../../../mathematics/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3e8943dfd2754df0fa6b6d22a743f976a534db6`.

Source path: `GRWTSK/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.PositiveSubdivision` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Normed` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hybridExponent](../../../../mathematics/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean/declarations/hybridexponent--9b9d57dc923b627c930487ad.md) | 30 | `declaration-track:9b9d57dc923b627c930487ad74aa87daf27cabd0e5cf66e95f57dbeeb7eaff17` |
| 2 | `theorem` | [height_width_shape_product](../../../../mathematics/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean/declarations/height-width-shape-product--22a9a5a413f14b48ca930d86.md) | 32 | `result-track:22a9a5a413f14b48ca930d860bb74eb016d8bfc25a5be8ce15a19da2d883771f` |
| 3 | `theorem` | [dyadic_polylog_budget_summable](../../../../mathematics/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean/declarations/dyadic-polylog-budget-summable--c2bd0234d2d1116c776f2e68.md) | 52 | `result-track:c2bd0234d2d1116c776f2e6836917701950e9f80fc6866ff8cdbbeb1d91fb3d4` |
| 4 | `theorem` | [positive_block_debts_summable](../../../../mathematics/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean/declarations/positive-block-debts-summable--90730976ae160b93f0b05e70.md) | 78 | `result-track:90730976ae160b93f0b05e707e577f94fd207eb7bed0449d0ccd2ab14d83fc90` |
| 5 | `theorem` | [seven_eighths_threshold](../../../../mathematics/Analysis/DyadicShapeHybrid/Variant961bdcda2d7f9cf7ac5aa1ebd632e2330e335a627249027923c2d8ed14e04b95.lean/declarations/seven-eighths-threshold--b7758767a469ae84c8930205.md) | 84 | `result-track:b7758767a469ae84c89302053bb79fd4e561e903eb5054ee07b5a9dd1086de7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
