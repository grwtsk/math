# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhaseCompensationDescent.Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d49c7b9065d6fdedc8fe8a2cc1fd36d352178e0b",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d49c7b9065d6fdedc8fe8a2cc1fd36d352178e0b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimeSquareEstimate` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseInvolution` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseObservationObstruction` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseCharacteristicRadical` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lowerSignedTracePacket](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lowersignedtracepacket--ed3ffabbc06e465041020d01.md) | 37 | `declaration-track:ed3ffabbc06e465041020d0105372b60c71304aeb882cd406da9aa5c8d2b75e0` |
| 2 | `def` | [lowerSignedTraceMass](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lowersignedtracemass--6ed91ce760e3c71b94127e9d.md) | 42 | `declaration-track:6ed91ce760e3c71b94127e9d22c6378f2c9a6cacce9c07a78ede9e3d81bfff14` |
| 3 | `theorem` | [lower_signed_trace_packet_eq_defect_sub_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lower-signed-trace-packet-eq-defect-sub-budget--0d0558f33ea02f903fa118cb.md) | 46 | `result-track:0d0558f33ea02f903fa118cb161bac23d122b374a039134b30043f2c93b22f33` |
| 4 | `theorem` | [lower_signed_trace_mass_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lower-signed-trace-mass-integrable--07c69a4e91985b980683cd12.md) | 56 | `result-track:07c69a4e91985b980683cd126d731b37b416b522ee89a71afa67b194925ebfc1` |
| 5 | `theorem` | [lower_signed_trace_mass_eq_defect_sub_budget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lower-signed-trace-mass-eq-defect-sub-budget--a471512f0bac2c1a6c524aa4.md) | 66 | `result-track:a471512f0bac2c1a6c524aa40dba507d0b9fb3c2222b9115eacc2036a9b4c95b` |
| 6 | `theorem` | [lower_signed_trace_mass_eq_neg_two_contribution](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lower-signed-trace-mass-eq-neg-two-contribution--0dd81f4f5e038169892c78bc.md) | 77 | `result-track:0dd81f4f5e038169892c78bcae670d7aaf5834ea7769b476ad28d07f7d4062ea` |
| 7 | `theorem` | [lower_signed_trace_packet_zero_frequency_eq_characteristic_sum](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lower-signed-trace-packet-zero-frequency-eq-characteristic-sum--34e3714d52b709b7847384c7.md) | 84 | `result-track:34e3714d52b709b7847384c72c800016adb3ffebedc88b3f63489a949fbf009f` |
| 8 | `theorem` | [lower_signed_trace_packet_zero_frequency](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/lower-signed-trace-packet-zero-frequency--03143a4d29651bd56d41df26.md) | 96 | `result-track:03143a4d29651bd56d41df2643f930b74b671e42672b329383fe00c0781d97dd` |
| 9 | `def` | [UniformLowerSignedTraceTail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/uniformlowersignedtracetail--d1b28215cec7d18cae04cf38.md) | 103 | `declaration-track:d1b28215cec7d18cae04cf38d9aff26d0a5d6954dac7db9fa7fb645be1504f86` |
| 10 | `theorem` | [uniform_lower_signed_trace_tail_iff_prime_square_compensation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/uniform-lower-signed-trace-tail-iff-prime-square-compensation--1833a95dec7c28236cddeb5a.md) | 108 | `result-track:1833a95dec7c28236cddeb5a426b4800325920396ecfe4a43927d29a700a6cf5` |
| 11 | `theorem` | [estimate_of_uniform_lower_signed_trace_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/estimate-of-uniform-lower-signed-trace-tail--00569300bbfbd35e645a991f.md) | 125 | `result-track:00569300bbfbd35e645a991f61ccc21016c2665634f5e9793477440fe1100d87` |
| 12 | `theorem` | [riemann_hypothesis_of_uniform_lower_signed_trace_tail](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseCompensationDescent/Variantb4c4a8eb85feeaf440ddca96d9597133c641487bb22bd594fa3d70a5d60052f7.lean/declarations/riemann-hypothesis-of-uniform-lower-signed-trace-tail--407f90831ccb921a32258f28.md) | 131 | `result-track:407f90831ccb921a32258f285cbc8839e45e42873e85d66967ed22da2eebad99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
