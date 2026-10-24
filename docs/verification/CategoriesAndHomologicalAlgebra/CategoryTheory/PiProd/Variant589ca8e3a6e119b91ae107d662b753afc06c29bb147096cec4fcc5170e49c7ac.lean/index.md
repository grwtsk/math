# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiProd.Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dbd9ebe35983d09229a619ff083352c20f73828",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dbd9ebe35983d09229a619ff083352c20f73828`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Pi.binaryFanOfProp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean/declarations/pi-binaryfanofprop--f609977843edd912b40d55e3.md) | 40 | `declaration-track:f609977843edd912b40d55e34875750206e6403423ea3bd248281e2e744f3e47` |
| 2 | `def` | [Pi.binaryFanOfPropIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean/declarations/pi-binaryfanofpropislimit--01fe6e30710df2cfd814ff2a.md) | 50 | `declaration-track:01fe6e30710df2cfd814ff2abd9f8842cbf2c1965fb13e86692c75a27a9b3d65` |
| 3 | `lemma` | [hasBinaryProduct_of_products](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean/declarations/hasbinaryproduct-of-products--4d1e69d7c334f58e14462d7d.md) | 62 | `result-track:4d1e69d7c334f58e14462d7dd781b0e4a6501f23a5b48ab7c773d6617bb6c85d` |
| 4 | `lemma` | [Pi.map_eq_prod_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PiProd/Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac.lean/declarations/pi-map-eq-prod-map--47d41e03bc98d8a4e1ecdefa.md) | 68 | `result-track:47d41e03bc98d8a4e1ecdefa4a634ab7e023e942c48a21eff9524cc9d393a4ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
