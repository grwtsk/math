# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunctions.Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10bea5e8bc7e58e8a4275d862cc4bf2c7ba724c9",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10bea5e8bc7e58e8a4275d862cc4bf2c7ba724c9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Ring.Colimits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.CommRing` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Comma.Over.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Terminal` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [free](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/free--a659bf3ecf777483cc3a5bda.md) | 35 | `declaration-track:a659bf3ecf777483cc3a5bdab7836802a53004d4db856d13f5f2ed438dbb0ca6` |
| 2 | `theorem` | [free_obj_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/free-obj-coe--a9cf3c5b2d21a60f74b7c6e1.md) | 40 | `result-track:a9cf3c5b2d21a60f74b7c6e16049d399ead7f3f285a53df21700f1f5a69e90d6` |
| 3 | `theorem` | [free_map_coe](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/free-map-coe--053354922acff82a9dc20e23.md) | 44 | `result-track:053354922acff82a9dc20e230151ecf55e886138c5cc75cba54b41c2a70f1661` |
| 4 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/adj--7a50e69d496a71cab8a430d1.md) | 48 | `declaration-track:7a50e69d496a71cab8a430d136cb814f14504c5529a745cbe530b6fd521211e4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/instance--84d06e3e880e4fc5a163a1d7.md) | 58 | `declaration-track:84d06e3e880e4fc5a163a1d733f38c79015cb0e54c9b7ada14ef4c629a49b347` |
| 6 | `def` | [coyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/coyoneda--14cbe17639571d173203a407.md) | 63 | `declaration-track:14cbe17639571d173203a40782b05fd9cf2ef6d95baa652e07ba5b1216178481` |
| 7 | `def` | [coyonedaAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/coyonedaadj--e50824ca8d920fb096eac13f.md) | 71 | `declaration-track:e50824ca8d920fb096eac13f3f8e5b7617e72776da46f5ad35cbee9bccf0d908` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/instance--ea8a43679181f2b1c99e1538.md) | 76 | `declaration-track:ea8a43679181f2b1c99e15382d63536f49cdf33347642aed87f97b635da0a542` |
| 9 | `def` | [coyonedaUnique](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/coyonedaunique--4c656de64723e012b96dc75c.md) | 80 | `declaration-track:4c656de64723e012b96dc75c741ddcea4ba2b7a7ddf428797a3a7464ba39d73e` |
| 10 | `def` | [monoidAlgebra](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/monoidalgebra--b21bbaf091e5d74ca1f8d653.md) | 85 | `declaration-track:b21bbaf091e5d74ca1f8d653a38920ab977f535511f3bd68c54b8349b16be99f` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/instance--cfe757eac07bbc0aea3fc8ac.md) | 91 | `declaration-track:cfe757eac07bbc0aea3fc8acd89e8fe64425fa2e506122cc3e89f2267d300859` |
| 12 | `def` | [monoidAlgebraAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/monoidalgebraadj--da7ee3761427236e8ffa251d.md) | 98 | `declaration-track:da7ee3761427236e8ffa251d25635224fddad449275fffd4dee70476e9312754` |
| 13 | `def` | [forget₂Adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/forget-adj--c3a6e427186d8734f6329b59.md) | 114 | `declaration-track:c3a6e427186d8734f6329b59dc809b53d908e617df1357a5de5e4f4429e60420` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/instance--3aba86bb144b5b3427c92067.md) | 118 | `declaration-track:3aba86bb144b5b3427c92067df6723f789c6ea3050ab2bbfe66b3af0e5ea12e0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunctions/Variant1c2d9c7b0851379f9860629a519aad3f8a18519cbec1b3b0f600204d6612764a.lean/declarations/instance--f3ab0f1fde9c464bfb2f3c9b.md) | 121 | `declaration-track:f3ab0f1fde9c464bfb2f3c9b4c4aec75f3e7d25427a33123a900191d5f7f8341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
