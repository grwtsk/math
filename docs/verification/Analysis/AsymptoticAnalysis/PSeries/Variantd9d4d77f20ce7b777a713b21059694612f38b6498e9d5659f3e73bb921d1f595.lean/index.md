# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.PSeries.Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4bb5bb9bfa696fafa8776e4f41dbd7c12a8948b0",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4bb5bb9bfa696fafa8776e4f41dbd7c12a8948b0`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.FiniteDimension` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [SuccDiffBounded](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/succdiffbounded--f9587f44fd356909a863d7df.md) | 47 | `declaration-track:f9587f44fd356909a863d7dffb16185dfb451d66a257dfd2c6fc4fa2bee5e67c` |
| 2 | `theorem` | [le_sum_schlomilch'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/le-sum-schlomilch--8022209eefc48ad0625c583f.md) | 55 | `result-track:8022209eefc48ad0625c583f2e933b9416dfffbea4d6e5e448c291f8c3117568` |
| 3 | `theorem` | [le_sum_condensed'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/le-sum-condensed--701fb94fd972e89e7a90a156.md) | 70 | `result-track:701fb94fd972e89e7a90a15651ce69619cdfb2bab754e6facfe1a4a7de6d374a` |
| 4 | `theorem` | [le_sum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/le-sum-schlomilch--8f393975a3d5c275cb5b15af.md) | 77 | `result-track:8f393975a3d5c275cb5b15af650e90b0fbb8f9365d05c8c365a81796f0460076` |
| 5 | `theorem` | [le_sum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/le-sum-condensed--32f6b6b57a97b007dd3bc982.md) | 83 | `result-track:32f6b6b57a97b007dd3bc982860e1150959894fe8946379ae21ea7a2a52f78fd` |
| 6 | `theorem` | [sum_schlomilch_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/sum-schlomilch-le--8da5e3b24f1ff6a2b1a737a4.md) | 88 | `result-track:8da5e3b24f1ff6a2b1a737a4b61583bf6d041c6e6bef1ffb5f827171097f3142` |
| 7 | `theorem` | [sum_condensed_le'](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/sum-condensed-le--6eca88211feafb0014fe9afb.md) | 105 | `result-track:6eca88211feafb0014fe9afb8e5afd227b9c4c72acae5069b941a08902a84b94` |
| 8 | `theorem` | [sum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/sum-schlomilch-le--4cb5c9cafa546843f6320e6b.md) | 112 | `result-track:4cb5c9cafa546843f6320e6b2062e82cfc25e19c00431ccef2c77c8e9e6a12d5` |
| 9 | `theorem` | [sum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/sum-condensed-le--481d39320c26901c3dcbe6e9.md) | 132 | `result-track:481d39320c26901c3dcbe6e9f6f02d6cf76e01c05b3a127fa70e0dc96f9ff309` |
| 10 | `theorem` | [le_tsum_schlomilch](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/le-tsum-schlomilch--83d26af69abd2b7f84b91491.md) | 146 | `result-track:83d26af69abd2b7f84b9149131632dbee39ddcf68328031e067f044fc3cf8d8d` |
| 11 | `theorem` | [le_tsum_condensed](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/le-tsum-condensed--eac4b9b1a430ea8583bd06c5.md) | 157 | `result-track:eac4b9b1a430ea8583bd06c55331d340b28d3c9fd74e10169854e21d895ad847` |
| 12 | `theorem` | [tsum_schlomilch_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/tsum-schlomilch-le--7fcb516613029f4a080abd9f.md) | 164 | `result-track:7fcb516613029f4a080abd9f439a13bb7a88cb8f0141aa461d532c0d8812da57` |
| 13 | `theorem` | [tsum_condensed_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/tsum-condensed-le--a1a6d76d39ed30be7c6379fb.md) | 172 | `result-track:a1a6d76d39ed30be7c6379fbb655e8b69585322337a4a716d1a034346a2472f2` |
| 14 | `theorem` | [summable_schlomilch_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-schlomilch-iff--29f2b7220c2a85ea83589c52.md) | 187 | `result-track:29f2b7220c2a85ea83589c520ea9fc48816e9b16b17dd5573394ee90bb48df08` |
| 15 | `theorem` | [summable_condensed_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-condensed-iff--b029a2b18d584a4a766ce7ac.md) | 206 | `result-track:b029a2b18d584a4a766ce7ace6cd825d1ceecab5028b6013d28634993732e928` |
| 16 | `theorem` | [summable_schlomilch_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-schlomilch-iff-of-nonneg--be240d941f6f81fddf46c5ab.md) | 220 | `result-track:be240d941f6f81fddf46c5ab5abeacd3bc2bf87f9364b72967771d8ef475d877` |
| 17 | `theorem` | [summable_condensed_iff_of_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-condensed-iff-of-nonneg--826569566c61ab6f3a4306ab.md) | 233 | `result-track:826569566c61ab6f3a4306ab09234979b9cc55da7c84c463ffc2c65808103633` |
| 18 | `theorem` | [summable_condensed_iff_of_eventually_nonneg](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-condensed-iff-of-eventually-nonneg--4abd1025e299880034123208.md) | 245 | `result-track:4abd1025e29988003412320851b786880c68eef1a8b7a99748ae97330a5e2476` |
| 19 | `theorem` | [summable_nat_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-nat-rpow-inv--f1280545b70064c803082f98.md) | 280 | `result-track:f1280545b70064c803082f989392ea2122c56742fce8f32b41d0b1bb0ebbe9bf` |
| 20 | `theorem` | [summable_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-nat-rpow--28958572da4d215216395d56.md) | 311 | `result-track:28958572da4d215216395d56c2a7e83d3a6eb4472cd0c2fbd8c1c0dc7222b555` |
| 21 | `theorem` | [summable_one_div_nat_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-one-div-nat-rpow--81c67d3d00631e8f1bde6733.md) | 317 | `result-track:81c67d3d00631e8f1bde6733141545c537e3bf31b3170a8e3264fc1eeb2c6387` |
| 22 | `theorem` | [summable_nat_pow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-nat-pow-inv--a75902ed70bbb3d90e213a75.md) | 324 | `result-track:a75902ed70bbb3d90e213a7536c0c1b06cf3826f4cc072329f5caaada92617fb` |
| 23 | `theorem` | [summable_one_div_nat_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-one-div-nat-pow--36dae1d6a9522287f8c28c22.md) | 330 | `result-track:36dae1d6a9522287f8c28c22f0243eaa3d7e9f4872628a3bb971fb0b6430ad06` |
| 24 | `theorem` | [summable_one_div_int_pow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-one-div-int-pow--e3d6fe3f5be700d578c22e18.md) | 335 | `result-track:e3d6fe3f5be700d578c22e185e1691edaf14108ad6e62ce9886c5f90730a011e` |
| 25 | `theorem` | [summable_abs_int_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-abs-int-rpow--84cb085e37168edd3d344377.md) | 342 | `result-track:84cb085e37168edd3d344377dc4bdc063b41fb9082960e928568960fbf626e45` |
| 26 | `theorem` | [not_summable_natCast_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/not-summable-natcast-inv--7bb45f0ed9b43bdea0ff3448.md) | 351 | `result-track:7bb45f0ed9b43bdea0ff3448458c9a79b16cd0b1a3cc717d363bc74649b2561c` |
| 27 | `theorem` | [not_summable_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/not-summable-one-div-natcast--7060843bed11a01fd85978bf.md) | 357 | `result-track:7060843bed11a01fd85978bfb4b1ad23538623d054c2403298cf6e64097d2854` |
| 28 | `theorem` | [tendsto_sum_range_one_div_nat_succ_atTop](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/tendsto-sum-range-one-div-nat-succ-attop--7c23eda4bb8e2504868603fd.md) | 361 | `result-track:7c23eda4bb8e2504868603fd54bfb4c23282bed710b172b45fae542fd166b4d1` |
| 29 | `theorem` | [summable_rpow_inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-rpow-inv--e8ae02a4764325b5e44a691b.md) | 372 | `result-track:e8ae02a4764325b5e44a691b247d57bf20da241eea3980d1d6b762a79cfdd695` |
| 30 | `theorem` | [summable_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-rpow--fc23b2476b2bd3c9ca345609.md) | 377 | `result-track:fc23b2476b2bd3c9ca345609bb9ed8dd157dd682fa5edbdf1cc7eb108fdc9260` |
| 31 | `theorem` | [summable_one_div_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-one-div-rpow--63cac7313e9142b2af7f944e.md) | 380 | `result-track:63cac7313e9142b2af7f944e15ff77a063e3f779b0f303785ca3d99173d65792` |
| 32 | `theorem` | [sum_Ioc_inv_sq_le_sub](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/sum-ioc-inv-sq-le-sub--db300d8aec7e40f885e3df57.md) | 394 | `result-track:db300d8aec7e40f885e3df575a4cbd1e9135869fed5413eb95f5900afb9f6870` |
| 33 | `theorem` | [sum_Ioo_inv_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/sum-ioo-inv-sq-le--da548f3c9922814cb60a2a4c.md) | 406 | `result-track:da548f3c9922814cb60a2a4c6988e010d060b727c15b647c0c0523efec95a270` |
| 34 | `lemma` | [Real.not_summable_indicator_one_div_natCast](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/real-not-summable-indicator-one-div-natcast--c4f4156c9936316113ea5543.md) | 435 | `result-track:c4f4156c9936316113ea554380006633ece1cccada17cc8bb69a0e4570831b56` |
| 35 | `lemma` | [Real.summable_one_div_nat_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/real-summable-one-div-nat-add-rpow--a0b97bfe71bfcd87a69f426a.md) | 453 | `result-track:a0b97bfe71bfcd87a69f426ad2716457e17a4cb037823088dde8533cb2e0e137` |
| 36 | `lemma` | [Real.summable_one_div_int_add_rpow](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/real-summable-one-div-int-add-rpow--788d4594c786b1988a1dce81.md) | 465 | `result-track:788d4594c786b1988a1dce81072730073b7b3276b5ad9de938cbf3ff71e871e9` |
| 37 | `theorem` | [summable_pow_div_add](../../../../../mathematics/Analysis/AsymptoticAnalysis/PSeries/Variantd9d4d77f20ce7b777a713b21059694612f38b6498e9d5659f3e73bb921d1f595.lean/declarations/summable-pow-div-add--414f54f578608d667b790582.md) | 470 | `result-track:414f54f578608d667b790582fab4419552ce5ccb051bfa8e332cd1abc3a18cac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
