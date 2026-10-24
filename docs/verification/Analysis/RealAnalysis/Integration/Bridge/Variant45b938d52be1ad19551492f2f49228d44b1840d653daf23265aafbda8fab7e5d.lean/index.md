# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Bridge.Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1e339ca2c329121b417eb3bfa5ed61aca2ce16dd",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1e339ca2c329121b417eb3bfa5ed61aca2ce16dd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Landau.Correction` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Laplace.Continuation` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Moments.ComplexMGF` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [baseMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/basemeasure--c41a5a26c1eb92c5801a9505.md) | 47 | `declaration-track:c41a5a26c1eb92c5801a95052a6536b7c0a4cda0ba3dca1897d2845c5f5baa4c` |
| 2 | `def` | [sourceMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/sourcemeasure--04a33b047558ddb0447efd31.md) | 51 | `declaration-track:04a33b047558ddb0447efd31db93a75d74d06ff5e4b734006276f2a71b1768ec` |
| 3 | `theorem` | [corrected_source_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/corrected-source-aemeasurable--f829e06765acab4bcaee9ef4.md) | 57 | `result-track:f829e06765acab4bcaee9ef40ab3de2be8bc7aaf65236049bf8fa6c0ed02e6f4` |
| 4 | `theorem` | [density_aemeasurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/density-aemeasurable--f75764bde874f803d19da695.md) | 81 | `result-track:f75764bde874f803d19da695ef6b4ad5abba975a7a4b1fe97095c88c3b07f7c6` |
| 5 | `theorem` | [density_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/density-lt-top--b2dc1094931830cf07ad29f2.md) | 88 | `result-track:b2dc1094931830cf07ad29f299f90620bd69dcdc9dafdb289edbf8cd9baa4f97` |
| 6 | `theorem` | [density_toReal_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/density-toreal-ae--32f7008e78f1446ef714c43c.md) | 97 | `result-track:32f7008e78f1446ef714c43c0b7bfa2e189b0dcffae73303e0bf9d190a8f1a74` |
| 7 | `theorem` | [one_lt_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/one-lt-ae--99971c0fcc571ffee80a6ded.md) | 108 | `result-track:99971c0fcc571ffee80a6ded69dbd5a496d4e8fe349151729315d3219e174f0f` |
| 8 | `theorem` | [id_nonneg_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/id-nonneg-ae--7a38a9a02d79bdc60fc4e7d7.md) | 115 | `result-track:7a38a9a02d79bdc60fc4e7d719a48bc951922ed85c2057fea6b5f59eacee5e03` |
| 9 | `theorem` | [exp_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/exp-integrable--b65f9acc1e63520c9cdf1c5c.md) | 123 | `result-track:b65f9acc1e63520c9cdf1c5cfccff17af233e46149031fa609876b478d37ab68` |
| 10 | `theorem` | [integral_exp_eq_correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/integral-exp-eq-correctedtransform--3030788f29d3bf3898b6a992.md) | 142 | `result-track:3030788f29d3bf3898b6a992483d4ca8c07f689639405b8e6e77b8d84d36db8b` |
| 11 | `theorem` | [complexMGF_eq_correctedTransform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/complexmgf-eq-correctedtransform--e68752ac7d083c63d41278d6.md) | 165 | `result-track:e68752ac7d083c63d41278d658396d8ff5abd0d172af0c9bc8a482aac884d1f2` |
| 12 | `theorem` | [real_laplace_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/real-laplace-integrable--e22b6e8d649977ee104ff906.md) | 174 | `result-track:e22b6e8d649977ee104ff906bb2cad41b904a55daa321eec57c1950f24cddefe` |
| 13 | `theorem` | [correction_at_shifted_center_analytic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/correction-at-shifted-center-analytic--931a67e076caf5cd0a845ecb.md) | 190 | `result-track:931a67e076caf5cd0a845ecbe67e776bc34d2d8147ed95dcbfaaec400894178e` |
| 14 | `theorem` | [corrected_transform_cleared_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/corrected-transform-cleared-tendsto--7d44ca0eefece08985fb7c6f.md) | 216 | `result-track:7d44ca0eefece08985fb7c6f88f40f57ddd1e9381b9091de5e963604f3d4ae05` |
| 15 | `theorem` | [correctedTransform_punctured_differentiable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/correctedtransform-punctured-differentiable--b17ceeb126e4d8c90d018d83.md) | 236 | `result-track:b17ceeb126e4d8c90d018d830f72eb39cede9e57ea9d08f24b592a4c5f67fc37` |
| 16 | `theorem` | [corrected_transform_exact_pole](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/corrected-transform-exact-pole--255bcff9dd7f28b9f654b1ac.md) | 259 | `result-track:255bcff9dd7f28b9f654b1accc622b46c8a12334a6485df35e51fec2fb4b301f` |
| 17 | `theorem` | [corrected_order_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/corrected-order-nonneg--22eb8ca2623c850ef91c1332.md) | 298 | `result-track:22eb8ca2623c850ef91c13328e5991e715c04a1231f77b80ea3a53dd2ec579f3` |
| 18 | `theorem` | [riemann_hypothesis_iff_no_right_shifted_values](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/riemann-hypothesis-iff-no-right-shifted-values--31636c36fc16a51d7c6a5e87.md) | 327 | `result-track:31636c36fc16a51d7c6a5e87a4332e891cf9aba37455cee3c321a264a9488ea2` |
| 19 | `theorem` | [riemann_hypothesis_of_uniform_lower_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/riemann-hypothesis-of-uniform-lower-bound--4a07c097e1b94480a98690a9.md) | 355 | `result-track:4a07c097e1b94480a98690a93464934d8c8de559bd5fee5de6294f99607f2231` |
| 20 | `theorem` | [bridge_obligation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Bridge/Variant45b938d52be1ad19551492f2f49228d44b1840d653daf23265aafbda8fab7e5d.lean/declarations/bridge-obligation--baadd5feeaa2fd54d248bd0d.md) | 386 | `result-track:baadd5feeaa2fd54d248bd0df33dc69ebf8d5b6f9261fc6a1a0eb7dfa0b27d11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
