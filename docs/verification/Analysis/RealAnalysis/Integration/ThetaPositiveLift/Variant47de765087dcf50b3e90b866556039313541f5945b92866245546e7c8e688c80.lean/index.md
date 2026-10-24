# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c4da0fcdb5a2deece65a97f5222ba091c28d126",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c4da0fcdb5a2deece65a97f5222ba091c28d126`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiBoundaryDecay` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiCosh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphicosh--c1d0b47ea9bd90ae4cac7d48.md) | 42 | `declaration-track:c1d0b47ea9bd90ae4cac7d4810de7fd9567d497d482f2f1acbe68f09c1835e78` |
| 2 | `def` | [thetaACosh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaacosh--e16be138270d99c443a9d511.md) | 46 | `declaration-track:e16be138270d99c443a9d511869b329310e1026248c20037eabd308a0d9bd7d2` |
| 3 | `theorem` | [complex_cosh_norm_le_exp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/complex-cosh-norm-le-exp-norm--c48c21c4b474c7886f0c0a95.md) | 50 | `result-track:c48c21c4b474c7886f0c0a9527dacef5cd5e9e3dfe131f8f786efea8f44d7c4c` |
| 4 | `theorem` | [thetaCoshKernel_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetacoshkernel-norm-le--b4e466e321191ae94d22f6a1.md) | 66 | `result-track:b4e466e321191ae94d22f6a1a5380e47a04150c21c0965e6a1529dd4bea1161a` |
| 5 | `theorem` | [continuous_thetaPhiCosh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/continuous-thetaphicosh--d3b3bf78420639ea0bb81e4b.md) | 74 | `result-track:d3b3bf78420639ea0bb81e4b9c0b277e5d7a91a11c4b6903df81435fc58cbea3` |
| 6 | `def` | [thetaPhiCoshThreshold](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphicoshthreshold--a219cf9ecf09f4f35ad16e57.md) | 82 | `declaration-track:a219cf9ecf09f4f35ad16e5724898c82a056ceb08f961fec8b731ebbcb6fcc1f` |
| 7 | `theorem` | [thetaPhiCoshThreshold_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphicoshthreshold-positive--acc06e919e85e852b7c6cb97.md) | 85 | `result-track:acc06e919e85e852b7c6cb978dc606484e6b50273d671c2727bbcd843912d3e3` |
| 8 | `theorem` | [thetaPhiCosh_linear_le_debt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphicosh-linear-le-debt--906c98d327ae2047eb14a2da.md) | 92 | `result-track:906c98d327ae2047eb14a2da9bb402875bfeb5c8efbc7307d0bceb9bad27e0d3` |
| 9 | `theorem` | [thetaPhiCosh_norm_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphicosh-norm-le-tail--3094c2db480a212b90700761.md) | 112 | `result-track:3094c2db480a212b907007610bb43c48d129e69ff094be8f78cb0000d914ea8e` |
| 10 | `theorem` | [thetaPhiCosh_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphicosh-integrableon--c1b80f16aa13cbd7fb0503b9.md) | 146 | `result-track:c1b80f16aa13cbd7fb0503b9456ff88e15770a98a866ec2dccaefd5c70039543` |
| 11 | `theorem` | [thetaACosh_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaacosh-integrableon--d43c2a0274da0768c66ae2bc.md) | 189 | `result-track:d43c2a0274da0768c66ae2bc3405bb4671a65efe2eaf6b73cf686b88c7283cf6` |
| 12 | `theorem` | [thetaPhiCosh_interval_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphicosh-interval-tendsto--0bdfa2a450f97920ec099c8f.md) | 208 | `result-track:0bdfa2a450f97920ec099c8fd740f243305810e224e0604935a00c53427fe9e6` |
| 13 | `theorem` | [thetaACosh_interval_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaacosh-interval-tendsto--e52795873aadfe67b083e6da.md) | 218 | `result-track:e52795873aadfe67b083e6da647ca018a17ca0dbf6a7cd9d6d94b8171c132595` |
| 14 | `theorem` | [thetaPhi_cosh_integral_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/thetaphi-cosh-integral-identity--e3bd97e55c847816c4961f5f.md) | 228 | `result-track:e3bd97e55c847816c4961f5fbb07cfc756ad4e51811ee03e6943d12e09817177` |
| 15 | `theorem` | [xi_centered_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant47de765087dcf50b3e90b866556039313541f5945b92866245546e7c8e688c80.lean/declarations/xi-centered-thetaphi--bc800ba3b16697aef93c911b.md) | 281 | `result-track:bc800ba3b16697aef93c911b83ded036bf0c9978d6db7007adca0bbc12dbc122` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
