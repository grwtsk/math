# Verification target: GRWTSK.Analysis.MeasureTheory.SeparableMeasure.Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "074ad086f166d02a09dce58d5fee60fd0ce3f53b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `074ad086f166d02a09dce58d5fee60fd0ce3f53b`.

Source path: `GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.SimpleFuncDenseLp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.SetAlgebra` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Measure.MeasureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense--595c5928e25928ebc6810e67.md) | 86 | `declaration-track:595c5928e25928ebc6810e671ba16240fc02c5608b2b7095b88fee634da6b757` |
| 2 | `theorem` | [Measure.MeasureDense.nonempty](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-nonempty--4135723806e7ef7f1245b84a.md) | 92 | `result-track:4135723806e7ef7f1245b84ad2a02efb6f5a69824ad4e08186cf5dcb5bf1f131` |
| 3 | `theorem` | [Measure.MeasureDense.nonempty'](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-nonempty--1fe108d43f18f50cf7db09b5.md) | 96 | `result-track:1fe108d43f18f50cf7db09b583de15889ea5e36bf8df6beb3a7f1bff66118c12` |
| 4 | `theorem` | [measureDense_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measuredense-measurableset--3ee873323300c4fb840ab42e.md) | 104 | `result-track:3ee873323300c4fb840ab42e3854f42bee28b67365c12597e99f78b710d7327f` |
| 5 | `theorem` | [Measure.MeasureDense.completion](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-completion--f74b079616b1b019ffe1afbb.md) | 108 | `result-track:f74b079616b1b019ffe1afbb4e492e4608f6950473b50d166c936413b167eb22` |
| 6 | `lemma` | [Measure.MeasureDense.fin_meas_approx](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-fin-meas-approx--c11bcc65a917486a110dcab7.md) | 121 | `result-track:c11bcc65a917486a110dcab7f2c5752785c58d1a4abcf0c93f41635d51e49939` |
| 7 | `theorem` | [Measure.MeasureDense.indicatorConstLp_subset_closure](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-indicatorconstlp-subset-closure--05280d7fad46f82042f55f99.md) | 131 | `result-track:05280d7fad46f82042f55f99d70b6fe68f07f984b964833cfccacd0d0d112edd` |
| 8 | `theorem` | [Measure.MeasureDense.fin_meas](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-fin-meas--ba23b0c947df99409e9e5541.md) | 166 | `result-track:ba23b0c947df99409e9e5541ae771d61eb6a5047d6b5c6d2f02926752de24f64` |
| 9 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_finite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-finite--6ebd2036b38296ec1426333b.md) | 176 | `result-track:6ebd2036b38296ec1426333b59cfb2b0f52e4d45909a75668b566fdf96319d8a` |
| 10 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-sigmafinite--b44ad90dd1c4ebddbb284f38.md) | 266 | `result-track:b44ad90dd1c4ebddbb284f38e24dd732c6d6a92c9cc8a6f5db6189c06c2d3573` |
| 11 | `class` | [IsSeparable](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/isseparable--eaad1d4cab09456c9f29e8db.md) | 335 | `declaration-track:eaad1d4cab09456c9f29e8db5bb2c77729f501eccbb69536080c7b785d576506` |
| 12 | `theorem` | [exists_countable_measureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/exists-countable-measuredense--d22b8b37ff145a7ada79bf8c.md) | 341 | `result-track:d22b8b37ff145a7ada79bf8cd930b8cf0ae5d14c6b48d11af50476fdc80d1777` |
| 13 | `theorem` | [isSeparable_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/isseparable-of-sigmafinite--0089f1ee576b3195effd5fdc.md) | 348 | `result-track:0089f1ee576b3195effd5fdc2e26365f52bd693986bbbe7be8c275fdf572daef` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/instance--47cc210cb4ca8393b4c08a19.md) | 378 | `declaration-track:47cc210cb4ca8393b4c08a19d88ecb0cf491c501a87509ffbaa8d5ea54ea4c1a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/instance--60662fd1bbbcf6cf4e4dacb9.md) | 410 | `declaration-track:60662fd1bbbcf6cf4e4dacb99cecb03bb4fd927da8ce853ae2c1fb67febf08b4` |
| 16 | `instance` | [Lp.SecondCountableTopology](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant4120701c67be7a4cee64273daf249fee3ee2f5a227f63ddc2c9602e7250bf87e.lean/declarations/lp-secondcountabletopology--5b364faefb219766ade38bfd.md) | 423 | `declaration-track:5b364faefb219766ade38bfd11f8cf9ea28aab34833d0591b4e8127c9948f7f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
