# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9eac73a12a83ca76aec8a96677b5a40a8f86846",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9eac73a12a83ca76aec8a96677b5a40a8f86846`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean.json)

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
| 1 | `lemma` | [FunctorCategory.prod_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/functorcategory-prod-preservescolimits--fb320167733b3875dfb65e0d.md) | 68 | `result-track:fb320167733b3875dfb65e0ddb7fa7181f4e262f59e2690cce32992af929ae1a` |
| 2 | `instance` | [whiskeringLeft_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringleft-preserveslimitsofshape--646bb22f0fdfdcc7f79828b7.md) | 94 | `declaration-track:646bb22f0fdfdcc7f79828b7f6957990abcd23e117ccabbc791ef5f994b96450` |
| 3 | `instance` | [whiskeringLeft_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringleft-preservescolimitsofshape--f330613e648638c7013a3fc7.md) | 104 | `declaration-track:f330613e648638c7013a3fc7f5c7a9614d56a3e141d54b44b12d2d4f41ddcf1c` |
| 4 | `instance` | [whiskeringLeft_preservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringleft-preserveslimits--329b8a3da4fa153a935fb13e.md) | 114 | `declaration-track:329b8a3da4fa153a935fb13e80987fb6e414da4dbe50a130305b891a621a6010` |
| 5 | `instance` | [whiskeringLeft_preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringleft-preservescolimit--187f4e7fae3c6322d3e0375d.md) | 118 | `declaration-track:187f4e7fae3c6322d3e0375d5d98151040dc821306d8a5fca3b48a035fa4166a` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/instance--3aa9d07b879f98f721893343.md) | 122 | `declaration-track:3aa9d07b879f98f721893343aa7d5522793fe5368b71fa08d4e1efe109d2f0c9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/instance--3d8607e38ff1023761ea6110.md) | 126 | `declaration-track:3d8607e38ff1023761ea61107ea4c02da3629dfd2c8f044c189982c30d6c93ae` |
| 8 | `instance` | [whiskeringRight_preservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringright-preserveslimitsofshape--53739083ab43d6b4711489b9.md) | 130 | `declaration-track:53739083ab43d6b4711489b9e8d2f906502670353c646ee14bb6a084684e3736` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/instance--409dd6ee36c7c6b17945e986.md) | 140 | `declaration-track:409dd6ee36c7c6b17945e986c843609ac03544a3cd423cdacd660fe1136ce03d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/instance--2af0674525ea878414c32dde.md) | 146 | `declaration-track:2af0674525ea878414c32dde064fd059c77e4b21b1f3c63bfd2c929e63bb3c1a` |
| 11 | `def` | [limitCompWhiskeringRightIsoLimitComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/limitcompwhiskeringrightisolimitcomp--f6512e87a7635f9f4c917051.md) | 157 | `declaration-track:f6512e87a7635f9f4c91705128d3abf4153824c0d606489c84a5e7d9a9fbfe33` |
| 12 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/limitcompwhiskeringrightisolimitcomp-inv--58d7b76c3e3c5abf0cd8104f.md) | 164 | `result-track:58d7b76c3e3c5abf0cd8104f45ac8a88ca61b70137cd47b834ecc8544778a3ae` |
| 13 | `theorem` | [limitCompWhiskeringRightIsoLimitComp_hom_whiskerRight_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/limitcompwhiskeringrightisolimitcomp-hom-whiskerright--a647fe2e616941554a68c915.md) | 172 | `result-track:a647fe2e616941554a68c9151c48d364b56d04ff69e6ca0ef0d86d4fca685184` |
| 14 | `instance` | [whiskeringRight_preservesColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringright-preservescolimitsofshape--a5bb1f6d7870ed4ffee763d4.md) | 180 | `declaration-track:a5bb1f6d7870ed4ffee763d4413f60aa2d8166a0e06246e767fd8964e63c8037` |
| 15 | `def` | [colimitCompWhiskeringRightIsoColimitComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/colimitcompwhiskeringrightisocolimitcomp--bff695a4f037450666cc09da.md) | 192 | `declaration-track:bff695a4f037450666cc09da4d0bdf62af41fb9b26238ce96a1813440b5b9644` |
| 16 | `theorem` | [ι_colimitCompWhiskeringRightIsoColimitComp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/colimitcompwhiskeringrightisocolimitcomp-hom--6289b0f7bd89fb05b67486b3.md) | 199 | `result-track:6289b0f7bd89fb05b67486b385b6cdaf7f1e7fd659c9bf10192b28f2cc56ef29` |
| 17 | `theorem` | [whiskerRight_ι_colimitCompWhiskeringRightIsoColimitComp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskerright-colimitcompwhiskeringrightisocolimitcomp-inv--0ba2f94c2555ee5689daf9c6.md) | 207 | `result-track:0ba2f94c2555ee5689daf9c6c8174f17f178fb2561ddfbdf8daedc9c13fe4120` |
| 18 | `instance` | [whiskeringRightPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringrightpreserveslimits--0e2f645db7d6dcc2214281f9.md) | 214 | `declaration-track:0e2f645db7d6dcc2214281f949c13f6fa02c46e972d06a9977aa7202759e61e9` |
| 19 | `instance` | [whiskeringRightPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/whiskeringrightpreservescolimits--6d60c3a00b2d004b23ae54eb.md) | 220 | `declaration-track:6d60c3a00b2d004b23ae54ebdbe35ef61637a7a0a018b07e3743b2edcdb5892f` |
| 20 | `lemma` | [preservesLimit_of_lan_preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/preserveslimit-of-lan-preserveslimit--aba3a890995e84b54b0528fe.md) | 227 | `result-track:aba3a890995e84b54b0528fedf0fd077ac1e366b86e7b74cc62132faa582af27` |
| 21 | `lemma` | [preservesFiniteLimits_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/preservesfinitelimits-of-evaluation--a019983766733d93184cd402.md) | 235 | `result-track:a019983766733d93184cd4027c51abc44975fb9d7377af7dd83e98e8cd2804c1` |
| 22 | `lemma` | [preservesFiniteColimits_of_evaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/preservesfinitecolimits-of-evaluation--b766f1a14b2fdab3d4b64429.md) | 241 | `result-track:b766f1a14b2fdab3d4b64429a9528f5e7e5da1622c11b75a3abe914cef947049` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/instance--92e0b3784ade4f404ea07bdc.md) | 260 | `declaration-track:92e0b3784ade4f404ea07bdcd4115c03fd55cb998e14a8c552c6d67ff60c30b6` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantfa1c4d48124536bc3e8ebb46416ddadfedbf5e4971f5bb48277ecea166581db5.lean/declarations/instance--dde30b7a67fa371d9eadb84a.md) | 277 | `declaration-track:dde30b7a67fa371d9eadb84ad07ded84c5311e08eb56262810f31400f3a27499` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
