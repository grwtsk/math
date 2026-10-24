# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.BundledFun.Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0d75fa7e5bde60d22a337547efa6df325ce1aad",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0d75fa7e5bde60d22a337547efa6df325ce1aad`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Ultra.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PseudoMetric](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/pseudometric--132cd86809090c35b9ceec27.md) | 32 | `declaration-track:132cd86809090c35b9ceec27db8038b37057f2563619c1f686e9d2359b1c6d66` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/instance--1dc43dbf82a21ef43993394a.md) | 48 | `declaration-track:1dc43dbf82a21ef43993394a53d4ef9a79417912dd855b9ecbf3b6f3fd9f8fc6` |
| 3 | `lemma` | [coe_mk](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/coe-mk--0c1bffc3162d8b404aa99677.md) | 53 | `result-track:0c1bffc3162d8b404aa99677c8625819133add1df3c5ef15fda232cdc57c7189` |
| 4 | `lemma` | [mk_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/mk-apply--9dbbc329169c30774acc0528.md) | 55 | `result-track:9dbbc329169c30774acc0528d9b805bddbfa79d07da3a7ab25c7f15c7b617590` |
| 5 | `lemma` | [refl](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/refl--fb76dcc696875ff0fcf34b15.md) | 60 | `result-track:fb76dcc696875ff0fcf34b15fb9447397795861da6a95ecace06751be9fb5fd3` |
| 6 | `lemma` | [symm](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/symm--e7a68b382a642a854a5613d9.md) | 61 | `result-track:e7a68b382a642a854a5613d9131f57a24e6c41c469a2fc8a2ce6946db69bcc35` |
| 7 | `lemma` | [triangle](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/triangle--66ba9354ea4c53c01dd8fae1.md) | 62 | `result-track:66ba9354ea4c53c01dd8fae19bc648d0b61635fc2d402ba766294c4b1b078c1f` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/instance--c43676f1a018b0ec9d79f5b4.md) | 64 | `declaration-track:c43676f1a018b0ec9d79f5b409c4c5a6a4d37aee1701ef51a2cee13e6c527fb6` |
| 9 | `lemma` | [coe_le_coe](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/coe-le-coe--9a72171d20c225f6431db2f5.md) | 67 | `result-track:9a72171d20c225f6431db2f53377ed3291d0372b6d0f7f4b79511d4f5633a2eb` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/instance--ff0b659e870ad4b738011677.md) | 73 | `declaration-track:ff0b659e870ad4b738011677cb7b3aabeb0e622cb39e2d315f3ea9acc96bca62` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/instance--87be642a659e8ebb97c91d36.md) | 76 | `declaration-track:87be642a659e8ebb97c91d3654d5237c67e00caac3ebfa7f9adaef1486b48e95` |
| 12 | `lemma` | [coe_bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/coe-bot--3a32dc7f461cc5bb0c4f22b3.md) | 83 | `result-track:3a32dc7f461cc5bb0c4f22b30761a8364f806a6ffe6bb661007cf92f9f4348e9` |
| 13 | `lemma` | [bot_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/bot-apply--2b18d794d71705a8fc732b8b.md) | 86 | `result-track:2b18d794d71705a8fc732b8bfeeaa1f811b0a17ee4406c68500100ef6d3a2d30` |
| 14 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/instance--241ed02b71d307e9c2e964ae.md) | 90 | `declaration-track:241ed02b71d307e9c2e964aeea3b68fa9ce3d8bfe757f15f1f616d123e6c529e` |
| 15 | `lemma` | [coe_sup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/coe-sup--204311ef009c27f0bee7e27e.md) | 104 | `result-track:204311ef009c27f0bee7e27e14aba7500dda72ac42134ad2ab11bdc50fc3f73b` |
| 16 | `lemma` | [sup_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/sup-apply--302788f7d675a1cfc1b99f1e.md) | 109 | `result-track:302788f7d675a1cfc1b99f1ec8f2ad07c5a06e467fc6ff07c06cecef518b263a` |
| 17 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/instance--79e0ea93820f734e948669d8.md) | 114 | `declaration-track:79e0ea93820f734e948669d8d49dad1d7da85811b5892b9724d6132b7e56fbc6` |
| 18 | `lemma` | [nonneg](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/nonneg--e7b65fe020ad5652c0a593d9.md) | 125 | `result-track:e7b65fe020ad5652c0a593d91e8de464421021c67532a0e9cd72476593d0cd0a` |
| 19 | `instance` | [(anonymous)](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/instance--2ff01afd2a814436472ab152.md) | 133 | `declaration-track:2ff01afd2a814436472ab152a77e0031495e705290fb09d67588fcc3ce488cf5` |
| 20 | `lemma` | [coe_finsetSup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/coe-finsetsup--fe0a602f18deef1d0b043ecf.md) | 137 | `result-track:fe0a602f18deef1d0b043ecf0e79dd619fb6188699cd4135858b00f1f0aa6675` |
| 21 | `lemma` | [finsetSup_apply](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/finsetsup-apply--78841f33069363a3927dd403.md) | 144 | `result-track:78841f33069363a3927dd403a99cb5017f3b3721496ffd4bf62c9d58766bae9a` |
| 22 | `class` | [IsUltra](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/isultra--dfd1e4f6ad4b65c31cfc8895.md) | 157 | `declaration-track:dfd1e4f6ad4b65c31cfc8895b514d586c84ccf0e9bf961f6619508a716e1be4c` |
| 23 | `lemma` | [IsUltra.le_sup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/isultra-le-sup--9abc0d9317c06b23c156a4f1.md) | 161 | `result-track:9abc0d9317c06b23c156a4f137895dbd736741ca416e16f4dfbfca2dfba328b0` |
| 24 | `instance` | [IsUltra.bot](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/isultra-bot--1d1f9ba94664e98b72fdaac7.md) | 165 | `declaration-track:1d1f9ba94664e98b72fdaac7f0dac9d1688aec7127a3512c7b15e52e90572550` |
| 25 | `instance` | [IsUltra.sup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/isultra-sup--83e8d4814f3c2629ca35f597.md) | 169 | `declaration-track:83e8d4814f3c2629ca35f5976d6be1603fcaa96102b38c0b90b47b568b6c77c2` |
| 26 | `lemma` | [IsUltra.finsetSup](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/isultra-finsetsup--0a788e59b414758ede291fde.md) | 177 | `result-track:0a788e59b414758ede291fde8fcbae72139fa8e6b8e8017846e9b95467dbfb25` |
| 27 | `lemma` | [isSymmetricRel_ball](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/issymmetricrel-ball--2394a8da0bb8b0236ed5435a.md) | 198 | `result-track:2394a8da0bb8b0236ed5435aefb6c5c11e70bcd01cb12ad9762f2ba526c43e0e` |
| 28 | `lemma` | [isSymmetricRel_closedBall](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/issymmetricrel-closedball--39653ad505b91cb5fe7de9df.md) | 202 | `result-track:39653ad505b91cb5fe7de9df92b74decaf004a1ec700c1ce4395f876b16d42c7` |
| 29 | `lemma` | [IsUltra.isTransitiveRel_ball](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/isultra-istransitiverel-ball--7a5c7843dad844e671b42662.md) | 206 | `result-track:7a5c7843dad844e671b426627e5cf14d52ad52235a0d5a61fd49f10ef28a8887` |
| 30 | `lemma` | [IsUltra.isTransitiveRel_closedBall](../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/BundledFun/Variant6cdc1769abfb5382582b9df80742699e148427c6eb1b0f576bfbd95a9dd0de07.lean/declarations/isultra-istransitiverel-closedball--14ade04bd3cfd52e1d2591da.md) | 211 | `result-track:14ade04bd3cfd52e1d2591dac1080c37058c2ad4bd5078135cd9b2adfdbd50ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
