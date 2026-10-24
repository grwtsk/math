# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToApp.Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f73e8d2b85acffa300e4442af80e403885c5463",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f73e8d2b85acffa300e4442af80e403885c5463`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.CategoryTheory.ToApp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.Prelax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [whiskerLeft_hom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/declarations/whiskerleft-hom-inv--c7a23054cad16ae5b4f55bf1.md) | 21 | `result-track:c7a23054cad16ae5b4f55bf1e966178c0fd59cbd75a01dacb4ac9896d4c12305` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/declarations/example--969275cd3accd3b79bb37060.md) | 25 | `declaration-track:969275cd3accd3b79bb370601fd38617446c8cffe298b50c500222105a76e0fc` |
| 3 | `theorem` | [pentagon_hom_hom_inv_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/declarations/pentagon-hom-hom-inv-inv-hom--8325313bae4c034075880d34.md) | 30 | `result-track:8325313bae4c034075880d34cafe03587ccda1c4cf08db8ff81a18e9ea5cbfd4` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/declarations/example--fde8fb70bf6f16e7912d8436.md) | 35 | `declaration-track:fde8fb70bf6f16e7912d8436d4d5fb1f4c724e3c1c7474cbbe83a1cec4a171f0` |
| 5 | `theorem` | [testThm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/declarations/testthm--156ec59beeaa564a4a663ea4.md) | 41 | `result-track:156ec59beeaa564a4a663ea4f0c9722ce7a4f2553566fe9b58abc623dee85220` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc9ed33dfe2b1678e5ceca045f13d6745c94c2501ddc94947375458fbd955b546.lean/declarations/example--42264328a10a8369f30fb6c0.md) | 44 | `declaration-track:42264328a10a8369f30fb6c000660fb7cc948ed428a395f0e65ef0790dd33831` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
