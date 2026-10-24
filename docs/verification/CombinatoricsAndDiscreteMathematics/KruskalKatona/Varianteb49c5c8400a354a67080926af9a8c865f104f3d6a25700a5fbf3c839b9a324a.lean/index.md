# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.KruskalKatona.Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "823982778b6c949859a1a495a90fa0fd7a2e64d7",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `823982778b6c949859a1a495a90fa0fd7a2e64d7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Colex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Compression.UV` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Intersecting` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Fin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [shadow_initSeg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/shadow-initseg--1a72f00281c87fede3397745.md) | 59 | `result-track:1a72f00281c87fede3397745f3621ff169216524e0fa5db9146820b62989cae6` |
| 2 | `lemma` | [IsInitSeg.shadow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/isinitseg-shadow--3cfbbe7aa41fbbb968f7626d.md) | 108 | `result-track:3cfbbe7aa41fbbb968f7626dd2ecdc6fa7817843c81fb812663c2e587c5ddfbb` |
| 3 | `lemma` | [toColex_compress_lt_toColex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/tocolex-compress-lt-tocolex--761e5f80b19df42d75899da0.md) | 132 | `result-track:761e5f80b19df42d75899da06210e22ff7e3674f5db453032d4514170512adbf` |
| 4 | `def` | [UsefulCompression](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/usefulcompression--d982cf1415836d842f658d38.md) | 143 | `declaration-track:d982cf1415836d842f658d38ef9770581710b2e67af2467ecb3b66af4d85169a` |
| 5 | `instance` | [UsefulCompression.instDecidableRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/usefulcompression-instdecidablerel--ab685a283639d1a0b63a4938.md) | 146 | `declaration-track:ab685a283639d1a0b63a4938a6fab19dd61b2506c5fea6235ceacbcf5772e8bd` |
| 6 | `lemma` | [compression_improved](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/compression-improved--858243987b5140648b39d832.md) | 153 | `result-track:858243987b5140648b39d83298722f1ba02f6674347a0df8761ec5963bde6b24` |
| 7 | `lemma` | [isInitSeg_of_compressed](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/isinitseg-of-compressed--21ac2f90280a16b2466e00ac.md) | 174 | `result-track:21ac2f90280a16b2466e00aca6610d05051f4b0edbbfd42838e692730f9238b0` |
| 8 | `def` | [familyMeasure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/familymeasure--ebf13e6e0dcefb13744cc1f1.md) | 201 | `declaration-track:ebf13e6e0dcefb13744cc1f198ea4ce8ebb24fb6f4d7d3970a998f62e4baec3e` |
| 9 | `lemma` | [familyMeasure_compression_lt_familyMeasure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/familymeasure-compression-lt-familymeasure--e804910d6bf4ad4057e0bb45.md) | 205 | `result-track:e804910d6bf4ad4057e0bb456913a9716f68b8a5aa4653b77a182164c660ccd5` |
| 10 | `lemma` | [kruskal_katona_helper](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/kruskal-katona-helper--31292b2b4447e0a46c050c12.md) | 233 | `result-track:31292b2b4447e0a46c050c12c54c25cf2cf9d6c230adaf4f4ce03a3d735f2a90` |
| 11 | `theorem` | [kruskal_katona](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/kruskal-katona--dff3f06ce6823a005b9bce49.md) | 272 | `result-track:dff3f06ce6823a005b9bce490ef2a9dcec5be3f9c622bc5291d893dc59550bb8` |
| 12 | `theorem` | [iterated_kk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/iterated-kk--e7e05efbf11dc9e3b3b054da.md) | 289 | `result-track:e7e05efbf11dc9e3b3b054dab05b652aae3cd0d04a93e45edaf623cbaff98176` |
| 13 | `theorem` | [kruskal_katona_lovasz_form](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/kruskal-katona-lovasz-form--0ffb75ca79fc2ff9050d3901.md) | 303 | `result-track:0ffb75ca79fc2ff9050d3901afe3d6abbee83c2fff69ef264af66add5697ab8e` |
| 14 | `theorem` | [erdos_ko_rado](../../../../mathematics/CombinatoricsAndDiscreteMathematics/KruskalKatona/Varianteb49c5c8400a354a67080926af9a8c865f104f3d6a25700a5fbf3c839b9a324a.lean/declarations/erdos-ko-rado--1676b6d08d04db0584788869.md) | 349 | `result-track:1676b6d08d04db0584788869ea3ebb1e24c767f39ae879ba6cd3c5e0a5f95d62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
