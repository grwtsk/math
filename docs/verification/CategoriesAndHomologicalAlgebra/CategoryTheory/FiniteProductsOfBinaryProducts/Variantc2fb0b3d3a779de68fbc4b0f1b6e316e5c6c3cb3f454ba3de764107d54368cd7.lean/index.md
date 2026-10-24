# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteProductsOfBinaryProducts.Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31eda8eb1f3c06695960d6a9945709eea7249a0d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31eda8eb1f3c06695960d6a9945709eea7249a0d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Finite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extendFan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/extendfan--c0c6f99cab51370ca13c7d0a.md) | 51 | `declaration-track:c0c6f99cab51370ca13c7d0a6f76030d8313e1ba97bf12b2b12931c00052ccc3` |
| 2 | `def` | [extendFanIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/extendfanislimit--a7ba384be3444cd63b5e1283.md) | 63 | `declaration-track:a7ba384be3444cd63b5e1283c62d24f720da31130fb96d72765a89fb83798c52` |
| 3 | `theorem` | [hasProduct_fin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/hasproduct-fin--890560e2a2e88fa9191dc413.md) | 98 | `result-track:890560e2a2e88fa9191dc41390a47886bb67389bc0884322eb59bd63b357364b` |
| 4 | `theorem` | [hasFiniteProducts_of_has_binary_and_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/hasfiniteproducts-of-has-binary-and-terminal--51b421a908c82355858ba53f.md) | 108 | `result-track:51b421a908c82355858ba53f276415b38d1ef0e0c05095c1c9385e89f642fe78` |
| 5 | `lemma` | [preservesFinOfPreservesBinaryAndTerminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/preservesfinofpreservesbinaryandterminal--1ae727ef7e9d232a8bbabac6.md) | 127 | `result-track:1ae727ef7e9d232a8bbabac68f077c201b2f7635979a7e1b1cd557d1294d73f0` |
| 6 | `lemma` | [Limits.PreservesFiniteProducts.of_preserves_binary_and_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/limits-preservesfiniteproducts-of-preserves-binary-and-terminal--f1d22d621cdab8dd76ecf07a.md) | 156 | `result-track:f1d22d621cdab8dd76ecf07ad74ffa8bb6f2e443946dcd4310d90acbdc963fe0` |
| 7 | `lemma` | [preservesShape_fin_of_preserves_binary_and_terminal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/preservesshape-fin-of-preserves-binary-and-terminal--7ab46b1bd80e5263a93d8ba2.md) | 169 | `result-track:7ab46b1bd80e5263a93d8ba2fc1624031545f8a63bf2be181c60f51f77282322` |
| 8 | `def` | [extendCofan](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/extendcofan--ba01fe207a6ab65a1df60675.md) | 183 | `declaration-track:ba01fe207a6ab65a1df606757ed8f57ed1c67d48d76dc96e9f03f1a659ec1bdc` |
| 9 | `def` | [extendCofanIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/extendcofaniscolimit--86e6a1e3ef84c19ce3c625d1.md) | 195 | `declaration-track:86e6a1e3ef84c19ce3c625d1de5a515d646ce69bd17f3261396e19dc0d930856` |
| 10 | `theorem` | [hasCoproduct_fin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/hascoproduct-fin--b4e1af630f9cfbf6125279de.md) | 231 | `result-track:b4e1af630f9cfbf6125279ded017760ecf912f1d0172f81e4a512ef6c4f2bf2a` |
| 11 | `theorem` | [hasFiniteCoproducts_of_has_binary_and_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/hasfinitecoproducts-of-has-binary-and-initial--f1fac13264b1f715dec06485.md) | 241 | `result-track:f1fac13264b1f715dec06485caad5fd8b806d6fb35886de5f85493901ed0c55d` |
| 12 | `lemma` | [preserves_fin_of_preserves_binary_and_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/preserves-fin-of-preserves-binary-and-initial--3ce2ca7d93a08d421e2daef2.md) | 259 | `result-track:3ce2ca7d93a08d421e2daef2f422e1689c10361735893532fca5134d72049ec8` |
| 13 | `lemma` | [preservesShape_fin_of_preserves_binary_and_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/preservesshape-fin-of-preserves-binary-and-initial--412b7c65e0e62e843f29300d.md) | 289 | `result-track:412b7c65e0e62e843f29300db19030a967ab6d10471bd185d94749bb6b187226` |
| 14 | `lemma` | [preservesFiniteCoproductsOfPreservesBinaryAndInitial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteProductsOfBinaryProducts/Variantc2fb0b3d3a779de68fbc4b0f1b6e316e5c6c3cb3f454ba3de764107d54368cd7.lean/declarations/preservesfinitecoproductsofpreservesbinaryandinitial--1bee077888decc39da6a4055.md) | 297 | `result-track:1bee077888decc39da6a405551a675969596918f4d2bc52b7538a33605b2824b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
