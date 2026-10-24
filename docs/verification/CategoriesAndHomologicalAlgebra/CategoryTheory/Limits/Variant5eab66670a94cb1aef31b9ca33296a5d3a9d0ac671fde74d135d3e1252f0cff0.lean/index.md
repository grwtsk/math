# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceaa0baa928b3b96b236328a36a1bb28fd8af70b",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceaa0baa928b3b96b236328a36a1bb28fd8af70b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Transfer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.LinearFunctor` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.FunctorCategory` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Action.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--ae8db7d61a8435d694b8fe6e.md) | 32 | `declaration-track:ae8db7d61a8435d694b8fe6ee86edd7453d45d15d1b04de2217518e0f4e0730c` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--32e2bca7e2e527224b5c3852.md) | 36 | `declaration-track:32e2bca7e2e527224b5c38526011c09c59bb66f7c397084e8543319ee557f3ea` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--daac93860f7c91506fa7db51.md) | 40 | `declaration-track:daac93860f7c91506fa7db51427d50a643b70c6e82ae0bd00a2e97b64f587963` |
| 4 | `instance` | [hasLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/haslimitsofshape--df1ccff0bf38ec89b7747591.md) | 44 | `declaration-track:df1ccff0bf38ec89b7747591a579962206cb13317b605de2245a19100164f809` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--41c42f094b8c65dadf8673a6.md) | 48 | `declaration-track:41c42f094b8c65dadf8673a69909d2a3406a0db50f2e82db97d3ceb5fab75ae4` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--3049790f84dc4da8a115c003.md) | 52 | `declaration-track:3049790f84dc4da8a115c0039c9327d8c420ae04c268fb959470fc294bb218b8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--5c0402dfb8ffd316c789e908.md) | 56 | `declaration-track:5c0402dfb8ffd316c789e908060bc20e36c846dd2f858f6a747bb6fa2987299d` |
| 8 | `instance` | [hasColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/hascolimitsofshape--3b1c98782447ec51640242ae.md) | 60 | `declaration-track:3b1c98782447ec51640242ae9862c5024348c13b14a660c3c9629f1c6586dc74` |
| 9 | `lemma` | [SingleObj.preservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/singleobj-preserveslimit--ca575a77f3b165097778bfce.md) | 72 | `result-track:ca575a77f3b165097778bfce19e0f878553c42924e8193badba5380f8d5883da` |
| 10 | `lemma` | [preservesLimit_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/preserveslimit-of-preserves--c9fba12498281087e779f1ed.md) | 82 | `result-track:c9fba12498281087e779f1edd637a3dd99c8464894a59786fd954722f0097b31` |
| 11 | `lemma` | [preservesLimitsOfShape_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/preserveslimitsofshape-of-preserves--2a88e6d50d3579662b7fa413.md) | 91 | `result-track:2a88e6d50d3579662b7fa4133039a485880685dde8faf5d586ac6ab2ac1849df` |
| 12 | `lemma` | [preservesLimitsOfSize_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/preserveslimitsofsize-of-preserves--96fa8aff216552ef874e01fc.md) | 101 | `result-track:96fa8aff216552ef874e01fcfd9a1786b30d240c6b941999e059cbd8a11c0d5a` |
| 13 | `lemma` | [SingleObj.preservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/singleobj-preservescolimit--baa16715baba48007ed1231f.md) | 111 | `result-track:baa16715baba48007ed1231ff31aecd76c2ff60d2a371c40ab4dffee136347fc` |
| 14 | `lemma` | [preservesColimit_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/preservescolimit-of-preserves--6e5e04037f503bc677bbe3d4.md) | 121 | `result-track:6e5e04037f503bc677bbe3d44639d257616976b5a8e3b66ea5690ba6e48fdbaa` |
| 15 | `lemma` | [preservesColimitsOfShape_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/preservescolimitsofshape-of-preserves--3d19d39a1e29656c5f298047.md) | 130 | `result-track:3d19d39a1e29656c5f298047d67beb6b4850b2459c818897c60a2b11bad0f866` |
| 16 | `lemma` | [preservesColimitsOfSize_of_preserves](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/preservescolimitsofsize-of-preserves--3f28d1effd7352d55130d52c.md) | 140 | `result-track:3f28d1effd7352d55130d52ccfef988b3d5a9a6823a37414bae25c7d12839c67` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--8687cee3a12cc683cc3cb4d7.md) | 152 | `declaration-track:8687cee3a12cc683cc3cb4d730563d56f6e0b42440510db2031b19b58f127f59` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--5104a26f639634cf60dabc57.md) | 158 | `declaration-track:5104a26f639634cf60dabc578362d149c38bf1fb1427a5c4c79868936a47cf2f` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--dca407b95bcbcc51b2eb2d3f.md) | 164 | `declaration-track:dca407b95bcbcc51b2eb2d3ffc587335aa26f0374e9637aa1ebedcfee838446f` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--2312faf398ee2e0771f86766.md) | 173 | `declaration-track:2312faf398ee2e0771f86766605e2478737b0151adab03b55cefbbefda803a0d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--20bb73401ab5e091f4cd1018.md) | 182 | `declaration-track:20bb73401ab5e091f4cd1018c6f844ea1e6b09c9c65d715bda77235aa2b2cf2d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--1304d20eeb6ddd43483f1484.md) | 188 | `declaration-track:1304d20eeb6ddd43483f1484a3af38879a23d549cfdd479a759abf0c82ce736f` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--9d2cfd92032c2e2b8ac36085.md) | 191 | `declaration-track:9d2cfd92032c2e2b8ac36085f3e5c1ed1da7e341dabad8d87e7ded113c460ebd` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--21435b75a9cf09475ba1b85c.md) | 193 | `declaration-track:21435b75a9cf09475ba1b85cfd0443798a304678e452edbed2f5d7ddb7b4e654` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--18ae30fa8f22359408c625c7.md) | 199 | `declaration-track:18ae30fa8f22359408c625c73c81c16ef02b284acb7afaa6348b61475ebf18e8` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--5c331adb63f4a34e4d606e66.md) | 202 | `declaration-track:5c331adb63f4a34e4d606e661a1bdf8dbd06000487a2ae12efdf4c0ae0ee09cf` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--2ea8dbde20cc8b5d4d718a31.md) | 210 | `declaration-track:2ea8dbde20cc8b5d4d718a31e71f4b11c46680dedbd52e5bb55838d6927483b4` |
| 28 | `theorem` | [zero_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/zero-hom--0dccd91410b130187be13f7f.md) | 213 | `result-track:0dccd91410b130187be13f7fe9b1438f9deb2b21ef54d82e4b81067732ce9e7e` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--3890e9334a90e752366ed9ae.md) | 216 | `declaration-track:3890e9334a90e752366ed9aeb65b201359549122d0b628466ce36b5d8df753b3` |
| 30 | `instance` | [forget_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/forget-preserveszeromorphisms--6279465c9ccf65280bb1cb2b.md) | 218 | `declaration-track:6279465c9ccf65280bb1cb2ba3abf0badfe25bf8ec73034cde82af84447bf311` |
| 31 | `instance` | [forget₂_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/forget-preserveszeromorphisms--b83881acaef43fa2124bc17a.md) | 220 | `declaration-track:b83881acaef43fa2124bc17a299d75d5c034d40ca67f19e83a8d4efb0b341c3a` |
| 32 | `instance` | [functorCategoryEquivalence_preservesZeroMorphisms](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/functorcategoryequivalence-preserveszeromorphisms--15bcda5558065b3157990cdc.md) | 223 | `declaration-track:15bcda5558065b3157990cdc54de8a3c63231f6a402533e06b47efb1ca77d10f` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--f2d89d0daa0e73915b42c936.md) | 232 | `declaration-track:f2d89d0daa0e73915b42c936f7db4ee424eafa1ffd9e27392b3bdc494269e05e` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--9dcf0d3def6b5aa7b69afd0a.md) | 235 | `declaration-track:9dcf0d3def6b5aa7b69afd0a6b7b24d6007e35803bf31f7f5221840f0b9d634b` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--dac6fda9120bd51199f331ae.md) | 238 | `declaration-track:dac6fda9120bd51199f331ae13cfddd520fed1c685b5c4b8d87a521197b0e83a` |
| 36 | `instance` | [forget_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/forget-additive--648085756e75fcbd82d39fd7.md) | 250 | `declaration-track:648085756e75fcbd82d39fd7f789b0be6e562b6e7a22555b035ba3c2345f35fe` |
| 37 | `instance` | [forget₂_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/forget-additive--eca716a74404fc9df86d652e.md) | 252 | `declaration-track:eca716a74404fc9df86d652e1ba7ed6258a22270f7e5243ebef39a32f498edda` |
| 38 | `instance` | [functorCategoryEquivalence_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/functorcategoryequivalence-additive--3d59f0fcf55f7b43bcf28d3d.md) | 254 | `declaration-track:3d59f0fcf55f7b43bcf28d3db1fa00673c40eae8045a830ed71460002d97a3ae` |
| 39 | `theorem` | [neg_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/neg-hom--4d09b988d9483602d1e2b31a.md) | 258 | `result-track:4d09b988d9483602d1e2b31a27639e1763e1296bf5451a47e5fd67e876e6edc0` |
| 40 | `theorem` | [add_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/add-hom--b3e302da1f95a95fde719694.md) | 262 | `result-track:b3e302da1f95a95fde71969480958eb16d93b39956084d2c46fe77afe841c40f` |
| 41 | `theorem` | [sum_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/sum-hom--0bb62f25318535db355d7bc3.md) | 266 | `result-track:0bb62f25318535db355d7bc388cbe5fd05e9e83c7f6932e617eae0f0b4785ec6` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--e52f8c113c5436f86d556f8e.md) | 276 | `declaration-track:e52f8c113c5436f86d556f8e8d5321362beff107af8360e3acc912ba97773e44` |
| 43 | `instance` | [forget_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/forget-linear--eeac87e6980a810d846fe794.md) | 288 | `declaration-track:eeac87e6980a810d846fe794b1286b12d8041ca5bf36e42763d995e0ea22228d` |
| 44 | `instance` | [forget₂_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/forget-linear--4a2891b7ee5bb5017de213bf.md) | 290 | `declaration-track:4a2891b7ee5bb5017de213bf718eac6d3ec83c12d90e232b95410a65f00b2526` |
| 45 | `instance` | [functorCategoryEquivalence_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/functorcategoryequivalence-linear--0e31b48ee878bd8c324c5ac8.md) | 292 | `declaration-track:0e31b48ee878bd8c324c5ac8305c7be5d5809b7c974bf50e74dff95b9888bd10` |
| 46 | `theorem` | [smul_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/smul-hom--db05702d8d29b0dda0786784.md) | 296 | `result-track:db05702d8d29b0dda07867842bba1599b41093fea0fde719b4a48fe3a3c350bb` |
| 47 | `instance` | [res_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/res-additive--b96df95007cf902c97b99500.md) | 301 | `declaration-track:b96df95007cf902c97b99500499c9c4ad87ce8b98966c016febf2176978c3585` |
| 48 | `instance` | [res_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/res-linear--6441869d53d1f3ca7ffb5a39.md) | 303 | `declaration-track:6441869d53d1f3ca7ffb5a39c277f819c2cdefdbda818afc2fa314379b139cfe` |
| 49 | `def` | [abelianAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/abelianaux--beedfee05df207bb86733010.md) | 310 | `declaration-track:beedfee05df207bb867330104982971a38a56c5a555e70adb47f1fcdf3f3a2a5` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/instance--d750d8e2ab93c2a1b31efd66.md) | 313 | `declaration-track:d750d8e2ab93c2a1b31efd6678b1832c49c00d8dfaa20c025867fbc2d0f44443` |
| 51 | `instance` | [mapAction_preadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/mapaction-preadditive--48c67e42830b0f367402d0ef.md) | 325 | `declaration-track:48c67e42830b0f367402d0ef4938ca010cf8d7aad394c76a1713f17e6df16d70` |
| 52 | `instance` | [mapAction_linear](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant5eab66670a94cb1aef31b9ca33296a5d3a9d0ac671fde74d135d3e1252f0cff0.lean/declarations/mapaction-linear--d20e28669a06d5782dd2a627.md) | 329 | `declaration-track:d20e28669a06d5782dd2a6273cb815b5664268b7c00261307ff449b433163a21` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
