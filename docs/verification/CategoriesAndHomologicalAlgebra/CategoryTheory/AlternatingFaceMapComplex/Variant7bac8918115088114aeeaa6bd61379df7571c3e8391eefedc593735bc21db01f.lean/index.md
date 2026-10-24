# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AlternatingFaceMapComplex.Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3a27a743268513307ad1f4d112ae666b0e2b44b3",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3a27a743268513307ad1f4d112ae666b0e2b44b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.MooreComplex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.FunctorCategories` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/objd--ecbe0dca305b55ff4904c857.md) | 62 | `declaration-track:ecbe0dca305b55ff4904c857aa6cf9986b0fcd20e3516ee68608fcce26588d06` |
| 2 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/d-squared--a7e6ec5da2d99b7e801bc399.md) | 69 | `result-track:a7e6ec5da2d99b7e801bc3990f5e0b1459e2018bfa109b5746d568ad87e09775` |
| 3 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/obj--479e41366182811ce9c0050e.md) | 120 | `declaration-track:479e41366182811ce9c0050efcdd048a33a11e63ca2bd728d056ef3591c405cc` |
| 4 | `theorem` | [obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/obj-x--94d24411c8ba1fc7195c5105.md) | 124 | `result-track:94d24411c8ba1fc7195c51052fdb6d2e7dc96360304ff6a5d0a5d75d5aab9409` |
| 5 | `theorem` | [obj_d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/obj-d-eq--60488db0df0d858af513ae07.md) | 128 | `result-track:60488db0df0d858af513ae077cd31903afeaa78e6601c207f1792762463f4a27` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/map--e2807f5fd73a7d04adf36cb3.md) | 136 | `declaration-track:e2807f5fd73a7d04adf36cb3029e924dc0746ad92e3709a489f9179946df6803` |
| 7 | `theorem` | [map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/map-f--e6a062541d14fbcbc7e853f2.md) | 147 | `result-track:e6a062541d14fbcbc7e853f2dfde366127885905cd894c8a4a930518d213adc7` |
| 8 | `def` | [alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/alternatingfacemapcomplex--527e044c129586822f5fb9e8.md) | 155 | `declaration-track:527e044c129586822f5fb9e8514492f5ccbd8ee388b39136558fcad9613b9cf1` |
| 9 | `theorem` | [alternatingFaceMapComplex_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/alternatingfacemapcomplex-obj-x--53e8701bb52959938801a7da.md) | 162 | `result-track:53e8701bb52959938801a7da132e283142ed773c462968886c489de937621a89` |
| 10 | `theorem` | [alternatingFaceMapComplex_obj_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/alternatingfacemapcomplex-obj-d--3c81f4dccaa733823be147d9.md) | 167 | `result-track:3c81f4dccaa733823be147d997ba72a90c91e4d27f4b2e1563da4943a7f75de0` |
| 11 | `theorem` | [alternatingFaceMapComplex_map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/alternatingfacemapcomplex-map-f--6f43582ca0169b1c9760e425.md) | 173 | `result-track:6f43582ca0169b1c9760e425e538e278b9179998bda9e109d72e04c5f29511ae` |
| 12 | `theorem` | [map_alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/map-alternatingfacemapcomplex--cf1e15ac7f87b9782e3c398d.md) | 177 | `result-track:cf1e15ac7f87b9782e3c398d33b2222ec1aa3c84b994b67dfa616a007e107ed8` |
| 13 | `theorem` | [karoubi_alternatingFaceMapComplex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/karoubi-alternatingfacemapcomplex-d--7e96fbda26e92a6e79250368.md) | 198 | `result-track:7e96fbda26e92a6e79250368267704f67724b63f316e142507aa36e2e4d20c12` |
| 14 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/anonymous--3e05d23e6f76a99bcaf547d0.md) | 210 | `declaration-track:3e05d23e6f76a99bcaf547d0626d0a80710fab78fe3454ae82219180a2c456c5` |
| 15 | `lemma` | [ε_app_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/app-f-zero--7fe79eb29884deef5def930b.md) | 230 | `result-track:7fe79eb29884deef5def930bfb286c6749a3e0a6a94ed848054474f7072f0725` |
| 16 | `lemma` | [ε_app_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/app-f-succ--de35fbb946a8b467719b2b78.md) | 235 | `result-track:de35fbb946a8b467719b2b78b0395b5489297b3515315f1dd10e772e602faaf8` |
| 17 | `def` | [inclusionOfMooreComplexMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/inclusionofmoorecomplexmap--42a1795514c5ab88081966b0.md) | 247 | `declaration-track:42a1795514c5ab88081966b061f55b9a04e8800be9c3a229e5a06469705962b5` |
| 18 | `theorem` | [inclusionOfMooreComplexMap_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/inclusionofmoorecomplexmap-f--a4859e4ee85ae91c0ca90611.md) | 270 | `result-track:a4859e4ee85ae91c0ca90611ef1e8c2f460280d2df24a5983bf12aa0015e0774` |
| 19 | `def` | [inclusionOfMooreComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/inclusionofmoorecomplex--6dfefa2a848d52527c53f969.md) | 280 | `declaration-track:6dfefa2a848d52527c53f969cf997f565b7f07f31d5ca39ab1a8e6611dddff50` |
| 20 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/objd--365f2f3e05880dcfd6bccb07.md) | 290 | `declaration-track:365f2f3e05880dcfd6bccb07e0c429acb6d8eaef1ea8b1275b3a52b16f4ae07b` |
| 21 | `theorem` | [d_eq_unop_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/d-eq-unop-d--2cf832dbfa163041022a2873.md) | 293 | `result-track:2cf832dbfa163041022a28734d48d36c59c70f33727481c50ab706e662689c83` |
| 22 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/d-squared--f63fcb5fe9193f7bc5adbb12.md) | 300 | `result-track:f63fcb5fe9193f7bc5adbb12d5832e373054e8ada8cdb68ed94c15dcf0d224bb` |
| 23 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/obj--46dd366dbce03290a9f3055a.md) | 304 | `declaration-track:46dd366dbce03290a9f3055a49042b3a658804d0b920d8d7e137e3de6f8cb874` |
| 24 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/map--54cdeb352afcb9027da43ffb.md) | 311 | `declaration-track:54cdeb352afcb9027da43ffbde00ce3ea6c8fa33d7b688d26831881b30dd04f6` |
| 25 | `def` | [alternatingCofaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variant7bac8918115088114aeeaa6bd61379df7571c3e8391eefedc593735bc21db01f.lean/declarations/alternatingcofacemapcomplex--6e72c8e2b5a34bda307a8cd4.md) | 327 | `declaration-track:6e72c8e2b5a34bda307a8cd49d9c59e03e84685d6827cbe11bc70d3a2d60d005` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
