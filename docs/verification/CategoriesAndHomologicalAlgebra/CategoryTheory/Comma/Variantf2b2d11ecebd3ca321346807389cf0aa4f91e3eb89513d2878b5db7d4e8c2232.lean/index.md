# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e25372e64f938b94a8194045b39646c52fe5605f",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e25372e64f938b94a8194045b39646c52fe5605f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Iso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.Category` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EqToHom` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Comma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/comma--448dcd7163430cd02fc8c1be.md) | 68 | `declaration-track:448dcd7163430cd02fc8c1bef44a786355583068dd72b6156d6c6f081b40cffe` |
| 2 | `instance` | [Comma.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/comma-inhabited--7169437ae0c5bb145a99f91e.md) | 75 | `declaration-track:7169437ae0c5bb145a99f91e205bd6920de1e70d4223f0783d33a72a4fd050d3` |
| 3 | `structure` | [CommaMorphism](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/commamorphism--afb49b3329c7867304daf419.md) | 88 | `declaration-track:afb49b3329c7867304daf419a502eb5ea44b407f6dbdbf51f9349fa2189a9ee4` |
| 4 | `instance` | [CommaMorphism.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/commamorphism-inhabited--d2c9bfa0f691bf26ee993c09.md) | 95 | `declaration-track:d2c9bfa0f691bf26ee993c0901a76066300a10f8b60b5307b4c919b1b7fc2357` |
| 5 | `instance` | [commaCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/commacategory--901f3641a95a575ecf571220.md) | 102 | `declaration-track:901f3641a95a575ecf571220fb9f03c5f265e74e8026187e6042e7626b0871ca` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/hom-ext--d2c323cae64813c2b27c8d6a.md) | 121 | `result-track:d2c323cae64813c2b27c8d6a77de31a978d3308e6ace92048be6e3b0ac7e7fb7` |
| 7 | `theorem` | [id_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/id-left--6e720e80366ca921c7511d91.md) | 125 | `result-track:6e720e80366ca921c7511d913452d00e318b52a7a48c0f30a2d5b889a4b7d485` |
| 8 | `theorem` | [id_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/id-right--76218634c3f2664916b3cc2c.md) | 130 | `result-track:76218634c3f2664916b3cc2cccdbe14c413e8145d3808eafaf5698c538aec7f8` |
| 9 | `theorem` | [comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/comp-left--2e2f60d51678427bf5d0eedb.md) | 135 | `result-track:2e2f60d51678427bf5d0eedbd686162c9cbc6875bee0037fada063ff76a66bad` |
| 10 | `theorem` | [comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/comp-right--d8b6b0e3e79a3d45fa762f51.md) | 140 | `result-track:d8b6b0e3e79a3d45fa762f518ce37c3c77736ac93907435a210824f9ff258642` |
| 11 | `def` | [fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/fst--623b69c142f4e563da8b4753.md) | 150 | `declaration-track:623b69c142f4e563da8b47539748eb11679a9328d50cd6d316424148f99e87ce` |
| 12 | `def` | [snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/snd--9ea525d522b41387dd0bb25a.md) | 157 | `declaration-track:9ea525d522b41387dd0bb25a044625effa0816d5f16f02d943b44411823adaf1` |
| 13 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/nattrans--03968c9e2262076aa33e2ee6.md) | 167 | `declaration-track:03968c9e2262076aa33e2ee67215e2767e45a4d2170a627f9839438a3a023b7f` |
| 14 | `theorem` | [eqToHom_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/eqtohom-left--9664bcec18373e9c4c4c651d.md) | 171 | `result-track:9664bcec18373e9c4c4c651d4795d4328f8835ad00b0ec0d6a66a4d6beb16ab7` |
| 15 | `theorem` | [eqToHom_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/eqtohom-right--dfa17364fe0c8544af0dd807.md) | 178 | `result-track:dfa17364fe0c8544af0dd8079625bb5120d9f473e894830ff844641dc19cadfd` |
| 16 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/isomk--3960dd542b308c3c2a0db7a4.md) | 193 | `declaration-track:3960dd542b308c3c2a0db7a48285107f8e9f02e10def6a58ef383ffbe48ae6b7` |
| 17 | `def` | [mapLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/mapleft--eab4c2a27e27bebd69b7df01.md) | 210 | `declaration-track:eab4c2a27e27bebd69b7df012904401cff80667ebc24f99bc9a287bd1107c9c7` |
| 18 | `def` | [mapLeftId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/mapleftid--460956b4e3c36f6dceb38172.md) | 223 | `declaration-track:460956b4e3c36f6dceb38172d7fbd94a7fc5045ed3bdc8f3ab5c239b44c36f8b` |
| 19 | `def` | [mapLeftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/mapleftcomp--4b7c2e1278d87faa85c9d9ff.md) | 238 | `declaration-track:4b7c2e1278d87faa85c9d9ffcc95d6df772da6340c08f16b97fd619507632d55` |
| 20 | `def` | [mapLeftEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/maplefteq--b36c5343cbb6f31056ba2b01.md) | 253 | `declaration-track:b36c5343cbb6f31056ba2b0198fe9c86955a33f872d8837abf293752ad23b6ec` |
| 21 | `def` | [mapLeftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/mapleftiso--747eee0f581041913a2e7c5d.md) | 259 | `declaration-track:747eee0f581041913a2e7c5d1fd2b45fd4731628ac9b886af05a30b583bab1bc` |
| 22 | `def` | [mapRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/mapright--38c1b9e63dc9e5527f968fc9.md) | 266 | `declaration-track:38c1b9e63dc9e5527f968fc91d969f74cde325d12d2833271755a499876cfdf5` |
| 23 | `def` | [mapRightId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/maprightid--e1f58e5bd1825e83b6cd49c9.md) | 279 | `declaration-track:e1f58e5bd1825e83b6cd49c964d58ebf8c76023571a412f592c493d81a1519af` |
| 24 | `def` | [mapRightComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/maprightcomp--590b38898c284ca94abc8b3f.md) | 294 | `declaration-track:590b38898c284ca94abc8b3f7f915932c27cc731ea2ec1ca026b96bf48a23d61` |
| 25 | `def` | [mapRightEq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/maprighteq--43c0b777735022454eeb9ae4.md) | 309 | `declaration-track:43c0b777735022454eeb9ae41294c04d2124deab9b57c4a55cc0e85b15d28b81` |
| 26 | `def` | [mapRightIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/maprightiso--397394ea8d1bf550cb3bf870.md) | 315 | `declaration-track:397394ea8d1bf550cb3bf870327a6952d3eedac7862098252bc8e2e65a2a7905` |
| 27 | `def` | [preLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/preleft--8e57d7aa82ce21a76df2f6b2.md) | 328 | `declaration-track:8e57d7aa82ce21a76df2f6b2f271dee12af768de7560b7344da00620ab746eea` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/instance--fb340117006e5bca398cc5ef.md) | 339 | `declaration-track:fb340117006e5bca398cc5ef36769b7beb9b04b7894c3566189c9cc05085f598` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/instance--1047ece15b2f13e87da263c4.md) | 343 | `declaration-track:1047ece15b2f13e87da263c4446b34942c7f56b04cc0657aeaf50967fe4c6a6e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/instance--43daef9a0c87745f6f34cce7.md) | 346 | `declaration-track:43daef9a0c87745f6f34cce79ee4906aeb00b30291ba2e823563fd8bfe45db00` |
| 31 | `def` | [isEquivalencePreLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/isequivalencepreleft--0c93062261b6e7b3ee65588e.md) | 352 | `declaration-track:0c93062261b6e7b3ee65588eea181f52c01b4759238cdf759686b0e1d9366c55` |
| 32 | `def` | [preRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/preright--5781d806ba86cef2e6f2c8a9.md) | 359 | `declaration-track:5781d806ba86cef2e6f2c8a9b9fa31f2d37b38e89db9f8c3fb3d2c745bf13add` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/instance--1f9849c7177b662ec3cb0453.md) | 369 | `declaration-track:1f9849c7177b662ec3cb0453a10ce5a82571c0e289f555c17e0eaa4d8f45b8d9` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/instance--4048a62afa930c479a34f022.md) | 373 | `declaration-track:4048a62afa930c479a34f0222aa7f68e309b98490be505899e58078d624df513` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/instance--c13df91577d2f3afbc05a4ad.md) | 376 | `declaration-track:c13df91577d2f3afbc05a4ad0e1344390fe2572549061615d1c59cae428ee0ed` |
| 36 | `def` | [isEquivalencePreRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/isequivalencepreright--f2edfcd97b6da27a0b953640.md) | 382 | `declaration-track:f2edfcd97b6da27a0b953640dd3e2f3f0753b1605b85e869ded15492a6d648e2` |
| 37 | `def` | [post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantf2b2d11ecebd3ca321346807389cf0aa4f91e3eb89513d2878b5db7d4e8c2232.lean/declarations/post--061a70db8a3361da6fbc5210.md) | 389 | `declaration-track:061a70db8a3361da6fbc5210645ab5ecf307c5892c40268eeaad6d5c4bdf2241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
