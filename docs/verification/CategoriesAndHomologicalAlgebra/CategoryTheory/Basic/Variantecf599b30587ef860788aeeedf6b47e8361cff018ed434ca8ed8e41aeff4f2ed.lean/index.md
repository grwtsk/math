# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbf1f4a4b6e67362458980e2bbf9f03ba8d19030",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbf1f4a4b6e67362458980e2bbf9f03ba8d19030`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Localization.Resolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Opposite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.GuitartExact.Opposite` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsRightDerivabilityStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/isrightderivabilitystructure--84d9c4c659cbc7377af47ad1.md) | 73 | `declaration-track:84d9c4c659cbc7377af47ad13feee08c91e9db4a1250043961e361824a1dbfee` |
| 2 | `lemma` | [isRightDerivabilityStructure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/isrightderivabilitystructure-iff--7450ac54bc43fa62fc1e71f0.md) | 86 | `result-track:7450ac54bc43fa62fc1e71f01556636df38eaf9bfe7f7c86c854e22e6d270d63` |
| 3 | `lemma` | [guitartExact_of_isRightDerivabilityStructure'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/guitartexact-of-isrightderivabilitystructure--1567a38591f0b0328cd00061.md) | 115 | `result-track:1567a38591f0b0328cd00061549b24e139438ef3e8f681c3697be06ff3ddd75d` |
| 4 | `lemma` | [guitartExact_of_isRightDerivabilityStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/guitartexact-of-isrightderivabilitystructure--255beb2eb73308d1179fde0c.md) | 119 | `result-track:255beb2eb73308d1179fde0cc6591dc66b1cd1e063a111ddd52f15f72558e9fa` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/instance--3cadba7830194fddf08771ea.md) | 123 | `declaration-track:3cadba7830194fddf08771ea325be066a9ccad3d34dba66ef18fd0d068cb179f` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/instance--8a8fc66442348bcea3f768fe.md) | 126 | `declaration-track:8a8fc66442348bcea3f768fe2fd3e357ad0c560dd50b4dc7790177bbb85ce42a` |
| 7 | `class` | [IsLeftDerivabilityStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/isleftderivabilitystructure--e26da02e6fe42b15b41e23c3.md) | 135 | `declaration-track:e26da02e6fe42b15b41e23c37cee042b0ad060fe85b67924bdf09b4d03b5b0bb` |
| 8 | `lemma` | [isLeftDerivabilityStructure_iff_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/isleftderivabilitystructure-iff-op--47454597dfd51bb3371e4ca5.md) | 145 | `result-track:47454597dfd51bb3371e4ca5c927a1c921a78d19d239b9fd00708719e03af37a` |
| 9 | `lemma` | [isLeftDerivabilityStructure_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/isleftderivabilitystructure-iff--8ad8404975022583e5f2db1b.md) | 164 | `result-track:8ad8404975022583e5f2db1ba2a432598e8d00183bb55dc938eef9e4411d3ffc` |
| 10 | `lemma` | [guitartExact_of_isLeftDerivabilityStructure'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/guitartexact-of-isleftderivabilitystructure--2e850da72b113d1ca82ced50.md) | 171 | `result-track:2e850da72b113d1ca82ced508978374f822ef40b5e11c9aeb8115aebd48bfa99` |
| 11 | `lemma` | [guitartExact_of_isLeftDerivabilityStructure](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/guitartexact-of-isleftderivabilitystructure--6946c05fbe249920ec5b63b9.md) | 175 | `result-track:6946c05fbe249920ec5b63b91b9332b1ca3ef589aecf77dc33b3016c8fa628b6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/instance--77f5876f54701f3726fd7f93.md) | 179 | `declaration-track:77f5876f54701f3726fd7f936acce4e8a7a75481bab105dfbb6799da4612cde1` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantecf599b30587ef860788aeeedf6b47e8361cff018ed434ca8ed8e41aeff4f2ed.lean/declarations/instance--5ea71aa8741a9e67a232e5f1.md) | 182 | `declaration-track:5ea71aa8741a9e67a232e5f1adecd385bb86713fc5d50d5d2d1362f0a14a5755` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
