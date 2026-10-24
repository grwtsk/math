# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafHom.Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b799ba89507032577c1618c90be307c9c7ac827",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b799ba89507032577c1618c90be307c9c7ac827`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Over` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [presheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/presheafhom--58dbac95d9395958d873ee0a.md) | 51 | `declaration-track:58dbac95d9395958d873ee0a87bce5397b066b9c123fdce4920729876059dcfd` |
| 2 | `lemma` | [presheafHom_map_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/presheafhom-map-app--7996fd45484c47603b1465a9.md) | 68 | `result-track:7996fd45484c47603b1465a963004c9b35c98409b4be1130948949382484df1c` |
| 3 | `lemma` | [presheafHom_map_app_op_mk_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/presheafhom-map-app-op-mk-id--1be49e99a80bf5cdeddfd2fb.md) | 76 | `result-track:1be49e99a80bf5cdeddfd2fbc29d8e83e60d48aed3b4e33e7496b061abee73c3` |
| 4 | `def` | [presheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/presheafhomsectionsequiv--6c6b28f584cc5c65e2329dd7.md) | 85 | `declaration-track:6c6b28f584cc5c65e2329dd7250ea99b700e5c2f74dcfef684fd6a2d4731041e` |
| 5 | `lemma` | [PresheafHom.isAmalgamation_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/presheafhom-isamalgamation-iff--3fd41cb61bfaa29a0eea142e.md) | 107 | `result-track:3fd41cb61bfaa29a0eea142ee6ba4f8705b04c2ef1f7dbea17ba621c620abf61` |
| 6 | `lemma` | [exists_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/exists-app--a59a9a4de3ac7fe3c3c1cd56.md) | 135 | `result-track:a59a9a4de3ac7fe3c3c1cd5609608fe560fd7c6f8c007e23dc9b396814395809` |
| 7 | `def` | [app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/app--02c06b51949b0c3cad6346e6.md) | 160 | `declaration-track:02c06b51949b0c3cad6346e645f0d261c6369da7b706d39535a810599e9acd8d` |
| 8 | `lemma` | [app_cond](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/app-cond--686e594d7ff1bd807a2b21e6.md) | 163 | `result-track:686e594d7ff1bd807a2b21e6699e3b604f183e3613420a1525e44aee53649972` |
| 9 | `lemma` | [presheafHom_isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/presheafhom-issheaffor--a342806b31dfd914a2fe112d.md) | 173 | `result-track:a342806b31dfd914a2fe112d0fe044faf2a70f4d3635d7d99a6cc66b4a6c7ad0` |
| 10 | `lemma` | [Presheaf.IsSheaf.hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/presheaf-issheaf-hom--854060c6e5bfcd89a39f1ec6.md) | 210 | `result-track:854060c6e5bfcd89a39f1ec67cc1c7a27932501b8cc083618133ed1f9967f585` |
| 11 | `def` | [sheafHom'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/sheafhom--2e96731b50938d27c70ed201.md) | 220 | `declaration-track:2e96731b50938d27c70ed201fcac7d866f2a79531fd5fb7d8621dac163891072` |
| 12 | `def` | [sheafHom'Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/sheafhom-iso--74ef5ae1c91e8118c2667bbf.md) | 231 | `declaration-track:74ef5ae1c91e8118c2667bbf8e27d5f65a0ef4143aa076f054a7ea7474812384` |
| 13 | `def` | [sheafHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/sheafhom--a3fc4caaa47c47a8ac4175ef.md) | 239 | `declaration-track:a3fc4caaa47c47a8ac4175effcdc2df223d3549d769e69e20b509a42238df7cf` |
| 14 | `def` | [sheafHomSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/sheafhomsectionsequiv--0ac20de726dee1536bed3961.md) | 244 | `declaration-track:0ac20de726dee1536bed3961c89f4deb28db6b885124ca7508915b7660c70d22` |
| 15 | `lemma` | [sheafHomSectionsEquiv_symm_apply_coe_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant3d4bad4528bccb5961d2746bc4d755b7fe97b524dae2e1a8ec85b3c00892dc19.lean/declarations/sheafhomsectionsequiv-symm-apply-coe-apply--e605fa61eac2a81507eade33.md) | 250 | `result-track:e605fa61eac2a81507eade33030c91244bbdd14864e35f160d2f45b2f9665dfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
