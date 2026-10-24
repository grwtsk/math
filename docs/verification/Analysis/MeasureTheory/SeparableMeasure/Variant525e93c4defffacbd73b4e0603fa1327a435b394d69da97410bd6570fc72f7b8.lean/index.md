# Verification target: GRWTSK.Analysis.MeasureTheory.SeparableMeasure.Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4aed28f2e7d36148188b504e9aa3e8cf42bd0c6c`.

Source path: `GRWTSK/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean.json)

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
| 1 | `structure` | [Measure.MeasureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense--6d4c811bca71412590b08515.md) | 91 | `declaration-track:6d4c811bca71412590b08515c343f5f5cad0c61b163391227d857086ca882bf5` |
| 2 | `theorem` | [Measure.MeasureDense.nonempty](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-nonempty--526ffe9d2c41eaa2300eb2a2.md) | 97 | `result-track:526ffe9d2c41eaa2300eb2a2a71879d0fbaf14de91fa9ef058a17715847f9345` |
| 3 | `theorem` | [Measure.MeasureDense.nonempty'](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-nonempty--285a96516e4ce2cccfb8c312.md) | 101 | `result-track:285a96516e4ce2cccfb8c312f114d44dad14bbf399332ef57a97c5a905b8f983` |
| 4 | `theorem` | [measureDense_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measuredense-measurableset--8a8647cd5ce2a6177b8ef53b.md) | 109 | `result-track:8a8647cd5ce2a6177b8ef53bd21783cf923b53cea138969cdf31ebe4393309de` |
| 5 | `theorem` | [Measure.MeasureDense.completion](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-completion--7aa56f6ec801b2e586b2278c.md) | 114 | `result-track:7aa56f6ec801b2e586b2278c21f420908ac35afda6bacf1bee9ecccdf633d8d8` |
| 6 | `lemma` | [Measure.MeasureDense.fin_meas_approx](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-fin-meas-approx--6fb37c2fcb8835fd8a9c1949.md) | 127 | `result-track:6fb37c2fcb8835fd8a9c19495706498688c4029232a9b5f8c9c2ad1cc4418274` |
| 7 | `theorem` | [Measure.MeasureDense.indicatorConstLp_subset_closure](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-indicatorconstlp-subset-closure--7c8bfe4d8896c1f0dadfc01b.md) | 137 | `result-track:7c8bfe4d8896c1f0dadfc01b002245f1f66a5f63867c2e09ccaca3ec4deeb219` |
| 8 | `theorem` | [Measure.MeasureDense.fin_meas](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-fin-meas--1b0310e7f65389d7fe1eeadf.md) | 170 | `result-track:1b0310e7f65389d7fe1eeadf7353ac9f1c20cc090d08940afec79b38a3b9d21f` |
| 9 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_finite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-finite--5ed803115e08c226a5bf49d6.md) | 180 | `result-track:5ed803115e08c226a5bf49d62b12648c88eca5f8fa7ef9b2b5b09347b3b5ccb2` |
| 10 | `theorem` | [Measure.MeasureDense.of_generateFrom_isSetAlgebra_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/measure-measuredense-of-generatefrom-issetalgebra-sigmafinite--1f611455b4de512cfdeff206.md) | 270 | `result-track:1f611455b4de512cfdeff20685693c4c60999cdd316ad9f46865de133d4c95f0` |
| 11 | `class` | [IsSeparable](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/isseparable--925ef30aa23ad04fada71612.md) | 339 | `declaration-track:925ef30aa23ad04fada7161224b3c26870d62240b075fca6e270e2eb1ff068fc` |
| 12 | `theorem` | [exists_countable_measureDense](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/exists-countable-measuredense--c2dadd40c543fac90fc1618e.md) | 345 | `result-track:c2dadd40c543fac90fc1618e79bc54fd1c2f9fa46ff105ca38e412a163336034` |
| 13 | `theorem` | [isSeparable_of_sigmaFinite](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/isseparable-of-sigmafinite--d42b319b1033d32b39c08d0f.md) | 352 | `result-track:d42b319b1033d32b39c08d0f34af2447d24d87e520ce4bdba26da7d588af96bf` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/instance--297dade5928a575a6c0e19b0.md) | 382 | `declaration-track:297dade5928a575a6c0e19b0475d30b6164866942705149518fc51b5f8eff3eb` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/instance--e11e9ed9a3cb4192554399f0.md) | 414 | `declaration-track:e11e9ed9a3cb4192554399f05a08d93e8beaf4cdcf60e93bf7e879bc855e1b74` |
| 16 | `instance` | [Lp.SecondCountableTopology](../../../../../mathematics/Analysis/MeasureTheory/SeparableMeasure/Variant525e93c4defffacbd73b4e0603fa1327a435b394d69da97410bd6570fc72f7b8.lean/declarations/lp-secondcountabletopology--5d6de8fe71fde29ffc714e98.md) | 427 | `declaration-track:5d6de8fe71fde29ffc714e98f67321f7ead20155a678707210b21eb3493aa4ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
