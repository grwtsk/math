# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Real.Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6e2b1c66fea5961a2830d1176a64251c0195761",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6e2b1c66fea5961a2830d1176a64251c0195761`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.ENNReal.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cauchySeq_of_dist_le_of_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/cauchyseq-of-dist-le-of-summable--e9acd88f4b5440f1f9356106.md) | 23 | `result-track:e9acd88f4b5440f1f93561064c63d17a5e11772dbde737701fa4afe9bbb5d22f` |
| 2 | `theorem` | [cauchySeq_of_summable_dist](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/cauchyseq-of-summable-dist--fa5b9f98c74ac8817ddeabba.md) | 30 | `result-track:fa5b9f98c74ac8817ddeabbaf41a6d1a108c311401851f87eeef106a0afe9cfc` |
| 3 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto--d17879e1d5d53b51b933452b.md) | 33 | `result-track:d17879e1d5d53b51b933452b8889683b6e0383fe295b5f995c17d9e29ad9a390` |
| 4 | `theorem` | [dist_le_tsum_of_dist_le_of_tendsto₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/dist-le-tsum-of-dist-le-of-tendsto--4aaaa3680655357e9e43b437.md) | 42 | `result-track:4aaaa3680655357e9e43b43728bf4e2e6257a0529363891c9fa1c0c59b082bdf` |
| 5 | `theorem` | [dist_le_tsum_dist_of_tendsto](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/dist-le-tsum-dist-of-tendsto--739ea44e50ee0220b46fb126.md) | 46 | `result-track:739ea44e50ee0220b46fb126a10bef0b11ae60203561c3588fe5b3dcd1a209c7` |
| 6 | `theorem` | [dist_le_tsum_dist_of_tendsto₀](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/dist-le-tsum-dist-of-tendsto--049bf33e18f1ffd912d20634.md) | 51 | `result-track:049bf33e18f1ffd912d20634b8625508d8da80952730f20a33f9463af4c5133f` |
| 7 | `theorem` | [not_summable_iff_tendsto_nat_atTop_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/not-summable-iff-tendsto-nat-attop-of-nonneg--952094f1329f585868a0e3b2.md) | 57 | `result-track:952094f1329f585868a0e3b23a68939148b62aae7a4028bf6fa3a12b609bcb80` |
| 8 | `theorem` | [summable_iff_not_tendsto_nat_atTop_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/summable-iff-not-tendsto-nat-attop-of-nonneg--05bf16f77c1f3f7bb31fe6bf.md) | 62 | `result-track:05bf16f77c1f3f7bb31fe6bfbf93dc0220e53aec7395fbcf91d31987f410d14a` |
| 9 | `theorem` | [summable_sigma_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/summable-sigma-of-nonneg--21c6253891ed08d6accd2b3d.md) | 66 | `result-track:21c6253891ed08d6accd2b3d04682acb75d3ca3ef6cdc63e76b86322d4392364` |
| 10 | `lemma` | [summable_partition](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/summable-partition--2376a70ec7d2563689c9bc0e.md) | 71 | `result-track:2376a70ec7d2563689c9bc0e0639f19cf941bd36181158068942d64963505a15` |
| 11 | `theorem` | [summable_prod_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/summable-prod-of-nonneg--fdb7a625b1b19e16dd3e1e02.md) | 76 | `result-track:fdb7a625b1b19e16dd3e1e02c801d3df9ec2db33586d95dbe4f7dee421924508` |
| 12 | `theorem` | [summable_of_sum_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/summable-of-sum-le--b6c86aab828d4b4e3a51fc55.md) | 80 | `result-track:b6c86aab828d4b4e3a51fc555fdf0b6335f65882115144d04906aced742822fe` |
| 13 | `theorem` | [summable_of_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/summable-of-sum-range-le--f7acf696d46b57143f0a6c12.md) | 85 | `result-track:f7acf696d46b57143f0a6c12954522fca91114c643d3cc672025b7fd90bff77a` |
| 14 | `theorem` | [Real.tsum_le_of_sum_range_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/real-tsum-le-of-sum-range-le--e8b3678444e952c39a16de68.md) | 91 | `result-track:e8b3678444e952c39a16de6826b1538843d60f5aad74070283c613cc0ede9925` |
| 15 | `theorem` | [Summable.tsum_lt_tsum_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Real/Variantded5a241f6825a76fd028405d602d7af137674c45b9583548833ed69b13ca057.lean/declarations/summable-tsum-lt-tsum-of-nonneg--c5cbbea3910fc055b4444f7e.md) | 98 | `result-track:c5cbbea3910fc055b4444f7e44e9cfc9d7a1757aa7141d5dc9d965f067c9fae9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
