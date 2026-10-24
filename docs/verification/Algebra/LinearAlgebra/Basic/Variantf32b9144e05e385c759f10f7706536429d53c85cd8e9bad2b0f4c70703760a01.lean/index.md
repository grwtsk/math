# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdcf78003971c3261160f6f0547cf5ed869620cc",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdcf78003971c3261160f6f0547cf5ed869620cc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Conj` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModuleCat](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/modulecat--a880c7db21226d5f6d62cd48.md) | 81 | `declaration-track:a880c7db21226d5f6d62cd4835bf880a2d3bdc0920dbed06687a1b337a464e8b` |
| 2 | `abbrev` | [ModuleCatMax.](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/modulecatmax--b966a6a4164904fa9bf71d3f.md) | 96 | `declaration-track:b966a6a4164904fa9bf71d3f2e15469a3e690c8508268c5b19f88de083b60cbb` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--fe1a1e34baf1bec936d5d1be.md) | 98 | `declaration-track:fe1a1e34baf1bec936d5d1be7b59de665068b5c934f07ad06c85021ae6db0744` |
| 4 | `instance` | [moduleCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/modulecategory--316cb6def27dc4adbc5c78dc.md) | 103 | `declaration-track:316cb6def27dc4adbc5c78dc3d1d1396ccbf5ebbbddc363f550c4acff46f6d1b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--221ba4196aaeddd90ede621e.md) | 114 | `declaration-track:221ba4196aaeddd90ede621eab5905639865577ca968928867059716f0d30d21` |
| 6 | `instance` | [moduleConcreteCategory](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/moduleconcretecategory--8dab9729fa1107501b42c6d5.md) | 117 | `declaration-track:8dab9729fa1107501b42c6d5e3384b187ff1c411e352df2a8e66152b21d32b82` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--b06489b4155b6b86348a2b5d.md) | 130 | `declaration-track:b06489b4155b6b86348a2b5db94c1c3956c1ab25be3e59ca2b458bfea67f08f9` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--711702db304b04f0925aa11e.md) | 132 | `declaration-track:711702db304b04f0925aa11e22c45070fd9812793c15508e82c659fc4a9b09c5` |
| 9 | `lemma` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/ext--30fb958a59cdb497a0419af4.md) | 137 | `result-track:30fb958a59cdb497a0419af4b9ea41a384cbe40561598b0dbfa54c708195e089` |
| 10 | `instance` | [hasForgetToAddCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/hasforgettoaddcommgroup--6db00c1dd7e291ecdd11281f.md) | 140 | `declaration-track:6db00c1dd7e291ecdd11281f767168b02fabb282075b2ea2261274f1ca33b36f` |
| 11 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/of--69e1ea428759f1b85d16a538.md) | 147 | `declaration-track:69e1ea428759f1b85d16a538053ebe0b1229f1f4e1b6d600a655dc8c71189a1a` |
| 12 | `theorem` | [forget₂_obj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/forget-obj--69607b23d60715a247ca30aa.md) | 152 | `result-track:69607b23d60715a247ca30aa86e965ebb5df8cdd6025ba778ff43d1518d02968` |
| 13 | `theorem` | [forget₂_obj_moduleCat_of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/forget-obj-modulecat-of--de07109d165ae07a037bbbc3.md) | 162 | `result-track:de07109d165ae07a037bbbc3fa7e1e10847c9c5f8d521c2fed3bf0f2dff01c66` |
| 14 | `theorem` | [forget₂_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/forget-map--b05aa1c1bc2ed01f0778fd69.md) | 168 | `result-track:b05aa1c1bc2ed01f0778fd6905636c8f50600aa973aa2d53047b9b561855fabd` |
| 15 | `def` | [ofHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/ofhom--141cdf03d99ac67891ba4ffa.md) | 176 | `declaration-track:141cdf03d99ac67891ba4ffae792c786d0c70f9b1fa40654f18a55da919e8c44` |
| 16 | `theorem` | [ofHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/ofhom-apply--fee3e51ec5b2c48b313e0ef9.md) | 182 | `result-track:fee3e51ec5b2c48b313e0ef94ff0e700ec6abdeab2cfc563603eb4973d34fef1` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--dea2f332890f9c3160f1adc6.md) | 187 | `declaration-track:dea2f332890f9c3160f1adc6d2ae8c7436464c26d3e0f4bebd47f2f415047dbc` |
| 18 | `instance` | [ofUnique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/ofunique--22606c93af3c1c5a295f8834.md) | 190 | `declaration-track:22606c93af3c1c5a295f88343578bd451dd3c8455f91b2b0b6d5b9ccf6be615f` |
| 19 | `theorem` | [coe_of](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/coe-of--359c855d72d8f82540e9f85b.md) | 196 | `result-track:359c855d72d8f82540e9f85b104e5b6722213df0d3e76581ba696524f0d9d9d4` |
| 20 | `def` | [ofSelfIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/ofselfiso--3fed619d5e428fd275ac1e8c.md) | 205 | `declaration-track:3fed619d5e428fd275ac1e8c7252372de8b6e97af90cd3e81b25e272b2c44a53` |
| 21 | `theorem` | [isZero_of_subsingleton](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/iszero-of-subsingleton--d42750cabdb0101dede210bc.md) | 210 | `result-track:d42750cabdb0101dede210bc200864035cbdf2da72cbee702fc2b8635be7350c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--ee1d06e94957857cd0568d07.md) | 221 | `declaration-track:ee1d06e94957857cd0568d07edde93edc88962b36d4a9f8cbe2bb1a8a7d7672b` |
| 23 | `theorem` | [id_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/id-apply--7777f6dc1462dee9ef5deead.md) | 227 | `result-track:7777f6dc1462dee9ef5deeadf70b96d6d6506a4f39a1b1d063d3963c4f1a8477` |
| 24 | `theorem` | [coe_comp](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/coe-comp--9fa9f622d0803049a95092e3.md) | 232 | `result-track:9fa9f622d0803049a95092e3f2dabf9ed9290a45e22aaa6ab5626b46b632677b` |
| 25 | `theorem` | [comp_def](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/comp-def--0ed25dfa4300e7f613ad553b.md) | 236 | `result-track:0ed25dfa4300e7f613ad553b1dd2efbf0aba14c313841b9fdcada5776deb0104` |
| 26 | `lemma` | [forget_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/forget-map--c637cfa444686fbfddf83cee.md) | 241 | `result-track:c637cfa444686fbfddf83cee356fa82b219a881f368b965d98c030d8dd27226a` |
| 27 | `def` | [ModuleCat.asHom](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/modulecat-ashom--e7f7f029e587966359996848.md) | 250 | `declaration-track:e7f7f029e5879663599968484e83ba010bd522c3ca01c9232b4c797dcf075a20` |
| 28 | `def` | [ModuleCat.asHomRight](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/modulecat-ashomright--9e88d9cdd7ce2d741aa4d00b.md) | 259 | `declaration-track:9e88d9cdd7ce2d741aa4d00b30ec6c75ba49a5573c71852f4fe779297b6042ae` |
| 29 | `def` | [ModuleCat.asHomLeft](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/modulecat-ashomleft--2cbe7507f3bbd90e90bd7b30.md) | 268 | `declaration-track:2cbe7507f3bbd90e90bd7b3058876ed23466ff6424be2210d7f4cff6d1dc2252` |
| 30 | `def` | [LinearEquiv.toModuleIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/linearequiv-tomoduleiso--e3e6586dbc3b803970c1ab92.md) | 280 | `declaration-track:e3e6586dbc3b803970c1ab9262a4e3447796517d6d51c255f3ed16dbe8eea25b` |
| 31 | `abbrev` | [LinearEquiv.toModuleIso'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/linearequiv-tomoduleiso--6c00225564f528440d82480a.md) | 292 | `declaration-track:6c00225564f528440d82480a0aa9999effa1e51dcf26a565f7040ed961bc5df2` |
| 32 | `abbrev` | [LinearEquiv.toModuleIso'Left](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/linearequiv-tomoduleiso-left--bb3a182363ea752d2e414b67.md) | 297 | `declaration-track:bb3a182363ea752d2e414b67b8f20a864b55a64813fa60e5542de2af25d9eb11` |
| 33 | `abbrev` | [LinearEquiv.toModuleIso'Right](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/linearequiv-tomoduleiso-right--70fb9405e436242cc4a46890.md) | 303 | `declaration-track:70fb9405e436242cc4a46890820c0ac6831736d08a4c73d573387c2f883f9403` |
| 34 | `def` | [toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/tolinearequiv--c77ad03df630e5654b3218f8.md) | 312 | `declaration-track:c77ad03df630e5654b3218f839f57b86ee90b97acf61c2fb1152329f1d77b0dd` |
| 35 | `def` | [linearEquivIsoModuleIso](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/linearequivisomoduleiso--c43d8dbea89e34a1f694d4b5.md) | 332 | `declaration-track:c43d8dbea89e34a1f694d4b5c0f1ca680738b68099b753697c272d306b81d048` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--3579fc7fd98735a29e8ee349.md) | 342 | `declaration-track:3579fc7fd98735a29e8ee34976cfbcc34e4f6e4c1ad53b50e452307f7d02ae84` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--f34c21cec916039a17870b34.md) | 344 | `declaration-track:f34c21cec916039a17870b3462f8eaae6c6b287727e8276251930dd38a9cb609` |
| 38 | `instance` | [forget₂_addCommGroupCat_additive](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/forget-addcommgroupcat-additive--e6815050a96a3562236029d6.md) | 354 | `declaration-track:e6815050a96a3562236029d67683e3a2b7e855abf01db22161e703e93fbbcf46` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/instance--f287d78f1219c288377cf68e.md) | 362 | `declaration-track:f287d78f1219c288377cf68e3f0674e5416600ff533e0cf4be31725b27c046f7` |
| 40 | `theorem` | [Iso.homCongr_eq_arrowCongr](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/iso-homcongr-eq-arrowcongr--f71f3370578c72bad5ccea27.md) | 377 | `result-track:f71f3370578c72bad5ccea27a5af40822ff9ea7903cc9748cb3f2b14c530366d` |
| 41 | `theorem` | [Iso.conj_eq_conj](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variantf32b9144e05e385c759f10f7706536429d53c85cd8e9bad2b0f4c70703760a01.lean/declarations/iso-conj-eq-conj--417b401c88b595babb0313e1.md) | 382 | `result-track:417b401c88b595babb0313e19607e6ea1fe6049d3dc43357ea706d8445bb4b8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
