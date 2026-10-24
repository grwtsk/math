# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteProducts.Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "badbf9b29d4b03a7a381fe3dba6c8f4de994fb95",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `badbf9b29d4b03a7a381fe3dba6c8f4de994fb95`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.ConeCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Adjunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.HasLocalization` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Pi` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [inverts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/inverts--f37cf138b006b3ad9d2ca069.md) | 45 | `result-track:f37cf138b006b3ad9d2ca069aa4f782c83c96caa5aa43e8d9f07a8343a77d94a` |
| 2 | `abbrev` | [limitFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/limitfunctor--2563353cf587a3707a6b37f4.md) | 53 | `declaration-track:2563353cf587a3707a6b37f4bf5b3ad162d4b53ee051150cb3e5c21d5c631ebb` |
| 3 | `def` | [compLimitFunctorIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/complimitfunctoriso--eaf6b4184414c1fb4f232d2e.md) | 59 | `declaration-track:eaf6b4184414c1fb4f232d2e83d4f4670e9b3490e220b105a90fd077bf9de4ce` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/instance--763472f4eeef5ea3dc41ef23.md) | 64 | `declaration-track:763472f4eeef5ea3dc41ef23fd4e85abaf2ae5bc029de72c4d6900e196f37279` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/instance--341f3d4e326cae795d770028.md) | 69 | `declaration-track:341f3d4e326cae795d770028419862140bd412a4b5ebc727aa1c4a226f3f9c25` |
| 6 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/adj--9a2ef3f02bc2be7428d141fc.md) | 75 | `declaration-track:9a2ef3f02bc2be7428d141fc0959b57624ccc70d1ab2be37143f96940c989cef` |
| 7 | `lemma` | [adj_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/adj-counit-app--87477c1a5833caa3eaed664d.md) | 80 | `result-track:87477c1a5833caa3eaed664d56c6819bb50602fa4c4f7ed857fcb77aeed34493` |
| 8 | `def` | [isLimitMapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/islimitmapcone--261bd154ea68e3e83a95a0cf.md) | 88 | `declaration-track:261bd154ea68e3e83a95a0cff94dcadca4746b88042e03d3efdf1b55bf2f71c5` |
| 9 | `lemma` | [hasProductsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/hasproductsofshape--0597a5da238d88220d2d0830.md) | 98 | `result-track:0597a5da238d88220d2d083034557c50c44d8e6340c3e300db10e813189e0879` |
| 10 | `lemma` | [preservesProductsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/preservesproductsofshape--684e56960e16038c6333365d.md) | 107 | `result-track:684e56960e16038c6333365d26d6b629e9c168691d8ac156494e6769273a1651` |
| 11 | `lemma` | [hasFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/hasfiniteproducts--3032575044ba46110b67395a.md) | 116 | `result-track:3032575044ba46110b67395a51e4f6b9c7ecc55cac28799938a2f1bb3c7be435` |
| 12 | `lemma` | [preservesFiniteProducts](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/preservesfiniteproducts--05d52daec26bdb0e4147f559.md) | 123 | `result-track:05d52daec26bdb0e4147f5593487086aa73de4713aa3bc624ac884533a6eed48` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/instance--36513a6058e24f06ee4c1529.md) | 127 | `declaration-track:36513a6058e24f06ee4c1529a929e71b06a0710833ee47fc772cb7274f639411` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/instance--cd3994e955ef510680569b2f.md) | 129 | `declaration-track:cd3994e955ef510680569b2fdf6ae8d1a80772a8107eb9d140adc45925a8b95f` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/instance--7d666290a97110cf4086aa33.md) | 131 | `declaration-track:7d666290a97110cf4086aa3359177e0605066302deaad04a8d9ce208ea123685` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProducts/Variantf35928285f74b54d7823905f29beedb4292deefc167f2c3a29fcb014ef3a247f.lean/declarations/instance--25e48c1874dd26f10e9baa3d.md) | 135 | `declaration-track:25e48c1874dd26f10e9baa3d654e6ceef9d5e80ad506c1e4683c2a847d4cb262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
