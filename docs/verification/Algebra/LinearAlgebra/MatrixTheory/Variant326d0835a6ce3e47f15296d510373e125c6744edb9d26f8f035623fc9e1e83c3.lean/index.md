# Verification target: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8f356d85cd3164075bd78b8841ce737e7ef6c14",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Matrix/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8f356d85cd3164075bd78b8841ce737e7ef6c14`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Matrix/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Matrix/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lieEquivMatrix'](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/lieequivmatrix--afe23bdfc4169ede87c1316b.md) | 54 | `declaration-track:afe23bdfc4169ede87c1316b2f9b4b6715dcb5a110c65c35077c1c140200922c` |
| 2 | `theorem` | [lieEquivMatrix'_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/lieequivmatrix-apply--5da2caecc663973b3aa0840b.md) | 63 | `result-track:5da2caecc663973b3aa0840b65e0623e30f079828ba27e4b1a6d1aac11373adb` |
| 3 | `theorem` | [lieEquivMatrix'_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/lieequivmatrix-symm-apply--4d352e8dbaa37d264be14430.md) | 68 | `result-track:4d352e8dbaa37d264be1443004bfa6d3b94a6213a7c219372a32c5178eb0f458` |
| 4 | `def` | [lieConj](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/lieconj--777372d7892be98a2b4ac473.md) | 75 | `declaration-track:777372d7892be98a2b4ac4737834d7f6d5fed042d440f1545d952d309fe25911` |
| 5 | `theorem` | [lieConj_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/lieconj-apply--596150995814d50c46fca400.md) | 79 | `result-track:596150995814d50c46fca4003c324c6f99ad4ae3cde16bdefa7b34d2f3b7a695` |
| 6 | `theorem` | [lieConj_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/lieconj-symm-apply--529b70f311e8ffb5758f8df8.md) | 85 | `result-track:529b70f311e8ffb5758f8df8c77288a1086a31ba512d0c02a246a07a0ddc4647` |
| 7 | `def` | [reindexLieEquiv](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/reindexlieequiv--b29cf471e058e15e4ca64b38.md) | 94 | `declaration-track:b29cf471e058e15e4ca64b38b244d0180f3f36be111e4b1dc294316ab081dd40` |
| 8 | `theorem` | [reindexLieEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/reindexlieequiv-apply--645464f802fa0f639a2d92b4.md) | 102 | `result-track:645464f802fa0f639a2d92b4eae764fe9005b6e1dfa459b1f0225de6b27856f1` |
| 9 | `theorem` | [reindexLieEquiv_symm](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/reindexlieequiv-symm--f4c83cfac6a3456476523941.md) | 107 | `result-track:f4c83cfac6a3456476523941442a0b63231df7747ed9c6b1b020f059377ef67e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/instance--2376f3154739eeac6d601c66.md) | 111 | `declaration-track:2376f3154739eeac6d601c66746680e730dcd07bd6a170bef6d3e45253f0a3c2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/instance--ad5a891a3d4e9bd264b4ea71.md) | 117 | `declaration-track:ad5a891a3d4e9bd264b4ea71bca42ed09ef428eb9ee13de1532dcd9b2304b964` |
| 12 | `lemma` | [lie_apply](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/lie-apply--898e8b3542d8eb1ba022e6d6.md) | 121 | `result-track:898e8b3542d8eb1ba022e6d67a0f4840600b41a7156d2469c252968f65445f6d` |
| 13 | `theorem` | [toEnd_matrix](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/toend-matrix--95eb89817cefe632311454ff.md) | 128 | `result-track:95eb89817cefe632311454ff301c8702b73b6a52b17e8a3b58780b818b9995b3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/MatrixTheory/Variant326d0835a6ce3e47f15296d510373e125c6744edb9d26f8f035623fc9e1e83c3.lean/declarations/instance--4a1162a979fb5b989b93d304.md) | 132 | `declaration-track:4a1162a979fb5b989b93d304f8cdc090a708495a8e01255b8aa95e37c51a1d87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
