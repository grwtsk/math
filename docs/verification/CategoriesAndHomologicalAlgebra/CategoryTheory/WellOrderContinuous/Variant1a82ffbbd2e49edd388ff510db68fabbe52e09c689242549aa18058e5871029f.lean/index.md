# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WellOrderContinuous.Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8b8f176d10c8caadbefc8e9e6e87d29737f39ce9",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8b8f176d10c8caadbefc8e9e6e87d29737f39ce9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.IsLimit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.PrincipalSeg` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Filtered.Final` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.SuccPred` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.InitialSeg` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Limit` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.InitialSeg` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Limit` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.LinearLocallyFinite` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsWellOrderContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/iswellordercontinuous--93b3179c83c7bee55da4da77.md) | 46 | `declaration-track:93b3179c83c7bee55da4da776a12e31a0f679afa46e37085243e28d3713b3b17` |
| 2 | `def` | [isColimitOfIsWellOrderContinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/iscolimitofiswellordercontinuous--4cc0a0561f1e00068ad4faae.md) | 52 | `declaration-track:4cc0a0561f1e00068ad4faae455d57c3a7382f6d41390e2bafadfcdcc681b6e6` |
| 3 | `def` | [isColimitOfIsWellOrderContinuous'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/iscolimitofiswellordercontinuous--0515e8d01d4d231ea9089ff2.md) | 60 | `declaration-track:0515e8d01d4d231ea9089ff2b0d48defe98513071dda5f55e77c5ddee5739ad6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/instance--ee24ccebe390c05719a82c09.md) | 66 | `declaration-track:ee24ccebe390c05719a82c09b0e0f65c432fb270425dd1a656698294b8adf531` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/instance--e59338cd02dc4a958ed70091.md) | 69 | `declaration-track:e59338cd02dc4a958ed70091903c2d656b169b77f4e4293499db2fc9a561d971` |
| 6 | `lemma` | [isWellOrderContinuous_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/iswellordercontinuous-of-iso--db8856eda735d7b34f55a400.md) | 72 | `result-track:db8856eda735d7b34f55a400643ca6cb03baa96ad256bddb7b13ca50c8288439` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/instance--384390e76c68affdc33ff5a2.md) | 79 | `declaration-track:384390e76c68affdc33ff5a26ffeadd68c7cec082c99de3fb89aa3321b2a7d5d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/instance--f48af3331cac82d087da1a1e.md) | 85 | `declaration-track:f48af3331cac82d087da1a1edd538dd828f8bbc8fd1abb845b065686fda5f602` |
| 9 | `instance` | [IsWellOrderContinuous.restriction_setIci](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/WellOrderContinuous/Variant1a82ffbbd2e49edd388ff510db68fabbe52e09c689242549aa18058e5871029f.lean/declarations/iswellordercontinuous-restriction-setici--a8ed467347251f19edc7ac94.md) | 90 | `declaration-track:a8ed467347251f19edc7ac94c68e67269d2db05d7f58e17a72e24f10e287b658` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
