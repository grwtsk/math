# Verification target: GRWTSK.Algebra.LinearAlgebra.Cycle.Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f41e16e11e05306e64804e1434b2cb50c21f54e",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f41e16e11e05306e64804e1434b2cb50c21f54e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Edge](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/edge--a2d31f50c49d9c405fff8550.md) | 16 | `declaration-track:a2d31f50c49d9c405fff85506f1c31068b034a3a7fb46f6732c638b9bd2da0e5` |
| 2 | `def` | [IsWalkFrom](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/iswalkfrom--5957d59418796a5931bdcad0.md) | 23 | `declaration-track:5957d59418796a5931bdcad01aa1c199735cd63620f383c0a10ec11bc80e8099` |
| 3 | `def` | [CycleAt](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/cycleat--890610433b148594843e7a7d.md) | 32 | `declaration-track:890610433b148594843e7a7d1439909468ac1641e426c9dd9e6ab3e44782b309` |
| 4 | `def` | [HasCycle](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/hascycle--b7d6c7ffd95db1eb6490235f.md) | 40 | `declaration-track:b7d6c7ffd95db1eb6490235fb6ab64ff29e065c7264e34c19d41ee3b48c3881f` |
| 5 | `theorem` | [edge_iff_entry](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/edge-iff-entry--cbef20f479a078a967ae954d.md) | 45 | `result-track:cbef20f479a078a967ae954df5f57231d602cf29497a3cf99a31b0dbeeed2fb1` |
| 6 | `theorem` | [isWalkFrom_nil](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/iswalkfrom-nil--6b5db5cf9eccf69433cdc3a4.md) | 52 | `result-track:6b5db5cf9eccf69433cdc3a445f0869e3619d096f58d013ebe2bd7e48ad15d89` |
| 7 | `theorem` | [isWalkFrom_cons](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/iswalkfrom-cons--9f324b6c1ef0220c266fecef.md) | 58 | `result-track:9f324b6c1ef0220c266fecef7f93ebd329fac77408dfcd3c535d90ac730363ea` |
| 8 | `theorem` | [walk_nil](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/walk-nil--649a9eceb4a7bceca50b9e22.md) | 67 | `result-track:649a9eceb4a7bceca50b9e227bc9c5930c218d5855c60c62a705395883bdfad0` |
| 9 | `theorem` | [walk_cons](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/walk-cons--0bd5b9ba0e7a0829391bec0a.md) | 73 | `result-track:0bd5b9ba0e7a0829391bec0ad72f14c7de6e2006bd6d113b9237626c9f3a9144` |
| 10 | `theorem` | [walk_single](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/walk-single--c48875d59ad7e3ca82432cc1.md) | 82 | `result-track:c48875d59ad7e3ca82432cc19184c0658a18b70f40ec8defaf283e9b83d3887e` |
| 11 | `theorem` | [walk_append](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/walk-append--9b64b9df2b77a41ffeae923c.md) | 89 | `result-track:9b64b9df2b77a41ffeae923c51c99cacb289ab435eaa3297922d8a90b26cfe43` |
| 12 | `theorem` | [cycleAt_of_loop](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/cycleat-of-loop--a787ea1ee4db6d6183756f98.md) | 104 | `result-track:a787ea1ee4db6d6183756f98a2b9df4ebb7372b6d7a03d23c6eef474cf64f985` |
| 13 | `theorem` | [cycleAt_of_two_step](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/cycleat-of-two-step--c89e65c26fefa6018da1828c.md) | 113 | `result-track:c89e65c26fefa6018da1828c8b17f6a04de8c5375b72aabda9ffa79b3bdfa21e` |
| 14 | `theorem` | [cycleAt_of_walks](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/cycleat-of-walks--def2c44366218d8271dca726.md) | 123 | `result-track:def2c44366218d8271dca726b877febd33a57b90146ee3ab6c32466e8dd73ee4` |
| 15 | `theorem` | [hasCycle_of_cycleAt](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/hascycle-of-cycleat--65e385a510e800ba39bf17c3.md) | 135 | `result-track:65e385a510e800ba39bf17c38e1c7f54f042c80967782cf29f1b3aa1bb356d04` |
| 16 | `theorem` | [hasCycle_of_loop](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/hascycle-of-loop--d6e14f4d26ed28cce9bce889.md) | 142 | `result-track:d6e14f4d26ed28cce9bce889a147c23379b3634312635b33e37bfa76ea6ad327` |
| 17 | `theorem` | [hasCycle_of_two_step](../../../../../mathematics/Algebra/LinearAlgebra/Cycle/Variantc73b5fb7b98d1340f4aabdbc726a9976a35e1d7c35c3d18b94913096d96a83cc.lean/declarations/hascycle-of-two-step--9d591a12046618f1f95b3680.md) | 150 | `result-track:9d591a12046618f1f95b368033a61d8fc5c6f953608bbbc61bd83c9e3a6e29ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
