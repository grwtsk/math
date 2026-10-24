# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BetaNormalizer.Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7dbd1a80ec6af23fad2cb2b7d77ddf9e7ef96806",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7dbd1a80ec6af23fad2cb2b7d77ddf9e7ef96806`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Typing` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.BetaNext` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizeFuel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/declarations/normalizefuel--56312043e60abbda6415f205.md) | 22 | `declaration-track:56312043e60abbda6415f205b798c4a062c84046d59bc3e8206531df2ed459b4` |
| 2 | `theorem` | [normalizeFuel_sound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/declarations/normalizefuel-sound--e279493d13989bfd2cd096e0.md) | 33 | `result-track:e279493d13989bfd2cd096e070a1b583c3c94ddbee50dc04c23557cd09c837c8` |
| 3 | `theorem` | [normalizeFuel_complete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/declarations/normalizefuel-complete--19253b99aebd6295a2fff584.md) | 61 | `result-track:19253b99aebd6295a2fff584bc451db89b477f3696a4f19fa78f20872280f5d3` |
| 4 | `theorem` | [normalizeFuel_certified](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/declarations/normalizefuel-certified--1ab2418f655a410e8019c123.md) | 86 | `result-track:1ab2418f655a410e8019c12334755669b97f6f35a0da1929ca259a1ae2be80e9` |
| 5 | `theorem` | [normalizeFuel_preserves_typing](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/declarations/normalizefuel-preserves-typing--583b654c2df24fe77562f996.md) | 93 | `result-track:583b654c2df24fe77562f99686b1a1774cc2967f8f6462966c5ebfb0fd9e6429` |
| 6 | `theorem` | [normal_forms_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/declarations/normal-forms-unique--296a9768f72b6404a21139c4.md) | 99 | `result-track:296a9768f72b6404a21139c46c25323801f783d599a00235ed39d898889a092f` |
| 7 | `theorem` | [normalizeFuel_unique](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BetaNormalizer/Variantbaafd6e66afc1a1a765229807d670d7b6f1a8dc67b46b4f194a764f501c20047.lean/declarations/normalizefuel-unique--fc7a930606d4aa5759a35e03.md) | 108 | `result-track:fc7a930606d4aa5759a35e0375415d71e7aeac0966b706dcf3cce982d7d53c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
