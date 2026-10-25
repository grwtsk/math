# Verification target: GRWTSK.Logic.Classification.Catalogue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa66c661e8bedc66c5d7a264cd04b5748943d678",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/Classification/Catalogue.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa66c661e8bedc66c5d7a264cd04b5748943d678`.

Source path: `GRWTSK/Logic/Classification/Catalogue.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/Classification/Catalogue.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Order.Taxonomy.Core`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Taxonomy/Core__SourceOccurrence24f24f8ba07fa645eb371c9b.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Catalogue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue--1805c37e9317d5d2403ec605.md) | 21 | `declaration-track:1805c37e9317d5d2403ec605c189ea41926b98eb8bf3d3ac1ba57ab275a79eb0` |
| 2 | `def` | [Catalogue.Assigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-assigned--39abd19fea0b6147390ba292.md) | 27 | `declaration-track:39abd19fea0b6147390ba292955d9e14b30e392a9e3b925b116af1628ce799d2` |
| 3 | `def` | [Catalogue.Bucket](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-bucket--583203c675de14faba610dfe.md) | 31 | `declaration-track:583203c675de14faba610dfea14c57eba0814d5541fafae85df164a46df26a86` |
| 4 | `def` | [Catalogue.restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-restrict--712f2ef385dff4c52b2c9db7.md) | 34 | `declaration-track:712f2ef385dff4c52b2c9db726c22e6beddd67312abc65e11c91db03252e0c6e` |
| 5 | `theorem` | [Catalogue.restrict_val](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-restrict-val--becaeb68eef797534d9ea888.md) | 40 | `result-track:becaeb68eef797534d9ea8888c97477f4e56250bebac7056fb0aa41b23523650` |
| 6 | `theorem` | [Catalogue.restrict_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-restrict-self--b528a5e8e917ba5dbd8948b2.md) | 43 | `result-track:b528a5e8e917ba5dbd8948b28c3d9c35adfe230722dfc62aa9d90a6108abfc88` |
| 7 | `theorem` | [Catalogue.restrict_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-restrict-comp--8b388c1f8652435bf51f15d6.md) | 46 | `result-track:8b388c1f8652435bf51f15d6f5e752629ce91b2445667bb73e5961a8cc6bd46c` |
| 8 | `theorem` | [Catalogue.restrict_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-restrict-injective--e5df9d4137826eb29387cd14.md) | 50 | `result-track:e5df9d4137826eb29387cd144bfdc7ecc2a6b9137e186e120722deaab1f85368` |
| 9 | `def` | [Catalogue.atRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-atroot--1aa89b0ff8240228437337d4.md) | 56 | `declaration-track:1aa89b0ff8240228437337d4a0a66e2c9446746de06f2c1fd17f634b3bbffbff` |
| 10 | `def` | [Catalogue.atCommonAncestor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-atcommonancestor--fd6c0992a946206e61baa327.md) | 60 | `declaration-track:fd6c0992a946206e61baa3276fbc5bb1f36f6050de2ea0254acaa34c851eb1ce` |
| 11 | `def` | [Catalogue.presheaf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClassificationValidation/Catalogue__SourceOccurrence436f71c5d6dd9ac52ab551ba.lean/declarations/catalogue-presheaf--36817ad2837f17d16a888963.md) | 64 | `declaration-track:36817ad2837f17d16a888963111cc67197af21a65bfe33bf4b3016cc38e0841e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
