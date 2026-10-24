# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphCriterion.Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3743ea3001b3af818c1310f457f7471f5dba809c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3743ea3001b3af818c1310f457f7471f5dba809c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.FiniteLatticeArithmetic.Congruence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.EquivFin` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Prod` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/admissible--0c0f8f2a10a3caff8dab2349.md) | 35 | `declaration-track:0c0f8f2a10a3caff8dab234910b816b9614e567dc91ea25dbfdace16b9fb141e` |
| 2 | `def` | [Marked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/marked--bfe302331cd6907a7df3859e.md) | 40 | `declaration-track:bfe302331cd6907a7df3859eee153592b8e29ce13b3ba50a06efd1d0ef1aa9e6` |
| 3 | `def` | [Connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/connected--c48573c36ca288b2118095e6.md) | 46 | `declaration-track:c48573c36ca288b2118095e6f5562fee12658c21a78a2bbe20c993d6b6d679dd` |
| 4 | `def` | [IsGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/isgraphwitness--aaaa641fe4dce0bd1319404c.md) | 52 | `declaration-track:aaaa641fe4dce0bd1319404ca4002d1277681c2f19fbf454a5b7b1af6aa33cc5` |
| 5 | `def` | [HasGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/hasgraphwitness--324c56e1fee686e362747316.md) | 64 | `declaration-track:324c56e1fee686e3627473168b19c632afd24dbfe796d459ec68fd87083202e5` |
| 6 | `def` | [principalColor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/principalcolor--c8c9108e8373349561d5b7cb.md) | 72 | `declaration-track:c8c9108e8373349561d5b7cbdcc3ccf91877331a67f219b7bdb6cbf8a2ce5f4c` |
| 7 | `theorem` | [principalColor_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/principalcolor-le--8723557938900a40f05d6379.md) | 76 | `result-track:8723557938900a40f05d63799e63f48da1350e3b0f1dfe3d31ee5ef316b449a1` |
| 8 | `theorem` | [map_bot_equality](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/map-bot-equality--d12a62cd767c457dc4d3d245.md) | 82 | `result-track:d12a62cd767c457dc4d3d245ef658c66afbd9f26b6b0d4f26f49b935b5108d92` |
| 9 | `theorem` | [principalColor_eq_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/principalcolor-eq-bot--a384b69482d9f9bf222e6c00.md) | 89 | `result-track:a384b69482d9f9bf222e6c002ac858193b103f98bf77ffe6ab6714d72b0983be` |
| 10 | `theorem` | [principalColor_triangle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/principalcolor-triangle--8e2334aa9a5164ee6ee09c56.md) | 94 | `result-track:8e2334aa9a5164ee6ee09c56dfb7833ec717d660e581e375c0a88d8dfa500082` |
| 11 | `theorem` | [principalColor_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/principalcolor-reflect--b5b24e202808ad4bafe9f4c6.md) | 103 | `result-track:b5b24e202808ad4bafe9f4c694f89151364c080aa9ae9acbea04af5b6c3e7794` |
| 12 | `theorem` | [admissible_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/admissible-id--53e4560691b5ca6dd211c7f7.md) | 118 | `result-track:53e4560691b5ca6dd211c7f7362b72408716818856f6ce12166cf36d1432bbda` |
| 13 | `theorem` | [Admissible.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/admissible-comp--8838f2d827666bd8574dd8d1.md) | 121 | `result-track:8838f2d827666bd8574dd8d1cbca3c79b4a3e676db759c1aecc64b095624975f` |
| 14 | `theorem` | [marked_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/marked-map--4f3e2ddeaad50b4ae892fe94.md) | 127 | `result-track:4f3e2ddeaad50b4ae892fe94154f70eed6a4c7e8a04d0292a30a64c8eeaa313a` |
| 15 | `theorem` | [connected_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/connected-map--dfa2463d6286df3d4e02ed9d.md) | 135 | `result-track:dfa2463d6286df3d4e02ed9da8b13ea118118443a999acea63e3a4bfea109c19` |
| 16 | `theorem` | [translation_admissible](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/translation-admissible--2c0b363d9af8f9b534e659c2.md) | 151 | `result-track:2c0b363d9af8f9b534e659c23ca634c2bb95ff43f4f99cc91f15b4936034b426` |
| 17 | `def` | [pathCongruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/pathcongruence--6d4c1cbdb96b8f8c6b23e6e8.md) | 161 | `declaration-track:6d4c1cbdb96b8f8c6b23e6e806f40ce92bb9365035f5d8a9359d6e84bb949840` |
| 18 | `theorem` | [principalColor_connected](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/principalcolor-connected--b2c8768bd35c44b2d5e9bcfe.md) | 168 | `result-track:b2c8768bd35c44b2d5e9bcfea13a887ae62ec0aa81da5337d625dbe7b98b3d11` |
| 19 | `theorem` | [principalColor_isGraphWitness](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/principalcolor-isgraphwitness--8c8ce33d99747423e22e7909.md) | 186 | `result-track:8c8ce33d99747423e22e7909c29407053f3d924aa408c474464d152235bcc463` |
| 20 | `def` | [graphAlgebra](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/graphalgebra--6ca29ae757c6ca98096fb929.md) | 202 | `declaration-track:6ca29ae757c6ca98096fb9297e1d5ab45047ee779b914bc831fae1f6f7b4242f` |
| 21 | `theorem` | [graphAlgebra_preserves](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/graphalgebra-preserves--6d58462db637f1038bb2bdfe.md) | 213 | `result-track:6d58462db637f1038bb2bdfeb4d74938270fd6b2421be3a42a8432601e06e709` |
| 22 | `def` | [labelCongruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/labelcongruence--a7e8b75880fbd1761c05bd56.md) | 224 | `declaration-track:a7e8b75880fbd1761c05bd56daa7be1fcfb450dc2669f424b88cf8de7d1ec86e` |
| 23 | `theorem` | [labelCongruence_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/labelcongruence-apply--8651fa45086ec512a832f6b8.md) | 240 | `result-track:8651fa45086ec512a832f6b83ce3aefd1d525e72efd223cf3dd3ada00567aa28` |
| 24 | `theorem` | [labelCongruence_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/labelcongruence-le-iff--1cbb3fe8b85a55032ab88c2a.md) | 244 | `result-track:1cbb3fe8b85a55032ab88c2a47ad73741ae6af07870db8a2026d8ffc02f17c15` |
| 25 | `theorem` | [connected_below_congruence](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/connected-below-congruence--03c6e04b2c3b067e508e2f6c.md) | 257 | `result-track:03c6e04b2c3b067e508e2f6c4e08443bbc99c249ac59f4ef4863e3ef97f48456` |
| 26 | `theorem` | [labelCongruence_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/labelcongruence-surjective--26d7f8b0f839e6d8931f27c8.md) | 270 | `result-track:26d7f8b0f839e6d8931f27c8b14e60e6f2d0d40e7581e867ae0ecd4b60d01fad` |
| 27 | `def` | [graphOrderIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/graphorderiso--882942438fc3d689051449c2.md) | 292 | `declaration-track:882942438fc3d689051449c20e2c3293430b3762e2b9187a81f17e0383fa80b4` |
| 28 | `theorem` | [graph_criterion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphCriterion/Variant33e766fb75c10dc81188e7e63db46e053b9c11e88c65ccde29425827cf1668b2.lean/declarations/graph-criterion--6b6f9bf3ec75c9395bdd9f39.md) | 305 | `result-track:6b6f9bf3ec75c9395bdd9f394e8c12d638748106f763613d86af38795a3f98d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
