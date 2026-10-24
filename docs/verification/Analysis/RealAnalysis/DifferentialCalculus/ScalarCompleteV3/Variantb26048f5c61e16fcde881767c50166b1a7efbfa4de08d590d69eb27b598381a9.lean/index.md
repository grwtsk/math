# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ScalarCompleteV3.Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3016575b7b1105953a1c246847918a1b770cc367",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3016575b7b1105953a1c246847918a1b770cc367`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleL2Continuity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [normalizationDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/normalizationderivative--492914f042ea3eb252b58837.md) | 34 | `declaration-track:492914f042ea3eb252b588375e0037e9d4cef03d3940ddd35e92a25bd37bb256` |
| 2 | `theorem` | [sourceNormalization_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/sourcenormalization-hasderivat--e2bd32dd9a50e231e08a52e7.md) | 38 | `result-track:e2bd32dd9a50e231e08a52e7e947d04d334775d7f82ec6857e6ba8740a85007e` |
| 3 | `theorem` | [sourceNormalization_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/sourcenormalization-deriv--d44f41c11eafcaeabd5f2153.md) | 54 | `result-track:d44f41c11eafcaeabd5f2153c52ee8e459760fdeab57f4b6a3be47f38fd1c393` |
| 4 | `def` | [scaleAmplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/scaleamplitude--3f567d65061875a46f3bbd15.md) | 59 | `declaration-track:3f567d65061875a46f3bbd15c49045a44866ec6dd117d36fb9df1ad0ffe3163d` |
| 5 | `theorem` | [scaleAmplitude_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/scaleamplitude-eq--ac9dd577f597601dd4c33e20.md) | 62 | `result-track:ac9dd577f597601dd4c33e2054d633c4988e511d502b8f207cf0d7fae7e2eda6` |
| 6 | `theorem` | [scaleProfile_eq_amplitude](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/scaleprofile-eq-amplitude--695d885f94a61ee52c399675.md) | 67 | `result-track:695d885f94a61ee52c399675270448ba8257ed85027a3a2964f112ec4e7c4236` |
| 7 | `theorem` | [scaleAmplitude_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/scaleamplitude-hasderivat--b9efdaf71c784ccb51f1a368.md) | 75 | `result-track:b9efdaf71c784ccb51f1a3684ab90c8732687fb19735ab72c83f4e02994f713f` |
| 8 | `def` | [scaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/scalederivative--fc3f9b4b4b47d187ec77e5a0.md) | 90 | `declaration-track:fc3f9b4b4b47d187ec77e5a0bf58bbbb4f7cfdc8302846daf84e1ea3be13ee34` |
| 9 | `theorem` | [scaleDerivative_eq_actual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/scalederivative-eq-actual--95907fceacdb9467f92ca4e3.md) | 99 | `result-track:95907fceacdb9467f92ca4e3c8f47bde85804ffd1fe98eeb51c732d34d3e89da` |
| 10 | `theorem` | [scaleProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/scaleprofile-hasderivat--0ed92d126f35197b9dab680b.md) | 111 | `result-track:0ed92d126f35197b9dab680b8bbf2b2d4be54e2013cdd865d55244fc118636ba` |
| 11 | `theorem` | [normalizedSource_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ScalarCompleteV3/Variantb26048f5c61e16fcde881767c50166b1a7efbfa4de08d590d69eb27b598381a9.lean/declarations/normalizedsource-hasderivat--45257e381e7a3c2d5227e0c5.md) | 135 | `result-track:45257e381e7a3c2d5227e0c556d9b60a8eb5dbdef0025df3c16d5b75ee9a6234` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
