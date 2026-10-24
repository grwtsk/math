# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.CountableDenseLinearOrder.Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb52d90e84f78bad37640d2e1d15616a5d3c6030",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb52d90e84f78bad37640d2e1d15616a5d3c6030`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exists_between_finsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/exists-between-finsets--d8f7b45e83dffc2ceb48895c.md) | 50 | `result-track:d8f7b45e83dffc2ceb48895c0169adb1c13e0da22b6ce5e31aeba03083be0c7c` |
| 2 | `lemma` | [exists_orderEmbedding_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/exists-orderembedding-insert--b29f9d653a79701b4762ac37.md) | 74 | `result-track:b29f9d653a79701b4762ac37c25937dd1647025e3861333115dc2f7923963428` |
| 3 | `def` | [PartialIso](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/partialiso--47765bbad5c31451b43be10b.md) | 113 | `declaration-track:47765bbad5c31451b43be10b2569ef84445242714e13302ec2c688549bc1886a` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/instance--486fc4c0d7723d4eb78a1fa5.md) | 120 | `declaration-track:486fc4c0d7723d4eb78a1fa5bc01a6d1cc9343c60b5965a54934371b776b4166` |
| 5 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/instance--012811efb4150abd21d9d13e.md) | 122 | `declaration-track:012811efb4150abd21d9d13e5322c1c0d101830e5b37ade2be8524fbaac09899` |
| 6 | `theorem` | [exists_across](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/exists-across--94b60e7d07367cff1bf1a426.md) | 131 | `result-track:94b60e7d07367cff1bf1a4264948af4b00443a625afb4988c78541dda986355b` |
| 7 | `def` | [comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/comm--b927f96b3236a36c17adac80.md) | 162 | `declaration-track:b927f96b3236a36c17adac801ebe2a7c6d2a3be715b960a2e11f283ba1f9c271` |
| 8 | `def` | [definedAtLeft](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/definedatleft--0d1560597d96e4cbce35992d.md) | 178 | `declaration-track:0d1560597d96e4cbce35992d141395fa0327d7399ed586b0e11ea0e5a532aab4` |
| 9 | `def` | [definedAtRight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/definedatright--6ce42d07e067d93cfd64cec7.md) | 198 | `declaration-track:6ce42d07e067d93cfd64cec7939fa7fa3fa41cf689f1643d4ae030978cd67a65` |
| 10 | `def` | [funOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/funofideal--bed1af23203cfa0e5859ca4d.md) | 214 | `declaration-track:bed1af23203cfa0e5859ca4d032d50f6e3982afdee16dc3dd770c5d6989cc48e` |
| 11 | `def` | [invOfIdeal](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/invofideal--3f30010c0d4aa2e5defa8a87.md) | 221 | `declaration-track:3f30010c0d4aa2e5defa8a877512c7a39dd8ed57198dcc5f7f85470c8f5c4ba0` |
| 12 | `theorem` | [embedding_from_countable_to_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/embedding-from-countable-to-dense--db36bfbc0bbfa7e933290d35.md) | 233 | `result-track:db36bfbc0bbfa7e933290d3515d3564dd8c989d0650de6a55f008789c9a3d546` |
| 13 | `theorem` | [iso_of_countable_dense](../../../../mathematics/CombinatoricsAndDiscreteMathematics/CountableDenseLinearOrder/Variant3296da9c92d513250c4cee80cce3f10ef2fbaea792e3e60ac1be3d7df78df640.lean/declarations/iso-of-countable-dense--f171e25f9a3b6cc2de57475c.md) | 252 | `result-track:f171e25f9a3b6cc2de57475cd9a2026ad90cd9bef96aa7af53ca7ab16d5c230f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
