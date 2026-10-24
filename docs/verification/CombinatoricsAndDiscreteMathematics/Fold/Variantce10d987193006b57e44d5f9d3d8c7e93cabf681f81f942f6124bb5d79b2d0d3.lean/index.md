# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Fold.Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c426d0b3186558cab5cd0504254f7f2cbbc10f6",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c426d0b3186558cab5cd0504254f7f2cbbc10f6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Multiset.Dedup` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold--2b1badaa5a92037bad7c19dc.md) | 35 | `declaration-track:2b1badaa5a92037bad7c19dc0323b13f4511803797fc0eec53f7ebbbb41b742f` |
| 2 | `theorem` | [fold_eq_foldr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-eq-foldr--d66af809897c998f6d4fc8a0.md) | 38 | `result-track:d66af809897c998f6d4fc8a0c4e324ddf0dc4bbc34ba125c730c3d56e0d0f98c` |
| 3 | `theorem` | [coe_fold_r](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/coe-fold-r--6481149aea654d2aa2f005c1.md) | 43 | `result-track:6481149aea654d2aa2f005c1f6a5b633c56a64efb1a4b2dfd9ebe026adb0d404` |
| 4 | `theorem` | [coe_fold_l](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/coe-fold-l--129231b765066a8a1bf247f0.md) | 46 | `result-track:129231b765066a8a1bf247f03eaed2e2458ce0e19573d080578a5f2fc5805c33` |
| 5 | `theorem` | [fold_eq_foldl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-eq-foldl--a4e584f398ed3845430cdc71.md) | 49 | `result-track:a4e584f398ed3845430cdc7151db518198d76f124fc9172241d63533efc48b76` |
| 6 | `theorem` | [fold_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-zero--4df1adda475daa9886961c9a.md) | 54 | `result-track:4df1adda475daa9886961c9a2d047993b672ea067c97c82acef53aac7b8e3731` |
| 7 | `theorem` | [fold_cons_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-cons-left--f2c13dd723096209ed6a7070.md) | 58 | `result-track:f2c13dd723096209ed6a7070fe70790f0ca1279b8c496c0361e0567110ba97e1` |
| 8 | `theorem` | [fold_cons_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-cons-right--96d7087a4f79f1c7e15b23a4.md) | 61 | `result-track:96d7087a4f79f1c7e15b23a428e55d08683bed936c874d28cb6ed0d62671d281` |
| 9 | `theorem` | [fold_cons'_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-cons-right--84bb94efdef9d324a031f10e.md) | 64 | `result-track:84bb94efdef9d324a031f10e7ad4621d416442911eafb26e520d365a9698955f` |
| 10 | `theorem` | [fold_cons'_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-cons-left--d05d0657c5de80b694a7e6b3.md) | 67 | `result-track:d05d0657c5de80b694a7e6b3b9839c2dfbe5cf73836d434e10f672a0ba04cb89` |
| 11 | `theorem` | [fold_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-add--72da106c19564c42fa35d516.md) | 70 | `result-track:72da106c19564c42fa35d516dbe8ac6b6ed13a1f3b671248c91a1ff3a4493213` |
| 12 | `theorem` | [fold_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-singleton--85086222cc267a7e07543c32.md) | 77 | `result-track:85086222cc267a7e07543c3249ba5340a56ef922214183e51fdcc0f04eb8f6c6` |
| 13 | `theorem` | [fold_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-distrib--027d83de27f563fbd9c4ac53.md) | 80 | `result-track:027d83de27f563fbd9c4ac53df3de057728ea321009fcd0e063d594f0f286545` |
| 14 | `theorem` | [fold_hom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-hom--df4c524b3e92eca6dd612510.md) | 87 | `result-track:df4c524b3e92eca6dd6125103a862e2729a845510eee5bd1468a4b460fb8953e` |
| 15 | `theorem` | [fold_union_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-union-inter--e1c31fc4fecd0d394aea1187.md) | 92 | `result-track:e1c31fc4fecd0d394aea1187517dc6a2380df1a2858433bf09fc133b62e8bec3` |
| 16 | `theorem` | [fold_dedup_idem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Fold/Variantce10d987193006b57e44d5f9d3d8c7e93cabf681f81f942f6124bb5d79b2d0d3.lean/declarations/fold-dedup-idem--642ad9e88e09cca1483d8e12.md) | 97 | `result-track:642ad9e88e09cca1483d8e1233d287818e9a78bb4d5a74eb6842d59d5096fd94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
