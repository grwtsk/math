# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SingleObj.Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cad738ee16a8b74b7020828fb62b226a71dcde1e",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cad738ee16a8b74b7020828fb62b226a71dcde1e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Endomorphism` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.FinCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.MonCat.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.SingleObj` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Equiv` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SingleObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/singleobj--86a4ff643079f26b1cbd87dd.md) | 56 | `declaration-track:86a4ff643079f26b1cbd87dd98671f7b7f46379e07e8b9112bbda1192ef9fd9b` |
| 2 | `instance` | [categoryStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/categorystruct--e8890e01d02044b94fe4f868.md) | 64 | `declaration-track:e8890e01d02044b94fe4f8684ddaa61665a258e1be6abe93ff8be8b7acf581a0` |
| 3 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/category--6bb92014a42a978223b96b0b.md) | 72 | `declaration-track:6bb92014a42a978223b96b0b7f917d23acfe7724a22be42b61bf7dbea1e2cd24` |
| 4 | `theorem` | [id_as_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/id-as-one--9b30a0aa0b78d47d505bda4f.md) | 77 | `result-track:9b30a0aa0b78d47d505bda4f86cd280cf9d61f23fadae0118d804f28be4fe4de` |
| 5 | `theorem` | [comp_as_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/comp-as-mul--5e7c6b8b35eb3f9baa650fb6.md) | 80 | `result-track:5e7c6b8b35eb3f9baa650fb61b090e0b04cee9e9a1f8003ccc654e0d6dd3fc67` |
| 6 | `instance` | [finCategoryOfFintype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/fincategoryoffintype--9734542d87117fb0a05f9ff8.md) | 84 | `declaration-track:9734542d87117fb0a05f9ff85b8519db1feae84ef5a568bea227884a713a39d4` |
| 7 | `instance` | [groupoid](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/groupoid--507c41553ef7615aca242977.md) | 88 | `declaration-track:507c41553ef7615aca242977e42a046fe49bb8f41c617dbff1fb719c7d43bcfa` |
| 8 | `theorem` | [inv_as_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/inv-as-inv--5cdef91aceea379b734cfcaf.md) | 93 | `result-track:5cdef91aceea379b734cfcaf93d027f76473c294260eb98276732414081fe1bc` |
| 9 | `abbrev` | [star](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/star--1f753cb047ef1e59f34a6d12.md) | 100 | `declaration-track:1f753cb047ef1e59f34a6d12331b3a988ddf860284a3467fe2d841ba4ccce387` |
| 10 | `def` | [toEnd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/toend--2295c9ef40d01816b8cc47b3.md) | 105 | `declaration-track:2295c9ef40d01816b8cc47b3f7492aeb1cf215a9ee38c87c4610803456ff8be3` |
| 11 | `theorem` | [toEnd_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/toend-def--663ebe6310c4c60390a9e223.md) | 108 | `result-track:663ebe6310c4c60390a9e223253b778580510c6e27aefd8673fdcb2af810954b` |
| 12 | `def` | [mapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/maphom--da00f69337aabcfc83dca449.md) | 116 | `declaration-track:da00f69337aabcfc83dca4492b55b060c5f9e0cb0c72015371ab8090a37553e7` |
| 13 | `theorem` | [mapHom_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/maphom-id--de0da0517279bf9fe70099ba.md) | 129 | `result-track:de0da0517279bf9fe70099bad9744cf69589ca2df506e70c37b75f2298716d59` |
| 14 | `theorem` | [mapHom_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/maphom-comp--ea0ee71107bb5b02018d5be7.md) | 134 | `result-track:ea0ee71107bb5b02018d5be759c411c842ad6e9eedf36005dd2ebd4728b72b30` |
| 15 | `def` | [differenceFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/differencefunctor--b1fe5696bab1580f5588f21d.md) | 143 | `declaration-track:b1fe5696bab1580f5588f21de03b9b84dc1191661faed59b26d85973fa45441d` |
| 16 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/functor--2454696f70efcb0515812a4e.md) | 156 | `declaration-track:2454696f70efcb0515812a4eeea08460ec93e9d1465ce58ae7831a67e398ab8d` |
| 17 | `def` | [natTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/nattrans--abdc9a1011bb41e9477f46f8.md) | 165 | `declaration-track:abdc9a1011bb41e9477f46f8a85adaedd90e674bf9b3e1654ba6790fd92e4070` |
| 18 | `abbrev` | [toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/tofunctor--3c30441a46192cd55a515707.md) | 182 | `declaration-track:3c30441a46192cd55a51570749065c6bc79f5a2a717a88a9d6df76141ae85538` |
| 19 | `theorem` | [comp_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/comp-tofunctor--9d621eeea8b608488d516e96.md) | 186 | `result-track:9d621eeea8b608488d516e9618b4a34ae16b3c9b46ee0713bb16d3b70307b5c1` |
| 20 | `theorem` | [id_toFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/id-tofunctor--edf11f92583e45b1bb94cf1f.md) | 193 | `result-track:edf11f92583e45b1bb94cf1f56183a569c9ac09710ab67e44ca8dded8b7dc344` |
| 21 | `def` | [toSingleObjEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/tosingleobjequiv--068cd34120b5663f8e9ba506.md) | 204 | `declaration-track:068cd34120b5663f8e9ba506da9f32225c577fd4fb8e0932c51c38a686a65c67` |
| 22 | `def` | [toAut](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/toaut--c2c0d46f367f5b10cdefa35b.md) | 224 | `declaration-track:c2c0d46f367f5b10cdefa35bd9e84e0b98d83cb0fa7b476dd4e42ec3d3c1ded7` |
| 23 | `theorem` | [toAut_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/toaut-hom--77e48aa2a46f19ef7b9c7b7a.md) | 229 | `result-track:77e48aa2a46f19ef7b9c7b7a38194b3980cb376c7c138d33974ebae00d9e49df` |
| 24 | `theorem` | [toAut_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/toaut-inv--05197089305457e9fe04ee5f.md) | 233 | `result-track:05197089305457e9fe04ee5f6fd2e87ca6e7a987b2fd27e2f531ad5900283e05` |
| 25 | `def` | [toCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/tocat--3386404e1d4d8afb837fffcd.md) | 243 | `declaration-track:3386404e1d4d8afb837fffcdac3788ee8789d7d1674bf59398424f04eb0ebe44` |
| 26 | `instance` | [toCat_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/tocat-full--dd139fda2f98ed020fdcb983.md) | 247 | `declaration-track:dd139fda2f98ed020fdcb983e4799f167aacdabc054f803f00c934482b6ccda6` |
| 27 | `instance` | [toCat_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SingleObj/Variant4fa519036042b41e681b4bf87dbb73c334970fe29842ca73bd2b8d49766dc5a2.lean/declarations/tocat-faithful--e6a0188a7e2d4f536f80a81e.md) | 252 | `declaration-track:e6a0188a7e2d4f536f80a81eb83fd09b58ee2b49afce63b59a61302e78d51b16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
