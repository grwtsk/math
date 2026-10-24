# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Assoc.Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "795528a7feb85926c213ad5b952defaaf3118ee2",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `795528a7feb85926c213ad5b952defaaf3118ee2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Pasting` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackPullbackLeftIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackpullbackleftispullback--8b9b0a14316a73455279b2e5.md) | 104 | `declaration-track:8b9b0a14316a73455279b2e553c10ccdeb49f18d9826b12bd382f62431127c5d` |
| 2 | `def` | [pullbackAssocIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassocispullback--51ecb95d148ce75c878bf710.md) | 110 | `declaration-track:51ecb95d148ce75c878bf7104c81ae6d2117c4991ac350b52e9b760b837dc4f2` |
| 3 | `theorem` | [hasPullback_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/haspullback-assoc--23085ffdeb83db206f1a9d06.md) | 118 | `result-track:23085ffdeb83db206f1a9d06fa2169a614314976c353b145a87e1f2fa317843e` |
| 4 | `def` | [pullbackPullbackRightIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackpullbackrightispullback--d3a7a6e3381bef47621ddcaf.md) | 122 | `declaration-track:d3a7a6e3381bef47621ddcaf66b9769a65cd422fc20a179a77d7b1313cf572a6` |
| 5 | `def` | [pullbackAssocSymmIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassocsymmispullback--8eeed8a06cc7f41b94c7e6c3.md) | 128 | `declaration-track:8eeed8a06cc7f41b94c7e6c3dba82eff01fe06f57f3391ba757351efa4abe8c6` |
| 6 | `theorem` | [hasPullback_assoc_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/haspullback-assoc-symm--925763f08e3b5afbcee08d82.md) | 136 | `result-track:925763f08e3b5afbcee08d82bbf7d6dd4884574330291148ecf550c689d5ce0f` |
| 7 | `def` | [pullbackAssoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassoc--7d8e134869e2f6c5ca49caf0.md) | 140 | `declaration-track:7d8e134869e2f6c5ca49caf03604a8876f2716e1223b9411e07b90bf783f05a4` |
| 8 | `theorem` | [pullbackAssoc_inv_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassoc-inv-fst-fst--33ce0162f630860dae87e634.md) | 148 | `result-track:33ce0162f630860dae87e63404674094e0fa95118ec6334b10c45967c6d3b453` |
| 9 | `theorem` | [pullbackAssoc_hom_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassoc-hom-fst--3d0b0b7a5e00ef8d8a3eb360.md) | 158 | `result-track:3d0b0b7a5e00ef8d8a3eb360f3683a2b0b5ff3457fb8f9c63dea1c5656637d49` |
| 10 | `theorem` | [pullbackAssoc_hom_snd_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassoc-hom-snd-fst--75973408b228950e602e91a7.md) | 164 | `result-track:75973408b228950e602e91a761953dc67240aa9c95e0f1914efcdabd461086e7` |
| 11 | `theorem` | [pullbackAssoc_hom_snd_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassoc-hom-snd-snd--ebd983068b540b39fa453735.md) | 174 | `result-track:ebd983068b540b39fa453735f71ca62438904d2cff5b343fe1391616cc11e919` |
| 12 | `theorem` | [pullbackAssoc_inv_fst_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassoc-inv-fst-snd--4204a21d2a05914c74b733f1.md) | 184 | `result-track:4204a21d2a05914c74b733f1e0758b0a6bd911193b46e7237614d0964434fc6d` |
| 13 | `theorem` | [pullbackAssoc_inv_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pullbackassoc-inv-snd--eb68cc5dc61d352865d0994f.md) | 190 | `result-track:eb68cc5dc61d352865d0994fcaf0cb3f8cd5f366d6e54aa94363cdfd778f7a16` |
| 14 | `def` | [pushoutPushoutLeftIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pushoutpushoutleftispushout--f0a1e55b13c0fb1afbba6761.md) | 273 | `declaration-track:f0a1e55b13c0fb1afbba67616e2d78cf3bdbd902069d302eb46021c100432809` |
| 15 | `def` | [pushoutAssocIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pushoutassocispushout--cd53204c748ff5f3b50a3992.md) | 281 | `declaration-track:cd53204c748ff5f3b50a3992c2c588e9b1730957c33f0cd93bbcea51f5de9c16` |
| 16 | `theorem` | [hasPushout_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/haspushout-assoc--987154e855e337dd28b38520.md) | 289 | `result-track:987154e855e337dd28b385208ae86005af9b6802b9200017bec35bcacc2165a1` |
| 17 | `def` | [pushoutPushoutRightIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pushoutpushoutrightispushout--fe59ad3bbc30905335c37143.md) | 293 | `declaration-track:fe59ad3bbc30905335c3714333ef1748a16b8f0982a88631dee0254ff251fee2` |
| 18 | `def` | [pushoutAssocSymmIsPushout](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pushoutassocsymmispushout--49446489ec3534c4f1779f51.md) | 299 | `declaration-track:49446489ec3534c4f1779f514f2b2e5aaac30fab8c4239cd4b7d945e1dd60b2b` |
| 19 | `theorem` | [hasPushout_assoc_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/haspushout-assoc-symm--58fc3ce8b78cdcc149d8fdaa.md) | 306 | `result-track:58fc3ce8b78cdcc149d8fdaa3566f8112df7d8b2cb1d68d530e82b2af22ca29d` |
| 20 | `def` | [pushoutAssoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/pushoutassoc--d2bbb2fdb883732e4ca2d4e1.md) | 313 | `declaration-track:d2bbb2fdb883732e4ca2d4e153b16ccc6d0fd8f74c4070080481c0a3fce2a1bd` |
| 21 | `theorem` | [inl_inl_pushoutAssoc_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/inl-inl-pushoutassoc-hom--76da151e918f9a58dcfbea5e.md) | 321 | `result-track:76da151e918f9a58dcfbea5eb3bda0dd2a333e3e381582393b8bf766812e5c2f` |
| 22 | `theorem` | [inr_inl_pushoutAssoc_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/inr-inl-pushoutassoc-hom--896d6761ea726957f12b0e58.md) | 332 | `result-track:896d6761ea726957f12b0e583c0b788270aa8b818aa2a2278c1d76d29b01cb86` |
| 23 | `theorem` | [inr_inr_pushoutAssoc_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/inr-inr-pushoutassoc-inv--37f72c2398d54830ca489a55.md) | 344 | `result-track:37f72c2398d54830ca489a55db38b035e06d7a041659f9e2985c7c07c0104c42` |
| 24 | `theorem` | [inl_pushoutAssoc_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/inl-pushoutassoc-inv--a2ea76361f794c3ef3482c31.md) | 355 | `result-track:a2ea76361f794c3ef3482c31a96e93bc118dcb0c4baf76f03e5a0284c3ce63d5` |
| 25 | `theorem` | [inl_inr_pushoutAssoc_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/inl-inr-pushoutassoc-inv--e682b00a369b4bdf3f77ef72.md) | 361 | `result-track:e682b00a369b4bdf3f77ef72dad798f6f1fbfe5fc8c2c7764cf709ec2ea2b2d7` |
| 26 | `theorem` | [inr_pushoutAssoc_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variantf8616968cb9e1401de6b5f346a810dfdd5a47d52fcbfb8784562a9e35618f725.lean/declarations/inr-pushoutassoc-hom--8f1b1347fe8ce0c0c60b9ade.md) | 368 | `result-track:8f1b1347fe8ce0c0c60b9ade8a8a5313b0b931bcdcf7ddf070ea1741ce0cf71a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
