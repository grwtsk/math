# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "47493a1c6df54bee5699976ffc21b88fda44124d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `47493a1c6df54bee5699976ffc21b88fda44124d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.CatCommSq` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Localization.Predicate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ε](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/declarations/anonymous--c0049b148e49cf20a15a8e4d.md) | 46 | `declaration-track:c0049b148e49cf20a15a8e4d262856b7339cc26cc01ce697b798e4712ac1ec69` |
| 2 | `lemma` | [ε_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/declarations/app--fee0bc3fc55f5ba0e67595d7.md) | 52 | `result-track:fee0bc3fc55f5ba0e67595d7b5aca66fac7b4788aefd3cd8671a1d7b203c20af` |
| 3 | `def` | [η](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/declarations/anonymous--8cadf4ff104fd282291cbf18.md) | 63 | `declaration-track:8cadf4ff104fd282291cbf180109028ac64dfc4acc7b75bd5d3c6ae0d4adf80b` |
| 4 | `lemma` | [η_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/declarations/app--d8520fec4754e3f5d0160297.md) | 68 | `result-track:d8520fec4754e3f5d016029728ea045c5aee3160aa7dea6e38ea7dab458bd9c4` |
| 5 | `def` | [localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/declarations/localization--91f9edc3d374a9ed223024d8.md) | 86 | `declaration-track:91f9edc3d374a9ed223024d8ef78f5a435001ad7bcfa651c4cb3940b85c4e08f` |
| 6 | `lemma` | [localization_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/declarations/localization-unit-app--ba2d1a827e9f5347b6da84e9.md) | 117 | `result-track:ba2d1a827e9f5347b6da84e96f916ec7babe7c90719d46baf78d43d87df15163` |
| 7 | `lemma` | [localization_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant1b678613397ff8a795fc79531f51b74a965c266c8ff049078b4d7d5dcaa398e5.lean/declarations/localization-counit-app--7ed43764187e9e88f24a91db.md) | 124 | `result-track:7ed43764187e9e88f24a91dbe87455262d44b8244e28a32c476943339ce67f36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
