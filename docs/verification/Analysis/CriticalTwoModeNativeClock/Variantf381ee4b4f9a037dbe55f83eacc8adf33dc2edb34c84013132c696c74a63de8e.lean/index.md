# Verification target: GRWTSK.Analysis.CriticalTwoModeNativeClock.Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57b9f7b45df6d7ca9be24ef23aaedcd8b28d1531",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/index.md) · [Full source](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57b9f7b45df6d7ca9be24ef23aaedcd8b28d1531`.

Source path: `GRWTSK/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeRecordSequence` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.ENNReal` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nativeClock](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/nativeclock--5340ee7cc9f4c73922e74279.md) | 28 | `declaration-track:5340ee7cc9f4c73922e74279d70a04da1301f13689e8506d011a0c8e25a64d90` |
| 2 | `theorem` | [literal_native_clock_exact_integral](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-native-clock-exact-integral--755e61386f5392655ee0540f.md) | 31 | `result-track:755e61386f5392655ee0540fbcf6d9a4dcc357754d42ffdfb869fc444e856956` |
| 3 | `theorem` | [literal_native_clock_pos](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-native-clock-pos--f626ca27a2604bf1e951dd9e.md) | 47 | `result-track:f626ca27a2604bf1e951dd9e95df639ef4691a14c43e7a1c7332377c28f6c3db` |
| 4 | `theorem` | [literal_height_prefix_telescope](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-height-prefix-telescope--a0b51219da3fa5d45e58e6a2.md) | 55 | `result-track:a0b51219da3fa5d45e58e6a2f1d20c5314a6837fcb10d57ef4b6ce90dcde8879` |
| 5 | `theorem` | [literal_native_clock_prefix_telescope](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-native-clock-prefix-telescope--6a14497eb02cd27dee51b1c8.md) | 67 | `result-track:6a14497eb02cd27dee51b1c852f072b021e92788b7d8d77b1c7a5fecdd8425dc` |
| 6 | `theorem` | [literal_native_clock_prefix_le_remaining_width](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-native-clock-prefix-le-remaining-width--f430c39bd0b4917b3ad19b24.md) | 79 | `result-track:f430c39bd0b4917b3ad19b249c24bf816b6d185f47df8bb6632a3f3b2ab37464` |
| 7 | `theorem` | [literal_record_height_tail_has_sum](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-record-height-tail-has-sum--184c13160e2205642f4ea202.md) | 86 | `result-track:184c13160e2205642f4ea20205c1deb2e554f9a42b5ec090e97d3e4f7c7d8727` |
| 8 | `theorem` | [literal_native_endpoint_weight_tends_to_zero](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-native-endpoint-weight-tends-to-zero--a3b667820be3cc2f24c0e1be.md) | 97 | `result-track:a3b667820be3cc2f24c0e1bec6f50b721a82c220e67701b7c6da41db7a40605d` |
| 9 | `theorem` | [literal_native_clock_tail_has_sum](../../../../mathematics/Analysis/CriticalTwoModeNativeClock/Variantf381ee4b4f9a037dbe55f83eacc8adf33dc2edb34c84013132c696c74a63de8e.lean/declarations/literal-native-clock-tail-has-sum--84642e5b9ef8ca8cbf5e2aaf.md) | 110 | `result-track:84642e5b9ef8ca8cbf5e2aafa14a390cb34ed8dbade45701bcdd374d8d75aa75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
