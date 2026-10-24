# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "088b92445cbf1d7dce0158f927ee2f2a9a9e3bde",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `088b92445cbf1d7dce0158f927ee2f2a9a9e3bde`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CanonicallyOrderedAdd](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/canonicallyorderedadd--ad99703ba960827713e212dc.md) | 40 | `declaration-track:ad99703ba960827713e212dca44e01c7870be66a3ffb7cd848f9d0db09ca3dfa` |
| 2 | `class` | [CanonicallyOrderedMul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/canonicallyorderedmul--b76e96df6bd59d29eb2b52f6.md) | 57 | `declaration-track:b76e96df6bd59d29eb2b52f6fad04f7e041d2b2376ac4fe39837bf8883d1ca0f` |
| 3 | `theorem` | [le_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-mul-self--6f1f7376fb6dc96cef2a0c52.md) | 72 | `result-track:6f1f7376fb6dc96cef2a0c5269721d8fe0672a7dbc52b0f4450a5e3acafb7fd7` |
| 4 | `theorem` | [le_self_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-self-mul--ddd1b8aaaaeeae5bc3cab971.md) | 76 | `result-track:ddd1b8aaaaeeae5bc3cab971d4adac114643a5c212ed5720ca564f6d4dc18b57` |
| 5 | `theorem` | [self_le_mul_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/self-le-mul-left--8ecbb238a324fe49adffd79b.md) | 80 | `result-track:8ecbb238a324fe49adffd79b5e45762ef8c634543561ad8bf3750714c8f34832` |
| 6 | `theorem` | [self_le_mul_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/self-le-mul-right--896e9c80d12b7a929d88f1e7.md) | 84 | `result-track:896e9c80d12b7a929d88f1e78b4f9cf6dd6f20a1dd37d5e3afd5fe6b9cc3a63c` |
| 7 | `theorem` | [le_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-iff-exists-mul--23c7c74331c41f33030a5595.md) | 88 | `result-track:23c7c74331c41f33030a5595f3f4b17190a6e4f910eab6b1cd7aecf2135257a4` |
| 8 | `theorem` | [le_of_mul_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-of-mul-le-left--8b5a11cb0cbe9d31e3e306a5.md) | 99 | `result-track:8b5a11cb0cbe9d31e3e306a56e0a36aefff5bbcfb16adf221ee41df8af165219` |
| 9 | `theorem` | [le_mul_of_le_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-mul-of-le-left--1fb4f4c33633e82e97bb0ee1.md) | 103 | `result-track:1fb4f4c33633e82e97bb0ee15a30e8c1b3b2fe696cada72a34ad53915a44fbf4` |
| 10 | `theorem` | [le_of_mul_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-of-mul-le-right--5bd64fd5d31c7a98bcb4286e.md) | 107 | `result-track:5bd64fd5d31c7a98bcb4286e9dc2ea34bf245b6646ebdad80a7b2e33bc4c1bc1` |
| 11 | `theorem` | [le_mul_of_le_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-mul-of-le-right--4296294a28ec75d573f3facc.md) | 111 | `result-track:4296294a28ec75d573f3facc0e935bcf92e043729b597d7992a98412575339a7` |
| 12 | `theorem` | [le_iff_exists_mul'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/le-iff-exists-mul--ee1000db72b5f30cefb792df.md) | 125 | `result-track:ee1000db72b5f30cefb792df19536c0fafce660fdceda8f0f07bd0643a60e61c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/instance--327505a50de5c7ff654b23b7.md) | 137 | `declaration-track:327505a50de5c7ff654b23b7fae2f36018ff934733c9f1713b8659249d8bda08` |
| 14 | `theorem` | [exists_one_lt_mul_of_lt](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/exists-one-lt-mul-of-lt--6369fd4ad7c1d67b16bc6365.md) | 146 | `result-track:6369fd4ad7c1d67b16bc6365fbcafdd6266b8fa1616a72a07cb069a238338624` |
| 15 | `theorem` | [lt_iff_exists_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/lt-iff-exists-mul--be2ebc5e580677f1944269aa.md) | 153 | `result-track:be2ebc5e580677f1944269aaf78c122466336039f0fa13d34d5b97b0d27206ff` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/instance--4e96bdaf69c805945952d4bd.md) | 179 | `declaration-track:4e96bdaf69c805945952d4bd87ad052bf75a7aaca69bdc1538c9f30bb66e5802` |
| 17 | `lemma` | [CanonicallyOrderedMul.toIsOrderedMonoid](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/canonicallyorderedmul-toisorderedmonoid--579585f4619c92ffd8e76be8.md) | 192 | `result-track:579585f4619c92ffd8e76be8b89928d5cb47f55a613cb251a33908b0100ea023` |
| 18 | `instance` | [CanonicallyOrderedCommMonoid.toUniqueUnits](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/canonicallyorderedcommmonoid-touniqueunits--0dd9c326df83db260f8cb765.md) | 202 | `declaration-track:0dd9c326df83db260f8cb765c4e341effeff530e2b46b0c54d676ea816332f78` |
| 19 | `theorem` | [one_lt_mul_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/one-lt-mul-iff--4f971cdc077e81febf355c46.md) | 216 | `result-track:4f971cdc077e81febf355c46ef7d345df55126f47519923226edee53ce1fa504` |
| 20 | `theorem` | [min_mul_distrib](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/min-mul-distrib--5c32104ff24461144894b597.md) | 228 | `result-track:5c32104ff24461144894b5971098ba9457860056354aa12a01222d80a253eecd` |
| 21 | `theorem` | [min_mul_distrib'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/min-mul-distrib--7ccdd800b64bee3f0d18c8fa.md) | 236 | `result-track:7ccdd800b64bee3f0d18c8fa6440a5d756235be0f14fe569e53e9cfc25ba35fa` |
| 22 | `theorem` | [bot_eq_one'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant347d70c13717215c96771b641d388982a43bac501fc0c73781446d8aabd3a086.lean/declarations/bot-eq-one--393ca6e45a53ef840a44226b.md) | 242 | `result-track:393ca6e45a53ef840a44226b19ed1590a8d83aa084a8eb81b058fb8c9ac0d1bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
