# Verification target: GRWTSK.Analysis.MeasureTheory.PartitionFiltration.Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "23a6b95dd6907324bdd96381c8abd4fc1b1329e4",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `23a6b95dd6907324bdd96381c8abd4fc1b1329e4`.

Source path: `GRWTSK/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.CountablyGenerated` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Process.Filtration` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [partitionFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/partitionfiltration--3bd7de64e2e31f700980d952.md) | 48 | `declaration-track:3bd7de64e2e31f700980d952c3712ac2fbaed1ea0216bb1851fe278105bdda8c` |
| 2 | `lemma` | [measurableSet_partitionFiltration_of_mem](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurableset-partitionfiltration-of-mem--3227793578dd0ff7707b8d8c.md) | 54 | `result-track:3227793578dd0ff7707b8d8ccf077fd197842cc2014ee7695b1d6a2cecefc009` |
| 3 | `lemma` | [measurableSet_partitionFiltration_memPartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurableset-partitionfiltration-mempartitionset--4877b65f76ee9887c3a79518.md) | 59 | `result-track:4877b65f76ee9887c3a79518f3e1f9ee9eff1ce65658e1b14d6b64b4d7d1486c` |
| 4 | `lemma` | [measurable_memPartitionSet_subtype](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurable-mempartitionset-subtype--48e89d9fd05b0f67827451ef.md) | 64 | `result-track:48e89d9fd05b0f67827451eff479b8ba742c365d633cdc54c0326285e1639c81` |
| 5 | `lemma` | [measurable_partitionFiltration_memPartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurable-partitionfiltration-mempartitionset--5bc39f5054dac0e0a54961c2.md) | 78 | `result-track:5bc39f5054dac0e0a54961c2af52cd542993c12d9117ba1c8ab22b5070622d85` |
| 6 | `lemma` | [measurable_memPartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurable-mempartitionset--59db4596005d890a062c91b5.md) | 82 | `result-track:59db4596005d890a062c91b58923f3d3352f586124ed87a5a463165dd3525961` |
| 7 | `lemma` | [iSup_partitionFiltration_eq_generateFrom_range](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/isup-partitionfiltration-eq-generatefrom-range--a797ba565b274309f0c9c187.md) | 86 | `result-track:a797ba565b274309f0c9c187138edbeee9cc926cd27bae5a96dc2d5b87af52fd` |
| 8 | `lemma` | [iSup_partitionFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/isup-partitionfiltration--054592d455adb401bcdec889.md) | 91 | `result-track:054592d455adb401bcdec88965f302ffd22877695d21125ff5f8c905edf32084` |
| 9 | `def` | [countableFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/countablefiltration--3f8676da2590945c410dc9bc.md) | 104 | `declaration-track:3f8676da2590945c410dc9bc268e994860e6386d506988da3173c5677933f1aa` |
| 10 | `lemma` | [measurableSet_countableFiltration_of_mem](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurableset-countablefiltration-of-mem--5c36b01d4a0ba196f148ec1a.md) | 110 | `result-track:5c36b01d4a0ba196f148ec1a92abcabe339db9baefc24be2eb8f5d35a5d7c649` |
| 11 | `lemma` | [measurableSet_countableFiltration_countablePartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurableset-countablefiltration-countablepartitionset--d3f9b6cdade720a94c775d6b.md) | 115 | `result-track:d3f9b6cdade720a94c775d6beee4ce7a9dd93fccf3b795dd374f57699366529d` |
| 12 | `lemma` | [measurable_countablePartitionSet_subtype](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurable-countablepartitionset-subtype--ac9f763d13bf0d154f7d2441.md) | 119 | `result-track:ac9f763d13bf0d154f7d24410cb4120310fd580c42bdb97edbb462e25cf3a27a` |
| 13 | `lemma` | [measurable_countableFiltration_countablePartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurable-countablefiltration-countablepartitionset--af8c92d8f1dc3f9558861b3f.md) | 126 | `result-track:af8c92d8f1dc3f9558861b3f0785cb0f26e52e781a60fe0f718d4f5d59ddb327` |
| 14 | `lemma` | [measurable_countablePartitionSet](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/measurable-countablepartitionset--61e462f1f1d7271c68a79a20.md) | 131 | `result-track:61e462f1f1d7271c68a79a2042dde1699e37d97a0f722f713c07d735022be3ed` |
| 15 | `lemma` | [iSup_countableFiltration](../../../../../mathematics/Analysis/MeasureTheory/PartitionFiltration/Varianta6297dfef76d89817323dcf9d51a60299c698e1b77a5311e06a07d4560fd51a4.lean/declarations/isup-countablefiltration--f9cad67f0f72cfcd6308382f.md) | 137 | `result-track:f9cad67f0f72cfcd6308382f0dac8e108c0f947b0b89c3bea1a263a4e90ec318` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
