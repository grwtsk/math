# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5d56c40170fe0584e62bb6f101e8d4c8ec96fc5`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiBoundaryDecay` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiCosh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphicosh--6d7c8be1a805254ea9c2c0be.md) | 34 | `declaration-track:6d7c8be1a805254ea9c2c0beeb982515767ceeb5b19b2a16b8e5165157235288` |
| 2 | `def` | [thetaACosh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaacosh--1f26b828857f7dcb53e59d11.md) | 38 | `declaration-track:1f26b828857f7dcb53e59d11a2fbda1e3f6b104ea319b92c258b54bbe13eb7bf` |
| 3 | `theorem` | [complex_cosh_norm_le_exp_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/complex-cosh-norm-le-exp-norm--3087251b2c77ad4a47030872.md) | 42 | `result-track:3087251b2c77ad4a4703087294dda8de7f3354d29933c767da74c9f26fd14fa0` |
| 4 | `theorem` | [thetaCoshKernel_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetacoshkernel-norm-le--1ee9941d1b32ea1011c1ec05.md) | 58 | `result-track:1ee9941d1b32ea1011c1ec05746eba0b8a8f1ac6db34974428029409a0a20e76` |
| 5 | `theorem` | [continuous_thetaPhiCosh](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/continuous-thetaphicosh--9dd6c7d92dbe77339c8483ab.md) | 66 | `result-track:9dd6c7d92dbe77339c8483aba9743fe2798cb12da1fb2aa2b43484c23baee247` |
| 6 | `def` | [thetaPhiCoshThreshold](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphicoshthreshold--778dd857aef5502bebdbc303.md) | 74 | `declaration-track:778dd857aef5502bebdbc3033f5eed3f0cd1d3c2934a6b803b02470d7bfc3425` |
| 7 | `theorem` | [thetaPhiCoshThreshold_positive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphicoshthreshold-positive--2365d6eaa6b043590c5738f2.md) | 77 | `result-track:2365d6eaa6b043590c5738f2f55c791114c6d1bc039bd42d6b39478dd992fa21` |
| 8 | `theorem` | [thetaPhiCosh_linear_le_debt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphicosh-linear-le-debt--75ea501eedb8632527c9e585.md) | 84 | `result-track:75ea501eedb8632527c9e585105bff1870a94ff3bb86aafbe23f7e0fe01fa68d` |
| 9 | `theorem` | [thetaPhiCosh_norm_le_tail](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphicosh-norm-le-tail--f6756daeee80a3afa214fc13.md) | 104 | `result-track:f6756daeee80a3afa214fc1328610ca75a8b1cb2c77d58e8c2e79dc32a771518` |
| 10 | `theorem` | [thetaPhiCosh_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphicosh-integrableon--2aca7b949e115a4c52626842.md) | 138 | `result-track:2aca7b949e115a4c526268425d422469e08a8134cb6f1bdb76be8d3a99de6a00` |
| 11 | `theorem` | [thetaACosh_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaacosh-integrableon--289b534f0bd61a5dac253c8c.md) | 181 | `result-track:289b534f0bd61a5dac253c8cac95ed7dc79d0823c2ff2f1959b705b1a0013df7` |
| 12 | `theorem` | [thetaPhiCosh_interval_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphicosh-interval-tendsto--d9aa0d44c16e0677ac8b06ac.md) | 200 | `result-track:d9aa0d44c16e0677ac8b06ac0c25ef9063c061e892a9d3a7ed265d874b2dcfd4` |
| 13 | `theorem` | [thetaACosh_interval_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaacosh-interval-tendsto--38c19ed06b23f4cf81df7d96.md) | 210 | `result-track:38c19ed06b23f4cf81df7d9683a00c40665ce9d878d29e25edc578ac9c3ca3b9` |
| 14 | `theorem` | [thetaPhi_cosh_integral_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/thetaphi-cosh-integral-identity--ac3350fc0a4ae649e2f5bfce.md) | 220 | `result-track:ac3350fc0a4ae649e2f5bfce2e0ef665b5a3891d26a34dbeb0ebf32d4a53b639` |
| 15 | `theorem` | [xi_centered_thetaPhi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant208df9890ef3d0bcf8e7bb256abc924068e0bd78c7510fc4c1d6d68b83fec090.lean/declarations/xi-centered-thetaphi--f9a6b78c780dac55cf9a8513.md) | 273 | `result-track:f9a6b78c780dac55cf9a85132f2739efc58e5d948eca2eae5fa4419aebee7388` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
