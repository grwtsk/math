# Verification target: GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.FixedPointTranscendency.Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "520a3d15dbb0af13ff62c782826d7daecc3bd6fc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `520a3d15dbb0af13ff62c782826d7daecc3bd6fc`.

Source path: `GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CanonicalPath.OffCriticalDisplacement` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeatflowDynamics](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/declarations/heatflowdynamics--8d4afaae91f92bc85b6a0df4.md) | 27 | `declaration-track:8d4afaae91f92bc85b6a0df48a65862041257f25c5cbba68a48c04f8d1dea8d8` |
| 2 | `structure` | [FixedSpectralConfiguration](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/declarations/fixedspectralconfiguration--12e6630348aa6c2000179c2e.md) | 31 | `declaration-track:12e6630348aa6c2000179c2ecd263398de15a4da4f0e595d9f9b6423794bb40f` |
| 3 | `structure` | [FixedPointIndexSpectralIdentification](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/declarations/fixedpointindexspectralidentification--7edc8e25a8cc5718698c4918.md) | 40 | `declaration-track:7edc8e25a8cc5718698c4918f95303f6eb110f1a6e7ddbb5cf47436afb46fa29` |
| 4 | `theorem` | [fixed_config_fixed_under_flow_if_supplied](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/declarations/fixed-config-fixed-under-flow-if-supplied--4c3a023411e39eb1f3b5fbb7.md) | 48 | `result-track:4c3a023411e39eb1f3b5fbb7ae0835b058f2991eb088f066998f0faf042bc54a` |
| 5 | `theorem` | [fixed_point_index_trace_equals_spectral_trace_if_supplied](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/declarations/fixed-point-index-trace-equals-spectral-trace-if-supplied--cb25939ac4a1906a752520b4.md) | 53 | `result-track:cb25939ac4a1906a752520b45066772742a4bba954e0ac84a0e49459577f4314` |
| 6 | `structure` | [FixedPointTranscendencyPackage](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/declarations/fixedpointtranscendencypackage--dc832b0b6d9c293a8de377ec.md) | 64 | `declaration-track:dc832b0b6d9c293a8de377ec298bfe55a981d25d0a1794894f8f64dd2837b847` |
| 7 | `theorem` | [fixed_point_no_offcritical_compatible_point_if_supplied](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/FixedPointTranscendency/Variantf29ac11c061c89d4ed30b88e0d6ddf55d745f269a5b578c93bdf9d3c4bfd04d9.lean/declarations/fixed-point-no-offcritical-compatible-point-if-supplied--5727d4baecf50e7d5785a4f4.md) | 77 | `result-track:5727d4baecf50e7d5785a4f40614920decd5cdd1e199ffdc52b6c351089788a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
