# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ab320bb293816a8ff1e67ce28c1350e3c24f31c",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ab320bb293816a8ff1e67ce28c1350e3c24f31c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/tomonad--a588bc3b01809dfc960bbc19.md) | 45 | `declaration-track:a588bc3b01809dfc960bbc19878da7bbdf33282e6f3227fd9203e099be757646` |
| 2 | `def` | [toComonad](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/tocomonad--2c1710692ca7112f799551c4.md) | 63 | `declaration-track:2c1710692ca7112f799551c4e0f060892e5bc32f919aec15f3f65a720a6dc264` |
| 3 | `def` | [adjToMonadIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/adjtomonadiso--e483cba5e07e78bf518e0cf7.md) | 78 | `declaration-track:e483cba5e07e78bf518e0cf7d8819be19d0f18b41027d31b44863dfb37c7414a` |
| 4 | `def` | [adjToComonadIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/adjtocomonadiso--ec84acc933bd8a2b741ec21d.md) | 83 | `declaration-track:ec84acc933bd8a2b741ec21d46e408b4e078430828c5eaca962efe39ba4ef68c` |
| 5 | `def` | [unitAsIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/unitasisoofiso--3107eaf9daa3e085003e68de.md) | 90 | `declaration-track:3107eaf9daa3e085003e68dee4a458abef0ae2aa71a46fc5fe94be20d09e310c` |
| 6 | `lemma` | [isIso_unit_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/isiso-unit-of-iso--5b1944fed4cda63c0e6f1909.md) | 103 | `result-track:5b1944fed4cda63c0e6f19091d372a358d42ffe359b4ad192c9c1bedca4dd318` |
| 7 | `def` | [fullyFaithfulLOfCompIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/fullyfaithfullofcompisoid--1badb8a2d5bfb562bc839df0.md) | 110 | `declaration-track:1badb8a2d5bfb562bc839df0af974d5b85af645b4b8a22df7e393ec1a60560fa` |
| 8 | `def` | [counitAsIsoOfIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/counitasisoofiso--347f97f20558c762d67b6c19.md) | 118 | `declaration-track:347f97f20558c762d67b6c19b5dddc2d5e01badcc1983c08837fc14d356c6287` |
| 9 | `lemma` | [isIso_counit_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/isiso-counit-of-iso--ea050fd97a0c5e7062e6a90a.md) | 131 | `result-track:ea050fd97a0c5e7062e6a90a923178b3c67405fb3c9016a220989792d33b868b` |
| 10 | `def` | [fullyFaithfulROfCompIsoId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/fullyfaithfulrofcompisoid--780c3ee91cf1ac4ff8dde111.md) | 138 | `declaration-track:780c3ee91cf1ac4ff8dde111fadc82964027e514f8bf6ecb3d14c3c04bfab5dd` |
| 11 | `def` | [Monad.comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/monad-comparison--647ef03968d477ec8f2471c6.md) | 151 | `declaration-track:647ef03968d477ec8f2471c662f5809501afe3802583eb1c73ac7f34fec55c67` |
| 12 | `def` | [Monad.comparisonForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/monad-comparisonforget--2580145679f37cc0da8054a7.md) | 167 | `declaration-track:2580145679f37cc0da8054a7ce409790e6319e7fafd5b7bbf15e0a3ec0dbaddf` |
| 13 | `theorem` | [Monad.left_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/monad-left-comparison--67d00186450366fb3ab5e737.md) | 171 | `result-track:67d00186450366fb3ab5e73760de0186207ece3f5e86b28142bffc00defdc31a` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--ded564632ee645c11c4738e5.md) | 174 | `declaration-track:ded564632ee645c11c4738e54e0222bc42ff8cca4a32770b2f7f77b5fdb49809` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--d2055fc18fca2ff35172d0cd.md) | 177 | `declaration-track:d2055fc18fca2ff35172d0cd56f173e4073a1b0cae85ce64186bb6b5c4b41e6b` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--cb2172b5107c86f618752ad8.md) | 180 | `declaration-track:cb2172b5107c86f618752ad80b6c256d219f297ab064fe5ffe2bd948f21f8037` |
| 17 | `def` | [Comonad.comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comonad-comparison--edfb1b5355bf65dc5f982990.md) | 194 | `declaration-track:edfb1b5355bf65dc5f9829901201abdc79017a7a2e3feec4e9e8dfcd3581013d` |
| 18 | `def` | [Comonad.comparisonForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comonad-comparisonforget--7259b2c1ce6f1d7bc61b8692.md) | 211 | `declaration-track:7259b2c1ce6f1d7bc61b8692f34b5dc109903d10563b2f75b91742746617116e` |
| 19 | `theorem` | [Comonad.left_comparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comonad-left-comparison--7849173b3d47c616ebdc2256.md) | 216 | `result-track:7849173b3d47c616ebdc225626ac593c27405a8f098cd42fc22404e321f0defe` |
| 20 | `instance` | [Comonad.comparison_faithful_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comonad-comparison-faithful-of-faithful--4175113d9c06f30227d9ddc8.md) | 219 | `declaration-track:4175113d9c06f30227d9ddc8cfdb4d9ab9df9cdb4e43560258f230e23154b897` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--4842621bf0cee6f97fe0d698.md) | 223 | `declaration-track:4842621bf0cee6f97fe0d698a55f8acdb9a8e753028d9ceadf6eb84720a7e0c1` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--e257edf5898bad80c8df4509.md) | 226 | `declaration-track:e257edf5898bad80c8df4509cd7d57f00aa38e99b1cc0ec04b6532e4e46ca664` |
| 23 | `class` | [MonadicRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/monadicrightadjoint--486393043d07c3482930fc91.md) | 237 | `declaration-track:486393043d07c3482930fc91ee0ef6588af099aa2b3c1e954414d26b9c4cbf57` |
| 24 | `def` | [monadicLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/monadicleftadjoint--ddb0caeca4409fdf55555d62.md) | 245 | `declaration-track:ddb0caeca4409fdf55555d6239e8a214ff25415030fd914176d42707620b2a7b` |
| 25 | `def` | [monadicAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/monadicadjunction--1bd3b912b58d85781539bd83.md) | 249 | `declaration-track:1bd3b912b58d85781539bd835b1199ecea5cb666b4c1e671a69cbae3fb5f0807` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--723856067034fa8138563737.md) | 253 | `declaration-track:723856067034fa8138563737ecd50130e1f78e92aa950c51a7c5189c18a712b3` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--75d6222fd7aa327c844ba168.md) | 257 | `declaration-track:75d6222fd7aa327c844ba168cbf7e6d002be67ba9832ffe65071a6f2e1b7eff6` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--75744fe7bc4566d67a946abf.md) | 260 | `declaration-track:75744fe7bc4566d67a946abf861cbf20e12fff89b159f3288edc69c92fd7734c` |
| 29 | `class` | [ComonadicLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comonadicleftadjoint--4ce147d05d2309e5f01b1b87.md) | 269 | `declaration-track:4ce147d05d2309e5f01b1b87dff66bb2022b9268d34c999f254de14789035300` |
| 30 | `def` | [comonadicRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comonadicrightadjoint--dce7b95fb4a0b714c4321316.md) | 277 | `declaration-track:dce7b95fb4a0b714c4321316d0bf24a0fc7e63be365f1994b5a2cf3ccb69b751` |
| 31 | `def` | [comonadicAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comonadicadjunction--5347ad52bdbc6f16f0f1992d.md) | 281 | `declaration-track:5347ad52bdbc6f16f0f1992d7a1d2b7fa67ba5a01dbf2d4c527c12f3d38e923a` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--7e3cb4d74438077101c6a77c.md) | 285 | `declaration-track:7e3cb4d74438077101c6a77ce58b2c65c990cfcabf15bb9c31177035d0b036b7` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--f184330e77f828b80e21a7c7.md) | 289 | `declaration-track:f184330e77f828b80e21a7c7c1769f0f85775de0b3558dee7792c349b6449e8a` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--3c67219866e75c2eda5a6f2e.md) | 292 | `declaration-track:3c67219866e75c2eda5a6f2ed13c9f23d0313e7be44265a653d6b578893dd3d7` |
| 35 | `instance` | [μ_iso_of_reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/iso-of-reflective--ba7c4c1565b2dd2f5a6d10f7.md) | 298 | `declaration-track:ba7c4c1565b2dd2f5a6d10f76a6a3f3877263b22d82486896bd13d9dbe788950` |
| 36 | `instance` | [δ_iso_of_coreflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/iso-of-coreflective--f5881a5eda373e4c2075972e.md) | 302 | `declaration-track:f5881a5eda373e4c2075972eef6ff700c4a954a5740778abe85dcd72b777afa3` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--b48a0d250dd721d09bda8033.md) | 311 | `declaration-track:b48a0d250dd721d09bda8033b58a120ebb90f0d8476a206ffbc501ae67710db7` |
| 38 | `instance` | [comparison_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comparison-esssurj--6150b459bd640884db28606a.md) | 322 | `declaration-track:6150b459bd640884db28606a69b488621e347903f6ef2e9ac148128e5200953c` |
| 39 | `lemma` | [comparison_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comparison-full--e1069c90fd10ec9f48102a45.md) | 336 | `result-track:e1069c90fd10ec9f48102a45b853bb9c764162eb4e12239f82d9d4d4755e06db` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--534e33f860277e1419e7c030.md) | 344 | `declaration-track:534e33f860277e1419e7c030eff0baa18a6eade21c05be68c77e32dc1fa7a334` |
| 41 | `instance` | [comparison_essSurj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comparison-esssurj--9f8712342e54c0d72fd64096.md) | 354 | `declaration-track:9f8712342e54c0d72fd64096fdfa4b546ec4d2a7811ced4be2cf33686aa4b9ef` |
| 42 | `lemma` | [comparison_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/comparison-full--4a7270d6273bc1b0fd59efbd.md) | 364 | `result-track:4a7270d6273bc1b0fd59efbd5c59c176a1355f1ddc7f56cf2c352be525422aba` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--785519bb4044d408802d99e6.md) | 375 | `declaration-track:785519bb4044d408802d99e6fe5e95cbda5ced79c15ef08ed694e47d1d8dd72d` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant07a2795d2664530c6c6d7742b8631d88303dc9d66779ad6c82344c7cd72d9155.lean/declarations/instance--33d72d0e8bd6df9473e91ead.md) | 383 | `declaration-track:33d72d0e8bd6df9473e91ead192b07781ef77f0eed6573a988e8de9860baed31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
