# Verification target: GRWTSK.Algebra.LinearAlgebra.EMLCircuit.Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0541fd5e1d0a6d27b2ba59612ae12f9f32a046fd",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0541fd5e1d0a6d27b2ba59612ae12f9f32a046fd`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.EMLTree` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CircuitNodeKind](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/circuitnodekind--c4bcf911fd6913a2485c2447.md) | 13 | `declaration-track:c4bcf911fd6913a2485c244782bb261b93a6d610d80d9fe6a10adc7adb9ab9d1` |
| 2 | `def` | [matchesKind](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/matcheskind--6a03ea4764edb384a87fd2a5.md) | 21 | `declaration-track:6a03ea4764edb384a87fd2a566e0f6d1c92e3257a44b1834a62d623818cae133` |
| 3 | `structure` | [EMLCircuitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/emlcircuitmatrix--06b27ab98a5146f8ab60f14f.md) | 27 | `declaration-track:06b27ab98a5146f8ab60f14fac5d64a7cda146f6d33bc3c6a6c02a2d02d2c411` |
| 4 | `def` | [HasNodeKinds](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/hasnodekinds--0e3e6119ae9b05623744dc42.md) | 39 | `declaration-track:0e3e6119ae9b05623744dc42feee2212374b728683f9bd9106eb16aafa99551d` |
| 5 | `def` | [KindMarkersDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/kindmarkersdiagonal--9bf61eeb67b9dd265cb08026.md) | 40 | `declaration-track:9bf61eeb67b9dd265cb080260351da5a326c3593985370ce5212e9b23f5da776` |
| 6 | `def` | [ExactlyOneKindPerNode](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/exactlyonekindpernode--b300c975149fe512641c9a54.md) | 41 | `declaration-track:b300c975149fe512641c9a54785bec2c250b3d24bc92079cd41fe0d987cc8fa4` |
| 7 | `def` | [OperatorChildrenFunctional](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/operatorchildrenfunctional--73a51773df6d12cfe759c871.md) | 42 | `declaration-track:73a51773df6d12cfe759c87183b648e49aa882f73df249cf3138f613ac9a2fe9` |
| 8 | `def` | [LeafNodesHaveNoChildren](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/leafnodeshavenochildren--99c1830c4a439746030cc60c.md) | 43 | `declaration-track:99c1830c4a439746030cc60c3da760d1322cd75265bcd591d9ef2ad5f2452f35` |
| 9 | `def` | [VariableLeavesUseOneInput](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/variableleavesuseoneinput--e22b15a76850cbc7d5b7eadf.md) | 44 | `declaration-track:e22b15a76850cbc7d5b7eadfb148c48d42bae6a8619bcab673fb984c2e409d8b` |
| 10 | `def` | [ConstantLeavesUseNoInput](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/constantleavesusenoinput--5266088f9957c6e0978d23d0.md) | 45 | `declaration-track:5266088f9957c6e0978d23d0ad483b0321a8d8c37c30410fe39e8d0b8a7f748d` |
| 11 | `def` | [ChildrenDecrease](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/childrendecrease--71c5cc239d4f72caa53ddbc7.md) | 46 | `declaration-track:71c5cc239d4f72caa53ddbc7a3bfa7c5bc088dba099b573cce496bd28968f26b` |
| 12 | `def` | [ReachableFromRoot](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/reachablefromroot--f0ad0033f5dd92c80e9ab886.md) | 47 | `declaration-track:f0ad0033f5dd92c80e9ab8862a7ed13c17da9b49048b16562cb3b04fbfe360ee` |
| 13 | `def` | [RootIsLast](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/rootislast--44e1c2eaaac9f18b5f4d9cba.md) | 48 | `declaration-track:44e1c2eaaac9f18b5f4d9cbadfda6d3702a84e5042249f04e878d7c08ffa1f81` |
| 14 | `def` | [WellFormed](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/wellformed--eef640ba02d3934dc88f4bb9.md) | 50 | `declaration-track:eef640ba02d3934dc88f4bb9c8799caf7af44acac78f02f7b0dddc6c273ebdb2` |
| 15 | `def` | [lastFin](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/lastfin--0cee7670d25af0ecd45c7912.md) | 58 | `declaration-track:0cee7670d25af0ecd45c791247e837a784c0c2ace6bddf8a55d6392b0ed4530e` |
| 16 | `def` | [kindAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/kindat--167aa1d68baa463ba7042d46.md) | 63 | `declaration-track:167aa1d68baa463ba7042d4622e2e1b43834b84e80214b3e40c0938ae5b977e6` |
| 17 | `def` | [varInputAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/varinputat--ce6ed124e5a6be4aaa3596d6.md) | 76 | `declaration-track:ce6ed124e5a6be4aaa3596d6148c7a95b91aad7fbcc493fd00e5000cb666739c` |
| 18 | `def` | [leftChildAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/leftchildat--e3e9e5f9abe5328f5d345dd6.md) | 87 | `declaration-track:e3e9e5f9abe5328f5d345dd64dd1f5b984106fd0835d966d2386a64fc0cf2bec` |
| 19 | `def` | [rightChildAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/rightchildat--0f03029d97e82f2bbfc167b5.md) | 100 | `declaration-track:0f03029d97e82f2bbfc167b582f289de868fbb24f0e745271aafcf59210e1762` |
| 20 | `def` | [optionNatMatches](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/optionnatmatches--c39a2778c8057a58940847a3.md) | 115 | `declaration-track:c39a2778c8057a58940847a37701a904db38320622a2b4f74a777b712adc8547` |
| 21 | `def` | [treeKindOneMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treekindonematrix--2d7d05feb069f121441dee19.md) | 119 | `declaration-track:2d7d05feb069f121441dee1991c23a3114e3836dc0d051b3f4b05750faaf798c` |
| 22 | `def` | [treeKindVarMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treekindvarmatrix--cea8d90100095bd8669b023a.md) | 123 | `declaration-track:cea8d90100095bd8669b023a4e9197187a8fedf9db4934da88d038b59ed20606` |
| 23 | `def` | [treeKindOpMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treekindopmatrix--f7fbbaaf27f8c306276c48ce.md) | 127 | `declaration-track:f7fbbaaf27f8c306276c48ced6e7fae5877253bd43dd6cb24a26e48d9a4fe370` |
| 24 | `def` | [treeLeftEdgeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treeleftedgematrix--1629d4414004a6b471f2d6ce.md) | 131 | `declaration-track:1629d4414004a6b471f2d6cef37fe35dc525395295ebe5afe73c44ab316ed891` |
| 25 | `def` | [treeRightEdgeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treerightedgematrix--7fdf6ff3dc3d2dc2c0c6acc4.md) | 134 | `declaration-track:7fdf6ff3dc3d2dc2c0c6acc4a2a6a63a06af2e729f6a8d4716264e289295a6d0` |
| 26 | `def` | [treeInputUseMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treeinputusematrix--e7d256936f4e26933dbf8a12.md) | 137 | `declaration-track:e7d256936f4e26933dbf8a12a20709c071409858020e92869da76dde8991ad77` |
| 27 | `def` | [treeToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treetomatrix--6d0bb4a58b28eb352cccc9ee.md) | 143 | `declaration-track:6d0bb4a58b28eb352cccc9ee3eb1bfd90967a76ecfb4676c899e5d93806dfd54` |
| 28 | `def` | [matrixToTree?](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/matrixtotree--1d11fc0e2fc778d1ef664a4c.md) | 156 | `declaration-track:1d11fc0e2fc778d1ef664a4cdc60952becb212ff731b62f48882bc5495ecad8c` |
| 29 | `theorem` | [treeToMatrix_wellFormed](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/treetomatrix-wellformed--43c4fea60d00a4f910b7d7ea.md) | 159 | `result-track:43c4fea60d00a4f910b7d7ea82aea4bc01b30179e54481e5a29d6e082ad829c0` |
| 30 | `theorem` | [matrixToTree_treeToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/matrixtotree-treetomatrix--4ed683c17ef0310de096df31.md) | 169 | `result-track:4ed683c17ef0310de096df312e99631b941cb12638e024cbd7cb518c5bfa971c` |
| 31 | `theorem` | [tree_encoding_injective](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variantb474eebab6733c23e654f4c4972b882165f7b1bbf4d561e7c07cd64b5807f1a4.lean/declarations/tree-encoding-injective--aef019e261fab4660da469a0.md) | 173 | `result-track:aef019e261fab4660da469a010141943d12d0cc9fe8f57f2738e4c1267cf4d7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
