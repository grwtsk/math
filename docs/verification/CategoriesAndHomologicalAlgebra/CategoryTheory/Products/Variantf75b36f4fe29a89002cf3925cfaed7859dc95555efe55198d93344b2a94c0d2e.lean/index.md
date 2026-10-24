# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Products.Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cf5b494c203733294306dd86d9bc52c0c78df10",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cf5b494c203733294306dd86d9bc52c0c78df10`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Over` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullbacks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.WidePullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [widePullbackDiagramOfDiagramOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/widepullbackdiagramofdiagramover--e90d0242a65c2228dddaaef9.md) | 41 | `declaration-track:e90d0242a65c2228dddaaef956cebb834b6ec9fb03bd814283f6fda8877381d0` |
| 2 | `def` | [conesEquivInverseObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/conesequivinverseobj--498287d0b270bf68103b113d.md) | 48 | `declaration-track:498287d0b270bf68103b113d2c429c85829d0cb3e588a2ee8746cab5a0885ccd` |
| 3 | `def` | [conesEquivInverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/conesequivinverse--8946a47bddc63ea77d6023c1.md) | 63 | `declaration-track:8946a47bddc63ea77d6023c162734c9b266a5ea563597c8e94671a26126e5871` |
| 4 | `def` | [conesEquivFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/conesequivfunctor--9c75c2e79586c6b8cb38c3fa.md) | 82 | `declaration-track:9c75c2e79586c6b8cb38c3fa4b39f9fa3e253f560668f2a008f139972905c0e9` |
| 5 | `def` | [conesEquivUnitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/conesequivunitiso--8ddd6e299242f8c4d0e29c05.md) | 100 | `declaration-track:8ddd6e299242f8c4d0e29c05d43ac18dc9572cff4250445814a41642c17060cf` |
| 6 | `def` | [conesEquivCounitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/conesequivcounitiso--f099d821e71b5bf5b799457f.md) | 113 | `declaration-track:f099d821e71b5bf5b799457f2ee2bf86154dd58cf1573fcf39734d1b927e1a0e` |
| 7 | `def` | [conesEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/conesequiv--809d9436ff6576f9cbdbd2ba.md) | 123 | `declaration-track:809d9436ff6576f9cbdbd2ba849c3527808bc950729acb71b0f4227cb9fbc562` |
| 8 | `theorem` | [has_over_limit_discrete_of_widePullback_limit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/has-over-limit-discrete-of-widepullback-limit--a18b9d0e9945c8a6ac279890.md) | 132 | `result-track:a18b9d0e9945c8a6ac279890129d12f293b7fcc9b0a0d36ec4bceed2a79bddf3` |
| 9 | `theorem` | [over_product_of_widePullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/over-product-of-widepullback--a2dcdd582153e03182424ee1.md) | 141 | `result-track:a2dcdd582153e03182424ee1bef8df3877846014adb369a68a898d315f4a0e86` |
| 10 | `theorem` | [over_binaryProduct_of_pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/over-binaryproduct-of-pullback--20f8afa4930c97575bcc87bd.md) | 147 | `result-track:20f8afa4930c97575bcc87bdc8786ab3dcf003ab07d9cb77443a9e08d1154439` |
| 11 | `theorem` | [over_products_of_widePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/over-products-of-widepullbacks--ac846b02cd753313c4f98852.md) | 152 | `result-track:ac846b02cd753313c4f98852fe37236363dbcc8f0ef02ad8f76529fb1ea2e555` |
| 12 | `theorem` | [over_finiteProducts_of_finiteWidePullbacks](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/over-finiteproducts-of-finitewidepullbacks--789046ba1922f728896dd94b.md) | 158 | `result-track:789046ba1922f728896dd94bb943fd699a5948e46e388554ebc441d45c659b4f` |
| 13 | `theorem` | [over_hasTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Products/Variantf75b36f4fe29a89002cf3925cfaed7859dc95555efe55198d93344b2a94c0d2e.lean/declarations/over-hasterminal--29794fa7d293c588346b253c.md) | 170 | `result-track:29794fa7d293c588346b253cbd2443cc8d8055293bd82ddc6e04cf3e22174339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
