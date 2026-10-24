# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Additive.Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b81d9c8730ea3b3bb7a30803641062a073282be",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b81d9c8730ea3b3bb7a30803641062a073282be`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [right_adjoint_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/right-adjoint-additive--f1498e7b4e5d5699ca38f6e0.md) | 33 | `result-track:f1498e7b4e5d5699ca38f6e0c4ea2699fcae4b0f07d0b8258c97fb2de0ad5bf8` |
| 2 | `lemma` | [left_adjoint_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/left-adjoint-additive--f36e7ddba29d38f6ff16005e.md) | 36 | `result-track:f36e7ddba29d38f6ff16005e52f2740d5a034a8ce10f071eae71383e698224d1` |
| 3 | `def` | [homAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv--25763cf254c9fdf8acf71e4a.md) | 46 | `declaration-track:25763cf254c9fdf8acf71e4ad0d2ff6bde4d2b85a6e770b60490238d4e1a8048` |
| 4 | `lemma` | [homAddEquiv_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-apply--43dc1e088369a6a7cf8b08cb.md) | 53 | `result-track:43dc1e088369a6a7cf8b08cb3b041f186adf4d6a5de075882e71d17bd5efb598` |
| 5 | `lemma` | [homAddEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-symm-apply--08dfcd805dd33929b8d09085.md) | 57 | `result-track:08dfcd805dd33929b8d09085af6174c099595e2137cd623a0a8d2e8aa5a0fbf3` |
| 6 | `lemma` | [homAddEquiv_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-zero--906cd5cf197ba4b619a2b2f5.md) | 61 | `result-track:906cd5cf197ba4b619a2b2f57737fd57ac744b797d7216c9741f9fce3826c7e2` |
| 7 | `lemma` | [homAddEquiv_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-add--77bd2713e0d0ccf062e0df71.md) | 64 | `result-track:77bd2713e0d0ccf062e0df71d8eec4842ec74d3124fe7b0f89bf92aca171dc35` |
| 8 | `lemma` | [homAddEquiv_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-sub--9548cdc2f1ce04ab2f3b4ff8.md) | 69 | `result-track:9548cdc2f1ce04ab2f3b4ff89fe949673be50a33e997d34e244ddac71405caca` |
| 9 | `lemma` | [homAddEquiv_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-neg--158d99a80ce0647aec5a51fc.md) | 74 | `result-track:158d99a80ce0647aec5a51fc8e2b2e8eccff08946b86f381a06475f88bdcdf01` |
| 10 | `lemma` | [homAddEquiv_symm_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-symm-zero--8c2e153ca35aff33f29b288e.md) | 78 | `result-track:8c2e153ca35aff33f29b288eb793509113bf5f0b23778c0adc772cbbed2f8576` |
| 11 | `lemma` | [homAddEquiv_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-symm-add--561ec81e9c71fb08e23378a5.md) | 82 | `result-track:561ec81e9c71fb08e23378a5c550f3fe8cb57963a0932a3199bf5d65426c634a` |
| 12 | `lemma` | [homAddEquiv_symm_sub](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-symm-sub--2c31b61e39b04310222b9990.md) | 87 | `result-track:2c31b61e39b04310222b99903ba68373d6d2ab4569576e0e8214ce6fb3c41f61` |
| 13 | `lemma` | [homAddEquiv_symm_neg](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/homaddequiv-symm-neg--b10c4dbc119e538cd1bf3563.md) | 92 | `result-track:b10c4dbc119e538cd1bf3563a1fb88dad01b72a2bcf679a5528f2e1d87270a35` |
| 14 | `def` | [compPreadditiveYonedaIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/comppreadditiveyonedaiso--5ab46c47cbbec20f2f5ab786.md) | 104 | `declaration-track:5ab46c47cbbec20f2f5ab786cd0d8e9674dbd9bd6eeaedd7b92f7476a96c93f4` |
| 15 | `lemma` | [compPreadditiveYonedaIso_hom_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/comppreadditiveyonedaiso-hom-app-app-apply--20e5f06f123a6414bf8f44db.md) | 119 | `result-track:20e5f06f123a6414bf8f44db200b063d2a0b988e904e7af6303b36ced7398d08` |
| 16 | `lemma` | [compPreadditiveYonedaIso_inv_app_app_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Additive/Variantd59b1fe1853d1d15922efdff751d82a8b6e4a602a0f881f947c9a832b1238d04.lean/declarations/comppreadditiveyonedaiso-inv-app-app-apply--6df733e12e76c0dbc0dfb390.md) | 124 | `result-track:6df733e12e76c0dbc0dfb390fc5da7f676b3ceccba95ca051d4a38ecc6d93477` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
