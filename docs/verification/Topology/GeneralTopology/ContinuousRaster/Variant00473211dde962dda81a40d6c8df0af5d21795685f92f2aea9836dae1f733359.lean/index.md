# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousRaster.Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33fc797ff29fbc528857f99e438f6bc5aede599a",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33fc797ff29fbc528857f99e438f6bc5aede599a`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.PrismMesh` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Terrain.BinaryCharge` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boolToReal](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/booltoreal--396cba43ca952453e9ae2c75.md) | 22 | `declaration-track:396cba43ca952453e9ae2c753ff61083ce0c43233a82145b2fe9b4a0160e0997` |
| 2 | `theorem` | [boolToReal_false](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/booltoreal-false--1c9f751ccfa75903222b359c.md) | 26 | `result-track:1c9f751ccfa75903222b359ca2c2510a68347fbef1b91a36d3c97f6d3d21c443` |
| 3 | `theorem` | [boolToReal_true](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/booltoreal-true--9d5b6fc9bf23704139be25f9.md) | 27 | `result-track:9d5b6fc9bf23704139be25f977b5eb361ffe9c9b7d87a123aada5f2042948963` |
| 4 | `structure` | [RasterBoundaryData](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/rasterboundarydata--ffc59be607232c1f3a82c47a.md) | 30 | `declaration-track:ffc59be607232c1f3a82c47acd89c9bcc7abc9444ff80c70ff10e6c75359f032` |
| 5 | `structure` | [ContinuousTerrainRaster](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/continuousterrainraster--1323df69359055a226d48435.md) | 41 | `declaration-track:1323df69359055a226d48435cb183ac703e281513d434d0fe93292540f31d2ac` |
| 6 | `theorem` | [at_vertex](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/at-vertex--8c751ef87de0143d1e1331ae.md) | 83 | `result-track:8c751ef87de0143d1e1331ae247bfd3c64b2ffa94cd7b6b478f4373f354fa19a` |
| 7 | `theorem` | [value_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/value-mem-icc--d5653ea6d54c51c7b112ca95.md) | 92 | `result-track:d5653ea6d54c51c7b112ca9577285ee3466c6884b4e8e10bdba6faadc1d95e09` |
| 8 | `theorem` | [interpolate_on_cell](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant00473211dde962dda81a40d6c8df0af5d21795685f92f2aea9836dae1f733359.lean/declarations/interpolate-on-cell--71726abb1adae8c4e7ee3530.md) | 100 | `result-track:71726abb1adae8c4e7ee3530d796f31be92e393e478bc77669d364edc9c6de9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
