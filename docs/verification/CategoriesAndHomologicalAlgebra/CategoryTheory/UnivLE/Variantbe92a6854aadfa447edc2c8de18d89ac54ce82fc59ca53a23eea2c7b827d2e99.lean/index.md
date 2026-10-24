# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.UnivLE.Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7528afce20b130e09a31125146712feda33ca0d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7528afce20b130e09a31125146712feda33ca0d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.UnivLE` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EssentialImage` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Types` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [UnivLE.ofEssSurj.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/declarations/univle-ofesssurj--fcc7aa337db50f12f98c406a.md) | 22 | `result-track:fcc7aa337db50f12f98c406ad8552f585c7eee6368414d4bb33fb5a90a070e7e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/declarations/instance--fc00ff1ac0a93a04d020c7fc.md) | 28 | `declaration-track:fc00ff1ac0a93a04d020c7fc66512126afc95fdd2619cd38273372e3716b39ca` |
| 3 | `theorem` | [UnivLE_iff_essSurj.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/declarations/univle-iff-esssurj--e10ead187a7dfc0bd419ef77.md) | 32 | `result-track:e10ead187a7dfc0bd419ef7708f10a1a32e13104b20b72f4cb8ae5feb9b1dab3` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/declarations/instance--9c1695ea70ce77c28d1d47f8.md) | 36 | `declaration-track:9c1695ea70ce77c28d1d47f8263450c72873840d433819ecf6e0cda404ed2602` |
| 5 | `def` | [UnivLE.witness.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/declarations/univle-witness--437efa201dd8b0259bcc8c85.md) | 39 | `declaration-track:437efa201dd8b0259bcc8c85da0e216657974b9f7c29273a5730e09c4db39475` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/declarations/instance--aff9535d06f12c2384af4aa8.md) | 42 | `declaration-track:aff9535d06f12c2384af4aa85589d96d1dfd539feb923a43a391905dc0304a8a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variantbe92a6854aadfa447edc2c8de18d89ac54ce82fc59ca53a23eea2c7b827d2e99.lean/declarations/instance--ea8fbbc8fc7af6b15b63716a.md) | 45 | `declaration-track:ea8fbbc8fc7af6b15b63716aebfefd4c9d2870d25bab926c50e77016f1fbda1e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
