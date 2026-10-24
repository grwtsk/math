# Verification target: GRWTSK.Topology.GeneralTopology.ActualCommonMeanNormalization.Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "979f0a927229c0cea634ec8b1b094573cd4f9251",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `979f0a927229c0cea634ec8b1b094573cd4f9251`.

Source path: `GRWTSK/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `NormalizedGammaBudget` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Pseudo.Lemmas` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [commonMeanCenter](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/commonmeancenter--cf6bb098a758c271fa696ceb.md) | 27 | `declaration-track:cf6bb098a758c271fa696ceb7a96d904c378fa933b29531a1fd17824ba68abd7` |
| 2 | `def` | [normalizationBudget](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationbudget--a6045637d1c78fd52dae7df7.md) | 30 | `declaration-track:a6045637d1c78fd52dae7df7b2308d9d95426ee59921d8b0ea2708b70f5bdf04` |
| 3 | `def` | [normalizationError](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationerror--727db84948a7b58f797d9979.md) | 33 | `declaration-track:727db84948a7b58f797d99791537fd8898852f0302211bf2cece61befad0cf85` |
| 4 | `theorem` | [normalizationBudget_nonneg](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationbudget-nonneg--5edfe0e4951b808450ebe7e2.md) | 36 | `result-track:5edfe0e4951b808450ebe7e2468433e3d289504560bc16dac848189f8f1864b0` |
| 5 | `theorem` | [normalizationError_eq_deficits](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationerror-eq-deficits--e65a807a9f8da4e391fffa6d.md) | 40 | `result-track:e65a807a9f8da4e391fffa6da64d4cd4beed307a2d83905a4e2fe27c099801af` |
| 6 | `theorem` | [normalizationError_eq_actual_integral](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationerror-eq-actual-integral--6c834e3a0d15e88e3cfe31ef.md) | 47 | `result-track:6c834e3a0d15e88e3cfe31efa17c386b8ada01c3dd6b2876540aae6f67571657` |
| 7 | `theorem` | [normalizationError_bounds](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationerror-bounds--dd0d9205befe9c2283784545.md) | 54 | `result-track:dd0d9205befe9c2283784545294845a056f2b0adb2d8c89626d173a2e44dd893` |
| 8 | `theorem` | [sourceMeanOffset_bounds](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemeanoffset-bounds--a9789deae8241e9dc53a539b.md) | 67 | `result-track:a9789deae8241e9dc53a539b8fc3abe6610f42036ec0c2ba8106fbd7c38f0ab2` |
| 9 | `theorem` | [normalizationError_uniform_tail](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationerror-uniform-tail--c0f5030a867f594b2bb5e760.md) | 74 | `result-track:c0f5030a867f594b2bb5e760afc4f32ef69842b091b73c39cadbee8ff40a38fd` |
| 10 | `theorem` | [sourceMeanOffset_calibration](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemeanoffset-calibration--b16355f10f251af38973e7d7.md) | 81 | `result-track:b16355f10f251af38973e7d79f86418104f9c7fa29d1e594f120e83377196aee` |
| 11 | `theorem` | [normalizationError_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/normalizationerror-tendsto-zero--a31ad98f16c3527634711820.md) | 90 | `result-track:a31ad98f16c3527634711820c484becc57cd3c4f0da95347da4fdae32ff44171` |
| 12 | `theorem` | [sourceMeanOffset_relative_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemeanoffset-relative-tendsto--bfd82bb4632ae9570a6c4c57.md) | 103 | `result-track:bfd82bb4632ae9570a6c4c571d26a78804bbd4f2e9c282bc9723b4ee1fe5e245` |
| 13 | `theorem` | [sourceMean_normalization_error](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemean-normalization-error--3507c78b6eaed1190b948537.md) | 114 | `result-track:3507c78b6eaed1190b948537000c856c0f618566223356967531f330812e2e35` |
| 14 | `theorem` | [sourceMean_relative_calibration](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemean-relative-calibration--4b276cc4ede8d3b393b0e927.md) | 121 | `result-track:4b276cc4ede8d3b393b0e927b0a0c90cdb5b5b93773d286f8e6a2e0ddf8ab0e2` |
| 15 | `theorem` | [sourceMean_relative_tendsto](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemean-relative-tendsto--97127f78d33f041fc4dac4d8.md) | 129 | `result-track:97127f78d33f041fc4dac4d82d44e43a8dd5645e6d2d887ca27fd808929f6dd2` |
| 16 | `theorem` | [sourceMeanOffset_abs_le](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemeanoffset-abs-le--ff21083ba2f5178b8ac32b34.md) | 137 | `result-track:ff21083ba2f5178b8ac32b34f63277f9e200796b92c4b830b62943d8516b5530` |
| 17 | `theorem` | [sourceMeanOffset_uniformly_bounded](../../../../../mathematics/Topology/GeneralTopology/ActualCommonMeanNormalization/Variant3f5bdd002ba1210b648fa8706625f8ba84b612bb0739b48b5e6aee647f10c348.lean/declarations/sourcemeanoffset-uniformly-bounded--31c2403b192ccb6535609758.md) | 159 | `result-track:31c2403b192ccb65356097589982f694fbae5acefb3c07055019c2df792183a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
