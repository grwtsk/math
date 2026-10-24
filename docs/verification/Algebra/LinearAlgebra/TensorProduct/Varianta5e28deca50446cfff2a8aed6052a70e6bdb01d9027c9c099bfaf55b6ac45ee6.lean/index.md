# Verification target: GRWTSK.Algebra.LinearAlgebra.TensorProduct.Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a25df53363bdb39a3af5c11e7f2a29d666ce3e0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a25df53363bdb39a3af5c11e7f2a29d666ce3e0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Bialgebra.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coalgebra.TensorProduct` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [counit_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/counit-eq-alghom-tolinearmap--dd60746e67bed7dfe2e99495.md) | 28 | `result-track:dd60746e67bed7dfe2e99495e2a817f55ccdd783bf02e3fb0c373c0c18e477a8` |
| 2 | `lemma` | [comul_eq_algHom_toLinearMap](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/comul-eq-alghom-tolinearmap--2ac71594d6a8df7cc6ac281b.md) | 34 | `result-track:2ac71594d6a8df7cc6ac281b8612959fab42edf92a0d1a3efb2842bdfbb2a30f` |
| 3 | `instance` | [_root_.TensorProduct.instBialgebra](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/root-tensorproduct-instbialgebra--ed26bfcd29bd421ab9484e2b.md) | 41 | `declaration-track:ed26bfcd29bd421ab9484e2bc2789f7299db117ddcebab7719329c892783d4e8` |
| 4 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/map--0025952e58f588f663817a8f.md) | 51 | `declaration-track:0025952e58f588f663817a8f159918725a97bf39e1bdeb3be78cddda7522b156` |
| 5 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/map-tmul--46b5c86277458d89cc27a81d.md) | 57 | `result-track:46b5c86277458d89cc27a81df538a9268edd3f99f503cbdf29dd01a26cd8ca2b` |
| 6 | `theorem` | [map_toCoalgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/map-tocoalghom--9f0af6b8436ba39e2e8b2c14.md) | 62 | `result-track:9f0af6b8436ba39e2e8b2c143bc53c9cab660a83a62b6e49de5ee643016d9cb0` |
| 7 | `theorem` | [map_toAlgHom](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/map-toalghom--e80b70c239f3a680fd87890c.md) | 66 | `result-track:e80b70c239f3a680fd87890c0fed56171b162ec93b76b2fde55dea4a8e7dc338` |
| 8 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/assoc--1011274fa7fa1e31eccbd232.md) | 73 | `declaration-track:1011274fa7fa1e31eccbd23206526e85402ee09a4be72f70267f6bac33f2f650` |
| 9 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/assoc-tmul--501826029368eb209ab2144b.md) | 78 | `result-track:501826029368eb209ab2144bf3a97533c582c6ba852be8a38901d7439a7cc361` |
| 10 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/assoc-symm-tmul--5c22f9ccd3020b9fbb894856.md) | 83 | `result-track:5c22f9ccd3020b9fbb89485603dfa7df61deda6c69c4cca787d480395abd632c` |
| 11 | `theorem` | [assoc_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/assoc-tocoalgequiv--6c4e52bba8d8778580aeee53.md) | 88 | `result-track:6c4e52bba8d8778580aeee53cde9eebb9bfa999f4dba35f9fb506ee5f1e40f3b` |
| 12 | `theorem` | [assoc_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/assoc-toalgequiv--349b540e6b0c9466ce12e6c8.md) | 93 | `result-track:349b540e6b0c9466ce12e6c85e5549d3dcb818afc1a12e41f2ccf2cbfead9c8b` |
| 13 | `def` | [lid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/lid--e2204c6c8b5ef774a97d4e39.md) | 100 | `declaration-track:e2204c6c8b5ef774a97d4e391bb6c2c8005d0b9d66bf7e1ea607988eafc36aaf` |
| 14 | `theorem` | [lid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/lid-tocoalgequiv--bc484f7cf1f7efd919ad62fb.md) | 104 | `result-track:bc484f7cf1f7efd919ad62fb4183964aec5921f9555ad216a656d02eba057416` |
| 15 | `theorem` | [lid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/lid-toalgequiv--e94efadde442a027da1eaaa4.md) | 108 | `result-track:e94efadde442a027da1eaaa4281d708366254560e8f5cf22b99c59f1f52bca3b` |
| 16 | `theorem` | [lid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/lid-tmul--efb14194e931764553e06a68.md) | 112 | `result-track:efb14194e931764553e06a6875a399f39643d8c2cd3077092796564e36d388de` |
| 17 | `theorem` | [lid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/lid-symm-apply--d127bf5f3d7050c4ad7a3754.md) | 115 | `result-track:d127bf5f3d7050c4ad7a37545aa21c6fa1bd509df7d2cc4d19f8fbc2c5ad9ce8` |
| 18 | `theorem` | [coalgebra_rid_eq_algebra_rid_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/coalgebra-rid-eq-algebra-rid-apply--def9eca0ad49acfcdfcec807.md) | 119 | `result-track:def9eca0ad49acfcdfcec807ff006564fe9ae7dbe6c051a328e63f074dc2185d` |
| 19 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/rid--e59c54649329bb164819645f.md) | 125 | `declaration-track:e59c54649329bb164819645fab69a306c414a604a8948f4979d4f9e5929887a5` |
| 20 | `theorem` | [rid_toCoalgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/rid-tocoalgequiv--daa3c2e0144dedba4742e1f4.md) | 133 | `result-track:daa3c2e0144dedba4742e1f416138d8d2895f1b70ce8553583de01c8809bf4ad` |
| 21 | `theorem` | [rid_toAlgEquiv](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/rid-toalgequiv--340d3483148f204d80b21d7a.md) | 137 | `result-track:340d3483148f204d80b21d7a5d1cbaba70e6832751a5d2a082b97b171e884909` |
| 22 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/rid-tmul--6baad4bb4768afcab5525813.md) | 143 | `result-track:6baad4bb4768afcab552581341b4533854a4c1424481a09dfd3b0bff9a374404` |
| 23 | `theorem` | [rid_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/rid-symm-apply--ef3aa1b1497bdad455532126.md) | 146 | `result-track:ef3aa1b1497bdad455532126177a2a0bcbc229b25078b7c26e8eebf07f369f47` |
| 24 | `abbrev` | [lTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/ltensor--a173fb1384f2c8170b186783.md) | 157 | `declaration-track:a173fb1384f2c8170b1867831accdc20e0375723333bb659fb4b6b22ff4c9607` |
| 25 | `abbrev` | [rTensor](../../../../../mathematics/Algebra/LinearAlgebra/TensorProduct/Varianta5e28deca50446cfff2a8aed6052a70e6bdb01d9027c9c099bfaf55b6ac45ee6.lean/declarations/rtensor--3c28f9c5f3be6a04ffcdfca4.md) | 161 | `declaration-track:3c28f9c5f3be6a04ffcdfca4a2d734deae6c4353acf526d785f59384dc3e650e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
