# Verification target: GRWTSK.Analysis.MeasureTheory.Measurable.Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce599640dbf7f98561b3699840c2d022efeed0e9",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce599640dbf7f98561b3699840c2d022efeed0e9`.

Source path: `GRWTSK/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Gamma` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MeasurableSet](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/measurableset--2396b42ec72240f0f3b4f0fe.md) | 5 | `declaration-track:2396b42ec72240f0f3b4f0fe0b356de8cf4c8134e5fb8bb7d8dcabe5db7352d7` |
| 2 | `structure` | [MeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/measurablespace--fddb36b182627bc59993bb53.md) | 7 | `declaration-track:fddb36b182627bc59993bb537e52ecdd07870266374352ec48774ad26f7cf645` |
| 3 | `def` | [Measurable](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/measurable--469854657cd369da8d6feac9.md) | 10 | `declaration-track:469854657cd369da8d6feac977019e6a075f45d359fb1f45ad8b56fe220ed5b5` |
| 4 | `structure` | [CertifiedMeasurableSpace](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/certifiedmeasurablespace--ec5db33886f4f156f3d5a4b8.md) | 12 | `declaration-track:ec5db33886f4f156f3d5a4b875ad894a245e9f8ca22e97d99ca6dd819782f225` |
| 5 | `inductive` | [MeasurableConvergenceMode](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/measurableconvergencemode--b23867ff1b898c169214ae1d.md) | 16 | `declaration-track:b23867ff1b898c169214ae1d10f47fcfbba3550392e6f38cb6f2d4ca46ee002c` |
| 6 | `structure` | [CertifiedSimpleApproximation](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/certifiedsimpleapproximation--96b64b29d0573b6fc5163ff6.md) | 24 | `declaration-track:96b64b29d0573b6fc5163ff60786ae91e3938af610266865488d51efef5ec8c1` |
| 7 | `structure` | [CertifiedMeasurableFunction](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/certifiedmeasurablefunction--324bb3dbbf3af648ae46cda0.md) | 32 | `declaration-track:324bb3dbbf3af648ae46cda069b92eba7967854ae42238312f92d2c3f6d1a857` |
| 8 | `structure` | [CertifiedSimpleApproximationRef](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/certifiedsimpleapproximationref--c1a2fd27279bcb467844943e.md) | 40 | `declaration-track:c1a2fd27279bcb467844943eb63d0d1f8399066d26979fc2112b738b644fc9a7` |
| 9 | `structure` | [CertifiedMeasurableLimitRef](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/certifiedmeasurablelimitref--138606dae60fb86ff9ffd9ab.md) | 44 | `declaration-track:138606dae60fb86ff9ffd9ab3a6d8ba2066ca091dbd3858e94b3cedf8124a5e6` |
| 10 | `theorem` | [certifiedMeasurable_has_measurability](../../../../../mathematics/Analysis/MeasureTheory/Measurable/Variant808e23be81783d1f3a5b14178ca02128a1678b4ac2e3d9d326facffde66feb19.lean/declarations/certifiedmeasurable-has-measurability--e6f2095bc61311ade93fa252.md) | 48 | `result-track:e6f2095bc61311ade93fa252d6002e630743c7c22ff4a4539b1c9dc336d6a4e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
