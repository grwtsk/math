# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pullbacks.Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a51e0715062cf50ca07aaf4096120b373122fc9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a51e0715062cf50ca07aaf4096120b373122fc9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pullbackObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/pullbackobjiso--3c1accddfeb8864ace9e2d27.md) | 27 | `declaration-track:3c1accddfeb8864ace9e2d27fe1a4a6f5fac7f60793f09031ab0687d4c3b454e` |
| 2 | `theorem` | [pullbackObjIso_hom_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/pullbackobjiso-hom-comp-fst--8ca9ef897795b5bd3ee7802e.md) | 32 | `result-track:8ca9ef897795b5bd3ee7802ebb50e62e22d06d87d2ede60398f6455b85d11f1b` |
| 3 | `theorem` | [pullbackObjIso_hom_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/pullbackobjiso-hom-comp-snd--dfb988f4dd76d2483c2457fc.md) | 37 | `result-track:dfb988f4dd76d2483c2457fc1976c58a796a5d24a6f78b47bd58207037b5b764` |
| 4 | `theorem` | [pullbackObjIso_inv_comp_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/pullbackobjiso-inv-comp-fst--205bf122e1b21b4a926e8573.md) | 42 | `result-track:205bf122e1b21b4a926e8573fe84e838ef560f9c2922f0c6c29853f87090232c` |
| 5 | `theorem` | [pullbackObjIso_inv_comp_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/pullbackobjiso-inv-comp-snd--aa220bbce9f8788d77cebc6d.md) | 47 | `result-track:aa220bbce9f8788d77cebc6d1f5354d33121abbcb7c77c558880054b87c13fd6` |
| 6 | `def` | [pushoutObjIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/pushoutobjiso--3c2c15f89ffcd15642dead37.md) | 58 | `declaration-track:3c2c15f89ffcd15642dead377a44ceb084bd7ca545f90e5a6c5e8976fbabee83` |
| 7 | `theorem` | [inl_comp_pushoutObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/inl-comp-pushoutobjiso-hom--0bab285cdea98554d29acf54.md) | 63 | `result-track:0bab285cdea98554d29acf54724edf9d7ca230863ccc44c1c3e7a8e5936cefe9` |
| 8 | `theorem` | [inr_comp_pushoutObjIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/inr-comp-pushoutobjiso-hom--7171c21b98b4ba2d0f13651a.md) | 68 | `result-track:7171c21b98b4ba2d0f13651ab833746355c919222a0b607f3f2b062f397ce0c0` |
| 9 | `theorem` | [inl_comp_pushoutObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/inl-comp-pushoutobjiso-inv--eafb95ede777dfd8efdca8bf.md) | 73 | `result-track:eafb95ede777dfd8efdca8bf822580d386e4d711e01c9cd8c19ec82c9ee060b1` |
| 10 | `theorem` | [inr_comp_pushoutObjIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variant57c8c26838168cdadf47f21ffd884e21d071f71d25d7c3cd0ed1b86118f7a979.lean/declarations/inr-comp-pushoutobjiso-inv--ffb2fb035c2790762333c098.md) | 78 | `result-track:ffb2fb035c2790762333c098efdfc0d31af23ac07cbf989ec1713096a6138a6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
