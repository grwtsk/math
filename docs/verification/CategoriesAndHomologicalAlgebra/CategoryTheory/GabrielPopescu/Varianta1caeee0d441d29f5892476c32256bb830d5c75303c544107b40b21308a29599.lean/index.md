# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.GabrielPopescu.Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a4f51bfabc75216c83f68d34bc6134e5da23f2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a4f51bfabc75216c83f68d34bc6134e5da23f2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Injective` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Connected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Coseparator` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Injective.Preserves` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.LiftToFinset` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/instance--d7efb793f2397d0ef770363c.md) | 50 | `declaration-track:d7efb793f2397d0ef770363c6222a9636662559c79ab0d06e3423a40922c49f3` |
| 2 | `def` | [tensorObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/tensorobj--6cd403a5e4a582191f181d17.md) | 54 | `declaration-track:6cd403a5e4a582191f181d17ec7ee9bf0667650ee68dbc628d04d05ec4651bef` |
| 3 | `def` | [tensorObjPreadditiveCoyonedaObjAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/tensorobjpreadditivecoyonedaobjadjunction--d2ff57897616b8be7a7e1514.md) | 58 | `declaration-track:d2ff57897616b8be7a7e15147c3ab55ab612c11a6adeca46f16e9920847e70b8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/instance--ac8886f4108a48b757b21fc9.md) | 62 | `declaration-track:ac8886f4108a48b757b21fc9fdd7165c278e7772743556a60e8d379c22d014f0` |
| 5 | `def` | [d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/d--7c9323ebe60b54d097d732fe.md) | 70 | `declaration-track:7c9323ebe60b54d097d732fe62b883122ddb839947e2dc0ca153e679b49ac032` |
| 6 | `theorem` | [ι_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/d--aa20b761925a66197c4261e9.md) | 75 | `result-track:aa20b761925a66197c4261e954ff7372e83981a5aadc6abae1d8ad29bbe9c8a7` |
| 7 | `theorem` | [kernel_ι_d_comp_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/kernel-d-comp-d--52e6328f346fe04d7cd6a285.md) | 81 | `result-track:52e6328f346fe04d7cd6a2854b78b9681f2bd30a337dacebbf5c187d56daf101` |
| 8 | `theorem` | [exists_d_comp_eq_d](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/exists-d-comp-eq-d--c3c25a32905f2f148a4ca78d.md) | 101 | `result-track:c3c25a32905f2f148a4ca78dcdda0f09e8838bc4ff376f43aff4905c2a4943f3` |
| 9 | `theorem` | [GabrielPopescu.full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/gabrielpopescu-full--0cfe70c3513f94d5cea22021.md) | 118 | `result-track:0cfe70c3513f94d5cea220219840e27726ba5072142faa57943791403afb090c` |
| 10 | `theorem` | [GabrielPopescu.preservesInjectiveObjects](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/gabrielpopescu-preservesinjectiveobjects--1470ceaeb1cc6ed627b18b05.md) | 127 | `result-track:1470ceaeb1cc6ed627b18b058a4e65bcf2b5792e8b52e403baafded6e76afc5c` |
| 11 | `theorem` | [GabrielPopescu.preservesFiniteLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/GabrielPopescu/Varianta1caeee0d441d29f5892476c32256bb830d5c75303c544107b40b21308a29599.lean/declarations/gabrielpopescu-preservesfinitelimits--15d10d8cfe66fe09bc0cd584.md) | 145 | `result-track:15d10d8cfe66fe09bc0cd584ee10ffefc7791af8f1cbb416e47419fa82f7f7e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
