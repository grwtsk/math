# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CategoricalAssembly.Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b1c5f2d8e61b0b2eb22b5c306cce611a3e009ec",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b1c5f2d8e61b0b2eb22b5c306cce611a3e009ec`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Equivalence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Discrete.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inverseWitnessComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/inversewitnesscomparison--25ed22586f392e0766464e58.md) | 36 | `declaration-track:25ed22586f392e0766464e58b0f6bfc158dd1752daf3ea0e83197d4a3dbf8637` |
| 2 | `def` | [assemble](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/assemble--90fb72fc7f569c89ad387a91.md) | 46 | `declaration-track:90fb72fc7f569c89ad387a91dd5a8a8c7cf017dc2557808a1ce7cd2be99b7f90` |
| 3 | `theorem` | [assemble_functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/assemble-functor--f4a5280296d155098e0ea5ed.md) | 51 | `result-track:f4a5280296d155098e0ea5ed77c966ff7211a21029731435f262e9a21be2557f` |
| 4 | `theorem` | [assemble_inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/assemble-inverse--5cd2ab602021671c76f60831.md) | 55 | `result-track:5cd2ab602021671c76f60831b6ca345e6484f17d787aa4a7c1a28f4bf1655ff2` |
| 5 | `abbrev` | [Sector](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/sector--7b8b0bb9b9a4adbd13fbc351.md) | 60 | `declaration-track:7b8b0bb9b9a4adbd13fbc35164e7f1a13be43626bec6ef077c56c5e0c5f276c4` |
| 6 | `def` | [quarterTurn](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/quarterturn--c120c86d3b47f5d1abb67f07.md) | 63 | `declaration-track:c120c86d3b47f5d1abb67f07a98c201d202ab0c5f83e0620dd44fdbf775ac2d5` |
| 7 | `theorem` | [quarterTurn_square](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/quarterturn-square--38122adb05e4046813ef6b34.md) | 69 | `result-track:38122adb05e4046813ef6b349c110b8955fcbce067892678ff48f3a8b4e391fa` |
| 8 | `theorem` | [quarterTurn_fourth](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/quarterturn-fourth--0cf4838c87ad9b88db8a0a98.md) | 74 | `result-track:0cf4838c87ad9b88db8a0a98c9998fee19e19b808ce209fe0b1bca9f205df273` |
| 9 | `theorem` | [quarterTurn_square_not_identity](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/quarterturn-square-not-identity--3128f258f10fe485e8264314.md) | 79 | `result-track:3128f258f10fe485e826431473b12d4c93d240403321cc0b2c9879f5c8f3af3d` |
| 10 | `def` | [sectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/sectorequivalence--eb5503a3fe7e826e6355e4f9.md) | 84 | `declaration-track:eb5503a3fe7e826e6355e4f91ec50ad541f2662f5dcc6dee64b87321a901d329` |
| 11 | `def` | [assembledSectorEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CategoricalAssembly/Varianta78514a79320b2afe559d9e5b8633950e91af6366d47a1b8f08f1010790baca0.lean/declarations/assembledsectorequivalence--e8080d0bf83168327ec7a639.md) | 88 | `declaration-track:e8080d0bf83168327ec7a6395524f064256efd6c8813899103e30ccdf01556f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
