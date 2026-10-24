# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00fbfd0b1195880985e1ef53d2de0f1b7bd57d79",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00fbfd0b1195880985e1ef53d2de0f1b7bd57d79`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Presheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheaf` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Spaces` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/issheaf--9dbc1e970b72d0793124c9de.md) | 89 | `declaration-track:9dbc1e970b72d0793124c9dec02511fd2836f333cadb536fd57679a6d0fae15f` |
| 2 | `theorem` | [isSheaf_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/issheaf-unit--8b0f8c407316c53453330b66.md) | 94 | `result-track:8b0f8c407316c53453330b6693e1cf51a1eae7c13530b6fdac855312c30d0d43` |
| 3 | `theorem` | [isSheaf_iso_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/issheaf-iso-iff--bd2bcff291de33971ca4aed5.md) | 97 | `result-track:bd2bcff291de33971ca4aed56396cc36ea881e6e69a06e6c97f7b2a1133a2298` |
| 4 | `theorem` | [isSheaf_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/issheaf-of-iso--a1fcb2f3606964979c04d3b3.md) | 102 | `result-track:a1fcb2f3606964979c04d3b385230868875315186d723464ffa065757bdd56f6` |
| 5 | `def` | [Sheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/sheaf--cd1f43040da4b0187dd81d19.md) | 112 | `declaration-track:cd1f43040da4b0187dd81d1942583ccea7a3e570e9a7dcd82b07860b900c48e4` |
| 6 | `instance` | [SheafCat](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/sheafcat--3c33a3fb430fa38d90c7f223.md) | 117 | `declaration-track:3c33a3fb430fa38d90c7f223638c701aa7d61cae7d5a1d9e95069c53216f4fa6` |
| 7 | `abbrev` | [Sheaf.presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/sheaf-presheaf--2046a513eda8c3d51a91a8bc.md) | 123 | `declaration-track:2046a513eda8c3d51a91a8bc7fe866fb5e49f9b13d1992f28f5dfbc7536af743` |
| 8 | `instance` | [sheafInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/sheafinhabited--e272f597307edd6c26a95c13.md) | 129 | `declaration-track:e272f597307edd6c26a95c13456f01e50eb723f96861c492b41ca37c4006c213` |
| 9 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/forget--01290f40946453ff9ddb5e3f.md) | 136 | `declaration-track:01290f40946453ff9ddb5e3fb2295d9ff5f40e692fa92136115bdaed3d31edb5` |
| 10 | `instance` | [forget_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/forget-full--639bdfc608d3b70fd60ec7e2.md) | 142 | `declaration-track:639bdfc608d3b70fd60ec7e20dbc81adc3c81e66780d1e02fc447c96b7c150aa` |
| 11 | `instance` | [forgetFaithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/forgetfaithful--bf3af029a8013dc7a7a687f7.md) | 145 | `declaration-track:bf3af029a8013dc7a7a687f75ce0c624b84954dac2caeba44030637229dc0f60` |
| 12 | `theorem` | [id_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/id-app--c199618497d0526f673701eb.md) | 149 | `result-track:c199618497d0526f673701ebc06fb37138f8aec6488e355d16a48a5d36df76b3` |
| 13 | `theorem` | [comp_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/comp-app--1fd469641646a38f4c25ffd8.md) | 152 | `result-track:1fd469641646a38f4c25ffd863a0da6fe80a015f0b46b4017b02e86d0b2fcbb1` |
| 14 | `lemma` | [Presheaf.IsSheaf.section_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant9d4c7b4ee1ad9db942ba1481f0b05a0c6dd59bd0300ad106cac06b6a3ff85df1.lean/declarations/presheaf-issheaf-section-ext--ab598f091c182d26d37e6d5e.md) | 158 | `result-track:ab598f091c182d26d37e6d5efb434c7ededd909684cbbca23cae323b2d84b292` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
