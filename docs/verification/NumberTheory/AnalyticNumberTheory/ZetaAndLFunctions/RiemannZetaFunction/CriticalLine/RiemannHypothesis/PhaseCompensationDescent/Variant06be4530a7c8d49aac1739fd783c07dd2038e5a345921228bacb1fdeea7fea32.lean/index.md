# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhaseCompensationDescent.Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "606d1ba140565f072674418202e6f0d0326d85e6",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `606d1ba140565f072674418202e6f0d0326d85e6`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseInvolution` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseObservationObstruction` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowerSignedTracePacket](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lowersignedtracepacket--5e10c8b21f1525f7a9f35095.md) | 45 | `declaration-track:5e10c8b21f1525f7a9f350953230ef28d25375853a8a7801ef3f7361bc4a2e2a` |
| 2 | `def` | [lowerSignedTraceMass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lowersignedtracemass--dcddfec5fd9bbcc88728c49e.md) | 50 | `declaration-track:dcddfec5fd9bbcc88728c49ee7da96cfa5c02b6271e628263c5ff150de9d6ca5` |
| 3 | `theorem` | [lower_signed_trace_packet_eq_defect_sub_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lower-signed-trace-packet-eq-defect-sub-budget--93d2cd29acc8fb3b4f4d86a6.md) | 54 | `result-track:93d2cd29acc8fb3b4f4d86a6168a784a39343497f2e7c73a7af9dffddee539f4` |
| 4 | `theorem` | [lower_signed_trace_mass_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lower-signed-trace-mass-integrable--a50321f107a04ebfbe649c88.md) | 64 | `result-track:a50321f107a04ebfbe649c88eb8a222a1b9d537c8829ea4f8c449c5d8ca18408` |
| 5 | `theorem` | [lower_signed_trace_mass_eq_defect_sub_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lower-signed-trace-mass-eq-defect-sub-budget--d3b75bbc2bc7c31483c6ee77.md) | 74 | `result-track:d3b75bbc2bc7c31483c6ee778032a76bef61d2880af76a1636f2cb835164c5d9` |
| 6 | `theorem` | [lower_signed_trace_mass_eq_neg_two_contribution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lower-signed-trace-mass-eq-neg-two-contribution--9620e5f6c92433b39164877e.md) | 85 | `result-track:9620e5f6c92433b39164877ed74c36925d6a34c87a2e3ebd32fd93ddf759a643` |
| 7 | `theorem` | [lower_signed_trace_packet_zero_frequency_eq_characteristic_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lower-signed-trace-packet-zero-frequency-eq-characteristic-sum--be7e60652d3e19c4b6bd1401.md) | 92 | `result-track:be7e60652d3e19c4b6bd1401933b10a8190a10d9e8a921b6db42d2b87b0f990c` |
| 8 | `theorem` | [lower_signed_trace_packet_zero_frequency](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/lower-signed-trace-packet-zero-frequency--390a5d216012acdd1ba8e286.md) | 104 | `result-track:390a5d216012acdd1ba8e286fb0489bf666a66142a328cefd0b305b2e7cae9fc` |
| 9 | `def` | [UniformLowerSignedTraceTail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/uniformlowersignedtracetail--e8b4073825a1f192b7c2c0ea.md) | 111 | `declaration-track:e8b4073825a1f192b7c2c0ea3b7454ba4ad53ae42d627e2b1e41feebcf395a70` |
| 10 | `theorem` | [uniform_lower_signed_trace_tail_iff_prime_square_compensation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/uniform-lower-signed-trace-tail-iff-prime-square-compensation--d65107c74732c4e0a92d9030.md) | 116 | `result-track:d65107c74732c4e0a92d903066fa5bd659bf8352ccd5d7d0a89c517f050be48f` |
| 11 | `theorem` | [estimate_of_uniform_lower_signed_trace_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/estimate-of-uniform-lower-signed-trace-tail--1ee3aeb48418af54b012d972.md) | 133 | `result-track:1ee3aeb48418af54b012d972966e7e7b74c6c823206272b4b074d4e6e8a28b3f` |
| 12 | `theorem` | [riemann_hypothesis_of_uniform_lower_signed_trace_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variant06be4530a7c8d49aac1739fd783c07dd2038e5a345921228bacb1fdeea7fea32.lean/declarations/riemann-hypothesis-of-uniform-lower-signed-trace-tail--b66803f75cd5c0a898f40832.md) | 139 | `result-track:b66803f75cd5c0a898f40832ee48df765539fe9f3bba72957bad05ec33fbc6ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
