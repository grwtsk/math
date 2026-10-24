# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorHom.Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c40fa336208485073d6ad8fa43916c1c6b0e410b",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c40fa336208485073d6ad8fa43916c1c6b0e410b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Types.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Enriched.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HomObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/homobj--cca25d7529e280f4bbd31820.md) | 36 | `declaration-track:cca25d7529e280f4bbd3182010296070300177f35615ce65c953dbbb7dab853a` |
| 2 | `def` | [homObjEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/homobjequiv--396fea62d88dd4a520c00ae4.md) | 45 | `declaration-track:396fea62d88dd4a520c00ae4244b347d2f662d6fcab633fc5cb0d088007ae330` |
| 3 | `lemma` | [congr_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/congr-app--8bbca06ecbc5ca2c76814663.md) | 63 | `result-track:8bbca06ecbc5ca2c76814663f96d63bbe1b3175f3b02b98b1658f34bb23df079` |
| 4 | `def` | [ofNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/ofnattrans--68cedb9599d839932b108983.md) | 68 | `declaration-track:68cedb9599d839932b1089833e9c80a208ada2c7977893c9d951150e9f7768f0` |
| 5 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/id--584bd4e8196cffa9480f6ce7.md) | 73 | `declaration-track:584bd4e8196cffa9480f6ce782beb046fd440ad5392bc8696b4d03f6ea1e2781` |
| 6 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/comp--95d249fc12d924e9f232f8e1.md) | 77 | `declaration-track:95d249fc12d924e9f232f8e1d6573a2145a84686947eebb5d857ecaf0493f6ac` |
| 7 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/map--8ae3e559256832d3b7f3c0db.md) | 82 | `declaration-track:8ae3e559256832d3b7f3c0db10fc653a19868d818c22a1691fc36e293cb16db3` |
| 8 | `def` | [homObjFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/homobjfunctor--d90889624ff22ad8acb521d6.md) | 91 | `declaration-track:d90889624ff22ad8acb521d67f9e780663ee902cc9fe28b1814f59d57aa9c5ab` |
| 9 | `def` | [functorHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/functorhom--909868687e4379093ec5a9b6.md) | 103 | `declaration-track:909868687e4379093ec5a9b66b9adeadc389a8a74dd3c996bedc6afa0f2d9028` |
| 10 | `lemma` | [functorHom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/functorhom-ext--a491a4915ef14ecbef978d80.md) | 107 | `result-track:a491a4915ef14ecbef978d802f768f8fc46490c4b9e640d9ff45e36a1702ccb9` |
| 11 | `def` | [functorHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/functorhomequiv--5337baabcccef9c35dae296f.md) | 113 | `declaration-track:5337baabcccef9c35dae296f1bf303c2917b42313abd4776c391e93b4e038c72` |
| 12 | `def` | [natTransEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/nattransequiv--4d1976454ae27c5e393ad5ec.md) | 138 | `declaration-track:4d1976454ae27c5e393ad5ecef6a4eb254f54d00a0cbfc160837f1fb9c50adf8` |
| 13 | `lemma` | [natTransEquiv_symm_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/nattransequiv-symm-app-app-apply--d9263df46c4664bf8aa2cf74.md) | 161 | `result-track:d9263df46c4664bf8aa2cf74211f50784181d941f2a2329411bc116e269eb785` |
| 14 | `lemma` | [natTransEquiv_symm_whiskerRight_functorHom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/nattransequiv-symm-whiskerright-functorhom-app--09f0a372e9a23fd1acfda486.md) | 166 | `result-track:09f0a372e9a23fd1acfda4867e5a924e8440f8630aa6bd480792ddfa9c9c6738` |
| 15 | `lemma` | [functorHom_whiskerLeft_natTransEquiv_symm_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/functorhom-whiskerleft-nattransequiv-symm-app--d79c265304440845eeb57a90.md) | 172 | `result-track:d79c265304440845eeb57a907e5fe727d982a172eab93915dbe91e97969dc585` |
| 16 | `lemma` | [whiskerLeft_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/whiskerleft-app-apply--bb4eb76ac52d436f5b3ad562.md) | 178 | `result-track:bb4eb76ac52d436f5b3ad562e0df75819ff462fa25f4d1571129966d02de791d` |
| 17 | `lemma` | [whiskerRight_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/whiskerright-app-apply--ffadba9893ac11358b442840.md) | 184 | `result-track:ffadba9893ac11358b4428404aa0df4fed4bfbb9f2b1e86e3142870802e9c674` |
| 18 | `lemma` | [associator_inv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/associator-inv-apply--b999e64a1d28703dc9b47c56.md) | 190 | `result-track:b999e64a1d28703dc9b47c562b4b008167948ea33c873df15ecb22c3542c5ca8` |
| 19 | `lemma` | [associator_hom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/associator-hom-apply--70a139a9372ae6fb1c0fc9a7.md) | 196 | `result-track:70a139a9372ae6fb1c0fc9a72e5351f5b80d5ce1306ca049051cdf3d39cc11ff` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorHom/Variantcc0c2189e88fd97f0cdb7ebb218305857b5bf6b5c6d19f75f3f0de9f84369ffd.lean/declarations/instance--590a14b9382e1988f99229be.md) | 201 | `declaration-track:590a14b9382e1988f99229be3815fdb248e740de7ea89a3cceb912a6604fc828` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
