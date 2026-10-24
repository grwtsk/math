# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomOrthogonal.Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63441d9970a99daffa029210f92e13fb376123f9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63441d9970a99daffa029210f92e13fb376123f9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Biproducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.InvariantBasisNumber` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HomOrthogonal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/homorthogonal--6a2317d62979dd7339aac953.md) | 52 | `declaration-track:6a2317d62979dd7339aac953d18cf0bb9341c47d72003ddef19ae38c3034f804` |
| 2 | `theorem` | [eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/eq-zero--19d3906b603df3c492479bbe.md) | 60 | `result-track:19d3906b603df3c492479bbe0ab0d85a871dd46a55955e00440016451bc87f08` |
| 3 | `def` | [matrixDecomposition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/matrixdecomposition--260f959e70e097424057659e.md) | 75 | `declaration-track:260f959e70e097424057659e633f3db56900aa428c5506688f3e51c8ebfb0fcd` |
| 4 | `def` | [matrixDecompositionAddEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/matrixdecompositionaddequiv--f1641da752f1ed76d86942f8.md) | 117 | `declaration-track:f1641da752f1ed76d86942f8b00b754d2e93fe2492720fdcc081b4aed03f456b` |
| 5 | `theorem` | [matrixDecomposition_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/matrixdecomposition-id--82b7de823c59c021ab12d489.md) | 129 | `result-track:82b7de823c59c021ab12d4896b602244787da938d43669818498b3b78628485d` |
| 6 | `theorem` | [matrixDecomposition_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/matrixdecomposition-comp--76c533739f19ecdf8291d9dc.md) | 145 | `result-track:76c533739f19ecdf8291d9dc12e6a6eb9abf32b12f9941436fcf91561014550b` |
| 7 | `def` | [matrixDecompositionLinearEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/matrixdecompositionlinearequiv--c9785963b691c631bfe13cbc.md) | 174 | `declaration-track:c9785963b691c631bfe13cbce138bc9510be873fff5931ab58125a7b667d537b` |
| 8 | `theorem` | [equiv_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomOrthogonal/Variant1c208860e97e816e606e3fa5c5a3d18109447fc66da3d34b8fd3cc542eb42b1d.lean/declarations/equiv-of-iso--535f5cd29def3c421c7b644a.md) | 199 | `result-track:535f5cd29def3c421c7b644a8fd927c0eb11dec6de8dee15a7513f026e3ce5d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
