# Verification target: GRWTSK.Topology.GeneralTopology.Attempt03.Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae069874ba2d8415d4f9b6a00d2d82e27e58f628",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae069874ba2d8415d4f9b6a00d2d82e27e58f628`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticInterceptFinite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Monotone` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient--5a70226748b4061bc783050c.md) | 25 | `declaration-track:5a70226748b4061bc783050c6f2bdc19097420d5df8d222666f3f0efdb80629f` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/stieltjessequence--ec8eec3daae38812910dc560.md) | 27 | `declaration-track:ec8eec3daae38812910dc5603e27ffa955fc20fa6e925a24664fd0a3842b281d` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lowersequence--b0df131fc72b36fe7c51f83d.md) | 30 | `declaration-track:b0df131fc72b36fe7c51f83dc60962d4ce1bfa9b0746eb87d99af9fe242f96e7` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/firststieltjesconstant--5a447618c2ec076c0ff55dd1.md) | 32 | `declaration-track:5a447618c2ec076c0ff55dd160cf7a8c4bca05878d1e0cf0f34f299886c3ae24` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-nonneg--e28014491e7c31b8e22d581b.md) | 34 | `result-track:e28014491e7c31b8e22d581b9cbd8e2237662d86a0a7d1cd68c1a3b94403512a` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-antitone--7d64b96e8b582199485c6e4e.md) | 37 | `result-track:7d64b96e8b582199485c6e4e7c4da9540cfa5a8f50fccfc4d518fc7b6123f4f9` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-continuouson--5e53636407634784498a7574.md) | 45 | `result-track:5e53636407634784498a75741c84fb1676adb0adb3b2bc7e9cf40ab65b055dc5` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-intervalintegrable--5c01705c2ec749f3c7475652.md) | 51 | `result-track:5c01705c2ec749f3c747565271daf50b1339801b226ba83a1c87cce404d2054c` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-integral--b001869bbd990be3c0872552.md) | 61 | `result-track:b001869bbd990be3c0872552578163b0ea0ab2b7ffbc1d390658b11dfbe552b5` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/stieltjessequence-succ--6056e639e56c3d13a236dfcd.md) | 76 | `result-track:6056e639e56c3d13a236dfcd2b31eff82f3ea01c942aa63beb7835f9d8e137fa` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-cell-lower--f933578a57021319b6666c16.md) | 86 | `result-track:f933578a57021319b6666c164e9a2291a7b9175e56a704d4b172dc48ec72ad79` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-cell-upper--af6643b12cb3a1cc7b1cd8a2.md) | 92 | `result-track:af6643b12cb3a1cc7b1cd8a2f44b20880664817eef99800da8b48db8c006d482` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/stieltjessequence-succ-le--036328493c9e387b009f69f0.md) | 98 | `result-track:036328493c9e387b009f69f005a9e5d37f8c867cf1d34e86ef771346ee77584d` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lowersequence-le-succ--651c7521cde2bcfe7f2c604f.md) | 104 | `result-track:651c7521cde2bcfe7f2c604faa439319f8023081d20e6ce91c0cab56ac60f04d` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/stieltjes-tail-antitone--8911f0bacdc49f62aa60e41d.md) | 112 | `result-track:8911f0bacdc49f62aa60e41dbb2fe7ee2c9b68b4fb73c76a2686ae917a012732` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lower-tail-monotone--604d0c0a82fd873f7884b5de.md) | 118 | `result-track:604d0c0a82fd873f7884b5ded9c52954d3bed5b84985f21158c3020aa7b2fb5b` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lowersequence-four--5459151c734e88f2b006d485.md) | 124 | `result-track:5459151c734e88f2b006d485b7522359b2c030b774bd3c75a4a3991707bf5f12` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lower-four-le-stieltjes-tail--bb69160f1888f01a9d608894.md) | 132 | `result-track:bb69160f1888f01a9d60889490c3f5aa46206d357a98576b08af5ae6fec1b297` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/stieltjes-tail-bddbelow--c7a332ec17ad5ece81257497.md) | 141 | `result-track:c7a332ec17ad5ece81257497ead4f0cdea3c8875217e1cbeee1f7333a375707e` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/tendsto-stieltjes-tail--ce5df4d59d9de93a008aab33.md) | 146 | `result-track:ce5df4d59d9de93a008aab334b2bb4e97e36a7a13861305cfc68a3a54dbef4ba` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/tendsto-stieltjessequence--1fa1201ede97fe50bf8faa52.md) | 150 | `result-track:1fa1201ede97fe50bf8faa52fc43a446af6707388630308bd1b6b3850a48151d` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lower-four-le-firststieltjesconstant--dd7e3a77ce2ae9488936a8f4.md) | 154 | `result-track:dd7e3a77ce2ae9488936a8f4a2ba3fe374279f2635129341a4692608133b571e` |
| 23 | `theorem` | [firstStieltjesConstant_le_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/firststieltjesconstant-le-stieltjessequence--4aafe32f3d3a91e6bd1bf9f0.md) | 157 | `result-track:4aafe32f3d3a91e6bd1bf9f025b5e58413ad3dfef7aae30983c25e0f3bb68ad2` |
| 24 | `theorem` | [logQuotient_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/logquotient-tendsto-zero--9e0228da761e9b0b5905e7e3.md) | 162 | `result-track:9e0228da761e9b0b5905e7e33de1c39aa7e1c6f80c717edb29e219818cc73782` |
| 25 | `theorem` | [lowerSequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lowersequence-tendsto--7182508fc59a0bf64aaab519.md) | 167 | `result-track:7182508fc59a0bf64aaab51977b8365b34463f7d06a1f2f4f79e854038c0eb42` |
| 26 | `theorem` | [lowerSequence_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/lowersequence-le-firststieltjesconstant--154fa4faae44efa9418e4f51.md) | 170 | `result-track:154fa4faae44efa9418e4f514dc4b5f6b787075be62602d352a95403049e224e` |
| 27 | `theorem` | [firstStieltjesConstant_enclosure](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/firststieltjesconstant-enclosure--9f05c084d14659ec845f4977.md) | 178 | `result-track:9f05c084d14659ec845f49778db227f7d9ef0fc767c6f0df7949ba398d4490b6` |
| 28 | `theorem` | [firstStieltjesConstant_gt_neg_249](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/firststieltjesconstant-gt-neg-249--cfde17e3af9b11ce3a66c038.md) | 184 | `result-track:cfde17e3af9b11ce3a66c038781ad1d51801175ac8456fc66717e5ec9fc4eaef` |
| 29 | `theorem` | [intercept_gt_one_five_hundred](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/intercept-gt-one-five-hundred--d3e309e31875db45170dcd6c.md) | 189 | `result-track:d3e309e31875db45170dcd6c2a02d332c4e302a7f00eb81b115b7974c3ef7982` |
| 30 | `theorem` | [stieltjesSequence_limit_unique](../../../../../mathematics/Topology/GeneralTopology/Attempt03/Variant4b5bce297e67c3165ae3d94698f7a314bbb7c1c6cebb66161870aa0af72a5ea1.lean/declarations/stieltjessequence-limit-unique--61a589c9d9b80b3303cf7187.md) | 193 | `result-track:61a589c9d9b80b3303cf7187fd9e705b497f5ccc5e4c82a249fbeb78d401bf13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
