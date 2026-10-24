# Verification target: GRWTSK.Analysis.MeasureTheory.IntegrationTheorems.LpKernelAverages.WeightedShiftIntegral

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a26a6dd9f777d5d970ce833443296abbe34a7ef0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a26a6dd9f777d5d970ce833443296abbe34a7ef0`.

Source path: `GRWTSK/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 33; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 34; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 35; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 36; external provider; requires a separately pinned dependency.
- [`GRWTSK.Analysis.FunctionSpaces.LebesgueSpaces.FullLineKernelAverages.Translations`](../../../../../../mathematics/Analysis/FunctionSpaces/LebesgueSpaces/FullLineKernelAverages/Translations.lean/index.md) — import line 37; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [weighted_shift_integrable](../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean/declarations/weighted-shift-integrable--94f1848f9bd77e7d9be7192b.md) | 45 | `result-track:94f1848f9bd77e7d9be7192bed95113ce1bdc918e81bd7668ba4b46ec651a1b0` |
| 2 | `def` | [bochnerVector](../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean/declarations/bochnervector--812f05fbe09cad3e262b96b7.md) | 55 | `declaration-track:812f05fbe09cad3e262b96b7165fc5d003b62fd2ed65aafd8657bebc985910e8` |
| 3 | `theorem` | [bochnerVector_norm_le](../../../../../../mathematics/Analysis/MeasureTheory/IntegrationTheorems/LpKernelAverages/WeightedShiftIntegral.lean/declarations/bochnervector-norm-le--21a6e2f22641900b2d068a39.md) | 57 | `result-track:21a6e2f22641900b2d068a39cb8af0e7b7c295d083f3ee9ff81cf99d981f5a17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
