# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafHom.Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2089ac7932f034973dae9f495e82887779378516",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2089ac7932f034973dae9f495e82887779378516`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/presheafhom--f657a2b3a8dc09b9f650c600.md) | 55 | `declaration-track:f657a2b3a8dc09b9f650c600cd93793a94a2dcd589158355c475e5c2123d2257` |
| 2 | `lemma` | [presheafHom_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/presheafhom-map-app--d16724b01d13d8503bfb6df8.md) | 72 | `result-track:d16724b01d13d8503bfb6df8e5421f4d34e5f61db1fd2e2c43fdf29bf7895bdc` |
| 3 | `lemma` | [presheafHom_map_app_op_mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/presheafhom-map-app-op-mk-id--c45a66a36e946f9af35d8450.md) | 81 | `result-track:c45a66a36e946f9af35d845002999f878ab208bcb1301f96df576fb9e92a244e` |
| 4 | `def` | [presheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/presheafhomsectionsequiv--24adfe615d241c514e284714.md) | 91 | `declaration-track:24adfe615d241c514e284714e7c40945e1b25038b04ad64c2f77431780825818` |
| 5 | `lemma` | [PresheafHom.isAmalgamation_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/presheafhom-isamalgamation-iff--a457d2c2a7900d4dd9ffe4e7.md) | 115 | `result-track:a457d2c2a7900d4dd9ffe4e7861c59d7e98bb1507b72bd18f57dcb6129456f35` |
| 6 | `lemma` | [exists_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/exists-app--53f2755e0bae104b24a0d073.md) | 145 | `result-track:53f2755e0bae104b24a0d073a9c5a69c7c317ccb72643a7a7a08bae85cb59255` |
| 7 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/app--fd6335ddd725e3de79e87e58.md) | 169 | `declaration-track:fd6335ddd725e3de79e87e584fee8a24bc7472f2ee47c367b984f03cc7d0ea05` |
| 8 | `lemma` | [app_cond](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/app-cond--5760676af7d9970aad1c26af.md) | 172 | `result-track:5760676af7d9970aad1c26af4e0ef8410268b5e64b4c85f3c6c021598d667d7b` |
| 9 | `lemma` | [presheafHom_isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/presheafhom-issheaffor--cc89b62f0c79dd1804d2e68d.md) | 184 | `result-track:cc89b62f0c79dd1804d2e68ddf736cab138357087ecd0bff96cbfab47e64e446` |
| 10 | `lemma` | [Presheaf.IsSheaf.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/presheaf-issheaf-hom--00f191473f6fb28dabc62856.md) | 221 | `result-track:00f191473f6fb28dabc62856acdef6fc36edb4479ede2267c790984a2c12ee91` |
| 11 | `def` | [sheafHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/sheafhom--f9c56fcc3323536e6837c5cb.md) | 231 | `declaration-track:f9c56fcc3323536e6837c5cbb6f65996e069a07a4bb5fa7695392f9ad10c701b` |
| 12 | `def` | [sheafHom'Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/sheafhom-iso--940aaf5dc5a7c82083adefda.md) | 242 | `declaration-track:940aaf5dc5a7c82083adefda55aa288c4fa37250689b0daf8e85c1fc3c003c4a` |
| 13 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/sheafhom--2166b41e4b2765cc78baab1f.md) | 250 | `declaration-track:2166b41e4b2765cc78baab1f24ef80d0786686cde752567e012368555a9635bd` |
| 14 | `def` | [sheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/sheafhomsectionsequiv--6da7639dae184b760d7052bf.md) | 255 | `declaration-track:6da7639dae184b760d7052bf45dcb42d4456e747a58cf7d6f4c937f7daf26bd0` |
| 15 | `lemma` | [sheafHomSectionsEquiv_symm_apply_coe_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant38a9c39dce0cced93fc63a4dd7956dc025028f2f8599c9315c635800be6f1916.lean/declarations/sheafhomsectionsequiv-symm-apply-coe-apply--390a115fe4a8d2bb7f40f05f.md) | 261 | `result-track:390a115fe4a8d2bb7f40f05ffd019e0ceed57691c3ab489a008efcfac7bad55b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
