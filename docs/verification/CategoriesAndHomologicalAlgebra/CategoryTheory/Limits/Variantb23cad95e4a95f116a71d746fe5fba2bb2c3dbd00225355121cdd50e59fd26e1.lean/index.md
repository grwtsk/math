# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6bae0766b4de6f194f1a43789929cfed51ead3c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6bae0766b4de6f194f1a43789929cfed51ead3c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Filtered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/declarations/surjective--8befbd705861a21dd5d54eee.md) | 49 | `result-track:8befbd705861a21dd5d54eee1799b8ee88bcdf9657861a3fba01310840dbdad3` |
| 2 | `lemma` | [injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/declarations/injective--6dd53d401ade99986c2db005.md) | 102 | `result-track:6dd53d401ade99986c2db0053b689f357090cb2e0c1d5e70dee9e9e48d8593a1` |
| 3 | `def` | [isColimitMapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/declarations/iscolimitmapcocone--6159b2489ae80182c62ff656.md) | 138 | `declaration-track:6159b2489ae80182c62ff656f97019b8d9ac60f31eb4f54ac5c7314edd3b084a` |
| 4 | `lemma` | [isCardinalAccessible_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/declarations/iscardinalaccessible-of-islimit--d476f78b1a088d804dd2dba0.md) | 150 | `result-track:d476f78b1a088d804dd2dba08aaee654ceb1801691e95fdbb5fc737af9ca06fd` |
| 5 | `lemma` | [isCardinalPresentable_of_isColimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/declarations/iscardinalpresentable-of-iscolimit--651087eebb42c3f841d21a19.md) | 164 | `result-track:651087eebb42c3f841d21a1937b09b9aca3bad0c8d5f1c0fedeba4b575f1480b` |
| 6 | `lemma` | [isCardinalPresentable_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb23cad95e4a95f116a71d746fe5fba2bb2c3dbd00225355121cdd50e59fd26e1.lean/declarations/iscardinalpresentable-of-iscolimit--e19b22caf304d33befa64d71.md) | 175 | `result-track:e19b22caf304d33befa64d714bd4457cbc3a61d10eb8bc3cab0f7a2e2e82a2cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
