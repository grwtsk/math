# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SumsProducts.Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c04acdb6ff3d5910f609db175dd6a8485dc4c307",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c04acdb6ff3d5910f609db175dd6a8485dc4c307`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Discrete.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sums.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Products.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [productEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean/declarations/productequiv--2ac8d1df983a2604243db18b.md) | 42 | `declaration-track:2ac8d1df983a2604243db18b14230c0bacf78c9fb5ec66e70843ff01680a3024` |
| 2 | `def` | [sumEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean/declarations/sumequiv--979a80c88d2d97f5db41c4bd.md) | 53 | `declaration-track:979a80c88d2d97f5db41c4bd1dafb8524dcd7badb4df9dc478549c6a0d981b7a` |
| 3 | `instance` | [prod](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean/declarations/prod--358185215976f9fab722ce82.md) | 76 | `declaration-track:358185215976f9fab722ce829ef95f89734ef8498ef08ecb8bea1d348644b179` |
| 4 | `instance` | [sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SumsProducts/Variant3a60df13a0cf12d87a97158890bf9642fddec2f560b4d9ea2e4f2b0d66d043ee.lean/declarations/sum--79fe7b9d71b1610a9bad5ec3.md) | 81 | `declaration-track:79fe7b9d71b1610a9bad5ec3cc2692d0a45db5ed89569b282a724a39e8d8ce26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
