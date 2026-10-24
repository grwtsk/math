# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingFourierLimitsProbe.Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52b57710f25cb0ffe5669a1cdaf706c461c17b94",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52b57710f25cb0ffe5669a1cdaf706c461c17b94`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ZeroLogarithmicNormProbe` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSmoothingTransform` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sourceFourier_smoothed](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-smoothed--ba5502782734a15a5c4b3cb2.md) | 15 | `result-track:ba5502782734a15a5c4b3cb26f24db3c542d2f99949a13f6d6708dfd56beb918` |
| 2 | `theorem` | [multiplier_norm_le_one_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/multiplier-norm-le-one-fourier--1a77b20e2d12f887d5f8cff3.md) | 20 | `result-track:1a77b20e2d12f887d5f8cff347ba18c14b9b789ed350594d17029cc6d841396f` |
| 3 | `theorem` | [sourceFourier_smoothed_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-smoothed-norm-le--6bec8e969ec2c58c3c960801.md) | 24 | `result-track:6bec8e969ec2c58c3c960801abe42424436d20791ea040ec785cf6db9a11d17c` |
| 4 | `theorem` | [sourceFourier_smoothed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-smoothed-tendsto--992ea1fed999220d724254e6.md) | 30 | `result-track:992ea1fed999220d724254e65c4f4b9e8b081f40676dae86ae794f07c325e667` |
| 5 | `theorem` | [sourceFourier_testError](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-testerror--858235c903becbf683b3d929.md) | 39 | `result-track:858235c903becbf683b3d929186491ff897c5015c095194caebf71820fbe6031` |
| 6 | `theorem` | [sourceFourier_testError_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-testerror-norm-le--20570f4089b357714d4cbd90.md) | 47 | `result-track:20570f4089b357714d4cbd9057e4c29f0b1ca7e179aa174475edf3b46ff49a16` |
| 7 | `theorem` | [sourceFourier_testError_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-testerror-tendsto--3a66e1a223120db8d814e339.md) | 58 | `result-track:3a66e1a223120db8d814e339c3d61f240fc36694e25ba407cc48f1ceb5bf7877` |
| 8 | `theorem` | [sourceFourier_testError_normSq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-testerror-normsq-le--2d8516057f3008e085a75b11.md) | 68 | `result-track:2d8516057f3008e085a75b11f43e8b7bf01a7f94dfb9bd794651ca8d3064fbb9` |
| 9 | `theorem` | [actualTest_logarithmic_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/actualtest-logarithmic-domain--c114bc4041f78b2272166259.md) | 76 | `result-track:c114bc4041f78b2272166259dd50dd86f7332829f64ec625a249f9e23175cea9` |
| 10 | `theorem` | [smoothedTest_logarithmic_domain](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/smoothedtest-logarithmic-domain--0f020cfddd16f11be7509b2f.md) | 84 | `result-track:0f020cfddd16f11be7509b2ff9fc0d5c0080c98ce35657dc3012e0220d8536f3` |
| 11 | `theorem` | [logarithmicWeight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/logarithmicweight-continuous--26db4756a078dffd31c2743f.md) | 99 | `result-track:26db4756a078dffd31c2743f4b84c39b1934fae50abe30d7f07a9547dba720f6` |
| 12 | `theorem` | [actual_logarithmic_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/actual-logarithmic-integrand-integrable--6f0fd22c00fff4162487a5cd.md) | 104 | `result-track:6f0fd22c00fff4162487a5cdc1263723559ac2a256badf728b6e454689704138` |
| 13 | `theorem` | [error_logarithmic_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/error-logarithmic-integrand-integrable--5c2ba489670f7e8eb24beedb.md) | 110 | `result-track:5c2ba489670f7e8eb24beedb2852b0f7d5a22ab6c7117d70e37aca5f260373d0` |
| 14 | `theorem` | [error_rawLogarithmicEnergy_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/error-rawlogarithmicenergy-tendsto-zero--0fd681974dba773040efb291.md) | 128 | `result-track:0fd681974dba773040efb291d05c45556ce852bfa6257dfe8455bcf3d5842e29` |
| 15 | `theorem` | [error_sourceLogarithmicEnergy_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/error-sourcelogarithmicenergy-tendsto-zero--627fb62078ad1d2c178f403a.md) | 155 | `result-track:627fb62078ad1d2c178f403ae225239ac981864c7ebc61bfc54ea2fcaa84f72c` |
| 16 | `theorem` | [error_sourceLogarithmicNorm_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/error-sourcelogarithmicnorm-tendsto-zero--bc059ce31a07eea0e48f4cf1.md) | 163 | `result-track:bc059ce31a07eea0e48f4cf11b6427c1b0fc9b3857cadaa301105441dbf14158` |
| 17 | `theorem` | [actual_archimedean_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/actual-archimedean-integrable--8c9b16ac5f109d904abfbf69.md) | 172 | `result-track:8c9b16ac5f109d904abfbf69bf0a5825b5e48f34d05a74bfcf61c82e20cb06b3` |
| 18 | `theorem` | [smoothed_archimedean_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/smoothed-archimedean-integrable--05e6027e9fa715448cb3ade1.md) | 178 | `result-track:05e6027e9fa715448cb3ade138ede6712e11f2d056cf2786cf721c1699bee0d9` |
| 19 | `theorem` | [sourceFourier_smoothed_normSq_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/sourcefourier-smoothed-normsq-le--868383b3273acdc25d66efd2.md) | 185 | `result-track:868383b3273acdc25d66efd28ef6ed88fff77a2ec09f4c4d645e5df9c822f67a` |
| 20 | `theorem` | [archimedean_integral_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingFourierLimitsProbe/Variant8fd808a959b267060a66f1f2b74558fb773027fb287f2c38b7d778387a26d1af.lean/declarations/archimedean-integral-tendsto--28a7c79a3f6b479ca4cfbf47.md) | 192 | `result-track:28a7c79a3f6b479ca4cfbf47e5a68487d76359779e0114188a67d1ab40976b90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
