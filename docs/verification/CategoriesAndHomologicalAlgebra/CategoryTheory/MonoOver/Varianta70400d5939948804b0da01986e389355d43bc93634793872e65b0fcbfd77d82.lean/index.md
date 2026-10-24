# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoOver.Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e3924e92b5002b58ee98281d87e2ae6abf95ce9",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e3924e92b5002b58ee98281d87e2ae6abf95ce9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.ReflectsIso.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/monoover--f441d7ac0bd61605b299de4c.md) | 55 | `declaration-track:f441d7ac0bd61605b299de4c0d5f9859bd894019196cf9e3ba815a72637de86e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/instance--670c677242c6d004982a0aa6.md) | 58 | `declaration-track:670c677242c6d004982a0aa6299c0f2976c942325e5846dc45e9efc5fc16729e` |
| 3 | `instance` | [mono_obj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mono-obj-hom--ae2739a65e28bb29fce41525.md) | 63 | `declaration-track:ae2739a65e28bb29fce4152593c6b1de93d942c7891df508e4402c361e0614ba` |
| 4 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mk--2d1397d8df273850c3c584c4.md) | 67 | `declaration-track:2d1397d8df273850c3c584c417bb22a9b96ed2329e3cc7de4678e270e60b8725` |
| 5 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/forget--cebc09a4718710bc7615bea8.md) | 72 | `declaration-track:cebc09a4718710bc7615bea8e0d9a63ba27c4383fe1ef345fca18f93c503b6c5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/instance--bb2a63031c2b76173008e5ce.md) | 75 | `declaration-track:bb2a63031c2b76173008e5ce19adc20a2c4bc0607f6edea75cb156366b45fd6d` |
| 7 | `theorem` | [forget_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/forget-obj-left--a4ac8a9ab4ccb795e0b0c7a1.md) | 78 | `result-track:a4ac8a9ab4ccb795e0b0c7a1ae8f179d45957708dae3558805bb8b70b117999c` |
| 8 | `theorem` | [mk'_coe'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mk-coe--e019eec8822c2e1d47390e4c.md) | 82 | `result-track:e019eec8822c2e1d47390e4c9600e7e9aaac4f11981512ad232f56656f5e989c` |
| 9 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/arrow--b1b6b4de4d7d39b6c6daf39b.md) | 86 | `declaration-track:b1b6b4de4d7d39b6c6daf39bfb22a3f3bf6304efa5ede31dda1a6ca78ca1d9f7` |
| 10 | `theorem` | [mk'_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mk-arrow--cf0ee905d1c51a620f2407ba.md) | 90 | `result-track:cf0ee905d1c51a620f2407ba1a0bc5303a9e2acea08e03eea738e56ee7603db9` |
| 11 | `theorem` | [forget_obj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/forget-obj-hom--a0d019535bc0140baa5893de.md) | 94 | `result-track:a0d019535bc0140baa5893deebf6cb87d881ffbcd3130651dddfd121a72531f2` |
| 12 | `def` | [fullyFaithfulForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/fullyfaithfulforget--c943a30142dfbf5fd07ae0fc.md) | 98 | `declaration-track:c943a30142dfbf5fd07ae0fcf77304f20fba361a09847deac918819d39633da0` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/instance--4cb7c19093a2a9fd7ae4e037.md) | 101 | `declaration-track:4cb7c19093a2a9fd7ae4e03760fe3e6b0d7e131c219e84f759cfbeb1e362805f` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/instance--73910300e1bcd7a3a981758a.md) | 104 | `declaration-track:73910300e1bcd7a3a981758ab0071362c8ec4d3bc62c0c311470665986e02605` |
| 15 | `instance` | [mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mono--83ccaab0196834914132bf2d.md) | 107 | `declaration-track:83ccaab0196834914132bf2de7821c24cfebaf7176fea124d901eb666386d242` |
| 16 | `instance` | [isThin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/isthin--3c4f9114609d1836721d9ca5.md) | 112 | `declaration-track:3c4f9114609d1836721d9ca5b360dc554a23950563953552c871d64fc292af53` |
| 17 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/w--b8aee15861e47f70d27e6c75.md) | 121 | `result-track:b8aee15861e47f70d27e6c75bda07c3f1ea8037afef02f6ada2a2b6b2d1234c8` |
| 18 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/hommk--df6bff7b67c8e4285a1dc4e9.md) | 125 | `declaration-track:df6bff7b67c8e4285a1dc4e90ef82442438a8c283cc3ad0fc06d323c001305df` |
| 19 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/isomk--16361cb56bb011a67ca06921.md) | 131 | `declaration-track:16361cb56bb011a67ca06921ff94fe63f7dfa733db6b508e5c23b49919ab3f80` |
| 20 | `def` | [mk'ArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mk-arrowiso--7fcc4cada8148ebab4323d5c.md) | 139 | `declaration-track:7fcc4cada8148ebab4323d5c3962b298295f9d6da09bbd5c2a02903f8e0c46c6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/instance--44d46e9757e2d7612f229929.md) | 142 | `declaration-track:44d46e9757e2d7612f22992931962810c353c47ca3a5fc405f1490fb6d8db2fa` |
| 22 | `lemma` | [isIso_iff_isIso_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/isiso-iff-isiso-left--6c29aa96ecc1de544067ce6b.md) | 145 | `result-track:6c29aa96ecc1de544067ce6bee82d05fff60dcdbf1c4b00c5ee683a63242d5c4` |
| 23 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/lift--04dbce2d80f7acee6c5d806d.md) | 153 | `declaration-track:04dbce2d80f7acee6c5d806de7d96556326c7dcdedfed04f06c630b521a1e4e6` |
| 24 | `def` | [liftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/liftiso--928e53de5269a17ab38eb0f4.md) | 161 | `declaration-track:928e53de5269a17ab38eb0f46870199e134d93c3988b7b818d8d8fb9e75daf5e` |
| 25 | `def` | [liftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/liftcomp--a1f45630e5e944c472667214.md) | 165 | `declaration-track:a1f45630e5e944c472667214a2bc9ecd3d1924e26070275c2fb9e2e44da8168b` |
| 26 | `def` | [liftId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/liftid--6d896af72d08deb9b96b1255.md) | 170 | `declaration-track:6d896af72d08deb9b96b1255aeac469618016d50474bdf0e01f16318def5a7e6` |
| 27 | `theorem` | [lift_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/lift-comm--8dbfabcaad685f15f41dcb6c.md) | 174 | `result-track:8dbfabcaad685f15f41dcb6c7e81cc719efbd55a9646faab984e079527077819` |
| 28 | `theorem` | [lift_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/lift-obj-arrow--84173aef06481539ebda1bba.md) | 180 | `result-track:84173aef06481539ebda1bba0905f98dbaf5b28cdf2dfdd4c939ce7f8c8cc287` |
| 29 | `def` | [slice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/slice--9ce82ea2eb2af3662ed345e2.md) | 188 | `declaration-track:9ce82ea2eb2af3662ed345e25aec1813d4a9dc0e29a6be12ab43c7e3ab69e14b` |
| 30 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/pullback--a12a0c68417b37d5db13c014.md) | 209 | `declaration-track:a12a0c68417b37d5db13c01490828416d01d7c68abe98c3d0346586e2b090d25` |
| 31 | `def` | [pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/pullbackcomp--fbcecc151fbd6e2d162f0a59.md) | 215 | `declaration-track:fbcecc151fbd6e2d162f0a594c82ffe27d42fc240f934b4971a37ef5cd35eed4` |
| 32 | `def` | [pullbackId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/pullbackid--76d00f8dfe231a64f072b850.md) | 219 | `declaration-track:76d00f8dfe231a64f072b850f269ea0436b1b9c5b45199770cfa82595602fc32` |
| 33 | `theorem` | [pullback_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/pullback-obj-left--5a7d423bb2e487d64596dca3.md) | 223 | `result-track:5a7d423bb2e487d64596dca3d11467bfa336bf6e1b0aef41a828cc53b9b922a1` |
| 34 | `theorem` | [pullback_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/pullback-obj-arrow--2e18747d9b7de88a9396bce9.md) | 228 | `result-track:2e18747d9b7de88a9396bce93a2770c3cd6a728cd1e061b293310ccec195205c` |
| 35 | `def` | [pullbackObjIsoOfIsPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/pullbackobjisoofispullback--c770d07a7c7d13185f17ec75.md) | 251 | `declaration-track:c770d07a7c7d13185f17ec75704179f2f8b4c34e5dbde107a49c1c3557576086` |
| 36 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/map--10908ede9d1f3c0b603cca4e.md) | 264 | `declaration-track:10908ede9d1f3c0b603cca4eadf5a1071c5e6398ad8f9a12696066ca227d315f` |
| 37 | `def` | [mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mapcomp--e00aa40a3c8836f7a46a98b9.md) | 268 | `declaration-track:e00aa40a3c8836f7a46a98b93ad779e47d0b0165103607ba49e4a6bbb74a2ecb` |
| 38 | `def` | [mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mapid--68eea615b0f9d640227bedff.md) | 273 | `declaration-track:68eea615b0f9d640227bedffaf8dd97c754bceb128cee67d7c24757af5431646` |
| 39 | `theorem` | [map_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/map-obj-left--d92d2ce51e227d53491ae706.md) | 277 | `result-track:d92d2ce51e227d53491ae706ff0ff74a52fd3a0db6ee7722e086e50feb256f73` |
| 40 | `theorem` | [map_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/map-obj-arrow--6c0485429a87d1ee69117931.md) | 281 | `result-track:6c0485429a87d1ee69117931e53c99606aec07c89ff26e8131b37f0ab0616914` |
| 41 | `instance` | [full_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/full-map--786c3ef0b79292fd3bc0fce6.md) | 284 | `declaration-track:786c3ef0b79292fd3bc0fce6e50f6e79ee992c40e7c6d9f5257c78b15bd0b6b6` |
| 42 | `instance` | [faithful_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/faithful-map--46cee043dd0f390bfd94cc68.md) | 290 | `declaration-track:46cee043dd0f390bfd94cc68fd69dd424a8692a3babdfffdf3234d0b23b034b0` |
| 43 | `def` | [mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mapiso--79a43e5372fac09a2ca4644d.md) | 295 | `declaration-track:79a43e5372fac09a2ca4644dfdb9b1a7abfade639253fd65efb6fe35574dd5a9` |
| 44 | `def` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/congr--051497ebae2672c9af997f9f.md) | 308 | `declaration-track:051497ebae2672c9af997f9f0a8651da3951905e456a5c36913b9ab79d038f83` |
| 45 | `def` | [mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/mappullbackadj--18cb5546f45550da4d16ba3a.md) | 328 | `declaration-track:18cb5546f45550da4d16ba3a2c0843cd2fbb02f9153fece8a1047a7832f7bb1c` |
| 46 | `def` | [pullbackMapSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/pullbackmapself--a3b52688ded71e8587d25862.md) | 333 | `declaration-track:a3b52688ded71e8587d2586210884a4d7a37ee78920b7a6828a8ea40241145ef` |
| 47 | `def` | [imageMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/imagemonoover--ab7ee8c4dfdf2669d9fb7095.md) | 346 | `declaration-track:ab7ee8c4dfdf2669d9fb709589f77832d3f0d83670b190162fffb5015b5413bc` |
| 48 | `theorem` | [imageMonoOver_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/imagemonoover-arrow--9ef1771384caa5e7cbcd8257.md) | 350 | `result-track:9ef1771384caa5e7cbcd82572855d056ff71d10826b80ec9428a9e48b54bcd13` |
| 49 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/image--ae2a0fc5b5b09d0bebe5676c.md) | 362 | `declaration-track:ae2a0fc5b5b09d0bebe5676cfb83403ea5abfab80ebe394784f28812e547a96f` |
| 50 | `def` | [imageForgetAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/imageforgetadj--756a0fab00e94ae560144046.md) | 377 | `declaration-track:756a0fab00e94ae56014404681f69238e372339ab7a4cd8ec094d26a3e835d08` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/instance--f7cc0545ee3cc6c41867aece.md) | 399 | `declaration-track:f7cc0545ee3cc6c41867aece4ee6d89e0f6ea76ce80d463dc6aea5159b3efc77` |
| 52 | `instance` | [reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/reflective--7b4995f31f7ef272a31d355b.md) | 402 | `declaration-track:7b4995f31f7ef272a31d355bd72a89017fccfff48db82143f49ce4c06f1030d5` |
| 53 | `def` | [forgetImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/forgetimage--98c4d814b65891ce3e4bb0dc.md) | 409 | `declaration-track:98c4d814b65891ce3e4bb0dc73690b2f7a1cfe6407530ba28acc18443056a6dc` |
| 54 | `def` | [«exists»](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/exists--ac9f95906d39346a75b73222.md) | 421 | `declaration-track:ac9f95906d39346a75b732222d1726694604dcab1fc9ad89412957956fd233f1` |
| 55 | `instance` | [faithful_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/faithful-exists--aece22a0d69d707a9c4144c6.md) | 424 | `declaration-track:aece22a0d69d707a9c4144c62dd55fb42f3153448d456c100694cc9c42dd0c26` |
| 56 | `def` | [existsIsoMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/existsisomap--8a51c20b09046599b80b0e21.md) | 428 | `declaration-track:8a51c20b09046599b80b0e21e119c71a5e29793ad6a5417119cdc8879143e889` |
| 57 | `def` | [existsPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Varianta70400d5939948804b0da01986e389355d43bc93634793872e65b0fcbfd77d82.lean/declarations/existspullbackadj--5dba6291a4192fa447f22fc4.md) | 438 | `declaration-track:5dba6291a4192fa447f22fc477754eb707a34e365cf6e493526c5591437cecc4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
