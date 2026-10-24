# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafOfTypes.Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4f33af0521cc3cbde39d2d91a30b95755d9fc2c",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4f33af0521cc3cbde39d2d91a30b95755d9fc2c`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Pretopology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.IsSheafFor` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparated](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/isseparated--be694f0d55910707e4c1c076.md) | 64 | `declaration-track:be694f0d55910707e4c1c076642d67ed00a23f841e35333516d7e28600282927` |
| 2 | `def` | [IsSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf--2653f8309a0c7440f1b31b6c.md) | 72 | `declaration-track:2653f8309a0c7440f1b31b6c51ee1c76244c1acf67071916d6fea350ea513527` |
| 3 | `theorem` | [IsSheaf.isSheafFor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-issheaffor--9e8d9e7ce8aabd89e0f8b445.md) | 75 | `result-track:9e8d9e7ce8aabd89e0f8b44529c61eab84837781b6b326d9e58cebd68c01f4f7` |
| 4 | `theorem` | [isSheaf_of_le](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-of-le--8b2577c7f81b00c51b838fc0.md) | 79 | `result-track:8b2577c7f81b00c51b838fc06df21704dd4c0fa783d648786bf1771effa920f7` |
| 5 | `theorem` | [isSeparated_of_isSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/isseparated-of-issheaf--fc597753a5885638ac53fa6e.md) | 82 | `result-track:fc597753a5885638ac53fa6eb1860d1e2e9a1af9a555e5509312701fede1ce93` |
| 6 | `lemma` | [isSheaf_of_nat_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-of-nat-equiv--0fcca139074753b13d052e22.md) | 93 | `result-track:0fcca139074753b13d052e22bdc1a60abede44cf3382404865ca2b04426d1fcc` |
| 7 | `lemma` | [isSheaf_iff_of_nat_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-iff-of-nat-equiv--6c81360cabc0bb310f90d5b7.md) | 98 | `result-track:6c81360cabc0bb310f90d5b72e2e0831e93d148b02c7bc50e789c90f25c895ef` |
| 8 | `theorem` | [isSheaf_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-iso--5d7df368ae8532e46a50c67b.md) | 110 | `result-track:5d7df368ae8532e46a50c67b4af9be780ad6f04d55dec138fdd1c3b4536ad415` |
| 9 | `theorem` | [isSheaf_of_yoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-of-yoneda--5c2b0e73462da1767de4c6bb.md) | 113 | `result-track:5c2b0e73462da1767de4c6bbee803089d6966d2794161d949c719a02729b7ec1` |
| 10 | `theorem` | [isSheaf_pretopology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-pretopology--0291009d273f9b9a96251ff4.md) | 120 | `result-track:0291009d273f9b9a96251ff43a718ae4dd062f9d5c3ce12975bdcb517655a551` |
| 11 | `theorem` | [isSheaf_bot](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/issheaf-bot--60fc3830f13777f973b6b71c.md) | 136 | `result-track:60fc3830f13777f973b6b71cfea73494619a4cb7b3e56d5e71a56aec67fb6bc1` |
| 12 | `def` | [compatibleYonedaFamily_toCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/compatibleyonedafamily-tococone--47bae7db7b5d3db61d24a4a5.md) | 147 | `declaration-track:47bae7db7b5d3db61d24a4a5ea8fa08b38bcf63f605de506478153cf52e3516d` |
| 13 | `def` | [yonedaFamilyOfElements_fromCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/yonedafamilyofelements-fromcocone--f59a6e6f5c9ad719a7c5f8a5.md) | 163 | `declaration-track:f59a6e6f5c9ad719a7c5f8a503c224002ec27601ec5ea77afaadc4fafeb77a49` |
| 14 | `theorem` | [yonedaFamily_fromCocone_compatible](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/yonedafamily-fromcocone-compatible--89055ae84f72b6e3342073ee.md) | 175 | `result-track:89055ae84f72b6e3342073ee21a0c4a3ef907c8a4e7c8701fddc141eb8176e3f` |
| 15 | `theorem` | [forallYonedaIsSheaf_iff_colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant0ff976519b1d2c4c578df33ff6b52a2bcb29e768d44420233648e4de774e1e0f.lean/declarations/forallyonedaissheaf-iff-colimit--03c0b07e96e509f4ad4b4f9f.md) | 195 | `result-track:03c0b07e96e509f4ad4b4f9f8634a2e95e9bdfa79edfd9d118368d849a49626c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
