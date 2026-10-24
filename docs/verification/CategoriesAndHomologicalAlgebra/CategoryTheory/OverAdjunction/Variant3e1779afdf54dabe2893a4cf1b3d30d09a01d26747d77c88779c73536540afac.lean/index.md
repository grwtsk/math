# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OverAdjunction.Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07cc869b57174a8d65c1d906b5f226f9045adc4d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07cc869b57174a8d65c1d906b5f226f9045adc4d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.MorphismProperty.Comma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Pullback` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Over.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-map--b570d64eb9b32b26597b7588.md) | 38 | `declaration-track:b570d64eb9b32b26597b758857107d3e023bfbb421b7085b232874cb5c6429d8` |
| 2 | `lemma` | [Over.map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-map-comp--d7f6c6c290d4a5f861807109.md) | 41 | `result-track:d7f6c6c290d4a5f86180710995cc550570f06866aa4f3f41dd1bdbeefabb2cf8` |
| 3 | `def` | [Over.mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-mapcomp--e5edec460f43a9bde496d776.md) | 51 | `declaration-track:e5edec460f43a9bde496d7760fd955df4008adbebd6f28793dab93901689b5f7` |
| 4 | `def` | [Over.pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-pullback--50764efeca13ceecba02934f.md) | 64 | `declaration-track:50764efeca13ceecba02934f41e52bb0e3365ada32be1922dcd6b3e30f4cfd2f` |
| 5 | `def` | [Over.pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-pullbackcomp--8cefcbb9330abd14ed883cd1.md) | 77 | `declaration-track:8cefcbb9330abd14ed883cd1b1f5e465f92c8688b5d4cbf419b7e8beab368931` |
| 6 | `lemma` | [Over.pullbackComp_left_fst_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-pullbackcomp-left-fst-fst--465e96550b53042ee77129b6.md) | 82 | `result-track:465e96550b53042ee77129b6ac20b29bd45bdc8d353ba92f137b46a0c9644a5c` |
| 7 | `def` | [Over.pullbackCongr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-pullbackcongr--bac784da2db97a9d8138fe49.md) | 90 | `declaration-track:bac784da2db97a9d8138fe4978339ec79269b7dd52b00bac467ef4bae7b44878` |
| 8 | `lemma` | [Over.pullbackCongr_hom_app_left_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-pullbackcongr-hom-app-left-fst--be6f5bd2a34e2ca21b57908d.md) | 95 | `result-track:be6f5bd2a34e2ca21b57908d58c96484a36fc9b14352e132f61d3351d20b4e1e` |
| 9 | `def` | [Over.mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OverAdjunction/Variant3e1779afdf54dabe2893a4cf1b3d30d09a01d26747d77c88779c73536540afac.lean/declarations/over-mappullbackadj--48433f04358e36a8a208cebc.md) | 109 | `declaration-track:48433f04358e36a8a208cebc6fc01782a8581aaae07e65c99d87db18ba7c6cfc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
