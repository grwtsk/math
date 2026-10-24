# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.InducedShiftSequence.Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a252bcc5f4314bff1a3cd383f1c96e879bb33e5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a252bcc5f4314bff1a3cd383f1c96e879bb33e5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Shift.CommShift` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Shift.ShiftSequence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isoZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/isozero--35889ca6c16a3f726e85ccc5.md) | 54 | `declaration-track:35889ca6c16a3f726e85ccc5c8dce532f74d7b866120c283780f94a381e03f08` |
| 2 | `lemma` | [isoZero_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/isozero-hom-app-obj--50d779c30ef8a8cd72475677.md) | 57 | `result-track:50d779c30ef8a8cd72475677607443aa37bdd9680cf89dcc9daf55381d12f5f6` |
| 3 | `def` | [shiftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/shiftiso--c22fc9a84cc88fc74e4c5bc8.md) | 66 | `declaration-track:c22fc9a84cc88fc74e4c5bc85a9310fd75efdd728435810d293203b3853f0fa8` |
| 4 | `lemma` | [shiftIso_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/shiftiso-hom-app-obj--e707414f2659d6ab9039d3db.md) | 73 | `result-track:e707414f2659d6ab9039d3dbd25786a111b0092c2cbbcf1ca5e1b0f82715e330` |
| 5 | `def` | [induced](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/induced--f2c04ce59966625508cbebde.md) | 90 | `declaration-track:f2c04ce59966625508cbebde699ec3245f2d41be97a3aba552d18063d43aca35` |
| 6 | `lemma` | [induced_isoShiftZero_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/induced-isoshiftzero-hom-app-obj--ee7f9ca9d3ddede747414711.md) | 119 | `result-track:ee7f9ca9d3ddede747414711343a06d1065d5aec18c3ea11dd2a2ce9480c1ff5` |
| 7 | `lemma` | [induced_shiftIso_hom_app_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/induced-shiftiso-hom-app-obj--75ae5d06628364ff1f0a3e96.md) | 126 | `result-track:75ae5d06628364ff1f0a3e968fc96faf651a6ba9f3ddcc8b8dc92f4a5ab48368` |
| 8 | `lemma` | [induced_shiftMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/InducedShiftSequence/Variant12a7d643a76c5e944a1f6af433a830715c7183a63cbde8058b79083ee0dda3ef.lean/declarations/induced-shiftmap--420b9da9cdae0b8fedcb776d.md) | 134 | `result-track:420b9da9cdae0b8fedcb776df24c89d4df00b376b2c2ed981f81380312df8f5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
