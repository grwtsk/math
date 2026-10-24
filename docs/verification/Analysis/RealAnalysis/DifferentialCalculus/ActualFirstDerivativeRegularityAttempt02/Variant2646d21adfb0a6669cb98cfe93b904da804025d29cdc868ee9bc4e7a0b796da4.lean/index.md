# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualFirstDerivativeRegularityAttempt02.Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f85ccb998bf4a9376cc430b2cfb0decf5e1f18f6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f85ccb998bf4a9376cc430b2cfb0decf5e1f18f6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualSourceWeakSecondDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.RCLike` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.AbsolutelyContinuousFun` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_first_derivative_eq_projection](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/declarations/actual-first-derivative-eq-projection--63aff0dd7f54f808b1f8cdb1.md) | 26 | `result-track:63aff0dd7f54f808b1f8cdb17aef890690900209b820034aa20fe8605473bbaa` |
| 2 | `theorem` | [actual_first_derivative_lipschitz](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/declarations/actual-first-derivative-lipschitz--f4b50605651ae8a7e908200d.md) | 46 | `result-track:f4b50605651ae8a7e908200db8f26e235fad08fe7ce7f926b90f575a0968afb3` |
| 3 | `theorem` | [actual_first_derivative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/declarations/actual-first-derivative-absolutelycontinuous--fd2ce30f7fc3f7f862cf955c.md) | 60 | `result-track:fd2ce30f7fc3f7f862cf955c107ba15919bd4c5f99805c4a57919afc7259bef0` |
| 4 | `theorem` | [actual_first_derivative_hasDerivAt_of_ne_endpoints](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/declarations/actual-first-derivative-hasderivat-of-ne-endpoints--342e6400fb890063cf912dca.md) | 66 | `result-track:342e6400fb890063cf912dca7cb7fdb4510d7192c8e1ca2cea7e52981920ab6b` |
| 5 | `theorem` | [actual_first_derivative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualFirstDerivativeRegularityAttempt02/Variant2646d21adfb0a6669cb98cfe93b904da804025d29cdc868ee9bc4e7a0b796da4.lean/declarations/actual-first-derivative-ae-hasderivat--b54aa06cdd5724b53b61d6ba.md) | 90 | `result-track:b54aa06cdd5724b53b61d6ba3f6e61f87b781f87fbb6bbeceba88fc63b792f6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
