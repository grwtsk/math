# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Strict.Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1edfaa816f6468b79eff2d1391b7460e5cda0ccc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1edfaa816f6468b79eff2d1391b7460e5cda0ccc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EqToHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Bicategory.Strict](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean/declarations/bicategory-strict--396d749923931d7e6c675293.md) | 36 | `declaration-track:396d749923931d7e6c675293aa802ae5a4639c8b217cb774170509415d0af07e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean/declarations/instance--1bdcf9a6b1be8461a36bbdc6.md) | 55 | `declaration-track:1bdcf9a6b1be8461a36bbdc6cb6866d43f6e56961acc559f77633eff097e9a60` |
| 3 | `theorem` | [whiskerLeft_eqToHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean/declarations/whiskerleft-eqtohom--b8ce6284adbaa0d47f856f2a.md) | 65 | `result-track:b8ce6284adbaa0d47f856f2a96fad7e53c5437198b4ccd71ec744fac4f7bfc1b` |
| 4 | `theorem` | [eqToHom_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Strict/Variant27cb6e08c200776cd27950fff81163b7ffab42e92347c1fadfbab1fa405b59f5.lean/declarations/eqtohom-whiskerright--1df31aaa110c75eced1fcac3.md) | 71 | `result-track:1df31aaa110c75eced1fcac3b54855c584c5a9722c21727fe808aebfca4e7cae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
