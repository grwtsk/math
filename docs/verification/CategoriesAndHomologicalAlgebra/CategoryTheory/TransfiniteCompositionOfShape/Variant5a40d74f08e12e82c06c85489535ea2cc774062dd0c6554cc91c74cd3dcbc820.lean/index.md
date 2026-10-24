# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteCompositionOfShape.Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5648fa7201c8673b40fa0825c5c3f5e650268075",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5648fa7201c8673b40fa0825c5c3f5e650268075`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ComposableArrows` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.WellOrderContinuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.Fin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Preorder` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LatticeIntervals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Final` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TransfiniteCompositionOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/declarations/transfinitecompositionofshape--b5272f572e8a030f39a9b65e.md) | 44 | `declaration-track:b5272f572e8a030f39a9b65e3f2cc0dd9c65aaf7187183fc24625954b3cdee87` |
| 2 | `def` | [ofArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/declarations/ofarrowiso--15bd061d96e2143186ce97ea.md) | 66 | `declaration-track:15bd061d96e2143186ce97eac50828b30953dd0ccff7efb03dd19250dc411ded` |
| 3 | `def` | [ofComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/declarations/ofcomposablearrows--20c90af059efbaa0301f6738.md) | 77 | `declaration-track:20c90af059efbaa0301f6738222c37e23a59a48cf9a43003060ac263eb3a9655` |
| 4 | `def` | [ofOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/declarations/oforderiso--a6ee428df9592ec46202d405.md) | 88 | `declaration-track:a6ee428df9592ec46202d405e32e0b064cd5d298b3298a411d9768e9660372c1` |
| 5 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/declarations/map--00e22929650f56c15fe878ea.md) | 99 | `declaration-track:00e22929650f56c15fe878ea42fdabe7c572d170b329af519fb44c425d799182` |
| 6 | `def` | [iic](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/declarations/iic--adcf87b8b31ebcb82adad2ad.md) | 113 | `declaration-track:adcf87b8b31ebcb82adad2ad186f5bff20f8317ca4ecc55dc10cc477ac0b9d49` |
| 7 | `def` | [ici](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteCompositionOfShape/Variant5a40d74f08e12e82c06c85489535ea2cc774062dd0c6554cc91c74cd3dcbc820.lean/declarations/ici--66df635e1a75b723a3d0f0ed.md) | 128 | `declaration-track:66df635e1a75b723a3d0f0ed8279694102bd59b2bf75ff850ee4a07e7b050305` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
