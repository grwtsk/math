# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AlternatingFaceMapComplex.Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c652507079acb80001e58b8483b1f7ad0d2555a",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c652507079acb80001e58b8483b1f7ad0d2555a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.Additive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.MooreComplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Idempotents.FunctorCategories` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/objd--fcf5a3255ab771f66461f7a6.md) | 70 | `declaration-track:fcf5a3255ab771f66461f7a611713699c183a867e64f58d98e0e662056b56b1c` |
| 2 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/d-squared--750a4310a1f96dfff23f1031.md) | 77 | `result-track:750a4310a1f96dfff23f103110afd0dab84ccefaac896a408af68f73c6c9c6f2` |
| 3 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/obj--a901516decfd0c9a7ceb84f6.md) | 128 | `declaration-track:a901516decfd0c9a7ceb84f66d4e55e7d95b35e47a174e45727021f9cabe414d` |
| 4 | `theorem` | [obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/obj-x--f92ba42f16009efd7041d397.md) | 132 | `result-track:f92ba42f16009efd7041d397f2d23e0938778ceb5a1fb32b940b3e85865b3898` |
| 5 | `theorem` | [obj_d_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/obj-d-eq--ee94a11470a74291c54c4d71.md) | 136 | `result-track:ee94a11470a74291c54c4d71cf649f8a4ebaffc167f0fdf74aec6e4fa44550e7` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/map--4ec24497034da3bd735e5986.md) | 144 | `declaration-track:4ec24497034da3bd735e5986770ddfddf8fbf8e789f7f3fda4294459c4da9950` |
| 7 | `theorem` | [map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/map-f--b4506fc0398abe49490945fa.md) | 155 | `result-track:b4506fc0398abe49490945fafb9a9aa1d81259f0b7b7401e51c3213f29c23322` |
| 8 | `def` | [alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/alternatingfacemapcomplex--6d166e0aa01556860e2ef087.md) | 163 | `declaration-track:6d166e0aa01556860e2ef087e8d1f8be34b5b19dd4cfa8d073997c8ae89b481a` |
| 9 | `theorem` | [alternatingFaceMapComplex_obj_X](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/alternatingfacemapcomplex-obj-x--749621d3f4f1f25a6b64825a.md) | 170 | `result-track:749621d3f4f1f25a6b64825acb8fc18e0d6cf06f6ee77ca1a6d71481f3ee1588` |
| 10 | `theorem` | [alternatingFaceMapComplex_obj_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/alternatingfacemapcomplex-obj-d--e908ff7d7f0eb11ca8e42a26.md) | 175 | `result-track:e908ff7d7f0eb11ca8e42a26e51d53f1b15fefcc8bee72904bd2e7ab7793a0d9` |
| 11 | `theorem` | [alternatingFaceMapComplex_map_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/alternatingfacemapcomplex-map-f--bbb25cc9fd7b1238f0984d79.md) | 181 | `result-track:bbb25cc9fd7b1238f0984d79ba658b2b57fd3f347307c9f3e128b0f67108d78c` |
| 12 | `theorem` | [map_alternatingFaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/map-alternatingfacemapcomplex--ac2673baa3330c4386804efa.md) | 185 | `result-track:ac2673baa3330c4386804efa887b7e7ca3f9955987e94cd754614a453e9a4a38` |
| 13 | `theorem` | [karoubi_alternatingFaceMapComplex_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/karoubi-alternatingfacemapcomplex-d--c4a1282a9cd1c15ac2309940.md) | 206 | `result-track:c4a1282a9cd1c15ac23099405c55ead013789947352bdf12c93047fe4fb61415` |
| 14 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/anonymous--0da8df15aa22c1281b112c78.md) | 218 | `declaration-track:0da8df15aa22c1281b112c781a3bd9f314b40ad39476adf08dda953ff848939a` |
| 15 | `lemma` | [ε_app_f_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/app-f-zero--0021ce7d6b59da5b4c5b17d6.md) | 238 | `result-track:0021ce7d6b59da5b4c5b17d665692841b390b6f64dc691d33d4157caf515987d` |
| 16 | `lemma` | [ε_app_f_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/app-f-succ--bb478d4505261305c748a5de.md) | 243 | `result-track:bb478d4505261305c748a5de13788183fa2b425aaa3c77d202171ff0a5fa96f1` |
| 17 | `def` | [inclusionOfMooreComplexMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/inclusionofmoorecomplexmap--f0f767eb77e0b997cb0c816a.md) | 255 | `declaration-track:f0f767eb77e0b997cb0c816a8f19f73eda0ce9738ebcb6762a0f64179632a234` |
| 18 | `theorem` | [inclusionOfMooreComplexMap_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/inclusionofmoorecomplexmap-f--3ac4c9769ea5af120e74792c.md) | 278 | `result-track:3ac4c9769ea5af120e74792ce003e0a0c9eb1a424ca7bcd684770af1034917db` |
| 19 | `def` | [inclusionOfMooreComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/inclusionofmoorecomplex--6af3179f2ebf7b9024a86dab.md) | 288 | `declaration-track:6af3179f2ebf7b9024a86dabda21830f8a14f472a7c6bc9ee12a72186ad3000f` |
| 20 | `def` | [objD](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/objd--0d815fbe1fe188e547f1e72a.md) | 298 | `declaration-track:0d815fbe1fe188e547f1e72a4093b205ee583952170c08567b22529b4662f060` |
| 21 | `theorem` | [d_eq_unop_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/d-eq-unop-d--f5d706972a76c43ca559955b.md) | 301 | `result-track:f5d706972a76c43ca559955b47aad907f354f1b1c771a8432f5779a2ecb20af2` |
| 22 | `theorem` | [d_squared](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/d-squared--fa8ab09c71ccf669a74681ac.md) | 308 | `result-track:fa8ab09c71ccf669a74681ac4cc472641b98073ee6eaef48d586e7f3c6a2d533` |
| 23 | `def` | [obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/obj--695a240b330cf444ec43beec.md) | 312 | `declaration-track:695a240b330cf444ec43beec919b4d35d3bae19a3e393a558f94ca710ddb0b5e` |
| 24 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/map--d374a7bd2325afb96f2bd72f.md) | 319 | `declaration-track:d374a7bd2325afb96f2bd72f5fb7efa073961531f816f7af77a29fac31ec27c6` |
| 25 | `def` | [alternatingCofaceMapComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AlternatingFaceMapComplex/Variantd207ffd83b85c2350d20d6553f0add7220ab0387d4201a55f0bd1519c9787b3a.lean/declarations/alternatingcofacemapcomplex--528d5ad49c2c7131dc5e5efe.md) | 335 | `declaration-track:528d5ad49c2c7131dc5e5efe6d82b973c474b77241a90526a6d3ce5b49fc0e1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
