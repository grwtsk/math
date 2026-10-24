# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Ext.Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c08a7dd3398f66d5b2d049ab2cf232eedb10c33",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c08a7dd3398f66d5b2d049ab2cf232eedb10c33`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.LeftDerived` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Opposite` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Projective.Resolution` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Linear.Yoneda` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/declarations/ext--ad05b7c2cab7ec3019a6983f.md) | 48 | `declaration-track:ad05b7c2cab7ec3019a6983f4d74fd5507a36387381167b85398134ce4c5af51` |
| 2 | `def` | [ChainComplex.linearYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/declarations/chaincomplex-linearyonedaobj--6d95b9cdc03a4785c2251d1b.md) | 65 | `declaration-track:6d95b9cdc03a4785c2251d1b55b2eead04a92b93f6202aa56271d8c382dc112e` |
| 3 | `def` | [isoExt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/declarations/isoext--4116c6b37dfe1641fd6ddf57.md) | 77 | `declaration-track:4116c6b37dfe1641fd6ddf5710d6ccba2eb3a62df47f15ab91d022aff5a2fe46` |
| 4 | `lemma` | [isZero_Ext_succ_of_projective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Ext/Varianta58d00ce4de984be77008050dec20bbbc0fcf8fb68d413962a46edaf313ccb26.lean/declarations/iszero-ext-succ-of-projective--dc45f5de9748e267a7115c27.md) | 87 | `result-track:dc45f5de9748e267a7115c277762144744476e161f4b7b9fe49b1b8a37f32cd9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
