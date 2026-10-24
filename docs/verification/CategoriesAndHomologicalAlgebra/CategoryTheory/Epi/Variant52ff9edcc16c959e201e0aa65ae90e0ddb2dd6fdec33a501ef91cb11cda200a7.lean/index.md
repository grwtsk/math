# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Epi.Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e616bae4e7c37f176ffb44402befd9af9f4d484e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e616bae4e7c37f176ffb44402befd9af9f4d484e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.SequentialProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Coherent.SequentialLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isLocallySurjective_iff_locallySurjective_on_lightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/islocallysurjective-iff-locallysurjective-on-lightprofinite--7660e80fb24137112117523a.md) | 32 | `result-track:7660e80fb24137112117523a5281d7ded28dc76fc7e61ee51f0faee2979a2a7f` |
| 2 | `lemma` | [epi_iff_locallySurjective_on_lightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/epi-iff-locallysurjective-on-lightprofinite--6781cd471fdb60f0c892a49a.md) | 48 | `result-track:6781cd471fdb60f0c892a49a2aa3cda469095486fd801a0fee5b60b8941f8269` |
| 3 | `lemma` | [epi_iff_locallySurjective_on_lightProfinite](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/epi-iff-locallysurjective-on-lightprofinite--1cc7bed1ce32734cc82e96d5.md) | 62 | `result-track:1cc7bed1ce32734cc82e96d578c86a7f8339e558ebde4405872005232fcf56c5` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/instance--df1e2a4c9bff90a5068d0fbf.md) | 70 | `declaration-track:df1e2a4c9bff90a5068d0fbf0270a45672b7493bf5ae37415b34357f928f6c70` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/instance--5691824933520719c6345278.md) | 76 | `declaration-track:5691824933520719c63452781393023088f83d994c3abb0536b6578572c97f7d` |
| 6 | `lemma` | [epi_π_app_zero_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/epi-app-zero-of-epi--a3308a111595f71dfad58c4b.md) | 91 | `result-track:a3308a111595f71dfad58c4b1574f2546d40b8847bc08fab90ffa1b2d8767c2e` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/instance--bcdb140905c700cdf45eb087.md) | 113 | `declaration-track:bcdb140905c700cdf45eb087acf0c4524fae11495fb0b7236529a1092e6b8825` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/declarations/instance--8d55ba4bbba0ec4bdc58daca.md) | 118 | `declaration-track:8d55ba4bbba0ec4bdc58daca29b8c488f35475b890e1594e59f3ebbb49853576` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
