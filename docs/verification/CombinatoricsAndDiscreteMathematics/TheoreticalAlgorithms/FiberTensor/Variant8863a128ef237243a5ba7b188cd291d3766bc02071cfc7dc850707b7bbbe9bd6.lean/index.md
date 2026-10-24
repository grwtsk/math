# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiberTensor.Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3960c4b7f151852345cf84c96fe1dad7f18d118c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3960c4b7f151852345cf84c96fe1dad7f18d118c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Similarity` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [FactorRole](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/declarations/factorrole--3d7257006f97e24cdf0d98c6.md) | 13 | `declaration-track:3d7257006f97e24cdf0d98c60e050eecaea963290ec9a6285c889eb77bca536b` |
| 2 | `structure` | [BinaryMatrixFactor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/declarations/binarymatrixfactor--604b2dbd9030fa85f4ad9cc1.md) | 24 | `declaration-track:604b2dbd9030fa85f4ad9cc1a578cb72a4e114f8611fe12e8cd30b9ef8fb24ef` |
| 3 | `structure` | [FiberTensorSite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/declarations/fibertensorsite--d8d167cff18831165864dbac.md) | 31 | `declaration-track:d8d167cff18831165864dbac1fcb8272d1976ddd97e6a0cc5a478d97c4664c62` |
| 4 | `structure` | [BinaryMatrixFiberTensor](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/declarations/binarymatrixfibertensor--e82c7b73f040dba7ffbed462.md) | 37 | `declaration-track:e82c7b73f040dba7ffbed462204e814dcca70d02d9481c0e51f1baecd582aac5` |
| 5 | `theorem` | [binaryMatrixFiberTensor_shared_rows](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/declarations/binarymatrixfibertensor-shared-rows--f5e808bf3b6d5991ca1b64db.md) | 46 | `result-track:f5e808bf3b6d5991ca1b64db388758f7031b4b7bda960db3e03f48799e3fd493` |
| 6 | `theorem` | [fiberTensor_boundary_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiberTensor/Variant8863a128ef237243a5ba7b188cd291d3766bc02071cfc7dc850707b7bbbe9bd6.lean/declarations/fibertensor-boundary-visible--597df2d1fe2bc943597a543b.md) | 51 | `result-track:597df2d1fe2bc943597a543b8dc770813b831940c2cc5f78e51ed8ff8a090e73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
