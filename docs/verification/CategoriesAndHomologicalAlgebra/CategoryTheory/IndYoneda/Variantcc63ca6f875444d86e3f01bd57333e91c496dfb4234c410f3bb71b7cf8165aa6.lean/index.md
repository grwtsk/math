# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IndYoneda.Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45d56e6704af16316195d09055f19b9c6677fb1b",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45d56e6704af16316195d09055f19b9c6677fb1b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Opposites` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coyonedaOpColimitIsoLimitCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/coyonedaopcolimitisolimitcoyoneda--0647935b190c71c1a6c71a01.md) | 43 | `declaration-track:0647935b190c71c1a6c71a01cc2e73073662bb43ef1a6c8e1baebe2dcbec571c` |
| 2 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda_hom_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/coyonedaopcolimitisolimitcoyoneda-hom-comp--8585a22f70f163a7d5f8fe7e.md) | 48 | `result-track:8585a22f70f163a7d5f8fe7eaa86be06aba9d58abf6099d075edd4ef4a2d3f50` |
| 3 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/coyonedaopcolimitisolimitcoyoneda-inv-comp--f3763fbeef17083c7ed37fd4.md) | 56 | `result-track:f3763fbeef17083c7ed37fd44334427b7c4653d38027e3a17ec17f0f42daca25` |
| 4 | `def` | [colimitHomIsoLimitYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimithomisolimityoneda--37ccc09830796c5c0ce18b9b.md) | 63 | `declaration-track:37ccc09830796c5c0ce18b9b8e49305ad71c3d824c110189d1dea215c213e79c` |
| 5 | `lemma` | [colimitHomIsoLimitYoneda_hom_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimithomisolimityoneda-hom-comp--7f996c5e2d270b266165a7c8.md) | 69 | `result-track:7f996c5e2d270b266165a7c838253413237bb892d3e598f2a0a034ccf96ae2cc` |
| 6 | `lemma` | [colimitHomIsoLimitYoneda_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimithomisolimityoneda-inv-comp--e07db1596dd495996d8327d8.md) | 78 | `result-track:e07db1596dd495996d8327d8ceaa6d0688d34257fdea7c3c90658f925ba578da` |
| 7 | `def` | [coyonedaOpColimitIsoLimitCoyoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/coyonedaopcolimitisolimitcoyoneda--795b48fdec4eab7371eb3881.md) | 91 | `declaration-track:795b48fdec4eab7371eb38818978ee4e999e999ad1aa70c0132edcf1df6c4e27` |
| 8 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda'_hom_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/coyonedaopcolimitisolimitcoyoneda-hom-comp--7b6c15514997b5b8adbb3c83.md) | 96 | `result-track:7b6c15514997b5b8adbb3c83f9005ed2493e9edbb0ea97d3a5c624fc1ae13b61` |
| 9 | `lemma` | [coyonedaOpColimitIsoLimitCoyoneda'_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/coyonedaopcolimitisolimitcoyoneda-inv-comp--85e21cca4fb204ffd49faef2.md) | 104 | `result-track:85e21cca4fb204ffd49faef2be4bec5c6d8f01da3d23a411f88a7f477f04b1e0` |
| 10 | `def` | [colimitHomIsoLimitYoneda'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimithomisolimityoneda--05c6a910046c947f29d82c1a.md) | 111 | `declaration-track:05c6a910046c947f29d82c1a07d95bbc667f857cd23372ba7c0cc6e719338d7b` |
| 11 | `lemma` | [colimitHomIsoLimitYoneda'_hom_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimithomisolimityoneda-hom-comp--55974cac1358b84a4cd05e8e.md) | 116 | `result-track:55974cac1358b84a4cd05e8e6359cafd837a93fea11cd9b458a563f185c99b22` |
| 12 | `lemma` | [colimitHomIsoLimitYoneda'_inv_comp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimithomisolimityoneda-inv-comp--e38fb53ae6a333d5f3f84650.md) | 126 | `result-track:e38fb53ae6a333d5f3f846501dbf9c61735d0c07dc234fb0043be208634a6f94` |
| 13 | `def` | [colimitCoyonedaHomIsoLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimit--a1fbeb969faac034d0c0fe38.md) | 142 | `declaration-track:a1fbeb969faac034d0c0fe38a4380abc08dcc6bf0f00b9909f8e9fb402f3a492` |
| 14 | `lemma` | [colimitCoyonedaHomIsoLimit_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimit-apply--373911005c01a8f0537d5093.md) | 148 | `result-track:373911005c01a8f0537d5093e28fb68f6041c0b3052ef9a85713d019aef25beb` |
| 15 | `def` | [colimitCoyonedaHomIsoLimitLeftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimitleftop--ffb67597632881fd97b2937c.md) | 170 | `declaration-track:ffb67597632881fd97b2937c2762132c925ae79188360c711a4da971fb61eb23` |
| 16 | `lemma` | [colimitCoyonedaHomIsoLimitLeftOp_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimitleftop-apply--a288e3b5bc5b27c1bded908e.md) | 177 | `result-track:a288e3b5bc5b27c1bded908e48bc0b14997dff04e4522b42330c372eb3ce722c` |
| 17 | `def` | [colimitYonedaHomIsoLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimit--94005cf437a721c1dcdb8103.md) | 196 | `declaration-track:94005cf437a721c1dcdb81032a555888fd9cfdfefb73ca4c9415561c0c875ac4` |
| 18 | `lemma` | [colimitYonedaHomIsoLimit_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimit-apply--f77b3b6cd67283fe3d949106.md) | 202 | `result-track:f77b3b6cd67283fe3d949106137c43531caca8f0c6b3c2533c9d7b3ffeec8ec4` |
| 19 | `def` | [colimitYonedaHomIsoLimitOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimitop--6a304092d6b959e062d3e8f9.md) | 223 | `declaration-track:6a304092d6b959e062d3e8f905386bdb8779635ccc7dc00c53880e80bda70e9b` |
| 20 | `lemma` | [colimitYonedaHomIsoLimitOp_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimitop-apply--c53b74aef62286fa602f33df.md) | 230 | `result-track:c53b74aef62286fa602f33dfa10b95ede4f7e90f43153e4363c545094a02cbc6` |
| 21 | `def` | [colimitCoyonedaHomIsoLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimit--92a0853e8a813329d46df05c.md) | 248 | `declaration-track:92a0853e8a813329d46df05cdfb71c27d38c5e3f7d83d1944af736b77e5b4db7` |
| 22 | `lemma` | [colimitCoyonedaHomIsoLimit'_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimit-apply--36d767ae6d2b8fe13690600f.md) | 254 | `result-track:36d767ae6d2b8fe13690600f2a6adf6b95ebf3d8eaf04cbf2bc6ff0d04eae89f` |
| 23 | `def` | [colimitCoyonedaHomIsoLimitUnop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimitunop--9ce79ffdd8ea4964d2bb39c1.md) | 274 | `declaration-track:9ce79ffdd8ea4964d2bb39c13fe02d59174a855c4aa060ce264ff360b1a2b0b7` |
| 24 | `lemma` | [colimitCoyonedaHomIsoLimitUnop_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimitcoyonedahomisolimitunop-apply--2742dcae2e1086185c7adf24.md) | 281 | `result-track:2742dcae2e1086185c7adf247920c95468fa7392662a44d0dde21149e63b66a2` |
| 25 | `def` | [colimitYonedaHomIsoLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimit--c25281464bd88588492ada22.md) | 299 | `declaration-track:c25281464bd88588492ada2260a82dc90572d33fa7cde3293d3a93f09a138c03` |
| 26 | `lemma` | [colimitYonedaHomIsoLimit'_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimit-apply--226fb2b2ec4b738709a00533.md) | 305 | `result-track:226fb2b2ec4b738709a0053339197beca536e84bd7408357931fc7ab6e2b3b25` |
| 27 | `def` | [colimitYonedaHomIsoLimitRightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimitrightop--61a968ffc73089b015b703b8.md) | 326 | `declaration-track:61a968ffc73089b015b703b85fb5bb0cd9c1406123331e6d9511a11eb335d52d` |
| 28 | `lemma` | [colimitYonedaHomIsoLimitRightOp_π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/IndYoneda/Variantcc63ca6f875444d86e3f01bd57333e91c496dfb4234c410f3bb71b7cf8165aa6.lean/declarations/colimityonedahomisolimitrightop-apply--f62afe917498abc761ce9b99.md) | 333 | `result-track:f62afe917498abc761ce9b99090a4d1cd1dbb80f9335aa8297af85c08b82fc81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
