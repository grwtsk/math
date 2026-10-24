# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "112afb02311a07e644b8270108bd7092193e80f4",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `112afb02311a07e644b8270108bd7092193e80f4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Restrict` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Whiskering` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.PreservesSheafification` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [sheafForget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/sheafforget--6eb6ae812b3a6b9d0ef67f59.md) | 31 | `declaration-track:6eb6ae812b3a6b9d0ef67f59f91469c66c44976a1174671df42fa02e6c9ab1be` |
| 2 | `def` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/adjunction--a0d6674aa720217178bf5639.md) | 42 | `declaration-track:a0d6674aa720217178bf5639bb60afcfb8a9feb470c1a64d34014b6bac8f68fc` |
| 3 | `lemma` | [adjunction_unit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/adjunction-unit-app-val--5ff6c6c917f30d457915a34d.md) | 48 | `result-track:5ff6c6c917f30d457915a34d2f4da9d3d5dc7912765f8faa9b1404ae21ab3bf5` |
| 4 | `lemma` | [adjunction_counit_app_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/adjunction-counit-app-val--8fa8f0787d67be1a252edeab.md) | 59 | `result-track:8fa8f0787d67be1a252edeab5b4261a94245c021df9a133e07c63eecd8f3baae` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/instance--73b3521a721a1508387b600d.md) | 70 | `declaration-track:73b3521a721a1508387b600d86f827a9401740588fe74a5e71f32e4c0123bc38` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/instance--51ae1fc9abbaef4a27efe302.md) | 73 | `declaration-track:51ae1fc9abbaef4a27efe30295afc0f1c494426c21db09b7506da9f68ed0659f` |
| 7 | `lemma` | [preservesSheafification_of_adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/preservessheafification-of-adjunction--d0478df55d3bdf8f7be20c98.md) | 76 | `result-track:d0478df55d3bdf8f7be20c98b9b08dd917e1ef8af6230e7c632aca503ea1c387` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/instance--bc056c2f3da0664e11962721.md) | 94 | `declaration-track:bc056c2f3da0664e119627216c7b39761d1a1db2e31ea98e249e8018a34eb91b` |
| 9 | `abbrev` | [adjunctionToTypes](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/adjunctiontotypes--3ddac553aa95a504f74c88b6.md) | 104 | `declaration-track:3ddac553aa95a504f74c88b663d493b5ac69ed92dd0e0892bb8119c8a0c41572` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Varianta6e1e9255f1e2f730110a7944ce86fe123acced3523da96b6525b0e32a791dd5.lean/declarations/example--4cd904857c6650d316fe5417.md) | 109 | `declaration-track:4cd904857c6650d316fe541709fddb1f535d94f15b43434ad19e127dcffbaced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
