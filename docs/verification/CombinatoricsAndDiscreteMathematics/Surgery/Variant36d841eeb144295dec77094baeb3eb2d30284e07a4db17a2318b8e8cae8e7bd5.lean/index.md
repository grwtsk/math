# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Surgery.Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c08cb2f7c4c0e018da4ca80b1b4c48b61a2f320",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c08cb2f7c4c0e018da4ca80b1b4c48b61a2f320`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean.json)

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
| 1 | `inductive` | [SurgeryLayer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/surgerylayer--27af0400d6db48ffdacc5ec6.md) | 29 | `declaration-track:27af0400d6db48ffdacc5ec6e482be1a3d7117e31b304707f52f50cb0d3350b6` |
| 2 | `structure` | [GlobalSurgeryLocus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/globalsurgerylocus--4f590432f400862ce881457b.md) | 44 | `declaration-track:4f590432f400862ce881457b0edbda91eedfdcfa0a7a4e16b6f43c6163a33b43` |
| 3 | `structure` | [SurgeryPatch](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/surgerypatch--507b1f309598a9fc8077370a.md) | 50 | `declaration-track:507b1f309598a9fc8077370a1eb715da1cc17a0ea402426d598559e9aaf9aa6e` |
| 4 | `inductive` | [TerrainSurgeryMode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/terrainsurgerymode--c03dcf94d62395ff6ecd9adf.md) | 68 | `declaration-track:c03dcf94d62395ff6ecd9adf86121cd0deb42cc72a02c6abba613ac19eb8a4b8` |
| 5 | `structure` | [TerrainRollback](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/terrainrollback--e829ddcbb4eab364d57b1207.md) | 74 | `declaration-track:e829ddcbb4eab364d57b12075ba7bb3c36c8f44aa536ee2e5c360c2876b7ee0d` |
| 6 | `structure` | [TerrainSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/terrainsurgery--e9061ecfbdc245b89ced804a.md) | 80 | `declaration-track:e9061ecfbdc245b89ced804a0b6ad093a1714b897b88188d3767195577deafc6` |
| 7 | `theorem` | [changed_vertex_has_global_locus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/changed-vertex-has-global-locus--a87ea16ecd6d3f4d76dad36f.md) | 128 | `result-track:a87ea16ecd6d3f4d76dad36f37f2f355bd1a56f1d138c12b6c6deca5074c5302` |
| 8 | `theorem` | [complement_adjacency_unchanged](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/complement-adjacency-unchanged--c23c796ce0c2f29fd6f13638.md) | 134 | `result-track:c23c796ce0c2f29fd6f136380dce3c2109c6824e16f326b2bdc28a03f12deace` |
| 9 | `theorem` | [rollback_recovers_before](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/rollback-recovers-before--dcbef9fcc4e38b9ce99bcbb2.md) | 141 | `result-track:dcbef9fcc4e38b9ce99bcbb21e7edb1a66cee49a6287337fa10c3d880cb1a471` |
| 10 | `structure` | [ReversibleTerrainSurgery](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/reversibleterrainsurgery--4dcba5d400280964f2acace0.md) | 151 | `declaration-track:4dcba5d400280964f2acace0e6a11829e6df42ebf2bef648d3ced4c2635cce94` |
| 11 | `structure` | [SurgeryObstruction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/surgeryobstruction--5a7976653ed9e5e78d1fe242.md) | 159 | `declaration-track:5a7976653ed9e5e78d1fe242faa0f4597362dc11e2f885fffa919f1d0b58c450` |
| 12 | `theorem` | [overlay_ne_rulesetRewrite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Surgery/Variant36d841eeb144295dec77094baeb3eb2d30284e07a4db17a2318b8e8cae8e7bd5.lean/declarations/overlay-ne-rulesetrewrite--d3dc0f1eb23aaf675798275e.md) | 168 | `result-track:d3dc0f1eb23aaf675798275ed52a73610d5aa2bf4e91862b7d0251e54d824569` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
