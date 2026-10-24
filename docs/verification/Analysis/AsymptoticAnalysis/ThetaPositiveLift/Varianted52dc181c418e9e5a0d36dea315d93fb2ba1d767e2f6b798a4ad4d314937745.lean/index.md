# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a751d462342e92a910edc8636fcd48f69f93bbd",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a751d462342e92a910edc8636fcd48f69f93bbd`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaModeWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight--7ea6217c19b4f31fd10e6a15.md) | 29 | `declaration-track:7ea6217c19b4f31fd10e6a15b3561366ebf57abe8a45f0c49910ce7d3c0bc01d` |
| 2 | `theorem` | [thetaModeWeight_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-positive--940bb547c670e44b70955798.md) | 32 | `result-track:940bb547c670e44b709557989c2f7e1cc72f82d6f6e54359209ba1868e6327e3` |
| 3 | `theorem` | [thetaModeWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-summable--1d5a8e2c2170dc94764b0767.md) | 37 | `result-track:1d5a8e2c2170dc94764b076726da397eb328cc1feeef931edfda84fe4a680c00` |
| 4 | `theorem` | [thetaModeWeight_sum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-sum-one--c9c1bb9ea1d9e54127c2baa1.md) | 41 | `result-track:c9c1bb9ea1d9e54127c2baa1bdf5c94507415f8d8db00d24afb1f5f1fe283ef3` |
| 5 | `theorem` | [thetaPhiTerm_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphiterm-zero-le--11914fbf17da9fcf6e2978ee.md) | 48 | `result-track:11914fbf17da9fcf6e2978ee52e1941f63eeff134588c728131a60645012eace` |
| 6 | `theorem` | [thetaModeWeight_le_modeRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-le-moderatio--bac744bb32b78d123a72246d.md) | 52 | `result-track:bac744bb32b78d123a72246dc3ff21e776ef43e1e92472d10789e16df2112ac3` |
| 7 | `lemma` | [weighted_sub_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/weighted-sub-sq-summable--65bdffd06d4838f12f4e1488.md) | 58 | `result-track:65bdffd06d4838f12f4e14885ebf0fcd60c747f6d1ea2aa1eb57dc1a8ebbc308` |
| 8 | `lemma` | [tsum_weighted_sub_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/tsum-weighted-sub-sq--ee6e0295d72cddaa02e34a01.md) | 66 | `result-track:ee6e0295d72cddaa02e34a0184c29b2e736b0749654a1696bd40b5dbffed9095` |
| 9 | `lemma` | [weighted_variance_le_center](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/weighted-variance-le-center--ba298c29eb3425ce2f6ade24.md) | 80 | `result-track:ba298c29eb3425ce2f6ade2471db6399963c868d81b1d3d377f0ef42d013550d` |
| 10 | `lemma` | [weighted_variance_le_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/weighted-variance-le-tail-bound--8d442de08c8d51114a7bf1aa.md) | 88 | `result-track:8d442de08c8d51114a7bf1aa8d4e6689bc0378d83975d5881db5167c2ebac01e` |
| 11 | `lemma` | [weighted_curvature_variance_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/weighted-curvature-variance-identity--f22cdbedb0f96761c3e07b34.md) | 105 | `result-track:f22cdbedb0f96761c3e07b34554eef72b31feaf65bf72da57b5df09399efa5e1` |
| 12 | `def` | [thetaModeMean](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodemean--f0ffd8bb40f78f9208c9a91c.md) | 119 | `declaration-track:f0ffd8bb40f78f9208c9a91c90a8c1baeef87df4c3017ca9f1847d82fee4d796` |
| 13 | `def` | [thetaModeVariance](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodevariance--b85ad5850071f2f934f85d0b.md) | 123 | `declaration-track:b85ad5850071f2f934f85d0b827286904ca08da468871fea12f9e33000d1b08e` |
| 14 | `theorem` | [thetaModeVariance_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodevariance-nonnegative--a0a6b3e9e381d2d1bf9f3adf.md) | 127 | `result-track:a0a6b3e9e381d2d1bf9f3adf687f4f0513dc4d19eef94a3c72ca5cb08d683339` |
| 15 | `theorem` | [thetaModeWeight_center_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-center-sq-le--19d2ead1efc64a43ab60daf4.md) | 132 | `result-track:19d2ead1efc64a43ab60daf4245ed49a1ad12ca46764ef6b7324e79fd894407d` |
| 16 | `theorem` | [thetaPhi_mul_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphi-mul-score-sq-summable--463ed98cf831e92b0db00534.md) | 162 | `result-track:463ed98cf831e92b0db005348a0393b4a1f787236b008bdbaa07bf585d9fb2d5` |
| 17 | `theorem` | [thetaPhi_mul_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphi-mul-curvature-summable--69eab09a65832be572a41a6e.md) | 176 | `result-track:69eab09a65832be572a41a6efdee5149bbcfac7231ae6154fceb4798ddc703d6` |
| 18 | `theorem` | [thetaModeWeight_score_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-score-summable--a0bf4922194e6695a032d781.md) | 184 | `result-track:a0bf4922194e6695a032d781ee9668f8875aa0916afba7c4d9bd33fa1938bbd1` |
| 19 | `theorem` | [thetaModeWeight_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-score-sq-summable--ec27586ac57bb3934bc557a3.md) | 192 | `result-track:ec27586ac57bb3934bc557a3330b2dd31eca8bd485ef7c2e029ce9f50bca4a8a` |
| 20 | `theorem` | [thetaModeWeight_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodeweight-curvature-summable--cef04dbba715cef4a1377731.md) | 200 | `result-track:cef04dbba715cef4a1377731c2b78a063db03756dfad0370177585951fbc0f8d` |
| 21 | `theorem` | [thetaModeMean_eq_div_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodemean-eq-div-d1--a9cb65f638d2bcabe5bfe2ed.md) | 208 | `result-track:a9cb65f638d2bcabe5bfe2edb07fef6a10c52c84fb89890189c3db29905538ab` |
| 22 | `theorem` | [thetaModeMean_eq_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodemean-eq-logslope--643ab0c6a5c5bdef0e94cd7a.md) | 218 | `result-track:643ab0c6a5c5bdef0e94cd7ad3760d732b5160ee442084457fdb9da651764ccb` |
| 23 | `theorem` | [thetaPhi_logCurvature_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphi-logcurvature-identity--f0cb43000077ce6a4609aa7a.md) | 224 | `result-track:f0cb43000077ce6a4609aa7a8acfb49fac0685c744036c92d3255207694b1c22` |
| 24 | `theorem` | [thetaModeCurvature_expectation_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodecurvature-expectation-le--a9f81cad6420d56d03b40195.md) | 247 | `result-track:a9f81cad6420d56d03b4019593284589b80807bbf9462962cfe2e7358031e1c9` |
| 25 | `theorem` | [thetaModeVariance_lt_ten_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetamodevariance-lt-ten-mul--74ab1ba4fc421653d82dd52b.md) | 257 | `result-track:74ab1ba4fc421653d82dd52babde242097f40043335431015b89f70768bdafa2` |
| 26 | `theorem` | [thetaPhi_strict_logConcavity_raw](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphi-strict-logconcavity-raw--f02ff9429ce0742cff5629ec.md) | 279 | `result-track:f02ff9429ce0742cff5629ec4f1696c2d194f71c5ca6c88f3302e69d74241fcb` |
| 27 | `theorem` | [thetaPhi_strict_logConcavity_curvature](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphi-strict-logconcavity-curvature--b1319aadc2c13ec6c60e45b4.md) | 289 | `result-track:b1319aadc2c13ec6c60e45b42c6bf781b5bdfe1aa108ae70ad28455eddfb3bf9` |
| 28 | `theorem` | [hasDerivAt_thetaPhi_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/hasderivat-thetaphi-logslope--2150d3ac3eff65fbf5a591ef.md) | 295 | `result-track:2150d3ac3eff65fbf5a591efcf719bbfe02464b779ccb7087bc3af80af8e30d3` |
| 29 | `theorem` | [thetaPhi_logSlope_deriv_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphi-logslope-deriv-neg--85e70b676584f4cefee51b12.md) | 303 | `result-track:85e70b676584f4cefee51b1238c41a81900d260f1ca146226fe9e387b54fc6dd` |
| 30 | `theorem` | [thetaPhi_logSlope_antitone](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Varianted52dc181c418e9e5a0d36dea315d93fb2ba1d767e2f6b798a4ad4d314937745.lean/declarations/thetaphi-logslope-antitone--7a8d0de34a738940011a1f9b.md) | 310 | `result-track:7a8d0de34a738940011a1f9b63426fcab04065f6f13ae27decc40893583eefa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
