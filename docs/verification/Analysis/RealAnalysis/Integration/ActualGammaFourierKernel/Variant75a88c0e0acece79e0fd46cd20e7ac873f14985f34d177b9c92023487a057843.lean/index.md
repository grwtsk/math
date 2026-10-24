# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ActualGammaFourierKernel.Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc6cc2364ebcbbe17592a4aa32f90de128c3a53b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc6cc2364ebcbbe17592a4aa32f90de128c3a53b`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CenteredDigammaKernel` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelFourier` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Prod` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jointIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/jointintegrand--250b8fe793c666ba8032cbc8.md) | 26 | `declaration-track:250b8fe793c666ba8032cbc8e4114a2d72038c0051705aec811315dd8903e258` |
| 2 | `theorem` | [sourceSquare_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/sourcesquare-measurable--75e300df268d0ffb7d315e35.md) | 29 | `result-track:75e300df268d0ffb7d315e3579ecc7973fe864639f4b392d20dcf0540eca0309` |
| 3 | `theorem` | [joint_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/joint-measurable--ebf0afeb1a4ed23a0d0ea6a2.md) | 34 | `result-track:ebf0afeb1a4ed23a0d0ea6a2fbe049fcad84781a3dba3447e5def63e1ef6e461` |
| 4 | `theorem` | [joint_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/joint-nonneg--c75bc1b6e999c6ed3be1ee92.md) | 40 | `result-track:c75bc1b6e999c6ed3be1ee9230cf7541ebbc3bca165d4ebb111cfd44c121919d` |
| 5 | `theorem` | [centered_frequency_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/centered-frequency-integrable--73deced9f054c951f98fe707.md) | 47 | `result-track:73deced9f054c951f98fe7073dfb41504ed07c17d9120b1c8e708e2f4ab5f8e7` |
| 6 | `theorem` | [inner_norm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/inner-norm-integral--e9f08e23d5a1cc8ac9b275ac.md) | 62 | `result-track:e9f08e23d5a1cc8ac9b275ac206fa3a5c2d804b36a82ececeee8e2bae2e610bc` |
| 7 | `theorem` | [joint_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/joint-integrable--270e826f88080a3405d2d58c.md) | 75 | `result-track:270e826f88080a3405d2d58c6285e041f81f9af4657aa3693351a9d387b2b175` |
| 8 | `theorem` | [inner_frequency_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/inner-frequency-integral--23afb08722bff856e94d3284.md) | 83 | `result-track:23afb08722bff856e94d328494d5ba0996d7be86fdd2e184befa917dae391f82` |
| 9 | `theorem` | [centered_source_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/centered-source-integral--30f3832bec847d7f0525e26b.md) | 102 | `result-track:30f3832bec847d7f0525e26b93cb3f2cb9e49c6e78b3f1f0da700345f2dcf3a2` |
| 10 | `theorem` | [actual_sourceGamma_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ActualGammaFourierKernel/Variant75a88c0e0acece79e0fd46cd20e7ac873f14985f34d177b9c92023487a057843.lean/declarations/actual-sourcegamma-identity--a8ebbb77a56d0e510d35ae49.md) | 126 | `result-track:a8ebbb77a56d0e510d35ae49817a3f96ecb22cafeddccc6412acc073b19727ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
