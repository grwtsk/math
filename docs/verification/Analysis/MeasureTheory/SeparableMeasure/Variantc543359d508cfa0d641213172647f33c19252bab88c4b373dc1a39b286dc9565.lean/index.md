# Verification target: GRWTSK.Analysis.MeasureTheory.SeparableMeasure.Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42ca924c56a5c59f51f2a912d0d0a7943257fe4b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42ca924c56a5c59f51f2a912d0d0a7943257fe4b`.

Source path: `GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Measure.MeasureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense--ee4690101d5e7067017bbe9b.md) | 99 | `declaration-track:ee4690101d5e7067017bbe9bd197874731f5a5986824096cabb299b20604bc5a` |
| 2 | `theorem` | [Measure.MeasureDense.nonempty](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-nonempty--a3592d14662b8a681c566555.md) | 105 | `result-track:a3592d14662b8a681c5665553ab22b9129e1e8b7435c2c6be6cfb6f4a5f39004` |
| 3 | `theorem` | [Measure.MeasureDense.nonempty'](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-nonempty--cb9bfbcebdd36995e6e7d8bb.md) | 109 | `result-track:cb9bfbcebdd36995e6e7d8bbac4b9cbddbd0297e5bcbf5aaaef4b7270b5489b7` |
| 4 | `theorem` | [measureDense_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measuredense-measurableset--134333ad7d20172cbee0ad86.md) | 117 | `result-track:134333ad7d20172cbee0ad866c815b424e9230676dd31251a4d3031aa79c4aa3` |
| 5 | `theorem` | [Measure.MeasureDense.completion](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-completion--d41c2c7df40259259582ca74.md) | 122 | `result-track:d41c2c7df40259259582ca747b9465f1fd341ffce901080dd9e4b79669bff337` |
| 6 | `lemma` | [Measure.MeasureDense.fin_meas_approx](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-fin-meas-approx--ab126470364a8b045f73732c.md) | 135 | `result-track:ab126470364a8b045f73732cd005eac6b33ec1c2b503b750e1227ab6f7e84d4c` |
| 7 | `theorem` | [Measure.MeasureDense.indicatorConstLp_subset_closure](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-indicatorconstlp-subset-closure--7c550b640f2ef6604758c1b5.md) | 145 | `result-track:7c550b640f2ef6604758c1b51eb01810947978741b35e25a77abf3be8678c8fe` |
| 8 | `theorem` | [Measure.MeasureDense.fin_meas](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-fin-meas--67ed39d00c6f2bbf572f24f3.md) | 178 | `result-track:67ed39d00c6f2bbf572f24f3c0aaf985a70054ba581ea59bb99cfc714e1b78f2` |
| 9 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_finite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-finite--820aa5d58329c1430fccd5e8.md) | 188 | `result-track:820aa5d58329c1430fccd5e857c1629f143cfa7ca62293624ae38de89e7b8b26` |
| 10 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-sigmafinite--5dd3b1c82d3e74f47d19703c.md) | 278 | `result-track:5dd3b1c82d3e74f47d19703c6d02ec7aa7e59b50637900b7b74a41ec7e805d75` |
| 11 | `class` | [IsSeparable](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/isseparable--acb35b7b9830fdda0e9ccd46.md) | 347 | `declaration-track:acb35b7b9830fdda0e9ccd4633f0ae303cd7178f103f4000bdbebe6a00743a94` |
| 12 | `theorem` | [exists_countable_measureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/exists-countable-measuredense--9e726d9c2d2d02cd1d76146e.md) | 353 | `result-track:9e726d9c2d2d02cd1d76146e152f5f86d7ddd24f9292167174c9d72c9e295feb` |
| 13 | `theorem` | [isSeparable_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/isseparable-of-sigmafinite--0330c41aa5fd9ef18a3a013a.md) | 360 | `result-track:0330c41aa5fd9ef18a3a013a836d9d73536f3d1804392c05414cb7654ac0c828` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/instance--ac87024e2796eb7e0428ba69.md) | 390 | `declaration-track:ac87024e2796eb7e0428ba69df83c7d10bf19be51ebe531d8b97362c1502846d` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/instance--39ef82b5bbf6953176bfc8f6.md) | 422 | `declaration-track:39ef82b5bbf6953176bfc8f6a4f899be1b30e8cb68e4695d7073a365bcf9929b` |
| 16 | `instance` | [Lp.SecondCountableTopology](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variantc543359d508cfa0d641213172647f33c19252bab88c4b373dc1a39b286dc9565.lean/declarations/lp-secondcountabletopology--ca70f45908b6bf1a8c95e4fc.md) | 435 | `declaration-track:ca70f45908b6bf1a8c95e4fca543d757da5cf5b423f46d144bf2cc267044338b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
