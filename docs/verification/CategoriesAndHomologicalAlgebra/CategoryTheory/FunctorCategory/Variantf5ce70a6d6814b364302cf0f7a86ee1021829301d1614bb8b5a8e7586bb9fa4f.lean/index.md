# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "964746b1888763c4112af60a841300762aca73ad",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `964746b1888763c4112af60a841300762aca73ad`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.Ordinary.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.End` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/diagram--1dd3dbdf27b9a5d78ea7e047.md) | 45 | `declaration-track:1dd3dbdf27b9a5d78ea7e0475ad5125c32560384b1b6a3e0ab1cca85904c466f` |
| 2 | `abbrev` | [HasEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/hasenrichedhom--fbbb094515045b31ae57f293.md) | 48 | `declaration-track:fbbb094515045b31ae57f293ea019328d97e3743e4c96cf618a4d9da3963d650` |
| 3 | `abbrev` | [enrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedhom--418d1f649ebf20d23bd51ac0.md) | 56 | `declaration-track:418d1f649ebf20d23bd51ac01c446b16916cd60c9e84eaf86782f4b6777c9f3e` |
| 4 | `abbrev` | [enrichedHomπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedhom--0d58ae8602e6e5ccdd5a3b29.md) | 60 | `declaration-track:0d58ae8602e6e5ccdd5a3b297192b49f17a2c2ad4305b9695cedbc98c105bc06` |
| 5 | `lemma` | [enrichedHom_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedhom-condition--f064c39ec50f80e0e0638830.md) | 64 | `result-track:f064c39ec50f80e0e06388301079142928ed4ffb1dadb8d9e50997afcb4c29a0` |
| 6 | `lemma` | [enrichedHom_condition'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedhom-condition--1d38a53087b73b0ba23db5a1.md) | 70 | `result-track:1d38a53087b73b0ba23db5a1626c80d4933384c867463727d3c899bf59f3406a` |
| 7 | `def` | [homEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/homequiv--0a486ba7847ae9f000e4e32c.md) | 81 | `declaration-track:0a486ba7847ae9f000e4e32caa73d7412a6889d94a3014dc892b6241139b0e63` |
| 8 | `lemma` | [homEquiv_apply_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/homequiv-apply--d290236267365710598998fd.md) | 104 | `result-track:d290236267365710598998fd7fa04ed538bc175ec89030d2e0acd3e0be2e6584` |
| 9 | `def` | [enrichedId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedid--f83f7819319f37f182c18154.md) | 115 | `declaration-track:f83f7819319f37f182c18154c8b1a653778e7ed4c9d14e3ec7977bbb1050b2c6` |
| 10 | `lemma` | [enrichedId_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedid--b621b9424de4cb8209f69ded.md) | 118 | `result-track:b621b9424de4cb8209f69ded249c4f02cf31943fe27bdbeb47b0d256bbb5c0ae` |
| 11 | `lemma` | [homEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/homequiv-id--417207cc9419d510064076ea.md) | 122 | `result-track:417207cc9419d510064076ea0cd4dbbf113bc69d3e454e73a23632d9377cc1bc` |
| 12 | `def` | [enrichedComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedcomp--25fadd6003d578c62d494cf1.md) | 131 | `declaration-track:25fadd6003d578c62d494cf122019856a7c4494f05e7afc525aeb603abb9e355` |
| 13 | `lemma` | [enrichedComp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedcomp--634afbfcea2cc816658be7fe.md) | 162 | `result-track:634afbfcea2cc816658be7feb4335f7e5227b79b8d86aec7c24ee480d6b8af9a` |
| 14 | `lemma` | [homEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/homequiv-comp--454ecfed55d36056cdf2170b.md) | 170 | `result-track:454ecfed55d36056cdf2170b4aee3fb451c9a8d299cf74320014b4b24681d6c6` |
| 15 | `lemma` | [enriched_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enriched-id-comp--1d730ce47841c0b3c933033c.md) | 180 | `result-track:1d730ce47841c0b3c933033cc8dc74a82c8bb2952a7627a32f785908b2a61233` |
| 16 | `lemma` | [enriched_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enriched-comp-id--a999c71d3b0167a2868de7a3.md) | 191 | `result-track:a999c71d3b0167a2868de7a3f0054be0ba7227c02b03beb417a543b39f0459fd` |
| 17 | `lemma` | [enriched_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enriched-assoc--6eedb4f22f60072b7e5c5f47.md) | 203 | `result-track:6eedb4f22f60072b7e5c5f47a653ab2871f01af9f2a16453d24d784c042831a7` |
| 18 | `def` | [enrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/enrichedordinarycategory--65f6584884a2fd77ef6f7a60.md) | 225 | `declaration-track:65f6584884a2fd77ef6f7a6029f6381c77f4f6e22fe0b0124e1128f73856a2a6` |
| 19 | `abbrev` | [precompEnrichedHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/precompenrichedhom--28c2558f62596c622fdcabd1.md) | 247 | `declaration-track:28c2558f62596c622fdcabd1ed4b37df8de687512cb4e5013031f98b757f56bb` |
| 20 | `abbrev` | [precompEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/precompenrichedhom--51d028a28fe0d99c3a5ac1b0.md) | 267 | `declaration-track:51d028a28fe0d99c3a5ac1b03ab94ab973631401b28909651ce824da90b53e01` |
| 21 | `abbrev` | [HasFunctorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/hasfunctorenrichedhom--dc528c4c4fa8fd15a8b53d82.md) | 279 | `declaration-track:dc528c4c4fa8fd15a8b53d82a074d4a8142e2a4b5921125f8484934ce4a2e22a` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/instance--1b423d828b5d952aa9850f84.md) | 284 | `declaration-track:1b423d828b5d952aa9850f8474fc486ee57b2d0c39971c369868157833e0ce03` |
| 23 | `def` | [functorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenrichedhom--1cb59cc518a05f6e42b1e3f3.md) | 292 | `declaration-track:1cb59cc518a05f6e42b1e3f31456ddbe58a31ed7b866fff9f17c9f8b16dbcd28` |
| 24 | `def` | [coneFunctorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/conefunctorenrichedhom--6734fe902e43c2aff360dc4e.md) | 318 | `declaration-track:6734fe902e43c2aff360dc4ebc2023104e59de04da897dee88f82a0a7f9d8617` |
| 25 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/lift--9d924da9cae479a11cb8c70f.md) | 327 | `declaration-track:9d924da9cae479a11cb8c70fea4f5e405362e48cf66491a92ae4a7b07a9062c4` |
| 26 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/fac--973d2ace9c922fdf58d8af4f.md) | 343 | `result-track:973d2ace9c922fdf58d8af4f1776b775d56a8aa75edfbccc95fc8009020c8d6a` |
| 27 | `def` | [isLimitConeFunctorEnrichedHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/islimitconefunctorenrichedhom--777947c19e16a889a4c872bf.md) | 360 | `declaration-track:777947c19e16a889a4c872bf4c51c5be519639c56db2f77efa2154cb9dc8bf4f` |
| 28 | `def` | [functorEnrichedId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenrichedid--f4520f6f1bdb0b63f23844f9.md) | 373 | `declaration-track:f4520f6f1bdb0b63f23844f979f2311c13629ff756cbcd91de83ec8cd3e8cadb` |
| 29 | `def` | [functorEnrichedComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenrichedcomp--f0be1bbf9e0997dc996f006b.md) | 379 | `declaration-track:f0be1bbf9e0997dc996f006ba2572c9f61271432c774d03913b9df24946a9b85` |
| 30 | `lemma` | [functorEnriched_id_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenriched-id-comp--ef210d9f0c0dbe6bbf90083f.md) | 393 | `result-track:ef210d9f0c0dbe6bbf90083f2c0b489bf965aaa3bca8f38424db8b3672af5d98` |
| 31 | `lemma` | [functorEnriched_comp_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenriched-comp-id--6bf5132dcb528226ed229bba.md) | 399 | `result-track:6bf5132dcb528226ed229bba699d02eb0f745419e3bb6e9483860cda9c079cb5` |
| 32 | `lemma` | [functorEnriched_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenriched-assoc--e06dc8f9a3d3d47a475e469b.md) | 405 | `result-track:e06dc8f9a3d3d47a475e469b5cbae5fb6c3c86a93053dfe4a1510239c38244b6` |
| 33 | `def` | [functorEnrichedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenrichedcategory--bb77e2404da3c385c266e5b4.md) | 419 | `declaration-track:bb77e2404da3c385c266e5b4c0350351677dc506e997c15d4487970e76d3fa3d` |
| 34 | `def` | [functorHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorhomequiv--87319dd5fc96cc5c69018539.md) | 431 | `declaration-track:87319dd5fc96cc5c69018539c00a85cb41b9d7bb938d027474121734bf25c9fd` |
| 35 | `lemma` | [functorHomEquiv_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorhomequiv-id--478eb9b16f861834d1f4dfa6.md) | 435 | `result-track:478eb9b16f861834d1f4dfa648899d1c9bcb11e3fd0a3c1fb0dbd4a21ae5ca05` |
| 36 | `lemma` | [functorHomEquiv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorhomequiv-comp--9a1b8a9240bd2bc89049d242.md) | 439 | `result-track:9a1b8a9240bd2bc89049d242ff158b572377534247ae4582a3aecf8a44088321` |
| 37 | `def` | [functorEnrichedOrdinaryCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/declarations/functorenrichedordinarycategory--fb773aaaa94adde6ebd28c30.md) | 456 | `declaration-track:fb773aaaa94adde6ebd28c301d362c21b4e02f98349d98609b5b7bb9f298fff3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
