# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimits.Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f89f8b314ec10f03ae91605f33cb14969f6fd81",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f89f8b314ec10f03ae91605f33cb14969f6fd81`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean.json)

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
| 1 | `abbrev` | [preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preserveslimit--b3cd93823dc690a162ee2ef2.md) | 35 | `declaration-track:b3cd93823dc690a162ee2ef2dcecd60c450a42f4a06f9d1134bf481d68856ee8` |
| 2 | `lemma` | [preservesLimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preserveslimit-iff--4695a5c1c0ccf37ff4c9ab51.md) | 38 | `result-track:4695a5c1c0ccf37ff4c9ab513a8f25c76f9108f0325334e4e226aff9551c7c2c` |
| 3 | `lemma` | [congr_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/congr-preserveslimit--91723a983b3ec4ebef7e4a19.md) | 41 | `result-track:91723a983b3ec4ebef7e4a1980d5722d003efc5feacdf7673c07d37ec41bab44` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--77babcc11bd326f70fed1b63.md) | 48 | `declaration-track:77babcc11bd326f70fed1b630f09ab419c98050b38d4f40b5734e101f20380b2` |
| 5 | `abbrev` | [preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservescolimit--45ca691c413e3f83865579b3.md) | 54 | `declaration-track:45ca691c413e3f83865579b3db670d89f2674c98cd125f892a98ce9ae7df921a` |
| 6 | `lemma` | [preservesColimit_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservescolimit-iff--1715d7198651fac1900686b0.md) | 57 | `result-track:1715d7198651fac1900686b0d5e554cae537fc754b94c2717a49785747302dd5` |
| 7 | `lemma` | [congr_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/congr-preservescolimit--1ce5f310938de9709aaba1eb.md) | 60 | `result-track:1ce5f310938de9709aaba1eb7477dfb23e10e78e869064e1fa8b0913ee030163` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--821c9064f930327b6b34c245.md) | 67 | `declaration-track:821c9064f930327b6b34c245640fe21c4f85c0e10ea2c9bce08bcfaea0787e5f` |
| 9 | `abbrev` | [preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preserveslimitsofshape--a2a1d9c759c49c789c7d91f5.md) | 72 | `declaration-track:a2a1d9c759c49c789c7d91f57ebcd5cd9e746750d6a51d1ac11c88599f8b4037` |
| 10 | `lemma` | [preservesLimitsOfShape_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preserveslimitsofshape-iff--62ca468dadbdc70bb4ce701d.md) | 75 | `result-track:62ca468dadbdc70bb4ce701db2ed074a5e75dce7a4d856d672a1aa553735f9f4` |
| 11 | `lemma` | [preservesLimitsOfShape_eq_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preserveslimitsofshape-eq-isup--e55d1fba5129c9969460c7da.md) | 78 | `result-track:e55d1fba5129c9969460c7dae336738f9a828fea0a7bf68016cf09d8a26b6ec5` |
| 12 | `lemma` | [congr_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/congr-preserveslimitsofshape--b3847ca7604a05d317d00e34.md) | 86 | `result-track:b3847ca7604a05d317d00e34fb393135041d2d94e77f0d04de900bf2bd679b30` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--4b0e0cbb569f9dbdd93ecb49.md) | 93 | `declaration-track:4b0e0cbb569f9dbdd93ecb495f1f9c85802cec215b46f9cdb44291f66f955070` |
| 14 | `abbrev` | [preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservescolimitsofshape--952ab0e519182fd47f304401.md) | 99 | `declaration-track:952ab0e519182fd47f304401209f479b2dac733ee628db4950afc61a042c20f6` |
| 15 | `lemma` | [preservesColimitsOfShape_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservescolimitsofshape-iff--91196d43f2d831926bc5092f.md) | 102 | `result-track:91196d43f2d831926bc5092f7e5f7d7091a1533549702824644f93800c6f249c` |
| 16 | `lemma` | [preservesColimitsOfShape_eq_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservescolimitsofshape-eq-isup--ad6326341b9de4ca98bdbd9d.md) | 105 | `result-track:ad6326341b9de4ca98bdbd9d116333dcd48c509eda07ba00f55b82cc9b1dad0a` |
| 17 | `lemma` | [congr_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/congr-preservescolimitsofshape--c94ab278acb0468f3ae15c3b.md) | 113 | `result-track:c94ab278acb0468f3ae15c3b588903d4e77690033267456b0ea16e4e9f2fd2b8` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--0d73bba5a7480bc1e88ea85a.md) | 120 | `declaration-track:0d73bba5a7480bc1e88ea85a40bd490c857ba5e0d043fad11cc05cddb4aef4e5` |
| 19 | `abbrev` | [preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservesfinitelimits--78287f19ca5fe0956f5c399c.md) | 126 | `declaration-track:78287f19ca5fe0956f5c399c1e01e7316568f3b689e85b67566c98df5fa6f9af` |
| 20 | `lemma` | [preservesFiniteLimits_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservesfinitelimits-iff--9358e4118c049612cbd07ef8.md) | 129 | `result-track:9358e4118c049612cbd07ef82c047cf8ad896986641808fe0cfb56a39add67b5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--3ab6e3265cf346b2c1906da9.md) | 132 | `declaration-track:3ab6e3265cf346b2c1906da99bd75d47afddd4a7e4fea11c5987bd3f9971f218` |
| 22 | `abbrev` | [preservesFiniteColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservesfinitecolimits--4330b3cd7fcbcdc15f264ef2.md) | 137 | `declaration-track:4330b3cd7fcbcdc15f264ef2e7c812a25e8f54f83d99b9da3ab788a587c84afb` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--12bb3e39bb977afc4fa98141.md) | 139 | `declaration-track:12bb3e39bb977afc4fa98141495b988852b8ae75bb8cde367aa1e94fe7b92a51` |
| 24 | `lemma` | [preservesFiniteColimits_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/preservesfinitecolimits-iff--3c86c4becf3b8783e304419a.md) | 143 | `result-track:3c86c4becf3b8783e304419a2c6e707bef61a939d15b31550350b2990fca0bfb` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--b303e352c56a8e7d1164885c.md) | 147 | `declaration-track:b303e352c56a8e7d1164885c21681492c633ed9b11e93823e18dc13057103399` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimits/Variantab1c30a53a9c2d2f512ccc2a74a0db38c3afdbc3dcf865a2a240b34657cc5889.lean/declarations/instance--092d259353705404edeef438.md) | 162 | `declaration-track:092d259353705404edeef43826c4122cd102cc7cf588e8b5b92853e46984b5fb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
