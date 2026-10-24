# Verification target: GRWTSK.Topology.GeneralTopology.Attempt02.Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e50f6bba737218702b50c791dc0b41f71937b5c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e50f6bba737218702b50c791dc0b41f71937b5c`.

Source path: `GRWTSK/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean.json)

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
| 1 | `def` | [logQuotient](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient--d9c3ebb3cb2dcf3e1b049d9e.md) | 25 | `declaration-track:d9c3ebb3cb2dcf3e1b049d9efb5c5a72fc8784043a7ec3fe5981fcea03f15934` |
| 2 | `def` | [stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/stieltjessequence--b1333bdbfad8b1963a5e9334.md) | 27 | `declaration-track:b1333bdbfad8b1963a5e9334f95392a1b499c4771f469d97ab8e22c87f62c2f1` |
| 3 | `def` | [lowerSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/lowersequence--339ba47feac493406889e8b7.md) | 30 | `declaration-track:339ba47feac493406889e8b7776dbb700409b1d8e226cc7f0a0108fb7e21ae3e` |
| 4 | `def` | [firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/firststieltjesconstant--ba547dad3c89c2d6399d259a.md) | 32 | `declaration-track:ba547dad3c89c2d6399d259a200babdbc5e97d51f79926c44d030e4561aff906` |
| 5 | `theorem` | [logQuotient_nonneg](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient-nonneg--f751830b42c9532e28e9cf2f.md) | 34 | `result-track:f751830b42c9532e28e9cf2f99766be0ca4cc31737304e78fd0f83da250ce75c` |
| 6 | `theorem` | [logQuotient_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient-antitone--fad2467cbb9fe99b6cb65854.md) | 37 | `result-track:fad2467cbb9fe99b6cb65854fba64577d173e128db5b977aa84c8d8d2a2fd1b8` |
| 7 | `theorem` | [logQuotient_continuousOn](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient-continuouson--740a1021d9a54e33079ce7bd.md) | 45 | `result-track:740a1021d9a54e33079ce7bdb281cf09727c1fb04f1949a8cef21d78e84f6ec0` |
| 8 | `theorem` | [logQuotient_intervalIntegrable](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient-intervalintegrable--ebc5d2649bf408f27e77acc5.md) | 51 | `result-track:ebc5d2649bf408f27e77acc53f51217e59072baa51062010adb44a4c15b1306a` |
| 9 | `theorem` | [logQuotient_integral](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient-integral--7c107ae0cf8efe675ff09ffa.md) | 61 | `result-track:7c107ae0cf8efe675ff09ffad8c20d3e19e34b1f3ad19759afc383a6297b5a6d` |
| 10 | `theorem` | [stieltjesSequence_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/stieltjessequence-succ--51af8e854c62f806421140ac.md) | 76 | `result-track:51af8e854c62f806421140acf450afae169f932533ece10a57f7777ad8a1b04a` |
| 11 | `theorem` | [logQuotient_cell_lower](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient-cell-lower--27905dae6caf3202f7b64498.md) | 86 | `result-track:27905dae6caf3202f7b64498f25bc20f7b319678437630c5feb0ea36b90e0a33` |
| 12 | `theorem` | [logQuotient_cell_upper](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/logquotient-cell-upper--3230256fac2742b40fc044f4.md) | 92 | `result-track:3230256fac2742b40fc044f4ef097795966a472caa5a6cae1b6bb9aba6a11c96` |
| 13 | `theorem` | [stieltjesSequence_succ_le](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/stieltjessequence-succ-le--12790ba6a9ec7a6b3d11da01.md) | 98 | `result-track:12790ba6a9ec7a6b3d11da015fde297fc7ec684acceec483405e9a3499d8d2d0` |
| 14 | `theorem` | [lowerSequence_le_succ](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/lowersequence-le-succ--4e35d60eb9384b29acfade37.md) | 104 | `result-track:4e35d60eb9384b29acfade370a48af0326181882dcf6c056d9a1a6790282c79f` |
| 15 | `theorem` | [stieltjes_tail_antitone](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/stieltjes-tail-antitone--966e9f8577e4d5c8db0bffe2.md) | 112 | `result-track:966e9f8577e4d5c8db0bffe2c45caa4e42c84f75055cc74d12b3d5d1582910a1` |
| 16 | `theorem` | [lower_tail_monotone](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/lower-tail-monotone--f339a5726c282c5451b90711.md) | 118 | `result-track:f339a5726c282c5451b90711a32f2d0d4093322131680698baf7dc83651a517b` |
| 17 | `theorem` | [lowerSequence_four](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/lowersequence-four--41412288b6522c6eaa4e97af.md) | 124 | `result-track:41412288b6522c6eaa4e97af6f3749fcf0988bfc9c64ec7909f34005ab582716` |
| 18 | `theorem` | [lower_four_le_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/lower-four-le-stieltjes-tail--7e227661769fa00c77ebfbd8.md) | 132 | `result-track:7e227661769fa00c77ebfbd8977c276908e82374ab7b88e75f278d0091cebaa5` |
| 19 | `theorem` | [stieltjes_tail_bddBelow](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/stieltjes-tail-bddbelow--3e35cfe7ff7cf1675ba7161e.md) | 140 | `result-track:3e35cfe7ff7cf1675ba7161e25c6ef417680b66d95d42339397105ed625d27d7` |
| 20 | `theorem` | [tendsto_stieltjes_tail](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/tendsto-stieltjes-tail--bf603c77624a7d5f6a14bf65.md) | 145 | `result-track:bf603c77624a7d5f6a14bf659865111ad915fc617f385477e57ba131f77c39a0` |
| 21 | `theorem` | [tendsto_stieltjesSequence](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/tendsto-stieltjessequence--317959f550d8f9570b13499c.md) | 149 | `result-track:317959f550d8f9570b13499c63aed1fa6d666645759dad7b7dc7dbdd49fedd4c` |
| 22 | `theorem` | [lower_four_le_firstStieltjesConstant](../../../../../mathematics/Topology/GeneralTopology/Attempt02/Variant8a061b0d6b37aab2ca502abbc47667cfc42b6d5b19d37304890e45f470c9bc84.lean/declarations/lower-four-le-firststieltjesconstant--4a12a7d80a71fdd18198488d.md) | 153 | `result-track:4a12a7d80a71fdd18198488d3053f818e4aa5401f14606a26b21c9b8ef9a496a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
