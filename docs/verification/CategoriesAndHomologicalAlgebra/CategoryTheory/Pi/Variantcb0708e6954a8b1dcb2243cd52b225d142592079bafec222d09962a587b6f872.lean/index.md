# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pi.Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de6cc54975ede4a8100d8f8bf9600ddcda8899bc",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de6cc54975ede4a8100d8f8bf9600ddcda8899bc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Pi.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/conecompeval--afe8936febc39ce4a4dbf530.md) | 34 | `declaration-track:afe8936febc39ce4a4dbf5303d0df86a01b835dd02c1007036bc848b3a9613ff` |
| 2 | `def` | [coconeCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/coconecompeval--26c4223fbf38ff3313aa7bdb.md) | 43 | `declaration-track:26c4223fbf38ff3313aa7bdbf620ae720896ce4ebfc065af548cc640f00b4214` |
| 3 | `def` | [coneOfConeCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/coneofconecompeval--daf0342768cf346c12f8108a.md) | 52 | `declaration-track:daf0342768cf346c12f8108a0dd58f1f78c15cc044bca69e922bd0a27bd52315` |
| 4 | `def` | [coconeOfCoconeCompEval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/coconeofcoconecompeval--e4f9dacff0d315d5f07c1310.md) | 63 | `declaration-track:e4f9dacff0d315d5f07c13100331fc518377f401ee0ba6db0f079131668c95a3` |
| 5 | `def` | [coneOfConeEvalIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/coneofconeevalislimit--e7a9965e39c98cbb320efd7d.md) | 74 | `declaration-track:e7a9965e39c98cbb320efd7d2d716eed50ce0dcebf67fddd0fde6a2b0e0d6e22` |
| 6 | `def` | [coconeOfCoconeEvalIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/coconeofcoconeevaliscolimit--ecf9c4e5942a0d7abafa9765.md) | 87 | `declaration-track:ecf9c4e5942a0d7abafa97659c4cbe910659441f03f1e02b452987a64483aa2d` |
| 7 | `theorem` | [hasLimit_of_hasLimit_comp_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/haslimit-of-haslimit-comp-eval--ec88572eaca8128e8f2c323c.md) | 105 | `result-track:ec88572eaca8128e8f2c323c0957b0546373a80d2ddd693671e973a47433a084` |
| 8 | `theorem` | [hasColimit_of_hasColimit_comp_eval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pi/Variantcb0708e6954a8b1dcb2243cd52b225d142592079bafec222d09962a587b6f872.lean/declarations/hascolimit-of-hascolimit-comp-eval--bc38e6e22208b3f6cfddf021.md) | 120 | `result-track:bc38e6e22208b3f6cfddf021b0f5360dfd7900fe572093ed36028ae336ef0cfb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
