# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualLaurentSlopeAttempt01.Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f207dcdbe232d621cba6e1f87c9ce925bb386dba",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f207dcdbe232d621cba6e1f87c9ce925bb386dba`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [regularNegativeLogDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/declarations/regularnegativelogderivative--7ebc6b302badf89a8c54c43e.md) | 19 | `declaration-track:7ebc6b302badf89a8c54c43e0dfe26f5b9101f8f07eea645cb0087fae0af2d51` |
| 2 | `theorem` | [actual_regular_zeta_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/declarations/actual-regular-zeta-derivative--504fefccdea2b8a6108ae478.md) | 22 | `result-track:504fefccdea2b8a6108ae4787ae2ebd0e0831900cebba87ea9f374bb9728d59b` |
| 3 | `theorem` | [actual_regular_zeta_second_derivative_at_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/declarations/actual-regular-zeta-second-derivative-at-one--8d2414711fd80336516504c5.md) | 28 | `result-track:8d2414711fd80336516504c5ce95bb34bad89da4365c742ad028891d88a146d0` |
| 4 | `theorem` | [actual_regular_negative_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/declarations/actual-regular-negative-value--6b3e8ff6b0366442b479c8ff.md) | 39 | `result-track:6b3e8ff6b0366442b479c8ff709f48f18cea9542132bc770cbd404b430c9af04` |
| 5 | `theorem` | [actual_regular_negative_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/declarations/actual-regular-negative-derivative--19484954453f49025b5a3760.md) | 43 | `result-track:19484954453f49025b5a3760bd1d6a7b7ea2a1a256a6d02bedb952f1a3970a42` |
| 6 | `theorem` | [actual_regular_negative_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/declarations/actual-regular-negative-slope--4a603fe256db921132ffa288.md) | 53 | `result-track:4a603fe256db921132ffa288c22adfdbd0b3665861cc4e0aece6699aaff173bf` |
| 7 | `theorem` | [actual_negative_log_regularization](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualLaurentSlopeAttempt01/Variantdb2a35d78cbf1ee9c686526bbba60dd6c807bf8f169782e69a00d9e0fae2261b.lean/declarations/actual-negative-log-regularization--58700d64e073ada9e53b2631.md) | 61 | `result-track:58700d64e073ada9e53b26319e82fa5016002657ffa0712cd1a3873cc3b705d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
