# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.SubboxInduction.Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50dd7e9f464531059c5262f996a368c40fccaafa",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50dd7e9f464531059c5262f996a368c40fccaafa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/splitcenter--7e1747bff5d1512e4aa095a6.md) | 55 | `declaration-track:7e1747bff5d1512e4aa095a69a3cc996dc75aab8c9a4b5f2d0009f3cadf75003` |
| 2 | `theorem` | [mem_splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/mem-splitcenter--e5d166b76cd00d4d70c0e197.md) | 64 | `result-track:e5d166b76cd00d4d70c0e1973e4ad717c065eee144cfe8c27557a7c15fab1b05` |
| 3 | `theorem` | [isPartition_splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/ispartition-splitcenter--19a42e3bb5a864c0b8f7d0f7.md) | 66 | `result-track:19a42e3bb5a864c0b8f7d0f753adaf36a3c4f7888347545bde37455fef3b4330` |
| 4 | `theorem` | [upper_sub_lower_of_mem_splitCenter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/upper-sub-lower-of-mem-splitcenter--db3052d65ffe2c9e8626ecb1.md) | 69 | `result-track:db3052d65ffe2c9e8626ecb184fe447827b909d85b2de3134c0fc98aca7827f4` |
| 5 | `theorem` | [subbox_induction_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/subbox-induction-on--7146cf74dd445dfcf6e542b5.md) | 92 | `result-track:7146cf74dd445dfcf6e542b5775cfef4193d6b68bb387e60c942fe4f4019beb3` |
| 6 | `theorem` | [exists_taggedPartition_isHenstock_isSubordinate_homothetic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/exists-taggedpartition-ishenstock-issubordinate-homothetic--a3e9d6c8cd4c8ce4c89a9eb0.md) | 111 | `result-track:a3e9d6c8cd4c8ce4c89a9eb050d4451cfa708e872583ef3fd40e000da535c2ee` |
| 7 | `theorem` | [exists_tagged_le_isHenstock_isSubordinate_iUnion_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/exists-tagged-le-ishenstock-issubordinate-iunion-eq--1a9e17302d95297c69c2d6fe.md) | 156 | `result-track:1a9e17302d95297c69c2d6feac588d57e45c60a781ae80412cf77a862643e16b` |
| 8 | `def` | [toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/tosubordinate--3787458925b3714de6b41ac8.md) | 176 | `declaration-track:3787458925b3714de6b41ac827de1f56d0e12f9906781ef385d222674c5297bd` |
| 9 | `theorem` | [toSubordinate_toPrepartition_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/tosubordinate-toprepartition-le--f7d4695e837e5c8c45148e11.md) | 179 | `result-track:f7d4695e837e5c8c45148e11618481aea9256e7d3a2e1edfc2fe1cd9f7f50d5b` |
| 10 | `theorem` | [isHenstock_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/ishenstock-tosubordinate--2cb7d87473f34a5e69f1da01.md) | 183 | `result-track:2cb7d87473f34a5e69f1da01d11de1622957451a0e7b0a9a89fecb08a6320d9d` |
| 11 | `theorem` | [isSubordinate_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/issubordinate-tosubordinate--113bdc8c56f935c753e7945e.md) | 187 | `result-track:113bdc8c56f935c753e7945ee211de88c67c9c0e5a6c4f5120472dd3473285fd` |
| 12 | `theorem` | [distortion_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/distortion-tosubordinate--286de8ef54a0b90fc0de0c01.md) | 192 | `result-track:286de8ef54a0b90fc0de0c01ed90a95cb70cde9fd8e417ba933180554603bf6f` |
| 13 | `theorem` | [iUnion_toSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/iunion-tosubordinate--7f1d71ff290e470cf931ae34.md) | 197 | `result-track:7f1d71ff290e470cf931ae343f6b894da1e293a05b610a77b106d44e9e3bf524` |
| 14 | `def` | [unionComplToSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/unioncompltosubordinate--8fedbeb34ed46b7763838558.md) | 216 | `declaration-track:8fedbeb34ed46b77638385585b5819e568b60f460bd467b35d998f89f27b0e34` |
| 15 | `theorem` | [isPartition_unionComplToSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/ispartition-unioncompltosubordinate--df69e700470509d8e73b2508.md) | 221 | `result-track:df69e700470509d8e73b2508b623e5d1ce58486199a7d34f80f2eb534b8cbe17` |
| 16 | `theorem` | [unionComplToSubordinate_boxes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/unioncompltosubordinate-boxes--2dbc22d537a548bceb295190.md) | 228 | `result-track:2dbc22d537a548bceb29519078a3ddfae7fc30da298b12164eed95330e0c3c5b` |
| 17 | `theorem` | [iUnion_unionComplToSubordinate_boxes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/iunion-unioncompltosubordinate-boxes--ac3c0f48ce4d313e107a5971.md) | 233 | `result-track:ac3c0f48ce4d313e107a597110b68c3adfbbb937c426cdbd66babe27288e9c8b` |
| 18 | `theorem` | [distortion_unionComplToSubordinate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/SubboxInduction/Variant6d2ce33d69202b3f0a585a9d66d2ba3060d6940ded4c15e641891ef3c9c4d33e.lean/declarations/distortion-unioncompltosubordinate--36647938923d697ea33bd733.md) | 239 | `result-track:36647938923d697ea33bd73346086dd7c207cf907a53a551b61a1fbfd4482796` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
