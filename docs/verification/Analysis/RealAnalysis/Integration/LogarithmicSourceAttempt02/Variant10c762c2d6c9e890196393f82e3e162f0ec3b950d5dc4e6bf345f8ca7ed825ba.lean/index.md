# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogarithmicSourceAttempt02.Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7644df4d9831e5d6dbe599d87baf49c7071c227",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7644df4d9831e5d6dbe599d87baf49c7071c227`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.JacobianOneDim` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveLogLift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/positiveloglift--eb1707d0ad8be3c9d31459cf.md) | 18 | `declaration-track:eb1707d0ad8be3c9d31459cfd364c4b98cf2276db7b86288288491ab22df3129` |
| 2 | `theorem` | [positiveLogLift_exp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/positiveloglift-exp--e0a03ea391827755efc18d69.md) | 21 | `result-track:e0a03ea391827755efc18d691e822583edb6a073295ebc8669311ab30deb1beb` |
| 3 | `theorem` | [exp_square_weight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/exp-square-weight--c6caeef511c5e81db02e10f1.md) | 25 | `result-track:c6caeef511c5e81db02e10f1f86336b04186b7e4b1e6dbde7cf4558e4c2a983d` |
| 4 | `theorem` | [lift_square_jacobian](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/lift-square-jacobian--2c7e1ba2c2980767762f35ce.md) | 31 | `result-track:2c7e1ba2c2980767762f35ceb5a6c9914d087d5a449bf5edc16ae038a82f7fa1` |
| 5 | `theorem` | [lift_square_integrable_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/lift-square-integrable-iff--368e22104f502eaf0db52cfa.md) | 38 | `result-track:368e22104f502eaf0db52cfa7947c2d3d69eb6877608f88f2a46e46c12361c7d` |
| 6 | `theorem` | [lift_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/lift-square-integral--5f0350b72ff0c00ec82c2b02.md) | 49 | `result-track:5f0350b72ff0c00ec82c2b02850a3ecd1cb8977f8a3dc55059b258f3a521fcd0` |
| 7 | `def` | [actualLogSource](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/actuallogsource--1b8470831c57d651e7439a2a.md) | 60 | `declaration-track:1b8470831c57d651e7439a2a31a593f49fcc2a928ea03db437202f44f3ef83b6` |
| 8 | `theorem` | [actualLogSource_square_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/actuallogsource-square-integrable--396ec78c24e688318258652a.md) | 63 | `result-track:396ec78c24e688318258652a60a805e7f295fdeffa7df26c95fe7fd64321cfa2` |
| 9 | `theorem` | [actualLogSource_square_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/actuallogsource-square-integral--852f13a7de86903cd131a9f3.md) | 67 | `result-track:852f13a7de86903cd131a9f351afb25d1110f1bd0a17917c0d69406d7a6044dc` |
| 10 | `theorem` | [positiveLogLift_dilation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogarithmicSourceAttempt02/Variant10c762c2d6c9e890196393f82e3e162f0ec3b950d5dc4e6bf345f8ca7ed825ba.lean/declarations/positiveloglift-dilation--3cd1459f1627cc3bb46b8c23.md) | 72 | `result-track:3cd1459f1627cc3bb46b8c2384134c40bcd55626b9edaf3d5bc1dfadf0f27d42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
