# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteProductsOfBinaryProducts.Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b7d6bc21dcd38e0c3a6b047c6d6078b6ba2013",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b7d6bc21dcd38e0c3a6b047c6d6078b6ba2013`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/extendfan--007c8824246c5bd8706187d8.md) | 43 | `declaration-track:007c8824246c5bd8706187d812e32addb261645a8797c8a8fa3239b3482ec57b` |
| 2 | `def` | [extendFanIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/extendfanislimit--40851cc11f48f958deeecfe0.md) | 55 | `declaration-track:40851cc11f48f958deeecfe0d889f4fa635756e415b11b4bcc230c8752fe7c50` |
| 3 | `theorem` | [hasProduct_fin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/hasproduct-fin--3ca9ec7aa9581a78a33df3d0.md) | 90 | `result-track:3ca9ec7aa9581a78a33df3d0184b86d85cb8f2139956b752a4f48cd49b7e22e0` |
| 4 | `theorem` | [hasFiniteProducts_of_has_binary_and_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/hasfiniteproducts-of-has-binary-and-terminal--0bcbd09a9247c9aa51776206.md) | 100 | `result-track:0bcbd09a9247c9aa517762067e5643777e50ec0ad62659f5adb81dbbca8ac702` |
| 5 | `lemma` | [preservesFinOfPreservesBinaryAndTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/preservesfinofpreservesbinaryandterminal--7effba6d109e861705ed8aa4.md) | 119 | `result-track:7effba6d109e861705ed8aa4b78a0b311819f77d1815c6f10a4a52a21a44c582` |
| 6 | `lemma` | [Limits.PreservesFiniteProducts.of_preserves_binary_and_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/limits-preservesfiniteproducts-of-preserves-binary-and-terminal--c146d81c6533fae105c02597.md) | 148 | `result-track:c146d81c6533fae105c02597b35225e7d9d86b603ddb2272533f738522c86989` |
| 7 | `lemma` | [preservesShape_fin_of_preserves_binary_and_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/preservesshape-fin-of-preserves-binary-and-terminal--647363594be4ce4f7cd08aa8.md) | 161 | `result-track:647363594be4ce4f7cd08aa8c8ede6478f4e75788a0e954f6a829766bde66644` |
| 8 | `def` | [extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/extendcofan--571a316953f3a128d5c19f0b.md) | 175 | `declaration-track:571a316953f3a128d5c19f0b160f587cfe70415af939717fc43afbcc53bb79e8` |
| 9 | `def` | [extendCofanIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/extendcofaniscolimit--6c20809826ef3e923fe0c86d.md) | 187 | `declaration-track:6c20809826ef3e923fe0c86d412b41b3be1a8c034b9a6da7210842b69a30fedf` |
| 10 | `theorem` | [hasCoproduct_fin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/hascoproduct-fin--7140829778ab5b747186b1bd.md) | 223 | `result-track:7140829778ab5b747186b1bdf742f4e9b0688e3308f153428bc6c1e3594557ce` |
| 11 | `theorem` | [hasFiniteCoproducts_of_has_binary_and_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/hasfinitecoproducts-of-has-binary-and-initial--10fab66e9de03abdc0f17f54.md) | 233 | `result-track:10fab66e9de03abdc0f17f54d91a6695f21222d6ad3d6a3205938607a4398b75` |
| 12 | `lemma` | [preserves_fin_of_preserves_binary_and_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/preserves-fin-of-preserves-binary-and-initial--540f9025c3465053727327ed.md) | 251 | `result-track:540f9025c3465053727327ed62d523ce1cd383fd580b9dd3f1ba8e5abfd7f7ab` |
| 13 | `lemma` | [preservesShape_fin_of_preserves_binary_and_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/preservesshape-fin-of-preserves-binary-and-initial--4b352630d407265a3cacfd07.md) | 281 | `result-track:4b352630d407265a3cacfd07d967813c62b1ec36987615f7c0e3536464c51d90` |
| 14 | `lemma` | [preservesFiniteCoproductsOfPreservesBinaryAndInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variant850547b41ea99840396aedab90a10944a300476708aa3a738fec1c7580582dd5.lean/declarations/preservesfinitecoproductsofpreservesbinaryandinitial--1c6f97416f21d90e0f8f0b9f.md) | 289 | `result-track:1c6f97416f21d90e0f8f0b9ffd5966a5a62d21c9def96e60781aa3d856c1542b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
