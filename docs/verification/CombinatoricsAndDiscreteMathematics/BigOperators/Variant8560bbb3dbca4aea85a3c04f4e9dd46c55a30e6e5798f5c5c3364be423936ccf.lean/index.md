# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34944db3f529ba9a651f79824b82660a80af28cc",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34944db3f529ba9a651f79824b82660a80af28cc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.WithTop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNReal.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENNReal.Inv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [coe_finset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/coe-finset-sum--dd6b5b1ab1946cfa86aaacf6.md) | 36 | `result-track:dd6b5b1ab1946cfa86aaacf6ef183b150190a40cfe7b55bfe2979f8b721f37dd` |
| 2 | `theorem` | [coe_finset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/coe-finset-prod--6c9f9a7504be5328cae44754.md) | 40 | `result-track:6c9f9a7504be5328cae44754a73457fb59f6c85c09866173806d16c11b5e1cee` |
| 3 | `theorem` | [toNNReal_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/tonnreal-prod--4285dde4b373264d22a77ef8.md) | 44 | `result-track:4285dde4b373264d22a77ef8c522b89b00abf7cae027b0c0134b3394ad035607` |
| 4 | `theorem` | [toReal_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/toreal-prod--942679dbf9e2cc7916c7ffe3.md) | 49 | `result-track:942679dbf9e2cc7916c7ffe347122e5526bbebe80ecfcac6bc15d1bcaad1e21b` |
| 5 | `theorem` | [ofReal_prod_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/ofreal-prod-of-nonneg--537d7be309ef267017b947f1.md) | 53 | `result-track:537d7be309ef267017b947f1c0551df6b961e27b6f8d6b9690b2d23d8ca9dbfd` |
| 6 | `theorem` | [iInf_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/iinf-sum--b27d499bd29c215c2eedc5b0.md) | 58 | `result-track:b27d499bd29c215c2eedc5b037bde1e46917dd3f992058a80fcf2786998f6a0a` |
| 7 | `lemma` | [prod_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/prod-ne-top--afb4169723098c77aa966208.md) | 78 | `result-track:afb4169723098c77aa96620852977a9268104fc9a905f8b78ad1adec4f26ec33` |
| 8 | `lemma` | [prod_lt_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/prod-lt-top--7c6459827ae4b17dd4cc984d.md) | 81 | `result-track:7c6459827ae4b17dd4cc984d36453b372c1cce5e413d3b3c5ed94d2517ace1ed` |
| 9 | `lemma` | [sum_eq_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/sum-eq-top--d9aea30cf26cd095c365b017.md) | 84 | `result-track:d9aea30cf26cd095c365b017a5f29fb76add837be7c84a8f083cba6a99ffe860` |
| 10 | `lemma` | [sum_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/sum-ne-top--f45ff22d0d74cdc94c69b739.md) | 87 | `result-track:f45ff22d0d74cdc94c69b7399e1574f511be2f519a08f97aa48d027a1a126e9e` |
| 11 | `lemma` | [sum_lt_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/sum-lt-top--3a262e389710ce7e2fe6d267.md) | 90 | `result-track:3a262e389710ce7e2fe6d2670996b3f5dc6246dc9e00be448a0d0c3379f6f597` |
| 12 | `theorem` | [lt_top_of_sum_ne_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/lt-top-of-sum-ne-top--0695583c53bcc01f5b088788.md) | 92 | `result-track:0695583c53bcc01f5b088788a92ae44186b44a355140f2dfc210205db76e6bf4` |
| 13 | `theorem` | [toNNReal_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/tonnreal-sum--39d6855fd056c23809154619.md) | 98 | `result-track:39d6855fd056c238091546199a70fc43f605de5f75b4bcd5f7b5367ef5b3cf7a` |
| 14 | `theorem` | [toReal_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/toreal-sum--32be60ce5f5591b9d292410f.md) | 106 | `result-track:32be60ce5f5591b9d292410fb50edeaa0f78d480b1776767d922fc68e3a37c1e` |
| 15 | `theorem` | [ofReal_sum_of_nonneg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/ofreal-sum-of-nonneg--f190a077ecf8cd4d2350d0ed.md) | 111 | `result-track:f190a077ecf8cd4d2350d0ed8c2c6ff10cbbdfbb06f2b68e312756141d1f8351` |
| 16 | `theorem` | [sum_lt_sum_of_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/sum-lt-sum-of-nonempty--457b0c7526da76dc23e26570.md) | 116 | `result-track:457b0c7526da76dc23e265708150a9ddd65ff96a78613071c1a22a294b0a1a9f` |
| 17 | `theorem` | [exists_le_of_sum_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/exists-le-of-sum-le--a7f4ef3f9f4da458198cf554.md) | 124 | `result-track:a7f4ef3f9f4da458198cf5546b6e34da1f658b58329fbd2915aece806b08fc80` |
| 18 | `lemma` | [prod_inv_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/prod-inv-distrib--bde49d154f899d5d5781fb20.md) | 133 | `result-track:bde49d154f899d5d5781fb20595f8bafe8e84e9fb9755025c07a302070631072` |
| 19 | `lemma` | [finsetSum_iSup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/finsetsum-isup--a5282d37e8607061f8d4055d.md) | 143 | `result-track:a5282d37e8607061f8d4055d3c331c238785d6e2ffff368ca784867e3fd7e19f` |
| 20 | `lemma` | [finsetSum_iSup_of_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/BigOperators/Variant8560bbb3dbca4aea85a3c04f4e9dd46c55a30e6e5798f5c5c3364be423936ccf.lean/declarations/finsetsum-isup-of-monotone--16b6fdb63d17de5d38d5e919.md) | 153 | `result-track:16b6fdb63d17de5d38d5e9196e1c24adf77c18db3a64b60a221a2454985ef849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
