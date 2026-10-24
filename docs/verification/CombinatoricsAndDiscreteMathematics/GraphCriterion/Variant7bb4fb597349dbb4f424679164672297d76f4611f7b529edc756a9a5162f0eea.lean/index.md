# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCriterion.Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "387da74301a6d0c732da87a655888df988a3ad22",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `387da74301a6d0c732da87a655888df988a3ad22`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.Congruence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/admissible--c076315f31646350d5342973.md) | 27 | `declaration-track:c076315f31646350d5342973ec1f7779546100fc81eb5be5cb88b267db9c8a3e` |
| 2 | `def` | [Marked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/marked--846226c00275a96086a5a115.md) | 32 | `declaration-track:846226c00275a96086a5a115924e0d41e0dd5c0e2d926e8f7c8528eac2eefc01` |
| 3 | `def` | [Connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/connected--3b2a948dd22703e0324edf3c.md) | 38 | `declaration-track:3b2a948dd22703e0324edf3c4847e1c32d6774f2d065200d9d0d1e1538e587d7` |
| 4 | `def` | [IsGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/isgraphwitness--9387a206da46881ad4814590.md) | 44 | `declaration-track:9387a206da46881ad481459093222dacb275f62a5842362c8ed6daa6a5c8aa24` |
| 5 | `def` | [HasGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/hasgraphwitness--b61e1441b90e4be2ab89d0fd.md) | 56 | `declaration-track:b61e1441b90e4be2ab89d0fd0c27171dc05d4f51fb9204e9f0293b8c64e5f92f` |
| 6 | `def` | [principalColor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/principalcolor--47a34888f43ca439d7d0fd5b.md) | 64 | `declaration-track:47a34888f43ca439d7d0fd5b92b2537fdf58a8e6cdf5a2d7ebbf1323feb959da` |
| 7 | `theorem` | [principalColor_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/principalcolor-le--f0925e19cc94baed51e03a71.md) | 68 | `result-track:f0925e19cc94baed51e03a713c8d4c102fc65463662ae83144440eccef745eac` |
| 8 | `theorem` | [map_bot_equality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/map-bot-equality--bc46339ff4e9ab7c77acdcc9.md) | 74 | `result-track:bc46339ff4e9ab7c77acdcc95c3a1f6c73e74e7605d03a58946de2948caf0123` |
| 9 | `theorem` | [principalColor_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/principalcolor-eq-bot--e8d9d626f0a7af40ccb86450.md) | 81 | `result-track:e8d9d626f0a7af40ccb8645000b7caa46c3346111c28efc4bc291cc5b2075b44` |
| 10 | `theorem` | [principalColor_triangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/principalcolor-triangle--086457440fe396a4995b48fa.md) | 86 | `result-track:086457440fe396a4995b48fad487848d3b30f5be7cc8ceb512c62dfdd1c40da1` |
| 11 | `theorem` | [principalColor_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/principalcolor-reflect--12f1d943983624c899eb3884.md) | 95 | `result-track:12f1d943983624c899eb38844d080c404895c6cc39c585c57a5a0a0afbb8fa76` |
| 12 | `theorem` | [admissible_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/admissible-id--e5649f8dec1bbf85cdc5fe2e.md) | 110 | `result-track:e5649f8dec1bbf85cdc5fe2eaab8913d7ff7a97dd4f69f72a5949caa4eacc1d2` |
| 13 | `theorem` | [Admissible.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/admissible-comp--6fd45fbd7120fbc5f8bf8b52.md) | 113 | `result-track:6fd45fbd7120fbc5f8bf8b522f026de5ad82d12872489d8ddeabbe7f62f88981` |
| 14 | `theorem` | [marked_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/marked-map--016955297f42ce2224ea6c86.md) | 119 | `result-track:016955297f42ce2224ea6c86bfb66a2f2a663ea84e7c859a58b7dd3f0f6a4852` |
| 15 | `theorem` | [connected_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/connected-map--b6475acf9130882f0fc03c7f.md) | 127 | `result-track:b6475acf9130882f0fc03c7f168c4078e13a16d8a1a3d6ab37ddca366afe0efb` |
| 16 | `theorem` | [translation_admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/translation-admissible--bfbf878cac9538fcffb98d35.md) | 143 | `result-track:bfbf878cac9538fcffb98d35c875377995701a6753fce8cde1cc81638e58cf8d` |
| 17 | `def` | [pathCongruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/pathcongruence--5bf7efc9262f0d74eebabacc.md) | 153 | `declaration-track:5bf7efc9262f0d74eebabaccc32a8e724500bb8af9a070181851ae0762111016` |
| 18 | `theorem` | [principalColor_connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/principalcolor-connected--a5287c4d50314c4e0c793245.md) | 160 | `result-track:a5287c4d50314c4e0c7932455c3a2bed7a98552a9d1ce6b63bb8f31e281643f4` |
| 19 | `theorem` | [principalColor_isGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/principalcolor-isgraphwitness--97f432d1ad4e60b2d685e5a0.md) | 178 | `result-track:97f432d1ad4e60b2d685e5a006c38a70162a062c45c3390a1e81bd660729289b` |
| 20 | `def` | [graphAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/graphalgebra--8e25c0f38aec8206f5fe3c0c.md) | 194 | `declaration-track:8e25c0f38aec8206f5fe3c0c964961ec914a6f5c6a488ca5b74e8c88c17a6256` |
| 21 | `theorem` | [graphAlgebra_preserves](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/graphalgebra-preserves--bf37894e36d31be4c5741e33.md) | 205 | `result-track:bf37894e36d31be4c5741e331da731b59215a43acb094f0e9f85542fe0b47499` |
| 22 | `def` | [labelCongruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/labelcongruence--a9ba39219d2523a959aa263c.md) | 216 | `declaration-track:a9ba39219d2523a959aa263cfaa0ac1880c130a905cf77a14eb4c225f75df077` |
| 23 | `theorem` | [labelCongruence_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/labelcongruence-apply--ff29ef132c332b1577e49e85.md) | 232 | `result-track:ff29ef132c332b1577e49e850e4c59ca01522acd7bea1a24bf43a05830518b35` |
| 24 | `theorem` | [labelCongruence_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/labelcongruence-le-iff--d1e2a8e1d296e69554213f1c.md) | 236 | `result-track:d1e2a8e1d296e69554213f1c85bea545bc5efe6786e9630e8ea02f162fb942a7` |
| 25 | `theorem` | [connected_below_congruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/connected-below-congruence--a6dd0154d3a833a750a39b73.md) | 249 | `result-track:a6dd0154d3a833a750a39b73731dda6978f9c7653b3f36168f75b2aa6226ec4c` |
| 26 | `theorem` | [labelCongruence_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/labelcongruence-surjective--b871c226d25d9741fca736e4.md) | 262 | `result-track:b871c226d25d9741fca736e4a201a657bc707d4e42551062ff6bfb6d45097563` |
| 27 | `def` | [graphOrderIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/graphorderiso--3a8cb16da2bc657b111a2c78.md) | 285 | `declaration-track:3a8cb16da2bc657b111a2c78ec13b1c5e3aab7fc2b8dbb39a4f3f01ae1f625a5` |
| 28 | `theorem` | [graph_criterion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant7bb4fb597349dbb4f424679164672297d76f4611f7b529edc756a9a5162f0eea.lean/declarations/graph-criterion--43017ff57d97f0c59e5d4795.md) | 300 | `result-track:43017ff57d97f0c59e5d4795b2dc4941572f0d8aeee44bd45d9a7555bb741891` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
