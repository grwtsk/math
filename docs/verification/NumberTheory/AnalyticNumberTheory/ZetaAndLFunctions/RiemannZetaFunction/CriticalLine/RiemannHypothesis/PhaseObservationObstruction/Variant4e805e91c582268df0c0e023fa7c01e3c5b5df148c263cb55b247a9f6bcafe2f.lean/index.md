# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PhaseObservationObstruction.Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d303283b69f965b6d898e5ad44b57f0e3aeb5924",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d303283b69f965b6d898e5ad44b57f0e3aeb5924`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.JacobsonObservation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.PhaseInvolution` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.MultiplicativePhase` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Jacobson.Semiprimary` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.WedderburnArtin` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Matrix` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [PhaseMatrix](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phasematrix--9d3cf02e326e477f28ee9ffe.md) | 40 | `declaration-track:9d3cf02e326e477f28ee9ffe1d6eab17f98badb08b3645f6fe2c1a411d30453b` |
| 2 | `theorem` | [phase_matrix_jacobson_eq_bot](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-matrix-jacobson-eq-bot--1c68027b416e7833b383fbf2.md) | 43 | `result-track:1c68027b416e7833b383fbf2a9b2e40c053b901ac5d6da8c54e82eed2d6ce0ad` |
| 3 | `def` | [phaseObservation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phaseobservation--a8276b7ba9963d1a28fb6077.md) | 48 | `declaration-track:a8276b7ba9963d1a28fb60779f01c905b474333cc576dd18eb83afbf6584ee2b` |
| 4 | `def` | [invisiblePhaseDirection](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/invisiblephasedirection--fb2cd7dcd1f8650e368f8ce3.md) | 56 | `declaration-track:fb2cd7dcd1f8650e368f8ce315a42010deec40c16f6007eb1b49439727d553a8` |
| 5 | `theorem` | [invisible_phase_direction_ne_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/invisible-phase-direction-ne-zero--2c30d576934ad3f304c84548.md) | 58 | `result-track:2c30d576934ad3f304c845482195f87e7bc7dfcc77895d8f91e287a0a10af808` |
| 6 | `theorem` | [invisible_phase_direction_in_kernel](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/invisible-phase-direction-in-kernel--c893ea8dcffc655b8a220834.md) | 63 | `result-track:c893ea8dcffc655b8a220834cbb55df22977bd8f736b20e1ae8f31104d4e2451` |
| 7 | `theorem` | [phase_observation_ker_ne_jacobson](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-observation-ker-ne-jacobson--40e9f24e043d5514732f5008.md) | 70 | `result-track:40e9f24e043d5514732f50086d940d7c2bc853d70fd8ae5282b8e4ddd088193e` |
| 8 | `theorem` | [phase_observation_fiber](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-observation-fiber--f3b6bd47baf6eb4adfeb2c7b.md) | 78 | `result-track:f3b6bd47baf6eb4adfeb2c7b206f82323fed3923b456016c718fa6b54c0e1a31` |
| 9 | `def` | [phaseCommutator](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phasecommutator--dac212942e8b5832afa23d8e.md) | 84 | `declaration-track:dac212942e8b5832afa23d8e8cebb82a473aea54efcb1d4f56935b7ba49450b0` |
| 10 | `theorem` | [phase_commutator_mem_jacobson_iff](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-commutator-mem-jacobson-iff--f0142102e791f3e25c7a885d.md) | 88 | `result-track:f0142102e791f3e25c7a885d857dc2bf4ad02b104015257dbb8bc6a4304c437e` |
| 11 | `theorem` | [imaginary_phase_commutator_not_in_jacobson](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/imaginary-phase-commutator-not-in-jacobson--663036caf95a09c052b62af8.md) | 95 | `result-track:663036caf95a09c052b62af87ac996647c68366925aa52f278709c36dce765a6` |
| 12 | `def` | [signedTracePacket](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signedtracepacket--97cd058e93f3fef0f77a6a70.md) | 100 | `declaration-track:97cd058e93f3fef0f77a6a700480ac87a1161d4acc957ee1135bd60a9dc08c9e` |
| 13 | `theorem` | [signed_trace_packet_phase_rotation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signed-trace-packet-phase-rotation--e2069e6f5ba90548f289f8ae.md) | 103 | `result-track:e2069e6f5ba90548f289f8ae6e1a29625527b193fd6118045b28cc4f4a54800a` |
| 14 | `theorem` | [signed_trace_packet_jacobson_zero](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signed-trace-packet-jacobson-zero--c683f2931d58f3e378851831.md) | 113 | `result-track:c683f2931d58f3e3788518312339bbba1a4b6478419e086ff454df5f429f194c` |
| 15 | `theorem` | [signed_trace_packet_coset_invariant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signed-trace-packet-coset-invariant--2b61cdc4e579fd056b4fb38a.md) | 120 | `result-track:2b61cdc4e579fd056b4fb38a2ad93892bb6173f24e4a981644c8ac39aecbcc3c` |
| 16 | `theorem` | [signed_trace_packet_quotient_factor](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signed-trace-packet-quotient-factor--280a0432dbae4d27c8f8c1af.md) | 129 | `result-track:280a0432dbae4d27c8f8c1af9290e0bc5bf44b587c78b97e5b339238ac5b1672` |
| 17 | `theorem` | [signed_trace_packet_invisible_direction](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signed-trace-packet-invisible-direction--7aa7c07105759106b6d39194.md) | 134 | `result-track:7aa7c07105759106b6d39194169cb51da1b835ae2f96f6c0a5d3847c2dac3448` |
| 18 | `theorem` | [signed_trace_packet_not_observation_invariant](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signed-trace-packet-not-observation-invariant--e69f72c57b2e8fc18196c623.md) | 140 | `result-track:e69f72c57b2e8fc18196c623e3cb936babb541a96a1e6d8c0077e058d7c25112` |
| 19 | `theorem` | [phase_rotation_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-rotation-one--b926d2a8b95c7d360a17d93e.md) | 149 | `result-track:b926d2a8b95c7d360a17d93e09b81fc50a70fb1ad5b3f8ee4f0177a12644de0a` |
| 20 | `theorem` | [phase_rotation_det_one](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-rotation-det-one--d8371fef1e01f7d7054fe62a.md) | 153 | `result-track:d8371fef1e01f7d7054fe62a3b84e5b240119301e0d9c65679f5f1a50fada3a4` |
| 21 | `theorem` | [signed_trace_packet_identity](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/signed-trace-packet-identity--1128b7f6566572246d698c11.md) | 158 | `result-track:1128b7f6566572246d698c117771d8cb8c522f569eb308ce56cc2e171e1c18e2` |
| 22 | `theorem` | [conserved_determinant_no_uniform_packet_lower_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/conserved-determinant-no-uniform-packet-lower-bound--52f335a40a70bbb0d9eaee8b.md) | 164 | `result-track:52f335a40a70bbb0d9eaee8bd806f3bd7c840b2e27cc8a324ea40d669b04db80` |
| 23 | `theorem` | [zero_frequency_preserves_phase_objects](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/zero-frequency-preserves-phase-objects--ce7138f518c67678fa38eb5c.md) | 175 | `result-track:ce7138f518c67678fa38eb5ce67e1344c81b2bbb283207f69a62c609295aa102` |
| 24 | `theorem` | [phase_rotation_zero_frequency_limit](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-rotation-zero-frequency-limit--3ae2de028885cf4030253f2c.md) | 182 | `result-track:3ae2de028885cf4030253f2c6eeae68a3f711facecc7dfd201be9c6d30efeb85` |
| 25 | `def` | [singleCoordinateObservation](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/singlecoordinateobservation--2499cf341183e6bf099fb98e.md) | 205 | `declaration-track:2499cf341183e6bf099fb98efd672266f38a52dcfc759b928eeb04e53f6921b5` |
| 26 | `theorem` | [single_coordinate_fiber](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/single-coordinate-fiber--5ef838d2b1bc113956e88778.md) | 208 | `result-track:5ef838d2b1bc113956e88778422d0f321f7ac445256255c5e967cb172e7fb92a` |
| 27 | `theorem` | [phase_coordinate_jacobson_eq_bot](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/phase-coordinate-jacobson-eq-bot--f6d71869f0d585f6dac463c1.md) | 223 | `result-track:f6d71869f0d585f6dac463c14ce44a7c09a16192e4c30a44798c7a42cf6b0c9a` |
| 28 | `theorem` | [single_coordinate_invisible_not_jacobson](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PhaseObservationObstruction/Variant4e805e91c582268df0c0e023fa7c01e3c5b5df148c263cb55b247a9f6bcafe2f.lean/declarations/single-coordinate-invisible-not-jacobson--0ec8eb106572a80f54cf5ce8.md) | 227 | `result-track:0ec8eb106572a80f54cf5ce8046cf5691f13909ae3d85994316d3ae346f39057` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
