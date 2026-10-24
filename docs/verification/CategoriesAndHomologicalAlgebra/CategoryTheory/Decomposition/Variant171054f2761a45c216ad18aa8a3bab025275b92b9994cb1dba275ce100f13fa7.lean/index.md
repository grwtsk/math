# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Decomposition.Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37f5ba335107f31df8a5f24f6b727f3a94be0cab",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37f5ba335107f31df8a5f24f6b727f3a94be0cab`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Galois.GaloisObjects` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.CombinedProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finite.Sum` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [has_decomp_connected_components_aux_conn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/has-decomp-connected-components-aux-conn--805bbe323349f42546eda31c.md) | 58 | `result-track:805bbe323349f42546eda31ca023532df47894dc7820782e65111a1cac7cfb91` |
| 2 | `lemma` | [has_decomp_connected_components_aux_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/has-decomp-connected-components-aux-initial--f0f33ef4fe3594f7023a200a.md) | 65 | `result-track:f0f33ef4fe3594f7023a200aa490a8979b2b6e853bb3e27786d3e1fb2d6def56` |
| 3 | `lemma` | [has_decomp_connected_components_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/has-decomp-connected-components-aux--5d60b5123178dea8a1eccef8.md) | 76 | `result-track:5d60b5123178dea8a1eccef89ccb875c2a200e24e6ab1e5660ffe77237cfa5f2` |
| 4 | `theorem` | [has_decomp_connected_components](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/has-decomp-connected-components--0d5e036f2089f9e7f2dac2d7.md) | 113 | `result-track:0d5e036f2089f9e7f2dac2d7bc0d33be862646f4826f78ac0de480ad011dcb4b` |
| 5 | `theorem` | [has_decomp_connected_components'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/has-decomp-connected-components--808a9e8c58ec426e9a380d0c.md) | 120 | `result-track:808a9e8c58ec426e9a380d0c7bb8612516df5262c3541994db75e6b9e98c7789` |
| 6 | `lemma` | [fiber_in_connected_component](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/fiber-in-connected-component--271c394b0a954c27fd58a8fa.md) | 128 | `result-track:271c394b0a954c27fd58a8fa0c9851223cc32a008e3940b2b63521a8f38c5d6c` |
| 7 | `lemma` | [connected_component_unique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/connected-component-unique--9ab977f3cc4d3f56e6aed897.md) | 140 | `result-track:9ab977f3cc4d3f56e6aed897b34d2d52587143dd922bafd78640e04909cef2af` |
| 8 | `def` | [selfProd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/selfprod--207109306711799ee1b1bad5.md) | 199 | `declaration-track:207109306711799ee1b1bad5f828e1664f55d30d1db8f95a28fe11aba6a39c51` |
| 9 | `def` | [mkSelfProdFib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/mkselfprodfib--7a4662df9b5fcbc204f5ef8b.md) | 203 | `declaration-track:7a4662df9b5fcbc204f5ef8bf50e433db5e91cde8a4b8b87bb631a8b719bf501` |
| 10 | `lemma` | [mkSelfProdFib_map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/mkselfprodfib-map--40adac354b04c9d5a07862a6.md) | 207 | `result-track:40adac354b04c9d5a07862a69dee0997adb5d0a696926a0024032ef92b56ffea` |
| 11 | `def` | [selfProdProj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/selfprodproj--716e3cc1bde2cfb255a00c86.md) | 219 | `declaration-track:716e3cc1bde2cfb255a00c86fa9906f4bf7ecf3c57b5db35e25053a4e5e1ea17` |
| 12 | `lemma` | [selfProdProj_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/selfprodproj-fiber--a4994e70d1962fc6e93d45b1.md) | 223 | `result-track:a4994e70d1962fc6e93d45b15b778cd039d37f6fdc61c4094e2f3b4a297b75a4` |
| 13 | `def` | [fiberPerm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/fiberperm--3619e692ce3ebdbe04d03dd9.md) | 232 | `declaration-track:3619e692ce3ebdbe04d03dd9ad7d9a50ebb7219db0f7a4378113878b14cad525` |
| 14 | `def` | [selfProdPermIncl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/selfprodpermincl--59f7e7c11973c8b519a0036d.md) | 242 | `declaration-track:59f7e7c11973c8b519a0036d9f37b91cd9d76731c4fd059e83e4de89a02ad6e8` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/instance--f1f33669bd78445947c65b8e.md) | 245 | `declaration-track:f1f33669bd78445947c65b8e6ce6878b20316a744e0b27d74704a7fffb839022` |
| 16 | `lemma` | [selfProdTermIncl_fib_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/selfprodtermincl-fib-eq--6f206f115620fe2ed03da981.md) | 248 | `result-track:6f206f115620fe2ed03da9817bd5e41a56b33c2dbca9e7cde5811a95a1a0e62d` |
| 17 | `lemma` | [subobj_selfProd_trans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/subobj-selfprod-trans--8c2d854f4711f2ebf7aade7f.md) | 266 | `result-track:8c2d854f4711f2ebf7aade7f5e7ce87b6666b72bca22e72fd982f826ae0e7812` |
| 18 | `lemma` | [exists_galois_representative](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/exists-galois-representative--cbb45bcac19217e53a2fef24.md) | 273 | `result-track:cbb45bcac19217e53a2fef24b3f7bc05af13aa0f4dd1a4e493fd1ab1b15fef92` |
| 19 | `lemma` | [exists_hom_from_galois_of_fiber](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/exists-hom-from-galois-of-fiber--fe5c75b3bc11fc32a80eab42.md) | 295 | `result-track:fe5c75b3bc11fc32a80eab422c8fa613662fed0b455c29f00c8d786e5aef8f0d` |
| 20 | `lemma` | [exists_hom_from_galois_of_fiber_nonempty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/exists-hom-from-galois-of-fiber-nonempty--ba63e4b1915e49c1e780f062.md) | 302 | `result-track:ba63e4b1915e49c1e780f062a7462e03a2f76691c31731f525a668488cf8febe` |
| 21 | `lemma` | [exists_hom_from_galois_of_connected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/exists-hom-from-galois-of-connected--5ab864e9b50d0f4c44bdb530.md) | 310 | `result-track:5ab864e9b50d0f4c44bdb53077a355d8d6b20d53829f4b8a0e258767c5849aad` |
| 22 | `lemma` | [natTrans_ext_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Decomposition/Variant171054f2761a45c216ad18aa8a3bab025275b92b9994cb1dba275ce100f13fa7.lean/declarations/nattrans-ext-of-isgalois--ab6d5df1779d4925aff5f204.md) | 316 | `result-track:ab6d5df1779d4925aff5f204e877a853dd47aa89f8d45359a0edff3674d54506` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
