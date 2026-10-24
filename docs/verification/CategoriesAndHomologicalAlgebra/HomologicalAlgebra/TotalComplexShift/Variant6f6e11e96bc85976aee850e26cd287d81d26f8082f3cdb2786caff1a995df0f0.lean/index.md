# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TotalComplexShift.Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d91aa6f4ce8e18edc862d3e7dbe896edd414046",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d91aa6f4ce8e18edc862d3e7dbe896edd414046`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.HomotopyCategory.Shift` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.TotalComplex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [shiftFunctor₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/shiftfunctor--9ce8341a26081430b94444dc.md) | 46 | `declaration-track:9ce8341a26081430b94444dc173b30fa842321075ed5f17e6f2ca8f82d7f33a2` |
| 2 | `abbrev` | [shiftFunctor₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/shiftfunctor--d4f80303a5153cc9b142d55c.md) | 52 | `declaration-track:d4f80303a5153cc9b142d55c86c00774a1b8187b293806a1ea10b1016d59fb2f` |
| 3 | `def` | [shiftFunctor₁XXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/shiftfunctor-xxiso--20837b50564c494968ef8026.md) | 60 | `declaration-track:20837b50564c494968ef8026fd0a3055815ab8d6a8045b5944112302078d1c5d` |
| 4 | `def` | [shiftFunctor₂XXIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/shiftfunctor-xxiso--f895630f9a7596a7f84a446f.md) | 64 | `declaration-track:f895630f9a7596a7f84a446f1883e2a51386a8f1fe5829d4a627184c98346e23` |
| 5 | `lemma` | [shiftFunctor₁XXIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/shiftfunctor-xxiso-refl--8132f05454a51cecb45885c3.md) | 68 | `result-track:8132f05454a51cecb45885c3cc873ba5e939c20cba34b57c0eb5c20d8a0b4acc` |
| 6 | `lemma` | [shiftFunctor₂XXIso_refl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/shiftfunctor-xxiso-refl--3b97581eb908986c12cebade.md) | 72 | `result-track:3b97581eb908986c12cebadea5dde4cb91a90c9c17eae4ee65e110e7f95cf9b8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/instance--9390beb8647547f487d67837.md) | 77 | `declaration-track:9390beb8647547f487d678379cdf52e2630e33bc67b9c685ea86eb9904d44c81` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/instance--9103dcb1676a476f90c473fa.md) | 99 | `declaration-track:9103dcb1676a476f90c473fa3e317656fe2c28abe6559d93b4e9b64b22cd628a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/instance--e222349cb0091e6a4ca53960.md) | 111 | `declaration-track:e222349cb0091e6a4ca5396029635ff7a7401e4fc570e3fa2879eff2acf19130` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/instance--64923ee45a56b50ae6e6158e.md) | 115 | `declaration-track:64923ee45a56b50ae6e6158e2ab55ac11049655605d4c932150390e942de79e7` |
| 11 | `def` | [totalShift₁XIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-xiso--844e05b4d3e065c568a381a0.md) | 120 | `declaration-track:844e05b4d3e065c568a381a022c6ca589113f5825676bcd18c008345d89907c1` |
| 12 | `lemma` | [D₁_totalShift₁XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/d-totalshift-xiso-hom--e8912b7632b5eb9d52084a89.md) | 138 | `result-track:e8912b7632b5eb9d52084a89ec8f8ce08ba1a6585c9db899a1f6cb34d0a5c78b` |
| 13 | `lemma` | [D₂_totalShift₁XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/d-totalshift-xiso-hom--e7e51c8baa012ac41fc4434c.md) | 158 | `result-track:e7e51c8baa012ac41fc4434cd1084c6512656e5c16c6a33bf021e3a4f210e416` |
| 14 | `def` | [totalShift₁Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso--a5ef7a6d081d010f4e4973dd.md) | 182 | `declaration-track:a5ef7a6d081d010f4e4973dd89c57ea59df7b7ef4dab9d99ad3e1db49479a3c9` |
| 15 | `lemma` | [ι_totalShift₁Iso_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-hom-f--45c65e9272fbd2c369d0debd.md) | 192 | `result-track:45c65e9272fbd2c369d0debda83fb972ba9937fbc9207366d59089d0d779ffff` |
| 16 | `lemma` | [ι_totalShift₁Iso_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-inv-f--8e13611c2858ffa9fb3954ef.md) | 202 | `result-track:8e13611c2858ffa9fb3954efd17638acd5c187fc942757b1283420f885d45bc2` |
| 17 | `lemma` | [totalShift₁Iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-hom-naturality--18511b3f1b8730f607bd79e5.md) | 216 | `result-track:18511b3f1b8730f607bd79e5b2f79dec9f45b461470d66d18323bfb3de52ac3c` |
| 18 | `def` | [totalShift₂XIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-xiso--ca5ef6582cc0e15cddb53168.md) | 227 | `declaration-track:ca5ef6582cc0e15cddb53168ed51fc903d51375e4200ceb769f3a17cd634c257` |
| 19 | `lemma` | [D₁_totalShift₂XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/d-totalshift-xiso-hom--4ab2bf9d54e707f3e3165372.md) | 248 | `result-track:4ab2bf9d54e707f3e3165372da59e30f212ace78319e680c1a14e0327c5fb68d` |
| 20 | `lemma` | [D₂_totalShift₂XIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/d-totalshift-xiso-hom--5ed3954ed148260f219073ef.md) | 271 | `result-track:5ed3954ed148260f219073efc8c96db110dc92fa214c9d9f90c76daa22f22cac` |
| 21 | `def` | [totalShift₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso--fc6dd6f33eec8c7356a3c748.md) | 299 | `declaration-track:fc6dd6f33eec8c7356a3c74886fed06575a0fe8ab9f0dc7ee735f9a9fda1e6dd` |
| 22 | `lemma` | [ι_totalShift₂Iso_hom_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-hom-f--33fd4e1709c14c930b21b64f.md) | 309 | `result-track:33fd4e1709c14c930b21b64f3509aba2439deef4a22f06993c3435f42e4d497b` |
| 23 | `lemma` | [ι_totalShift₂Iso_inv_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-inv-f--464540ab581d8172f4c4b254.md) | 320 | `result-track:464540ab581d8172f4c4b254debc43ec55beeff197565aa0fcd8415f7bbbfd7f` |
| 24 | `lemma` | [totalShift₂Iso_hom_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-hom-naturality--a49e4a9d0c2cfd3529dd8744.md) | 334 | `result-track:a49e4a9d0c2cfd3529dd87446b912ebbbec6331ed51b899fa322ffda8666ac88` |
| 25 | `def` | [shiftFunctor₁₂CommIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/shiftfunctor-commiso--8cdcecc846467d826e3910cf.md) | 348 | `declaration-track:8cdcecc846467d826e3910cf21b8624c1571cd10e9945608860b32d133d4265a` |
| 26 | `lemma` | [totalShift₁Iso_trans_totalShift₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-trans-totalshift-iso--ee24d063ced2b68c546d2c5f.md) | 354 | `result-track:ee24d063ced2b68c546d2c5f31ff0464d3ede96a2a992d31458222b3225c4a13` |
| 27 | `lemma` | [totalShift₁Iso_hom_totalShift₂Iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant6f6e11e96bc85976aee850e26cd287d81d26f8082f3cdb2786caff1a995df0f0.lean/declarations/totalshift-iso-hom-totalshift-iso-hom--36dc83d9513bef2b5efb7ede.md) | 380 | `result-track:36dc83d9513bef2b5efb7ede24add4286b52d25c4e93aa73ce3d75e450c4efd6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
