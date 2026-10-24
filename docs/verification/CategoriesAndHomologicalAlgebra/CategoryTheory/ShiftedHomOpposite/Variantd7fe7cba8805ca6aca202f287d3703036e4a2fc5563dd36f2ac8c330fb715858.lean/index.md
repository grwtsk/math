# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ShiftedHomOpposite.Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "95b881bbdf2f9c479bf2d2c6d667d287df7ac284",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `95b881bbdf2f9c479bf2d2c6d667d287df7ac284`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Triangulated.Opposite.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftedHom` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [opEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv--590b8d42a55c4a55f7bf19b5.md) | 33 | `declaration-track:590b8d42a55c4a55f7bf19b577ec1d2ac1dd97eee51c65aef3ac4511f643a8bd` |
| 2 | `lemma` | [opEquiv_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-apply--63f8c40928f81b23262ab007.md) | 38 | `result-track:63f8c40928f81b23262ab007b0fea33ffd4d4446864b8644b5633247966df175` |
| 3 | `lemma` | [opEquiv_symm_apply_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-apply-comp--457dbaa26297793a81428c3d.md) | 43 | `result-track:457dbaa26297793a81428c3d54ed00bbf02511101b5c9fdb1bdadd863b158b84` |
| 4 | `lemma` | [opEquiv_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-comp--49601c0d49583901a7f13331.md) | 54 | `result-track:49601c0d49583901a7f1333110de8f3b70aef675d4906b58a9ee661c071c9a24` |
| 5 | `def` | [opEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv--752de7bf5439199d32378c62.md) | 78 | `declaration-track:752de7bf5439199d32378c62f5ff358c2212774b0d4dc0e7356f342f2e949c24` |
| 6 | `lemma` | [opEquiv'_symm_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-apply--7ac2754c5983ebaf66e5ed99.md) | 82 | `result-track:7ac2754c5983ebaf66e5ed998412362dc065301605d60152c29ab4d224ef0ad7` |
| 7 | `lemma` | [opEquiv'_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-apply--ee0e7691761f7995cf5ba608.md) | 88 | `result-track:ee0e7691761f7995cf5ba6080d8109f0fcf1fbc3f05f647a8b70d8ec0e4d94c1` |
| 8 | `lemma` | [opEquiv'_symm_op_opShiftFunctorEquivalence_counitIso_inv_app_op_shift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-op-opshiftfunctorequivalence-counitiso-inv-app-op-shift--160345d94e96df6b545c8ebd.md) | 93 | `result-track:160345d94e96df6b545c8ebd390a317370b6298ab4f173a402d22d4fc0149f71` |
| 9 | `lemma` | [opEquiv'_symm_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-comp--d06769bfbfcb00897245e8af.md) | 106 | `result-track:d06769bfbfcb00897245e8af9da384c7d531adde0ba44e0cc019c42a6f1cb78a` |
| 10 | `lemma` | [opEquiv'_zero_add_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-zero-add-symm--0fec7ff13b344e863d153391.md) | 111 | `result-track:0fec7ff13b344e863d153391e103bbd8fb41d1fb24cad6c789713b5ba8e3c0eb` |
| 11 | `lemma` | [opEquiv'_add_symm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-add-symm--dc18415393cb30a03604c19a.md) | 117 | `result-track:dc18415393cb30a03604c19ac5c04f67097512c68490fbaffd8b28e646dbfbd2` |
| 12 | `lemma` | [opEquiv_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-add--68eb11c35ed40dcf3141d4bc.md) | 135 | `result-track:68eb11c35ed40dcf3141d4bc8dbff1eff96e7e6345d6090ae791be37fcb5ea39` |
| 13 | `lemma` | [opEquiv'_symm_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ShiftedHomOpposite/Variantd7fe7cba8805ca6aca202f287d3703036e4a2fc5563dd36f2ac8c330fb715858.lean/declarations/opequiv-symm-add--2db5c4cf0d29755101346d07.md) | 142 | `result-track:2db5c4cf0d29755101346d075e55b621da45d19406d18b481a01e83c64fc2121` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
