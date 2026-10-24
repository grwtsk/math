# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd964c7eec43d3508a6938e5d0abc57d4b963d09",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd964c7eec43d3508a6938e5d0abc57d4b963d09`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [betaIntegral_nat_factorials](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/betaintegral-nat-factorials--8d7554ea2df0df1f5da20406.md) | 32 | `result-track:8d7554ea2df0df1f5da2040637ffea76c404d9b1a8b1f4af31c93f94b56b9126` |
| 2 | `theorem` | [integral_pow_mul_sub_pow_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/integral-pow-mul-sub-pow-nat--223dd82f6e9a9071c4fa0f54.md) | 48 | `result-track:223dd82f6e9a9071c4fa0f54d8b9e34681ce5637dbaeb861e5602b5d9da820d2` |
| 3 | `theorem` | [beta_evenBasis_tailKernel_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/beta-evenbasis-tailkernel-mul--1929581da752af19072022fd.md) | 71 | `result-track:1929581da752af19072022fd176d88188ec469fbbf971ef7193552ae06a0ab3f` |
| 4 | `def` | [thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairkernel--f9526ed44c160d95eb9cb011.md) | 102 | `declaration-track:f9526ed44c160d95eb9cb0117cf7f256af7a4c9111fe2c13fc6f6b5704686b0e` |
| 5 | `theorem` | [thetaTailPairKernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairkernel-nonnegative--b72b8845003e17c64eaba8ce.md) | 107 | `result-track:b72b8845003e17c64eaba8ceca503e3dcdb1b659fed0e84c24a049c3df4f8b05` |
| 6 | `theorem` | [continuous_thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/continuous-thetatailpairkernel--cd2edfe70599c4d96b578a03.md) | 114 | `result-track:cd2edfe70599c4d96b578a035e58c9a113cf976ad2729744dfea57f949bb27bb` |
| 7 | `def` | [thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand--8780305790653a0be500aba1.md) | 120 | `declaration-track:8780305790653a0be500aba118d2291d5ae05bd5a8b3cc42d8b8830666b49ee7` |
| 8 | `theorem` | [measurable_thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/measurable-thetatailpairintegrand--6054600e23908cd2860b10c6.md) | 124 | `result-track:6054600e23908cd2860b10c638f25a28c9e73838d42e3647d3e8a8f678efb312` |
| 9 | `theorem` | [thetaTailPairIntegrand_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-nonnegative--56f6238cc047f2bcfe8e2a4f.md) | 130 | `result-track:56f6238cc047f2bcfe8e2a4fe8e2ee540fef56633765ff0289e1253215401a9f` |
| 10 | `theorem` | [thetaTailPairIntegrand_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-right--215da9cf5f0e1b9de2a57072.md) | 137 | `result-track:215da9cf5f0e1b9de2a5707260b3fcbb694a74e1b5b7e8673433feb585cb8bbc` |
| 11 | `theorem` | [thetaTailPairIntegrand_right_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-right-of-neg--cc938d731da8e058d3615633.md) | 143 | `result-track:cc938d731da8e058d36156331073acc9230dc28aa195f131fc8d3debf6694c10` |
| 12 | `theorem` | [thetaTailPairIntegrand_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-left--501c8a5509e7712a9ffbe196.md) | 148 | `result-track:501c8a5509e7712a9ffbe19678f9e56c40c608e8e5a88591d71f9c464b43d151` |
| 13 | `theorem` | [thetaTailPairIntegrand_right_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-right-integrable--7e76eb31ef189e2c6e89e74b.md) | 152 | `result-track:7e76eb31ef189e2c6e89e74b5853729b5417f11e3f28f2b25edcd0c472b7cf98` |
| 14 | `theorem` | [thetaTailPairIntegrand_left_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-left-integrable--d1e38b0776651c0d69e70880.md) | 167 | `result-track:d1e38b0776651c0d69e7088060de5f09039bbcdc88e5ada1b377cd26f6b942ef` |
| 15 | `theorem` | [thetaTailPairIntegrand_integral_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-integral-right--04cf1d0b359292940d7efea3.md) | 173 | `result-track:04cf1d0b359292940d7efea357edba78f59e7ac136436951892f667b398aa705` |
| 16 | `theorem` | [thetaTailPairIntegrand_integral_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairintegrand-integral-left--196201a9c51d77af11c2210e.md) | 189 | `result-track:196201a9c51d77af11c2210e9b949e214db6d4fe3cea82028ba0b1a8882362e1` |
| 17 | `theorem` | [tailPairing_succ_eq_iteratedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/tailpairing-succ-eq-iteratedintegral--3b2b1a9a1a181cede0a36ee0.md) | 206 | `result-track:3b2b1a9a1a181cede0a36ee031086a53fac7fcaacab6a836705923124fd1ff7f` |
| 18 | `theorem` | [nonnegative_integral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/nonnegative-integral-integral-swap--e67bb20f2f5b6b00d275441f.md) | 227 | `result-track:e67bb20f2f5b6b00d275441f0cc3071889a1d89a061a60bcfb73a273d40632df` |
| 19 | `theorem` | [tailPairing_succ_tonelli](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/tailpairing-succ-tonelli--71516342d53703cbf18c8650.md) | 255 | `result-track:71516342d53703cbf18c8650fbe1ce2dc178c132d74d4141a10d27ff0377370f` |
| 20 | `theorem` | [tailPairing_succ_beta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/tailpairing-succ-beta--bf9eafb8edad3938c1981d82.md) | 273 | `result-track:bf9eafb8edad3938c1981d8255059d484a5b83aa1e7e96c03a5bf6898db99094` |
| 21 | `theorem` | [thetaTailPairing_transport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairing-transport--404c05e41ad56e4ee327b3b1.md) | 284 | `result-track:404c05e41ad56e4ee327b3b140beab47ef29041b9fedbdc4266e9d2ca7c1d3cc` |
| 22 | `theorem` | [thetaTailTransport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailtransport--5c42ea3ffb5e54ac38899617.md) | 293 | `result-track:5c42ea3ffb5e54ac3889961786f334dbebbca02dd76fc3ead7ff5b86b356833d` |
| 23 | `theorem` | [thetaTailPairing_order_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/thetatailpairing-order-two--1c973dd13153f2dafe1efad1.md) | 298 | `result-track:1c973dd13153f2dafe1efad15e1db19dd8a0f0020626e93a4c4acb7cb6a90d27` |
| 24 | `theorem` | [beta_tailKernel_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003.lean/declarations/beta-tailkernel-zero-one--19fc371b4fb57b25e95d10e2.md) | 304 | `result-track:19fc371b4fb57b25e95d10e2d950062d8c85f7b7a72a8e25296933a5da8daf0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
