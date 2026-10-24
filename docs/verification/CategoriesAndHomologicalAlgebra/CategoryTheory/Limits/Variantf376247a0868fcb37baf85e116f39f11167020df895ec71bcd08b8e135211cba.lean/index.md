# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4261a2c1b45dd458275ce87b3cff91b15cc3052f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4261a2c1b45dd458275ce87b3cff91b15cc3052f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/declarations/limit--0449b7ab2af8ddcb8d876ea9.md) | 48 | `declaration-track:0449b7ab2af8ddcb8d876ea99b98135c62ba6ca8dfb9ce273ff68519fd466261` |
| 2 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/declarations/limitcone--ff762f47b45d779db475b191.md) | 56 | `declaration-track:ff762f47b45d779db475b1911204d4aed839c40ec35e36f5fe66d879e3b96a7c` |
| 3 | `def` | [forgetMapConeLimitConeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/declarations/forgetmapconelimitconeiso--d8ac64cc27a35d30c1210ab6.md) | 67 | `declaration-track:d8ac64cc27a35d30c1210ab6632969508915ccc55028f17fb48d57b82f918762` |
| 4 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/declarations/limitconeislimit--9ffdd4e8849a806c1ae3d353.md) | 77 | `declaration-track:9ffdd4e8849a806c1ae3d353f4a7a85fc424edbaaf4f9e41d44c5af08260916c` |
| 5 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/declarations/haslimits--f0528004d265be3e823636db.md) | 93 | `declaration-track:f0528004d265be3e823636dbfbf2f365e8eb050143d11a3ae4249555720b9019` |
| 6 | `instance` | [forgetPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantf376247a0868fcb37baf85e116f39f11167020df895ec71bcd08b8e135211cba.lean/declarations/forgetpreserveslimits--f0fbbf7ec2442798c07852f6.md) | 102 | `declaration-track:f0fbbf7ec2442798c07852f6db9b9514abab0353b68519cb00bd5da75fe07263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
