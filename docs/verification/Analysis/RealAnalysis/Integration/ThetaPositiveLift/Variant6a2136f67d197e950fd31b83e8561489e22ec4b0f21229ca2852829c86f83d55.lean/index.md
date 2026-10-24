# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3571bb1c1b855fe6abb21b74ee77e1ee1b6bf82e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [betaIntegral_nat_factorials](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/betaintegral-nat-factorials--fbba03615e57fd3039e7c161.md) | 24 | `result-track:fbba03615e57fd3039e7c161376c99168fa465900e7233078f4db8193dfa9647` |
| 2 | `theorem` | [integral_pow_mul_sub_pow_nat](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/integral-pow-mul-sub-pow-nat--905879552899752dbd9c88db.md) | 40 | `result-track:905879552899752dbd9c88db7d5b1f284ed16bfce88817ab57d416a544c4d8d5` |
| 3 | `theorem` | [beta_evenBasis_tailKernel_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/beta-evenbasis-tailkernel-mul--3ffc35799dfbd5ca2d04ea4b.md) | 63 | `result-track:3ffc35799dfbd5ca2d04ea4b74dcd8b7787c4eb4020190d952a291ab0e3c1a00` |
| 4 | `def` | [thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairkernel--bf3e4deb246f979b51dd38c0.md) | 94 | `declaration-track:bf3e4deb246f979b51dd38c0d932a9f6aa80dd8d447a29081cd1b477bada48f8` |
| 5 | `theorem` | [thetaTailPairKernel_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairkernel-nonnegative--8343627eab9bb52101078c77.md) | 99 | `result-track:8343627eab9bb52101078c77d68e7e2ebe2a7ffa8e69eeacc07125670e117089` |
| 6 | `theorem` | [continuous_thetaTailPairKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/continuous-thetatailpairkernel--61d7f2f247a527cb790d5a0e.md) | 106 | `result-track:61d7f2f247a527cb790d5a0edad97fe813d34d3cb817a9c6ef6fb923be8eaad7` |
| 7 | `def` | [thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand--d3aecb66b0a6d06505e39f57.md) | 112 | `declaration-track:d3aecb66b0a6d06505e39f57d25b8e6e02b537d34b4618e6e186c1d4fb5b270f` |
| 8 | `theorem` | [measurable_thetaTailPairIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/measurable-thetatailpairintegrand--151e136574885fe32920abe4.md) | 116 | `result-track:151e136574885fe32920abe4089918dcc839707fb87825cc2292807aa756cc8e` |
| 9 | `theorem` | [thetaTailPairIntegrand_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-nonnegative--8acb986abd8ab0f46af91d60.md) | 122 | `result-track:8acb986abd8ab0f46af91d60aacf8b02c3a7454bbcd07f0ccacad13ff50084f2` |
| 10 | `theorem` | [thetaTailPairIntegrand_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-right--f10dfd4740282661963894c0.md) | 129 | `result-track:f10dfd4740282661963894c0435424e8e25475b0e6891c305082d2facd3be42b` |
| 11 | `theorem` | [thetaTailPairIntegrand_right_of_neg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-right-of-neg--c663142fcb26a6a5ada24c80.md) | 135 | `result-track:c663142fcb26a6a5ada24c8075a7a8fd007a07b1b9b2e09ed166c3894246e15d` |
| 12 | `theorem` | [thetaTailPairIntegrand_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-left--ff81edd7922f56952cfd0bde.md) | 140 | `result-track:ff81edd7922f56952cfd0bde31b3e225dffe7394f6cc50996d3b3ac746beab73` |
| 13 | `theorem` | [thetaTailPairIntegrand_right_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-right-integrable--1fa3b8c02f7d0a976e8cf10c.md) | 144 | `result-track:1fa3b8c02f7d0a976e8cf10c897267bfba5b9b95422f96a50ff38125eb81aaf9` |
| 14 | `theorem` | [thetaTailPairIntegrand_left_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-left-integrable--4da462859b6d0f061ac938b2.md) | 159 | `result-track:4da462859b6d0f061ac938b2a5d666e34f598bed39d1b307d5641137244d3350` |
| 15 | `theorem` | [thetaTailPairIntegrand_integral_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-integral-right--37db1f1b58262f651620be15.md) | 165 | `result-track:37db1f1b58262f651620be15cfb9aaa750c5c1cc9c2a62ec0ce7233ef485abce` |
| 16 | `theorem` | [thetaTailPairIntegrand_integral_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairintegrand-integral-left--17e8dbb00f620801d5054fe0.md) | 181 | `result-track:17e8dbb00f620801d5054fe0117e71e39a5998673fc123361be3d0a4529aa986` |
| 17 | `theorem` | [tailPairing_succ_eq_iteratedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/tailpairing-succ-eq-iteratedintegral--ff5016650f27d15034447672.md) | 198 | `result-track:ff5016650f27d1503444767269cf346ad085056e100ab0989a0d6c0ed0df67dd` |
| 18 | `theorem` | [nonnegative_integral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/nonnegative-integral-integral-swap--ffd85024a1efee2d0081f560.md) | 219 | `result-track:ffd85024a1efee2d0081f5603175bcb15e84505eeed120e64de540b896c0b32a` |
| 19 | `theorem` | [tailPairing_succ_tonelli](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/tailpairing-succ-tonelli--907661d3f056a2325b31e9f7.md) | 247 | `result-track:907661d3f056a2325b31e9f75db666594b22f818fd91dd9ec722764838d77cac` |
| 20 | `theorem` | [tailPairing_succ_beta](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/tailpairing-succ-beta--800a45443b23bf4009e21b99.md) | 265 | `result-track:800a45443b23bf4009e21b99d4ccdc6eeae5caaa8c57d344238e96639da8cd4b` |
| 21 | `theorem` | [thetaTailPairing_transport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairing-transport--43a2514381c355f7d7296f6a.md) | 276 | `result-track:43a2514381c355f7d7296f6a335dc0d763bd9078fef6ed9e75c8661354ecce8c` |
| 22 | `theorem` | [thetaTailTransport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailtransport--c300f0c99ca8c651999169d1.md) | 285 | `result-track:c300f0c99ca8c651999169d15210e16d4753d4f83dd1c17f6563043e8ed1e695` |
| 23 | `theorem` | [thetaTailPairing_order_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/thetatailpairing-order-two--0f1e15a6457b7c9a15a5774f.md) | 290 | `result-track:0f1e15a6457b7c9a15a5774f6c6ad3365f309c0f88eab3e193ad93a5de606b25` |
| 24 | `theorem` | [beta_tailKernel_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ThetaPositiveLift/Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean/declarations/beta-tailkernel-zero-one--c68c6d4079dae5e7d09d7588.md) | 296 | `result-track:c68c6d4079dae5e7d09d7588b09b5ab55f22053c6e88456c47699a633fd03212` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
