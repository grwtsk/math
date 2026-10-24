# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Surgery.Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62813bb00bcccfddf8d1af94dd2cdd3f88ee730f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62813bb00bcccfddf8d1af94dd2cdd3f88ee730f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Terrain.AvalanchePartition` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Legality` — import line 7; external provider; requires a separately pinned dependency.
- `DAF.Manifest` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SurgeryLayer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/surgerylayer--ef1980e14e4f2c5fa5a1064b.md) | 29 | `declaration-track:ef1980e14e4f2c5fa5a1064ba13e45d7248ed4ec349c379b49631aa42fe6951a` |
| 2 | `structure` | [GlobalSurgeryLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/globalsurgerylocus--9f3fecc77f72427e3776bd0a.md) | 44 | `declaration-track:9f3fecc77f72427e3776bd0a9b867652dd3bb6bbaef60c99a7476cf4713dde39` |
| 3 | `structure` | [SurgeryPatch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/surgerypatch--425f6744ca92e2d455c86a96.md) | 50 | `declaration-track:425f6744ca92e2d455c86a9639d1d4abb14fa60123536f189807aba388df6bca` |
| 4 | `inductive` | [TerrainSurgeryMode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/terrainsurgerymode--9a3bcf7e7c7fd271816b92eb.md) | 68 | `declaration-track:9a3bcf7e7c7fd271816b92ebe94e3aa187dd0ffa9ab2b16441c5a2719bc0b840` |
| 5 | `structure` | [TerrainRollback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/terrainrollback--5596b45934d0035fa30217e4.md) | 74 | `declaration-track:5596b45934d0035fa30217e4eb3b9a937e9778768f2f43578597b0fc6e4b0ee4` |
| 6 | `structure` | [TerrainSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/terrainsurgery--031d55efe24147898035d883.md) | 80 | `declaration-track:031d55efe24147898035d883fb3fbacd0186258b9fb75c2b128a8ed1f8e80fbc` |
| 7 | `theorem` | [changed_vertex_has_global_locus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/changed-vertex-has-global-locus--93079a86155cc42b3c1f024a.md) | 128 | `result-track:93079a86155cc42b3c1f024a290462a3f23f5d40977c90ec52c8448e8c9621d6` |
| 8 | `theorem` | [complement_adjacency_unchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/complement-adjacency-unchanged--b360512041f31b90f5ad4aea.md) | 134 | `result-track:b360512041f31b90f5ad4aea835a655f253b22b7b5e905820decafbd9890fb18` |
| 9 | `theorem` | [rollback_recovers_before](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/rollback-recovers-before--c5a220637d785ffd292e5e21.md) | 141 | `result-track:c5a220637d785ffd292e5e21c2fba64dadd6b4a008fc6a298f5f8da8050cbaea` |
| 10 | `structure` | [ReversibleTerrainSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/reversibleterrainsurgery--76f535dc594ccf65c6d51b33.md) | 151 | `declaration-track:76f535dc594ccf65c6d51b33d372fe8d805d6ed8fbf11f8e6a24e0a54a660482` |
| 11 | `structure` | [SurgeryObstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/surgeryobstruction--171fb6c431c3fcdd18c16ca6.md) | 159 | `declaration-track:171fb6c431c3fcdd18c16ca6771d53938e7e78cfc4cdf1baa3f3f0b3293d7b19` |
| 12 | `theorem` | [overlay_ne_rulesetRewrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant9758138e7f1f0d9a71af6e6de3d5f0b9c81e66f63d3bc9395d95a5ee6bc0521b.lean/declarations/overlay-ne-rulesetrewrite--43574acc0c27c1aff2523959.md) | 168 | `result-track:43574acc0c27c1aff2523959a7484ea6449a284c0bda2c8fe801e392be6431e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
