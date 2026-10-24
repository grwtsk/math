# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c0c1899b4679dfb8cffc45aa41258b3eed615bf",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c0c1899b4679dfb8cffc45aa41258b3eed615bf`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Dimension.LinearMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.StrongRankCondition` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearMapEquivFun](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/linearmapequivfun--780539838d7cfb1fea4fdbd3.md) | 45 | `declaration-track:780539838d7cfb1fea4fdbd36f2099d45bffdb86717f2b5cbe44214c50b16884` |
| 2 | `instance` | [Module.Free.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-free-linearmap--d5c46c6a7d6d03391135467a.md) | 49 | `declaration-track:d5c46c6a7d6d03391135467a2ef897de55daf8709799cf83a4c2324bc20ef89e` |
| 3 | `instance` | [Module.Finite.linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-finite-linearmap--8bdb8beb0ed9ff36d6bddd9e.md) | 52 | `declaration-track:8bdb8beb0ed9ff36d6bddd9e420d32342608f094e72467db58bbf01ae6c474a6` |
| 4 | `theorem` | [Module.rank_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-rank-linearmap--5816952372ae677dfbf033e5.md) | 58 | `result-track:5816952372ae677dfbf033e50f4b48ca8d882084e1f7858d2002c751fb6e4c54` |
| 5 | `theorem` | [Module.finrank_linearMap](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-finrank-linearmap--71dd34ec42e5f55205539406.md) | 64 | `result-track:71dd34ec42e5f55205539406c392bcb3c9093b4fd02c01fd038398a73a440d68` |
| 6 | `theorem` | [Module.rank_linearMap_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-rank-linearmap-self--c20a1c885001af9c32451fa3.md) | 70 | `result-track:c20a1c885001af9c32451fa335f1d430dc3162b9150b9917b0b1b1cb9b1c438b` |
| 7 | `theorem` | [Module.finrank_linearMap_self](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-finrank-linearmap-self--691d118ba400ddfcf22af251.md) | 74 | `result-track:691d118ba400ddfcf22af2515bc75165bd3b324ce0d39aa6fc84b08ceb1702a3` |
| 8 | `instance` | [Finite.algHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/finite-alghom--30862ac1ab0149d68152d248.md) | 84 | `declaration-track:30862ac1ab0149d68152d24865829ae554fb274f92eeceef00f369343103e1a0` |
| 9 | `theorem` | [cardinalMk_algHom_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/cardinalmk-alghom-le-rank--fb78e0b84e7d1c968ba6a0df.md) | 89 | `result-track:fb78e0b84e7d1c968ba6a0df8d6574864826a933cd5454868f49d36149ee4218` |
| 10 | `theorem` | [card_algHom_le_finrank](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/card-alghom-le-finrank--1e8d29c5592a7bc77cbbbe57.md) | 98 | `result-track:1e8d29c5592a7bc77cbbbe577dbc2c8bfe055cab36117a9d0c16c91a14f6805c` |
| 11 | `instance` | [Module.Finite.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-finite-addmonoidhom--202802144f969299b674a39e.md) | 109 | `declaration-track:202802144f969299b674a39e21b2500e1cf03019a20c0ffda9006a38b1437e0c` |
| 12 | `instance` | [Module.Free.addMonoidHom](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/module-free-addmonoidhom--757c2c5e5b9235c84a0f0518.md) | 112 | `declaration-track:757c2c5e5b9235c84a0f051895f842fa45817235b333dcf563b014acf0f4b8c4` |
| 13 | `theorem` | [Matrix.rank_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variantd0f56c4ee5cb41d659cb68dcbedb15020f98c468c1663620e1ef80e57af3a186.lean/declarations/matrix-rank-vecmulvec--8244952c7489f62860abd9cc.md) | 118 | `result-track:8244952c7489f62860abd9cc0f33e8d366163c0c2c094b202f3a40494f4db43c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
