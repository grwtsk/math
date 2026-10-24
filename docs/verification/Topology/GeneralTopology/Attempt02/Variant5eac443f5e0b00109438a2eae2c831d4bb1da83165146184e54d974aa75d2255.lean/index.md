# Verification target: GRWTSK.Topology.GeneralTopology.Attempt02.Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73257a70d761c6641abf20f75b2abe747238faf7",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73257a70d761c6641abf20f75b2abe747238faf7`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ArithmeticInterceptFinite` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Monotone` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.MonotoneConvergence` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient--a7b12ba3e934d66c1d3b9acd.md) | 17 | `declaration-track:a7b12ba3e934d66c1d3b9acdb20e7572db05000aad08cd94bdd6f4c0d9eeb094` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/stieltjessequence--c36c126aa9011523e618922b.md) | 19 | `declaration-track:c36c126aa9011523e618922b2e8f1ebdbce334da398f8cf4a52e3916f349de16` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/lowersequence--0297da53ae11c949b0b0e35e.md) | 22 | `declaration-track:0297da53ae11c949b0b0e35e00892ab2343a4f0da3410ec9f5add909491e8789` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/firststieltjesconstant--2ef0fe0057a20a7cb4728320.md) | 24 | `declaration-track:2ef0fe0057a20a7cb47283209a8ac57f5823323da560235116fe507028ea3f03` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient-nonneg--58330551d000d1973ff09a1a.md) | 26 | `result-track:58330551d000d1973ff09a1a995d60450def2764a1f1b01e409dd177bc0b166f` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient-antitone--64da067bd5368b5918a425ca.md) | 29 | `result-track:64da067bd5368b5918a425caf9e2f0fa90bd198b9b48601cb534a32a675f2dda` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient-continuouson--a97abf121b267e484542bb4d.md) | 37 | `result-track:a97abf121b267e484542bb4d04786a9de93e0144496aff9295b20105615cbbce` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient-intervalintegrable--a0535e0f83a4795d558e7e02.md) | 43 | `result-track:a0535e0f83a4795d558e7e027cb289fce47a1562e77e3ce4309dcb31b3ee2727` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient-integral--063fc8a74480f12f48b37a0b.md) | 53 | `result-track:063fc8a74480f12f48b37a0bc552405572a68d3c149d31535cb6d302f47c3a13` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/stieltjessequence-succ--7f585e6e6fb76db7adb22683.md) | 68 | `result-track:7f585e6e6fb76db7adb226836043ad73775158a63f5d67d4efe582abaf9a0705` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient-cell-lower--eeabec0e5817fd5f0d6afb85.md) | 78 | `result-track:eeabec0e5817fd5f0d6afb85f7caba3992b67e27eee516b0a58258ebc1285580` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/logquotient-cell-upper--3dfadc6cb04fb7ddf02db454.md) | 84 | `result-track:3dfadc6cb04fb7ddf02db4547284533909a6c7fe1245f06edbd802cc69343176` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/stieltjessequence-succ-le--c7bc02b4c19100785531ac5d.md) | 90 | `result-track:c7bc02b4c19100785531ac5db61ca29c8926d2a5d12b45886eacaa38176aa9b7` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/lowersequence-le-succ--8b27653ac545686d50d212fb.md) | 96 | `result-track:8b27653ac545686d50d212fbae5f8460253d1806dafda457443a2de7d3aff2ce` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/stieltjes-tail-antitone--63961ae918fab1bb8b684959.md) | 104 | `result-track:63961ae918fab1bb8b68495948d1621f6d085e0673442bb51405520e9a67a5e8` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/lower-tail-monotone--5abb362193a7aab53f751477.md) | 110 | `result-track:5abb362193a7aab53f751477863acf8eb034ea9246263a541e64a2f260689028` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/lowersequence-four--7d94a8fc053632f8ee167d40.md) | 116 | `result-track:7d94a8fc053632f8ee167d40140688b7886dc5c6ca41411fbe9fef1b850a2717` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/lower-four-le-stieltjes-tail--3d99c78f5d4d939e60847590.md) | 124 | `result-track:3d99c78f5d4d939e60847590a69c65986cc127a760c1fbd2b2946b3e151df797` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/stieltjes-tail-bddbelow--8cd680ae8fec93b436dafc06.md) | 132 | `result-track:8cd680ae8fec93b436dafc06cb42eebf6754ea91eaf8b392a361f854bf7d8557` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/tendsto-stieltjes-tail--90b78682c76db48cde10ebf6.md) | 137 | `result-track:90b78682c76db48cde10ebf6ae7aa451415e8158ab9aa1e03415cfa06b617bd2` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/tendsto-stieltjessequence--bc3c9cdc5e2331519d2dbc9d.md) | 141 | `result-track:bc3c9cdc5e2331519d2dbc9dae57f813032a4898e86f107726064c1a0e84d75d` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant5eac443f5e0b00109438a2eae2c831d4bb1da83165146184e54d974aa75d2255.lean/declarations/lower-four-le-firststieltjesconstant--4d2e4205d5a6f15919262872.md) | 145 | `result-track:4d2e4205d5a6f15919262872cdd9fa56b89c06297d6b82e5d1342bf83cca1d65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
