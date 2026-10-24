# Verification target: GRWTSK.Topology.GeneralTopology.ActualFirstStieltjes.Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af7dde4762b69aac4db1925dbd71d37aebcb0da5",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af7dde4762b69aac4db1925dbd71d37aebcb0da5`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean.json)

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
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient--e32eac3dce8688c5f517e802.md) | 25 | `declaration-track:e32eac3dce8688c5f517e802d599882c7624635f3dc12cff41265b98c16b3784` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/stieltjessequence--5fa0068cfa8f930ca8e2eac6.md) | 27 | `declaration-track:5fa0068cfa8f930ca8e2eac6a646567b1aebe8476c46a6757ec9f20a1fe16e6e` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lowersequence--7c82a2e8f716830c4fbc19a1.md) | 30 | `declaration-track:7c82a2e8f716830c4fbc19a164f951794a1ba891711fb893affabe7740189233` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/firststieltjesconstant--749f377744c39b332e7e9a67.md) | 32 | `declaration-track:749f377744c39b332e7e9a6706c12ba20f23424acd813d2d6089ec76a95d954b` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-nonneg--b31dc5b8af594c795b7a2a6e.md) | 34 | `result-track:b31dc5b8af594c795b7a2a6e427178558741b0ad4c85b4d0a88959dfda4028d5` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-antitone--a2992446c0e9ea889159f4a3.md) | 37 | `result-track:a2992446c0e9ea889159f4a3bd5f79b4bbfdd83b29c081fad5ed634d1c5f0a57` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-continuouson--8d54004d36958b937df4939e.md) | 45 | `result-track:8d54004d36958b937df4939eecaacccba32ecf9fae3d0bb504c3549a0db964f7` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-intervalintegrable--fd37378868aba85f15afc636.md) | 51 | `result-track:fd37378868aba85f15afc636da01804379533d6cf79781e89d56003469878389` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-integral--a22d31b5ababdf55ad98b27d.md) | 61 | `result-track:a22d31b5ababdf55ad98b27d0d41bb2765f0d4ee9fd5d267d621c9e76d1b89ba` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/stieltjessequence-succ--d92fb5b07ce633526972e450.md) | 76 | `result-track:d92fb5b07ce633526972e4501c3f6272a1f45ee63e34c0cdac32288b71d54640` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-cell-lower--85783900e50b7e1f0a018bf2.md) | 86 | `result-track:85783900e50b7e1f0a018bf2b69c9ac410324c107de4da32ee3516ca8066144b` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-cell-upper--8590a05bf4f3b2deb25d88c6.md) | 92 | `result-track:8590a05bf4f3b2deb25d88c62ba62b92af051d0d03a51f1b34558602357ac2d7` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/stieltjessequence-succ-le--bab01b7d0d9bbf0bbc00d3dc.md) | 98 | `result-track:bab01b7d0d9bbf0bbc00d3dcfc39c13f3636cba917489be1e311b5e3149be68f` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lowersequence-le-succ--9272a2afac116cdbd8905d7e.md) | 104 | `result-track:9272a2afac116cdbd8905d7e6e2a49cc5b3a8c501350e30796b7974ba8cfa9e5` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/stieltjes-tail-antitone--70607c7c36eecbc5e6fd4c18.md) | 112 | `result-track:70607c7c36eecbc5e6fd4c18451e2550c8bedaa23621733aaaa90c95de7505f7` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lower-tail-monotone--e75d8d860a0f323fcb4db3a5.md) | 118 | `result-track:e75d8d860a0f323fcb4db3a567c726183b140aef19983ebfdafa5f483771945c` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lowersequence-four--6f97eb5afc2ef8177b5ad682.md) | 124 | `result-track:6f97eb5afc2ef8177b5ad6829c7fa8de7197bf51957d904906dda83dd69a52b5` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lower-four-le-stieltjes-tail--b5ede42604e44db7c7200ab6.md) | 132 | `result-track:b5ede42604e44db7c7200ab6ef66c08fde5cec7d8ca25e38c6b6934b973d6660` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/stieltjes-tail-bddbelow--c0bf744bea81cf92f00e6554.md) | 141 | `result-track:c0bf744bea81cf92f00e6554a21b2b6cba7414d4749365b475c5748717431507` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/tendsto-stieltjes-tail--49d0b18705e281e66a82049f.md) | 146 | `result-track:49d0b18705e281e66a82049f7c32213d2ef517be201f8ca4387e25329159f55c` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/tendsto-stieltjessequence--ad73a7f2dc4612c150b6d3bb.md) | 150 | `result-track:ad73a7f2dc4612c150b6d3bb3e1642f3c5be27b947cdee6934fef5c9b63c1b8a` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lower-four-le-firststieltjesconstant--c05e6d072319a8b2bcc8fc40.md) | 154 | `result-track:c05e6d072319a8b2bcc8fc404a366353da70c0a6ce1b96fa4f24fc517b9d1bc4` |
| 23 | `theorem` | [firstStieltjesConstant_le_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/firststieltjesconstant-le-stieltjessequence--9388ee98a7ba12caddfc6ad6.md) | 157 | `result-track:9388ee98a7ba12caddfc6ad61fcbeac44a7d34fb6da39c872b2a8bad8320fec6` |
| 24 | `theorem` | [logQuotient_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/logquotient-tendsto-zero--4727c4c72336cd03c3f64fb2.md) | 162 | `result-track:4727c4c72336cd03c3f64fb2cf4e449c605b834d2a560b381af8942e9a241318` |
| 25 | `theorem` | [lowerSequence_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lowersequence-tendsto--a99bbb00487f36b3ca15e0b8.md) | 167 | `result-track:a99bbb00487f36b3ca15e0b86647d3224bd6101e1072cf3765d2b15c6680a591` |
| 26 | `theorem` | [lowerSequence_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/lowersequence-le-firststieltjesconstant--4fcb624bb2b30d09723e4f8a.md) | 171 | `result-track:4fcb624bb2b30d09723e4f8a6cf1752c7445e9ee48aa2d057e1b67cac2800c4e` |
| 27 | `theorem` | [firstStieltjesConstant_enclosure](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/firststieltjesconstant-enclosure--a56e4992203f9938e986516f.md) | 179 | `result-track:a56e4992203f9938e986516f25509ee912e0fd84330ca71bbc30839145a818c1` |
| 28 | `theorem` | [firstStieltjesConstant_gt_neg_249](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/firststieltjesconstant-gt-neg-249--515e6fd2305d7345d6d598c5.md) | 185 | `result-track:515e6fd2305d7345d6d598c5da33ea12852aba8767b0925a7d57fdb3e652fe3e` |
| 29 | `theorem` | [intercept_gt_one_five_hundred](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/intercept-gt-one-five-hundred--e5895ca2c899fc18b5c0bbba.md) | 190 | `result-track:e5895ca2c899fc18b5c0bbbadba97caf9920bd33b608f6459ad30e57aae91e63` |
| 30 | `theorem` | [stieltjesSequence_limit_unique](../../../../../mathematics/Topology/GeneralTopology/ActualFirstStieltjes/Variant81c23081d30406e8a593561289ce5b228a631ddaabf50b4736d72befc82736cc.lean/declarations/stieltjessequence-limit-unique--974639b9d6430f1146cca1eb.md) | 195 | `result-track:974639b9d6430f1146cca1eb4125c9a193f4a239bedfcbab62d6c50f05514385` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
