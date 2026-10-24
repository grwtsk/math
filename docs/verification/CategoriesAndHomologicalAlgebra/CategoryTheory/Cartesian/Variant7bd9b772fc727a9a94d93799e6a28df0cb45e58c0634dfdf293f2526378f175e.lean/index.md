# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60e02e1479da3728ebfd05a8023f7b646d334fa4",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60e02e1479da3728ebfd05a8023f7b646d334fa4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/iscartesian--bfefe6cda161363fac58326b.md) | 64 | `declaration-track:bfefe6cda161363fac58326bc93acd86807b25c923f241e24cc51f40f6fbaaa0` |
| 2 | `class` | [IsStronglyCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/isstronglycartesian--fb827a4485d154770395b95f.md) | 78 | `declaration-track:fb827a4485d154770395b95f06c7bdd8ac271f6f9d76701a8db86acd6e1a97a2` |
| 3 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map--8f849dfe38d2a7cf321b94c1.md) | 95 | `declaration-track:8f849dfe38d2a7cf321b94c1d00d8a34b11e2a103e98354814b2a06119fce20b` |
| 4 | `instance` | [map_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map-ishomlift--be3db6736780c6c40f718442.md) | 98 | `declaration-track:be3db6736780c6c40f718442602d438895b8eb31d393ad04ca968ab1d6493001` |
| 5 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/fac--a9abb5a70dc5a76464eb1df1.md) | 102 | `result-track:a9abb5a70dc5a76464eb1df1f013193fd88093f355e08f17e3122fedcef683cb` |
| 6 | `lemma` | [map_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map-uniq--7be6cd9703037cdbeb6e6356.md) | 108 | `result-track:7be6cd9703037cdbeb6e6356911e103d6afb51d283dbea4a8616f511b3f97a8c` |
| 7 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/ext--85d9ae1f032963f9f64f06e8.md) | 117 | `result-track:85d9ae1f032963f9f64f06e804f438af0d5b023a0548010bc30f7e90d6e742ad` |
| 8 | `lemma` | [map_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map-self--39e08863268673c5da075fbd.md) | 122 | `result-track:39e08863268673c5da075fbd27d646d0c9985c3bb7641d5e63cc5b7fbd609fe0` |
| 9 | `def` | [domainUniqueUpToIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/domainuniqueuptoiso--3c657745901d1fc711665898.md) | 130 | `declaration-track:3c657745901d1fc711665898e8c057002b22cbf898843ee15e0bd0ba2a3ac883` |
| 10 | `instance` | [domainUniqueUpToIso_inv_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/domainuniqueuptoiso-inv-ishomlift--499e4ce760e91166913f0060.md) | 142 | `declaration-track:499e4ce760e91166913f006008480d987781b68085e49d696306c23ad8f84851` |
| 11 | `instance` | [domainUniqueUpToIso_hom_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/domainuniqueuptoiso-hom-ishomlift--ddbdb8caaf0e4a2093e5f170.md) | 146 | `declaration-track:ddbdb8caaf0e4a2093e5f1706a507eb8c718872b3476cc8d7989ecb430061d49` |
| 12 | `instance` | [of_iso_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/of-iso-comp--4e763cacf1ef842e78e2f484.md) | 151 | `declaration-track:4e763cacf1ef842e78e2f484064e8a2e42abe01a41773e9bf4a48e6b9fa3ac40` |
| 13 | `instance` | [of_comp_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/of-comp-iso--cd20b1890f3511cf278179ed.md) | 163 | `declaration-track:cd20b1890f3511cf278179ed7bb389fd844bd1a3cb00613cf2244554ceab55aa` |
| 14 | `lemma` | [universal_property](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/universal-property--8439521179028e0c681f4724.md) | 185 | `result-track:8439521179028e0c681f47246c4717287d591f04880de8eb015b29c102d2e97a` |
| 15 | `instance` | [isCartesian_of_isStronglyCartesian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/iscartesian-of-isstronglycartesian--91883e34548e1742fb3d90db.md) | 191 | `declaration-track:91883e34548e1742fb3d90db2889547ea8c06751b4871f8912801a55a7729957` |
| 16 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map--50ae91e2766dd0c3c3044aae.md) | 208 | `declaration-track:50ae91e2766dd0c3c3044aae68855f44094aa238cc67f34df588905b2e424ff3` |
| 17 | `instance` | [map_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map-ishomlift--f2435a8b6b185a325d5910b6.md) | 211 | `declaration-track:f2435a8b6b185a325d5910b6506c191de043aed97ba114fd954a99fcf93b11c4` |
| 18 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/fac--7afb29eb791e98b1733a7b7b.md) | 215 | `result-track:7afb29eb791e98b1733a7b7b587ed1d4299e5dc9fb3e6f85f7fb359518949d45` |
| 19 | `lemma` | [map_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map-uniq--ddb640ae6ff136bfe01f924d.md) | 227 | `result-track:ddb640ae6ff136bfe01f924ddaa42dcdb01f1275e2f71ff6d7e08106492120c1` |
| 20 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/ext--828c8922af822a2705e895f4.md) | 241 | `result-track:828c8922af822a2705e895f465fdcdb300407e0feb6ee9cbb5b70f7258406438` |
| 21 | `lemma` | [map_self](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map-self--473cd5eb0c530dbd15df0ad5.md) | 246 | `result-track:473cd5eb0c530dbd15df0ad55f0efb53dc1d7c79d4290c8ced5707534e94b945` |
| 22 | `lemma` | [map_comp_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/map-comp-map--19df0f5226419af36099c27a.md) | 277 | `result-track:19df0f5226419af36099c27a9aaa0af004c351016e2c50edb46a70db6ec6f5da` |
| 23 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/comp--cfc71de9a18c3642c2ac0e53.md) | 299 | `declaration-track:cfc71de9a18c3642c2ac0e5314fcb598aa07a97487d574f022cfc8fa955a28b8` |
| 24 | `lemma` | [of_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/of-comp--d822a19530098f6b133c3e16.md) | 319 | `result-track:d822a19530098f6b133c3e165ca6d4e193c635b54b1b49a5cb79744805efcd65` |
| 25 | `instance` | [of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/of-iso--ffa6463fcb665cd88f52856e.md) | 342 | `declaration-track:ffa6463fcb665cd88f52856e73aaedd222d088ce4ec49f5959d08b094da68add` |
| 26 | `instance` | [of_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/of-isiso--e6a83ce1694b98567e048fba.md) | 349 | `declaration-track:e6a83ce1694b98567e048fba865e8872969155d1f916bc39b9eb461759cd107a` |
| 27 | `lemma` | [isIso_of_base_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/isiso-of-base-isiso--3898337b17df5b56bf5f98f4.md) | 353 | `result-track:3898337b17df5b56bf5f98f4a085c40176e8dccdef3f4c91cabec2a6eee7e800` |
| 28 | `def` | [domainIsoOfBaseIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/domainisoofbaseiso--474c90ebdb60c0e58af4eaa8.md) | 377 | `declaration-track:474c90ebdb60c0e58af4eaa818f1f68472ec23875287e7ad1d81a69649d62d06` |
| 29 | `instance` | [domainUniqueUpToIso_inv_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/domainuniqueuptoiso-inv-ishomlift--61c392352e491662d6f20617.md) | 385 | `declaration-track:61c392352e491662d6f20617a7a22a1db5f522bbae97782e8ce4f97f1b579179` |
| 30 | `instance` | [domainUniqueUpToIso_hom_isHomLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant7bd9b772fc727a9a94d93799e6a28df0cb45e58c0634dfdf293f2526378f175e.lean/declarations/domainuniqueuptoiso-hom-ishomlift--32f71c1109dad62feb770074.md) | 390 | `declaration-track:32f71c1109dad62feb770074b70ab649e8bc0c513f04351e8d0de98b5913d8bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
