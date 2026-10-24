# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToApp.Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a787d9341433b626e446028b9ea61079cff000b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a787d9341433b626e446028b9ea61079cff000b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Cat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Util.AddRelatedDecl` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [catAppSimp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/declarations/catappsimp--5a4783527a986bebb9903683.md) | 42 | `declaration-track:5a4783527a986bebb9903683690339d471bffd0b7ec9cb7894e8bd9db2908463` |
| 2 | `def` | [toCatExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/declarations/tocatexpr--fd66cb36373d4966b51a12a0.md) | 54 | `declaration-track:fd66cb36373d4966b51a12a0495993a6fd787971c629761df50895a1d74fc403` |
| 3 | `def` | [toAppExpr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/declarations/toappexpr--da4a0deb591a66c8dc5880dc.md) | 99 | `declaration-track:da4a0deb591a66c8dc5880dca7a85dc330215764a0d3589badbe50d99da2b4ae` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/declarations/syntax--1aa37bac951655d1ef6bcb9c.md) | 120 | `declaration-track:1aa37bac951655d1ef6bcb9cbc4713a8a1a5d366a454cfa497ea5538649bb23f` |
| 5 | `initialize` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/declarations/initialize--fbe1f3e388c92de7c6db00f0.md) | 122 | `declaration-track:fbe1f3e388c92de7c6db00f0f72e48419ac2d5aa0936bfb4cf9fb627f4fec38d` |
| 6 | `elab` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ToApp/Variantc6941fd0c75ac36423cc09af342da722f516da4b5be216a46c58e688e2952728.lean/declarations/elab--92d7d615682c91806c072871.md) | 147 | `declaration-track:92d7d615682c91806c072871bf0df1c3da5f23d6b8981052bddb19cc6a9e6465` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
