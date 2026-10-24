# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StringOrder.Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed4a42ee5a0c19b7d98c05bcb7065fd635eb049a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed4a42ee5a0c19b7d98c05bcb7065fd635eb049a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Lex` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.Char.Order` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Factories` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Order.Lemmas` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/not-le--1424e3e6f1ac62ce2de5ad37.md) | 23 | `result-track:1424e3e6f1ac62ce2de5ad370269ab6eabf6b4d989fae8b09a03a1256328060b` |
| 2 | `theorem` | [not_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/not-lt--3a25bc69840d8620cf98674b.md) | 24 | `result-track:3a25bc69840d8620cf98674bd4202ade6a50bfb80f8fe04083f4c2bc4a67f97e` |
| 3 | `theorem` | [le_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/le-refl--3b695ff9e7c7ed846d1a64dc.md) | 25 | `result-track:3b695ff9e7c7ed846d1a64dc54ed176867a7731ede6cf8a3614ba8a6a345da63` |
| 4 | `theorem` | [lt_irrefl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/lt-irrefl--fad62fdc2730b009bbd8b474.md) | 26 | `result-track:fad62fdc2730b009bbd8b4749ce1c9dcdbff07a5830cfb0ac422f3508f2769e4` |
| 5 | `theorem` | [le_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/le-trans--116a6d22898046434c12728b.md) | 30 | `result-track:116a6d22898046434c12728bbb4f613705a0f24ed9252ddf80e771b1c1b74e02` |
| 6 | `theorem` | [lt_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/lt-trans--fe2f7c8456ff4fca49c677f3.md) | 31 | `result-track:fe2f7c8456ff4fca49c677f380ac577c67d0aaaf95831c70f7ef6d7f5a051b9a` |
| 7 | `theorem` | [le_total](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/le-total--7bb80787aa3a3b880d9689fb.md) | 32 | `result-track:7bb80787aa3a3b880d9689fb67d0644ca2aa1ef6c4eabcf979835e43fe553bb0` |
| 8 | `theorem` | [le_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/le-antisymm--0a3f26de9c5e21da7de25b71.md) | 33 | `result-track:0a3f26de9c5e21da7de25b7144e1312d30c45a018a5402b28c9f89c96fe5b95a` |
| 9 | `theorem` | [lt_asymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/lt-asymm--32ff45c97ecd797deefa3e4a.md) | 34 | `result-track:32ff45c97ecd797deefa3e4afe5882890f4cf7670f9e46c5463097831856eab9` |
| 10 | `theorem` | [ne_of_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/ne-of-lt--cd9795fcb021f42bd11c1ab0.md) | 35 | `result-track:cd9795fcb021f42bd11c1ab01e495065c3e582e7461215ffabe1a8b6a214fbcf` |
| 11 | `instance` | [instIsLinearOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/instislinearorder--0ca311c94e7cf60e331c7378.md) | 39 | `declaration-track:0ca311c94e7cf60e331c7378402548c78fc2cf920eaef224960fb02a9ece4f16` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StringOrder/Variant6fd9264f8856dcc852ecbc69bc77f118e3af5ea7031e20283208cf420dc8e50a.lean/declarations/instance--d48f4000f5696c6b9686ff77.md) | 45 | `declaration-track:d48f4000f5696c6b9686ff7760b64e7d158016c0373ce625c01b6611400bf990` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
