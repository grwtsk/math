# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LIntegral.Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3cd03501ff9fc22670b2299b2458c98cc84b7adb",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3cd03501ff9fc22670b2299b2458c98cc84b7adb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Measure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lintegral_inv_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/declarations/lintegral-inv-eq-self--8a16b9cfabbe99a08b982ad8.md) | 34 | `result-track:8a16b9cfabbe99a08b982ad8ae5ce422e90c259b54ae57c7d67087edfca3100a` |
| 2 | `theorem` | [lintegral_mul_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/declarations/lintegral-mul-left-eq-self--2f1c6cc8ed3587bba1b374ad.md) | 49 | `result-track:2f1c6cc8ed3587bba1b374adc7742412fb141f2085b72966757fb7d0252b3f5f` |
| 3 | `theorem` | [lintegral_mul_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/declarations/lintegral-mul-right-eq-self--f89f1c825a520c959c75f999.md) | 59 | `result-track:f89f1c825a520c959c75f999c0c5a9233b546ffe30fa6746b671c599bf7b2a91` |
| 4 | `theorem` | [lintegral_div_right_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/declarations/lintegral-div-right-eq-self--7d44482dbc1205de379291ce.md) | 65 | `result-track:7d44482dbc1205de379291cee1b0e0d277d5d6eaee54537efd4f8a7aefa37eab` |
| 5 | `theorem` | [lintegral_div_left_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/declarations/lintegral-div-left-eq-self--975eae1f49e5ee092b016cab.md) | 70 | `result-track:975eae1f49e5ee092b016cab444c8ff7954a370f33c4fd3c599fed39366f1522` |
| 6 | `theorem` | [lintegral_eq_zero_of_isMulLeftInvariant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LIntegral/Variant65083d1af688dcc4ff69a083dcf8408ea22bc5c92a5015db004104ef3ee7beb6.lean/declarations/lintegral-eq-zero-of-ismulleftinvariant--7b3aa143bf94530387cc6c95.md) | 86 | `result-track:7b3aa143bf94530387cc6c95928b51b27cd9d8ba6368cd2842406a602459de2a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
