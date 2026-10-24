# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Canonical.Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fccbc269e82591453d25580cbba0344b5a92cf0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fccbc269e82591453d25580cbba0344b5a92cf0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean.json)

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
| 1 | `def` | [finestTopologySingle](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/finesttopologysingle--17d2c99f3b1f82cf55fe6530.md) | 63 | `declaration-track:17d2c99f3b1f82cf55fe6530e53d39cc928f96ac07c604ba101eb00d1d5e5022` |
| 2 | `def` | [finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/finesttopology--b16cb1f92eba559d152863ac.md) | 86 | `declaration-track:b16cb1f92eba559d152863ac52de9404b58d967cce96accabc9b9c032ef71d96` |
| 3 | `theorem` | [sheaf_for_finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/sheaf-for-finesttopology--94b4d69604d987ad28bb6671.md) | 90 | `result-track:94b4d69604d987ad28bb6671ce3159d9c576e1c4086b0644b4f9ca76caf33fc7` |
| 4 | `lemma` | [mem_finestTopology_of_forall_isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/mem-finesttopology-of-forall-issheaffor--ec417c02c8840ebf84dc53eb.md) | 94 | `result-track:ec417c02c8840ebf84dc53ebf25ae12a4ef66c6f6344b46b5d0229fd2db9f00a` |
| 5 | `theorem` | [le_finestTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/le-finesttopology--ecc1266cbc074fa57fc616e4.md) | 103 | `result-track:ecc1266cbc074fa57fc616e4e6bbb0c95e8090f277b2cdd3f401a91684a59822` |
| 6 | `def` | [canonicalTopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/canonicaltopology--53e250d3c599ae660d19de95.md) | 112 | `declaration-track:53e250d3c599ae660d19de95e8079fabb860a3fd294be40d0ae139a6360c9067` |
| 7 | `theorem` | [isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/issheaf-yoneda-obj--1d6702e324a360cf1988b518.md) | 116 | `result-track:1d6702e324a360cf1988b51818db013b76435dc793bd13942bb0d372cb5eb6be` |
| 8 | `theorem` | [isSheaf_of_isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/issheaf-of-isrepresentable--1e5dd2dd3b2d0cf3fd3d1c45.md) | 120 | `result-track:1e5dd2dd3b2d0cf3fd3d1c4560b4e49d778f62e228eb1505beac921fe0637256` |
| 9 | `class` | [Subcanonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/subcanonical--0b4382487849618e45cc42fa.md) | 138 | `declaration-track:0b4382487849618e45cc42faa848e1492bf210d69e49997efd971db028ee3fc7` |
| 10 | `lemma` | [le_canonical](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/le-canonical--a0cbbec79ad4428fdfd841c0.md) | 141 | `result-track:a0cbbec79ad4428fdfd841c0e13f6d1cffdde5e039ef9fab1c191ed3f3a11d17` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/instance--5faeeae90ab8ad7842bdaa1e.md) | 144 | `declaration-track:5faeeae90ab8ad7842bdaa1e6e91b77a1c9dc0a1a90be0b258c7ac3354da7e9b` |
| 12 | `theorem` | [of_isSheaf_yoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/of-issheaf-yoneda-obj--a91304f858735393c39782ff.md) | 150 | `result-track:a91304f858735393c39782ff08f1f22a774a4bb38806b15614adb7499f02156c` |
| 13 | `theorem` | [isSheaf_of_isRepresentable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/issheaf-of-isrepresentable--50a2488cc8ae86718705d976.md) | 155 | `result-track:50a2488cc8ae86718705d976b9349a89091a848a082143daa31263e7a7b8d381` |
| 14 | `lemma` | [of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/of-le--cdcaedadb9002043588ffb7b.md) | 159 | `result-track:cdcaedadb9002043588ffb7b367ee4164321848631390c522a7b6fcd12b37c28` |
| 15 | `def` | [yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/yoneda--f3fb66544174fd197a482928.md) | 172 | `declaration-track:f3fb66544174fd197a482928874dedd1caaf46606acf098239b5149de555b091` |
| 16 | `def` | [uliftYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/uliftyoneda--e7954aa5dca81330111b1776.md) | 180 | `declaration-track:e7954aa5dca81330111b177640f0b01a807df67e0c5a4327cfd92cd1c4e26200` |
| 17 | `def` | [uliftYonedaIsoYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/uliftyonedaisoyoneda--f0b0e97dc1049bd9feff791b.md) | 189 | `declaration-track:f0b0e97dc1049bd9feff791b3bc9b45401b46a2b1ad504377688902b8cb8d53f` |
| 18 | `def` | [yonedaCompSheafToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/yonedacompsheaftopresheaf--5ea65e76860bab889c3316d8.md) | 201 | `declaration-track:5ea65e76860bab889c3316d8836bdabec873a75173e2d1657561e81a2501faa0` |
| 19 | `def` | [uliftYonedaCompSheafToPresheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/uliftyonedacompsheaftopresheaf--e7f070accf58f6425c08cd41.md) | 210 | `declaration-track:e7f070accf58f6425c08cd41eb3035704c4d82c3f6f39b5ff53eb091bc37ab90` |
| 20 | `def` | [yonedaFullyFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/yonedafullyfaithful--a38708686e7841f9d331defe.md) | 216 | `declaration-track:a38708686e7841f9d331defec3c5d579f6784b1c734ccdbae4d5638299cce959` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/instance--b18ea6aab4eb6d535134c4fb.md) | 219 | `declaration-track:b18ea6aab4eb6d535134c4fb4ef4b8bbc5a8f8c6e14eef72dab75ef3da0378df` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/instance--b13975b4361c7fa553d6e808.md) | 221 | `declaration-track:b13975b4361c7fa553d6e808722c98243c48017d0dd7f615f36a4fb8825f07cf` |
| 23 | `def` | [fullyFaithfulUliftYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/fullyfaithfululiftyoneda--f5f0ec4045796c962d5fffda.md) | 224 | `declaration-track:f5f0ec4045796c962d5fffda2cd66fda83486df18e607ca5a81b43bcaec8c99e` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/instance--4d2937f1f2105d641d4ee5bd.md) | 227 | `declaration-track:4d2937f1f2105d641d4ee5bd40ab9de24602df39d46140f6bcbc9482f152eefb` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Canonical/Variant63118afbd6e6c3e83deba084f5e00956e0281f664a397677456a929bc4d7147d.lean/declarations/instance--146031a329aeabd9a1e20b52.md) | 230 | `declaration-track:146031a329aeabd9a1e20b52652d6013a7154ea98224ad0dbeebd303307d34f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
