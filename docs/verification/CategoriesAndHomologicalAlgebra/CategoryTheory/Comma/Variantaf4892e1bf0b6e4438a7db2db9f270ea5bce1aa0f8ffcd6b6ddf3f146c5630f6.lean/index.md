# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Comma.Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c552180fb4a361bd8304e0980b00ea663e5b177",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c552180fb4a361bd8304e0980b00ea663e5b177`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.WellPowered` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.LocallySmall` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Comma` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/projectsubobject--78b0770359a41bf1c69a7641.md) | 49 | `declaration-track:78b0770359a41bf1c69a764125cbec1d7a6cdd631e1d669a272ab3f9333a3c01` |
| 2 | `theorem` | [projectSubobject_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/projectsubobject-mk--dcf3715f23b830d6c9d530a5.md) | 57 | `result-track:dcf3715f23b830d6c9d530a53d38e66033fb4f4777755ade5d41493ad0a0e0fa` |
| 3 | `theorem` | [projectSubobject_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/projectsubobject-factors--097fd167c2e741f36b14835b.md) | 62 | `result-track:097fd167c2e741f36b14835b5e6e7b345ab2047577e5cbc37483ba8a9e6b0f3b` |
| 4 | `def` | [liftSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/liftsubobject--f0948638bc71d0a47b1131c2.md) | 74 | `declaration-track:f0948638bc71d0a47b1131c2bbd1f18eb55efa6449d257463173fc593d8476a9` |
| 5 | `theorem` | [lift_projectSubobject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/lift-projectsubobject--67fc56f2110e479323509e74.md) | 80 | `result-track:67fc56f2110e479323509e749426031535ac8efed93042be118d40c292000917` |
| 6 | `def` | [subobjectEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/subobjectequiv--f00b5a979c4611f09ce0902e.md) | 96 | `declaration-track:f00b5a979c4611f09ce0902e06bb49cf9c0cff3c9d08a0e81ac4ff8fae90a90a` |
| 7 | `instance` | [wellPowered_structuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/wellpowered-structuredarrow--dd15663bcf4e5e8c9c45b668.md) | 115 | `declaration-track:dd15663bcf4e5e8c9c45b668a38be6336312811b44bd70469d0d2be74a415c3b` |
| 8 | `def` | [projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/projectquotient--926ef84db1c7219b49940717.md) | 128 | `declaration-track:926ef84db1c7219b49940717c3daa41135c10daa9de31920ec7f4705fcf6eadb` |
| 9 | `theorem` | [projectQuotient_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/projectquotient-mk--dc1555924508c4aa73d8dfb6.md) | 137 | `result-track:dc1555924508c4aa73d8dfb6f14a65d18b36cb55947bbf982e2b7cbb9b91c648` |
| 10 | `theorem` | [projectQuotient_factors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/projectquotient-factors--b171469e2b1ac9fbc7a7cd14.md) | 143 | `result-track:b171469e2b1ac9fbc7a7cd1452bbb62325aca8214e60495fae124ac665f9c4b2` |
| 11 | `def` | [liftQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/liftquotient--a8757f9d29894633252fa66d.md) | 156 | `declaration-track:a8757f9d29894633252fa66de297fc495f1ffefd3a9099ce969e816096744478` |
| 12 | `theorem` | [unop_left_comp_underlyingIso_hom_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/unop-left-comp-underlyingiso-hom-unop--68fc610a0be8ae707cbed5e6.md) | 162 | `result-track:68fc610a0be8ae707cbed5e6b9e4c43d758c1d5dbf7d979066392b29c15e5850` |
| 13 | `theorem` | [lift_projectQuotient](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/lift-projectquotient--f896dcc67054e33159e25a93.md) | 173 | `result-track:f896dcc67054e33159e25a9377da6b5d31018ff28554e51f1e048fa3f1913e48` |
| 14 | `theorem` | [unop_left_comp_ofMkLEMk_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/unop-left-comp-ofmklemk-unop--a88b9e1e2f71621752c19871.md) | 188 | `result-track:a88b9e1e2f71621752c19871bb1feadfcda7fd6a7feb66c19e4490e5bcd9114b` |
| 15 | `def` | [quotientEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/quotientequiv--742b143184e3d5303f01b81b.md) | 201 | `declaration-track:742b143184e3d5303f01b81ba6d3c2cc7c51de010c3c5ccdf73d4bd9b47dd422` |
| 16 | `instance` | [well_copowered_costructuredArrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/declarations/well-copowered-costructuredarrow--0bc684f1fa395be4e30bd0ef.md) | 228 | `declaration-track:0bc684f1fa395be4e30bd0efabf4f919a182e68e174a3cdc6f0f81848d6f5243` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
