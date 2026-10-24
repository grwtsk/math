# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.M.Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2237c968f2d84829517f2585b4d833035f1132a4",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2237c968f2d84829517f2585b4d833035f1132a4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFunctor.Univariate.M` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [M.Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-path--5c1ecd4d2ca7ab2ad8e6e904.md) | 60 | `declaration-track:5c1ecd4d2ca7ab2ad8e6e90480a7fb3e9d2fe0242bb0fad4806bc2293d7c2899` |
| 2 | `instance` | [M.Path.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-path-inhabited--39a99ae7397c7bc2d4bcc717.md) | 75 | `declaration-track:39a99ae7397c7bc2d4bcc7172002f9ac290ab2ae5b6a0c18641fe3a349ccd061` |
| 3 | `def` | [mp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/mp--759df66d9aec679d1a11ef42.md) | 90 | `declaration-track:759df66d9aec679d1a11ef425c03807bac8592c850077b3a135d46a871791300` |
| 4 | `def` | [M](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m--e9469594d320a98326150f45.md) | 95 | `declaration-track:e9469594d320a98326150f455ca3a0497bc9b6bb17f172d52feb8ee1c3ea480d` |
| 5 | `instance` | [mvfunctorM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/mvfunctorm--c262909850e4219572b11328.md) | 98 | `declaration-track:c262909850e4219572b11328ad260bc9c88b26b89e60504a3df6a403e7bd754e` |
| 6 | `instance` | [inhabitedM](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/inhabitedm--a1bbaa0e7256cc23bcdf07a1.md) | 100 | `declaration-track:a1bbaa0e7256cc23bcdf07a1739e31ebf45648407c3ca19131489ab8c1ec70ec` |
| 7 | `def` | [M.corecShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-corecshape--b77b27719f77159dda78cca4.md) | 106 | `declaration-track:b77b27719f77159dda78cca4e8e6a039e0c380dbb1ff2c2bf50faab1619e7916` |
| 8 | `def` | [castDropB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/castdropb--0d4f32671bd82f0971ce1862.md) | 111 | `declaration-track:0d4f32671bd82f0971ce1862a28cf18e852bd067bd82d6bdaafdd180afa6b7a1` |
| 9 | `def` | [castLastB](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/castlastb--77b206c08d48ec9836005f83.md) | 114 | `declaration-track:77b206c08d48ec9836005f83ca7e60578b366bc5a58186605a9af805d02b55b1` |
| 10 | `def` | [M.corecContents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-coreccontents--5f9ebac3d190018ab163caf1.md) | 117 | `declaration-track:5f9ebac3d190018ab163caf151964a9d88ef5ae9d8e20c1cc7c2ad1bb780d8e0` |
| 11 | `def` | [M.corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-corec--41f13a4a1963cf7ebbc62c37.md) | 144 | `declaration-track:41f13a4a1963cf7ebbc62c3746b9854eab0be2a890f1f3684564d5bc6c6ce9f4` |
| 12 | `def` | [M.corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-corec--ff79e0f6eee52f7314237fd5.md) | 149 | `declaration-track:ff79e0f6eee52f7314237fd59ef13a09c8f4f9e063db8c72a45214bbf432c61d` |
| 13 | `def` | [M.pathDestLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-pathdestleft--cd947983cf3333f56575d812.md) | 153 | `declaration-track:cd947983cf3333f56575d8126716e3c4afae7d95d67e500383ef10b508d56519` |
| 14 | `def` | [M.pathDestRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-pathdestright--5151bbfecd029e66cbd01ccf.md) | 158 | `declaration-track:5151bbfecd029e66cbd01ccf4397b736c5246292c3bd3c61d7a053ec25981910` |
| 15 | `def` | [M.dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-dest--d3a9699d22a66cbe777d2d63.md) | 163 | `declaration-track:d3a9699d22a66cbe777d2d63b8a626ea63be01de905ea72130619607d542a13f` |
| 16 | `def` | [M.dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-dest--0c49c4ec53bc379be6b7fa03.md) | 168 | `declaration-track:0c49c4ec53bc379be6b7fa03e23c5fdc1239a36453b0393be5aaf2ef7d3c43f6` |
| 17 | `def` | [M.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-mk--456e29a4045ba7e5b3415ab8.md) | 172 | `declaration-track:456e29a4045ba7e5b3415ab8c39ce147989fdb515964db778f5a7696822d2912` |
| 18 | `theorem` | [M.dest'_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-dest-eq-dest--8047b1a19eb0c7c9f076c7d3.md) | 175 | `result-track:8047b1a19eb0c7c9f076c7d348f89e9d7dc1f09fc168756574116ae644da4cf8` |
| 19 | `theorem` | [M.dest_eq_dest'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-dest-eq-dest--6f038f21f70324b379b0a7e2.md) | 180 | `result-track:6f038f21f70324b379b0a7e218ecd50b77273e63dfffdea505c6a126f17424ec` |
| 20 | `theorem` | [M.dest_corec'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-dest-corec--12aff1e51399213f543a4764.md) | 185 | `result-track:12aff1e51399213f543a476487ecbeca8796e6e24546c985e4b8b001818f4c91` |
| 21 | `theorem` | [M.dest_corec](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-dest-corec--4ce537aeaa8bc2814d64b1f1.md) | 190 | `result-track:4ce537aeaa8bc2814d64b1f1daf613d1636bb03b347be0f15ffdf5182e19864b` |
| 22 | `theorem` | [M.bisim_lemma](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-bisim-lemma--23ab03830a45c211a71d3946.md) | 199 | `result-track:23ab03830a45c211a71d39468e541e62e8e97d4192c913837ab0fa34fe99b6c9` |
| 23 | `theorem` | [M.bisim](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-bisim--567989fc48cc7eb2e708cbbc.md) | 211 | `result-track:567989fc48cc7eb2e708cbbc68198f5d0034386953b3bee9e77f08067d8c8d81` |
| 24 | `theorem` | [M.bisim₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-bisim--577a99dc40f6b04ed08ee0db.md) | 245 | `result-track:577a99dc40f6b04ed08ee0db5cbe5be3264245c8b7507abd019b298778d59f32` |
| 25 | `theorem` | [M.bisim'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-bisim--b919423fbefd778db4a2e854.md) | 276 | `result-track:b919423fbefd778db4a2e854cf2c3a96bb3092c607a73868c7c5a4e3dbe3ec25` |
| 26 | `theorem` | [M.dest_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-dest-map--b3b1ef19524023668809767d.md) | 290 | `result-track:b3b1ef19524023668809767d6f8bb10f63a41212a3d5174be7c76bccc61e713b` |
| 27 | `theorem` | [M.map_dest](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/M/Variant5d5a93cc965a81348f2fc24ba5781eee2b033bc4310c7b73b3601c01109535e8.lean/declarations/m-map-dest--4e4c6fc2cec6ed507d2e2d7c.md) | 299 | `result-track:4e4c6fc2cec6ed507d2e2d7cf7e19c0720a20691c6e43d8fe902df6aefcc3e68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
