# Verification target: GRWTSK.Analysis.MeasureTheory.ProperPowerRemainderLaplace.Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86dd0376ab0a81d43c71d70152e18266a1e35917",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86dd0376ab0a81d43c71d70152e18266a1e35917`.

Source path: `GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.ProperPowerAsymptotic` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourceParameterMeasurability` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTRateOne` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [properPrimePowerContribution_measurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/declarations/properprimepowercontribution-measurable--169d2e9c78008e9786d773ed.md) | 23 | `result-track:169d2e9c78008e9786d773ed2b1312e6a8244ef8297ca0459b60d7bbc5541c0e` |
| 2 | `theorem` | [sourcePowerRemainder_eq_finite_source](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/declarations/sourcepowerremainder-eq-finite-source--e680a120b745169e96736f18.md) | 53 | `result-track:e680a120b745169e96736f18df0585dd848fa6b4bfdd8b435e057d705a9c0e15` |
| 3 | `theorem` | [sourcePowerRemainder_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/declarations/sourcepowerremainder-aestronglymeasurable--c61ed22346355e4a9f2d14f1.md) | 60 | `result-track:c61ed22346355e4a9f2d14f1cb8eb9be95bb9da98668b67ef0597733d6fa1f7d` |
| 4 | `theorem` | [weighted_sourcePowerRemainder_aestronglyMeasurable](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/declarations/weighted-sourcepowerremainder-aestronglymeasurable--6935d2000aa8108c6c5eb7c3.md) | 71 | `result-track:6935d2000aa8108c6c5eb7c32ef4f7518ebd2cea9ffd6e803081cefece9e011c` |
| 5 | `theorem` | [weighted_sourcePowerRemainder_bound](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/declarations/weighted-sourcepowerremainder-bound--229dd8451bedf8011dd851d1.md) | 83 | `result-track:229dd8451bedf8011dd851d1b110a92d73602fe6d468ed8eb758ff2f7fb144aa` |
| 6 | `theorem` | [sourcePowerRemainder_all_positive_rates](../../../../../mathematics/Analysis/MeasureTheory/ProperPowerRemainderLaplace/Varianta0bb2c64b7e30c7f245b0b14df146d73802d94c14dabacda30a1c13f40a5eb3f.lean/declarations/sourcepowerremainder-all-positive-rates--d62f72ea4dfc5dd24a355d32.md) | 96 | `result-track:d62f72ea4dfc5dd24a355d3215baedbde7581dd3b417ab43f65bb8968b56b847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
