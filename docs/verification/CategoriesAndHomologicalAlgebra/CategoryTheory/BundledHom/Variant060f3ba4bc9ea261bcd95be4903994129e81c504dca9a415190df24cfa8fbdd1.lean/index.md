# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.BundledHom.Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc9ba82883b9927aef8ccb1209825a53b4a1a76f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc9ba82883b9927aef8ccb1209825a53b4a1a76f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.ConcreteCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Bundled` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BundledHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/bundledhom--d3e9da0b91c2915861da355b.md) | 30 | `declaration-track:d3e9da0b91c2915861da355b8b39735cad345da2f24da55aae0630d78f6a6c5f` |
| 2 | `instance` | [category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/category--1c8b1ca60f98c43c8608c67a.md) | 66 | `declaration-track:1c8b1ca60f98c43c8608c67ab1a9c25cc8eb448098936aaf8e45b41be394f84c` |
| 3 | `instance` | [concreteCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/concretecategory--d1d6b3dc7e6d16e1e4065fba.md) | 77 | `declaration-track:d1d6b3dc7e6d16e1e4065fbac5df79be6b1f976cf939b3995149ec3b5452bcb0` |
| 4 | `def` | [mkHasForget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/mkhasforget--cfcec41cccfd007fed4f91eb.md) | 92 | `declaration-track:cfcec41cccfd007fed4f91eb68cb3fc44d325f77e256380e35b4a23374703558` |
| 5 | `def` | [MapHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/maphom--f2d2591b7c9f83427b5b5bb9.md) | 116 | `declaration-track:f2d2591b7c9f83427b5b5bb976000076a34c585f87cea64fd829bf1f034c7d51` |
| 6 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/map--115f64e773d75e1a18143e24.md) | 125 | `declaration-track:115f64e773d75e1a18143e24c952d751c9bf47792421f52a8819b876084983cc` |
| 7 | `class` | [ParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/parentprojection--5393accd1f095ad7ea5eb529.md) | 145 | `declaration-track:5393accd1f095ad7ea5eb529b6a742e2182de6a948fff0bb6330b474182b9fcb` |
| 8 | `instance` | [bundledHomOfParentProjection](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/bundledhomofparentprojection--411090d745395194888111dc.md) | 152 | `declaration-track:411090d745395194888111dc5ace9366fae575c78f1d517cc2f25abe188db452` |
| 9 | `instance` | [forget₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/forget--a6184322f0587389b1ef4486.md) | 157 | `declaration-track:a6184322f0587389b1ef4486d56ff550fbad0a8c143940f616889fce0d45d000` |
| 10 | `instance` | [forget₂Full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/BundledHom/Variant060f3ba4bc9ea261bcd95be4903994129e81c504dca9a415190df24cfa8fbdd1.lean/declarations/forget-full--d22d0fe3aae4f75376902113.md) | 163 | `declaration-track:d22d0fe3aae4f7537690211373078975abbc65341cb3393d65d2e7541eba0afa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
