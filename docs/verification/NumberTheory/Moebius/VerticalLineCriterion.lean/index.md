# Verification target: GRWTSK.NumberTheory.Moebius.VerticalLineCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3acfdb95ea3ca582b50458577db96e553be21fe4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3acfdb95ea3ca582b50458577db96e553be21fe4`.

Source path: `GRWTSK/NumberTheory/Moebius/VerticalLineCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/VerticalLineCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.DampedRecordingParseval`](../../../../mathematics/NumberTheory/Moebius/DampedRecordingParseval.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.EnergyAbscissa`](../../../../mathematics/NumberTheory/Moebius/EnergyAbscissa.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [verticalLineMass](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/verticallinemass--97dcc267939ca3a7a0101ca5.md) | 28 | `declaration-track:97dcc267939ca3a7a0101ca55b69b1f9c562f6ff67c4ef39d0e5501f2c564066` |
| 2 | `theorem` | [verticalLineMass_eq_weightedWindow](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/verticallinemass-eq-weightedwindow--f9d71c5d65dc83f1b390a683.md) | 33 | `result-track:f9d71c5d65dc83f1b390a6833d49ed77723a540008ec9abe1f0720b9dfbed910` |
| 3 | `theorem` | [verticalLineMass_eq_completed](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/verticallinemass-eq-completed--2651802f33361fbf0325a2c9.md) | 39 | `result-track:2651802f33361fbf0325a2c9bbe5d6fb254726f4d82015ae37b5ba422ffeb2e1` |
| 4 | `def` | [CompletedVerticalLineUniform](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/completedverticallineuniform--105cf3ac80072ffd140c2993.md) | 55 | `declaration-track:105cf3ac80072ffd140c299360e8b797e18c932fa4d6eb598e864deb51e38cae` |
| 5 | `theorem` | [pickupEnergy_le_exp_mul_weightedWindow](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/pickupenergy-le-exp-mul-weightedwindow--b7e24ad91048eff6278cf93d.md) | 61 | `result-track:b7e24ad91048eff6278cf93dcf45eaf28ae1b88c7327a68e216461eaed6c46a2` |
| 6 | `theorem` | [verticalLineMass_uniform_of_integrable](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/verticallinemass-uniform-of-integrable--031bf5e12e8601601883d630.md) | 87 | `result-track:031bf5e12e8601601883d6307a6327b3c980f3063e072e0a437e8317e3726c81` |
| 7 | `theorem` | [completedVerticalLineUniform_of_weightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/completedverticallineuniform-of-weightedenergyall--3d3fc147447e804ccd295930.md) | 100 | `result-track:3d3fc147447e804ccd2959303e2e71f56f7bdee5aa0eb8e2c06be3fbecbb93a0` |
| 8 | `theorem` | [verticalLineMass_uniform_above_half](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/verticallinemass-uniform-above-half--094c93903da31017bcfe40fa.md) | 111 | `result-track:094c93903da31017bcfe40fa9e17f45f4587733b896166f6cd2a50fdd351d47b` |
| 9 | `theorem` | [pickupEnergySubexp_of_completedVerticalLineUniform](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/pickupenergysubexp-of-completedverticallineuniform--2f4314c967448d12c822a0c6.md) | 120 | `result-track:2f4314c967448d12c822a0c655a71ef86295ff89527768849774b4b4b1baaa51` |
| 10 | `theorem` | [completedVerticalLineUniform_iff_weightedEnergyAll](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/completedverticallineuniform-iff-weightedenergyall--b8aa1de12fb367753360552f.md) | 135 | `result-track:b8aa1de12fb367753360552fe3a5e310e45aa8023ba1ae0dabe7f31bce6795c9` |
| 11 | `theorem` | [completedVerticalLineUniform_iff_energyAbscissa_zero](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/completedverticallineuniform-iff-energyabscissa-zero--ecec4e4bdee37cb443675ea0.md) | 143 | `result-track:ecec4e4bdee37cb443675ea09f93c8eda73e0d219eb940c6aae9fed99823a744` |
| 12 | `theorem` | [riemannHypothesis_of_completedVerticalLineUniform](../../../../mathematics/NumberTheory/Moebius/VerticalLineCriterion.lean/declarations/riemannhypothesis-of-completedverticallineuniform--fcd06ac86dd2ab6cf8e64cf8.md) | 150 | `result-track:fcd06ac86dd2ab6cf8e64cf8a97be48b8ef9301daff49dedd6d81cd09b5762c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
