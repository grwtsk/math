# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.PrimeHarmonicPrefixAudit.Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b6c60e5e99a997fd8bbe50ab8cbc60681faf208",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b6c60e5e99a997fd8bbe50ab8cbc60681faf208`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ThetaErrorMoments` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.AbelSummation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeHarmonicPrefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeharmonicprefix--4a2b2393d111c79000616962.md) | 21 | `declaration-track:4a2b2393d111c79000616962f05773103283d8221208f12b08b3b98abe955439` |
| 2 | `theorem` | [primeHarmonicPrefix_eq_log_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeharmonicprefix-eq-log-sum--5266164f9d8c0f4941dd8d97.md) | 26 | `result-track:5266164f9d8c0f4941dd8d972d14c04dd5ea994c5dab326e7687d5ee8f8164ed` |
| 3 | `theorem` | [primeHarmonicPrefix_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeharmonicprefix-zero--bc545395505c3631ba127dcb.md) | 36 | `result-track:bc545395505c3631ba127dcb675c3315a80af64f3c866ced6cdec2e9eb24511b` |
| 4 | `theorem` | [primeHarmonicPrefix_log_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeharmonicprefix-log-two--7e651eedafc63f9d4537a305.md) | 40 | `result-track:7e651eedafc63f9d4537a305772fb503d2e450cd72cf0d444d972b88db29edf9` |
| 5 | `theorem` | [thetaLogError_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/thetalogerror-zero--4beea4af9823fb025e33f913.md) | 45 | `result-track:4beea4af9823fb025e33f913eeb14783d121c2f7ab7a7ecb1a834af0a21f6cb4` |
| 6 | `def` | [primeWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeweight--acdd06326721be5b3820409c.md) | 48 | `declaration-track:acdd06326721be5b3820409c945539b4c8f21c506d85c8e8c60947f735301153` |
| 7 | `theorem` | [primeWeight_prefix](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeweight-prefix--1838fcf568334b90489f17d2.md) | 50 | `result-track:1838fcf568334b90489f17d26c1951c49bc67a21d8c318c9464cc296f3cd662a` |
| 8 | `theorem` | [primeHarmonicPrefix_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeharmonicprefix-eq--7c58b51894ba5d2439f79a47.md) | 55 | `result-track:7c58b51894ba5d2439f79a47fc0c036146cad5cf2ae0136c48ac415dcbdf15b0` |
| 9 | `theorem` | [theta_div_sq_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/theta-div-sq-integrableon--05aea3cfcaeba031adb3f421.md) | 85 | `result-track:05aea3cfcaeba031adb3f421d8079d26279e0081a60bdc121d6e268e91dcd96b` |
| 10 | `theorem` | [primeHarmonicPrefix_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeharmonicprefix-abel--8a3795cfbddd61a63a9e7cfb.md) | 100 | `result-track:8a3795cfbddd61a63a9e7cfbcd0ed8e61646874a28a763b2423c8804eb26d5a8` |
| 11 | `theorem` | [thetaLogError_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/thetalogerror-intervalintegrable--9f6c265a6a718fc7c63ca0d5.md) | 131 | `result-track:9f6c265a6a718fc7c63ca0d5babbaaf41454a881e9d3a0991150900aa9077776` |
| 12 | `theorem` | [theta_div_sq_log_substitution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/theta-div-sq-log-substitution--5dc34c98a5e1fe7edcad05a8.md) | 151 | `result-track:5dc34c98a5e1fe7edcad05a813e90aa7c645b830cd21d139cd8f69618cecbcce` |
| 13 | `theorem` | [primeHarmonicPrefix_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/PrimeHarmonicPrefixAudit/Variant87599143d0075cc10a8500405f1ab7e004e9e51c28230dc872fb08d0699e893e.lean/declarations/primeharmonicprefix-formula--808ed3ba0d3087217b315227.md) | 168 | `result-track:808ed3ba0d3087217b3152279fc00457a72d10049e409664ddd1fcb6a086d6ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
