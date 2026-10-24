# Verification target: GRWTSK.Topology.GeneralTopology.ActualCommonMeanNormalization.Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "50747dffefa5d4f81a69145fa08d720c34fe0e64",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `50747dffefa5d4f81a69145fa08d720c34fe0e64`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NormalizedGammaBudget` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commonMeanCenter](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/commonmeancenter--8d45c0b3cd41ea96508fc8af.md) | 19 | `declaration-track:8d45c0b3cd41ea96508fc8afc427cde35eed52f6ad5a24436f35da027f002f70` |
| 2 | `def` | [normalizationBudget](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationbudget--41d69b9bb66657207558c773.md) | 22 | `declaration-track:41d69b9bb66657207558c773d9d723eb0c4d3949cf77033eade764ccdbf721d1` |
| 3 | `def` | [normalizationError](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationerror--ed3f5ec449ed06ab272340f7.md) | 25 | `declaration-track:ed3f5ec449ed06ab272340f7c2c652b71ec3756ea260ed521c712cde4ee68df4` |
| 4 | `theorem` | [normalizationBudget_nonneg](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationbudget-nonneg--b2a89ea0898dfcffc427801f.md) | 28 | `result-track:b2a89ea0898dfcffc427801fcad9b9e807f99a7e7be3d8d8ce239b398c75bdb8` |
| 5 | `theorem` | [normalizationError_eq_deficits](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationerror-eq-deficits--297ac69c7fd285e8a16d3002.md) | 32 | `result-track:297ac69c7fd285e8a16d300271839f0d7fefe1a651dc36dba54f3a1149e2fbeb` |
| 6 | `theorem` | [normalizationError_eq_actual_integral](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationerror-eq-actual-integral--18ec9d448b9e402364c1f7e1.md) | 39 | `result-track:18ec9d448b9e402364c1f7e130da5c901a8ac5af74d57347686c2a727cad2a97` |
| 7 | `theorem` | [normalizationError_bounds](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationerror-bounds--583a9c84a7af817de7bad9f9.md) | 46 | `result-track:583a9c84a7af817de7bad9f9d25eb036d7a223d89b00644c9a76cb7fefc6e4e4` |
| 8 | `theorem` | [sourceMeanOffset_bounds](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemeanoffset-bounds--bffb8479fd850b2de9c368ad.md) | 59 | `result-track:bffb8479fd850b2de9c368ad1c324d132a2148d2852bee191cb612d6190faa72` |
| 9 | `theorem` | [normalizationError_uniform_tail](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationerror-uniform-tail--105790bebd9f6b0393e588e8.md) | 66 | `result-track:105790bebd9f6b0393e588e8b510853c9e6ea098d813bb7427ea41898928dab5` |
| 10 | `theorem` | [sourceMeanOffset_calibration](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemeanoffset-calibration--5acf7b01ffab5666e7a165ad.md) | 73 | `result-track:5acf7b01ffab5666e7a165ad8a08083c2282e866928810437355695c0c94fa5c` |
| 11 | `theorem` | [normalizationError_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/normalizationerror-tendsto-zero--2f9c59d74053f429ded15ddf.md) | 82 | `result-track:2f9c59d74053f429ded15ddf2bf19d73776a38cbf49541665c293dd2dce4609f` |
| 12 | `theorem` | [sourceMeanOffset_relative_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemeanoffset-relative-tendsto--2c3add4005fd94e092f5276a.md) | 95 | `result-track:2c3add4005fd94e092f5276a2c55ed61d0b1686031590b1dd06e40c24a5141c7` |
| 13 | `theorem` | [sourceMean_normalization_error](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemean-normalization-error--821d294186dc0efbe5d4d89e.md) | 106 | `result-track:821d294186dc0efbe5d4d89e5cef2f370a106a91d70928e6bf8698c001eb53fb` |
| 14 | `theorem` | [sourceMean_relative_calibration](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemean-relative-calibration--39bf9c035a1e8848a9ba4928.md) | 113 | `result-track:39bf9c035a1e8848a9ba4928dde651d80b23809ba21242e50a62241fb743f1bf` |
| 15 | `theorem` | [sourceMean_relative_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemean-relative-tendsto--120c0fdac4db353e33564db8.md) | 121 | `result-track:120c0fdac4db353e33564db807efc46b2ea9f7b45be947db0b60928b696ee539` |
| 16 | `theorem` | [sourceMeanOffset_abs_le](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemeanoffset-abs-le--25ec84d934f19cd408cf5d68.md) | 129 | `result-track:25ec84d934f19cd408cf5d681e87868fc409654d6cab8f399b9c66dc4b56636c` |
| 17 | `theorem` | [sourceMeanOffset_uniformly_bounded](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant21895dade54d975027721391447ef7122e511ad68219b360ae45a498e0d261a1.lean/declarations/sourcemeanoffset-uniformly-bounded--1f998b81676a1b6b4e798243.md) | 151 | `result-track:1f998b81676a1b6b4e798243c6df93c6a8a1a143dff5df1e50900232f37149f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
