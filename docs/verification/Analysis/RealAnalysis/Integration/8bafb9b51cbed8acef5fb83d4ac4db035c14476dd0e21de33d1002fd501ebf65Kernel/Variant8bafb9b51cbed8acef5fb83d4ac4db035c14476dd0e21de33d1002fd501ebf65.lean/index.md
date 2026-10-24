# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel.Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00493ca65825a453d5e6e4a3ca594060e2d04a9e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00493ca65825a453d5e6e4a3ca594060e2d04a9e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairkernel--08aeb941e401e8fea2bb6e11.md) | 8 | `declaration-track:08aeb941e401e8fea2bb6e110714ac2082b1c08fba493c689e0fd39760840d71` |
| 2 | `theorem` | [thetaTailPairKernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairkernel-nonnegative--29b9fc9496f4485cd62ee3cc.md) | 12 | `result-track:29b9fc9496f4485cd62ee3cc7d022149d1a11c779a36ca11ec2b45d061d64ac7` |
| 3 | `theorem` | [continuous_thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/continuous-thetatailpairkernel--d7811bdfc44d78f6b9749474.md) | 18 | `result-track:d7811bdfc44d78f6b9749474953e22033040e3b90d56ff5f2402383e8303318a` |
| 4 | `def` | [thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand--fe21953608bd80f3a32ce40d.md) | 24 | `declaration-track:fe21953608bd80f3a32ce40d4629441d878a1ef299889fba2ea05d68e94ee8e7` |
| 5 | `theorem` | [measurable_thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/measurable-thetatailpairintegrand--317a3ca1c50ffc918cd003f7.md) | 28 | `result-track:317a3ca1c50ffc918cd003f773cfb24a3a2d74ed27b81183485239c00ca528d1` |
| 6 | `theorem` | [thetaTailPairIntegrand_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-nonnegative--f8061c7795e5a7f569feeebf.md) | 34 | `result-track:f8061c7795e5a7f569feeebfff99857f0b3f17e88f3de612c2975aeab5b7473c` |
| 7 | `theorem` | [thetaTailPairIntegrand_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-right--d2716b0723f1f3a44b3bd3e4.md) | 41 | `result-track:d2716b0723f1f3a44b3bd3e453f1684ccec30a75bc77e62474185442cfc883b0` |
| 8 | `theorem` | [thetaTailPairIntegrand_right_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-right-of-neg--4173466e95a57f73089f8b9b.md) | 47 | `result-track:4173466e95a57f73089f8b9b52ffe8cfc52b49a9497ecdd13dce2632301ef701` |
| 9 | `theorem` | [thetaTailPairIntegrand_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-left--ae5e732eeadb6b19bea914b9.md) | 52 | `result-track:ae5e732eeadb6b19bea914b9832a6f29d6dbefa73d1d010e550a122f24dded31` |
| 10 | `theorem` | [thetaTailPairIntegrand_right_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-right-integrable--27d47d3b5f239cdab72152eb.md) | 56 | `result-track:27d47d3b5f239cdab72152eb462292f12fae4bf170309258ffb85f123862716f` |
| 11 | `theorem` | [thetaTailPairIntegrand_left_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-left-integrable--e19f728380dfcc0cb9970bd7.md) | 69 | `result-track:e19f728380dfcc0cb9970bd7cd6299ff7c2f3cea2017000de74da640b7053309` |
| 12 | `theorem` | [thetaTailPairIntegrand_integral_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-integral-right--8d7cc3f3c32da7e3030d036f.md) | 75 | `result-track:8d7cc3f3c32da7e3030d036f29abef259341089ebc9c15e3b2689d9170e9a437` |
| 13 | `theorem` | [thetaTailPairIntegrand_integral_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/thetatailpairintegrand-integral-left--3355f1406de9806688ee5124.md) | 91 | `result-track:3355f1406de9806688ee5124a7b1f70dd3cb4cbfd39cb637c5dc4958b9517ac5` |
| 14 | `theorem` | [tailPairing_succ_eq_iteratedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65Kernel/Variant8bafb9b51cbed8acef5fb83d4ac4db035c14476dd0e21de33d1002fd501ebf65.lean/declarations/tailpairing-succ-eq-iteratedintegral--4d1b95f75992f000ea805e4a.md) | 107 | `result-track:4d1b95f75992f000ea805e4ae190702de2eb611b04f4aa1c42a28346eec1d6b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
