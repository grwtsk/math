# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Square.Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "431a332683afcc49c26925d6577ad17060256414",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `431a332683afcc49c26925d6577ad17060256414`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.Square` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [IsPullback.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispullback-map--1f4c0464aa580f3c77bf644a.md) | 46 | `result-track:1f4c0464aa580f3c77bf644a2d069e3261166cd7d3f1e20b5548d37b60988664` |
| 2 | `lemma` | [IsPullback.of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispullback-of-map--c0535b28844717b1118301eb.md) | 50 | `result-track:c0535b28844717b1118301eb25112d7b5015b43cf680e3f53e8a5ce023da26c1` |
| 3 | `lemma` | [IsPullback.map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispullback-map-iff--57b02c5ca84ff9738dd593d1.md) | 55 | `result-track:57b02c5ca84ff9738dd593d1ff3480c2cb4e47b07d1488cf6e4b1aa6635f13f9` |
| 4 | `lemma` | [IsPushout.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispushout-map--89cf000432d4bbe8f4703283.md) | 60 | `result-track:89cf000432d4bbe8f47032834c1a9694fcaaf95a74a2e29c34887bc0c5338299` |
| 5 | `lemma` | [IsPushout.of_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispushout-of-map--30b174672a62c0af4332eebe.md) | 64 | `result-track:30b174672a62c0af4332eebe3fafcd724fdca17b4c3991a8d56cdc1f22b62a69` |
| 6 | `lemma` | [IsPushout.map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispushout-map-iff--e74a5c11827277d95d3fd0f9.md) | 69 | `result-track:e74a5c11827277d95d3fd0f9575be19acac10a5bf9cc52fd43b6e548b2ec6fb8` |
| 7 | `lemma` | [isPullback_iff_map_coyoneda_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispullback-iff-map-coyoneda-ispullback--3c24fe824639b5009c2daa54.md) | 76 | `result-track:3c24fe824639b5009c2daa544e89df03e7a00d292d7f356ece3e213accb666e9` |
| 8 | `lemma` | [isPushout_iff_op_map_yoneda_isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispushout-iff-op-map-yoneda-ispullback--633f930a3356b32e6ca1ee9d.md) | 81 | `result-track:633f930a3356b32e6ca1ee9d0008919eb9b3f1b8bfff0eeeb3686fd618e1fd7c` |
| 9 | `lemma` | [IsPullback.iff_of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispullback-iff-of-equiv--07e91fc9a865e774589faeb9.md) | 99 | `result-track:07e91fc9a865e774589faeb99600e2ab2b66d98569eee1d32466a1a64d1f3c39` |
| 10 | `lemma` | [IsPullback.of_equiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Square/Variant395b8a601098fef572cc842b5366437750fb18415de055b401648096064b5c0e.lean/declarations/ispullback-of-equiv--7eefbf1b6272d6cca8640e30.md) | 114 | `result-track:7eefbf1b6272d6cca8640e30d4dff7c61ece35b8d83f27380bd471ced3404787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
