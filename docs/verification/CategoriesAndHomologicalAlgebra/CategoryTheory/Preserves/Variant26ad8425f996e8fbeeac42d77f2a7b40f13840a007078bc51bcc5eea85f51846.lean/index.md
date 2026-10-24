# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preserves.Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aaaa21e080d5bc955d8003c0335c0ed6eaa5f1f7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aaaa21e080d5bc955d8003c0335c0ed6eaa5f1f7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.EqualizerSheafCondition` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isTerminal_of_isSheafFor_empty_presieve](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/declarations/isterminal-of-issheaffor-empty-presieve--9b8d182386692a6307e99c0d.md) | 59 | `declaration-track:9b8d182386692a6307e99c0de91648ce99f941678f038f3f6a346af5bd9bfac3` |
| 2 | `lemma` | [preservesTerminal_of_isSheaf_for_empty](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/declarations/preservesterminal-of-issheaf-for-empty--c9e9ec3f4b80366b7d449e63.md) | 69 | `result-track:c9e9ec3f4b80366b7d449e638fda086b28632a412403ce47b3fd2790a327a071` |
| 3 | `theorem` | [piComparison_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/declarations/picomparison-fac--8ca16ab97da8ef66f250d4d0.md) | 86 | `result-track:8ca16ab97da8ef66f250d4d0bfa14e481710da218e1bc5b5b8c2f41dbe6165d3` |
| 4 | `theorem` | [isSheafFor_of_preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/declarations/issheaffor-of-preservesproduct--4d5c260a3d881c02fac1e9d2.md) | 106 | `result-track:4d5c260a3d881c02fac1e9d22bb5fa655ffd9685f198ac53f0afbc7d3b67e717` |
| 5 | `theorem` | [firstMap_eq_secondMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/declarations/firstmap-eq-secondmap--d605f8581c5cda360a01ba0d.md) | 127 | `result-track:d605f8581c5cda360a01ba0d75e7cd6b66bff28dbc07912fc39d3ae95e3ed95c` |
| 6 | `lemma` | [preservesProduct_of_isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/declarations/preservesproduct-of-issheaffor--1098eb3f97b726947dc66b36.md) | 147 | `result-track:1098eb3f97b726947dc66b36037e04c57e1f9f790dbd3794e5221959e59c0749` |
| 7 | `theorem` | [isSheafFor_iff_preservesProduct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant26ad8425f996e8fbeeac42d77f2a7b40f13840a007078bc51bcc5eea85f51846.lean/declarations/issheaffor-iff-preservesproduct--9607debedf24287fce6da59f.md) | 159 | `result-track:9607debedf24287fce6da59ff7fe1a63c0f64e4c1222b7b549ec69b2de43ca73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
