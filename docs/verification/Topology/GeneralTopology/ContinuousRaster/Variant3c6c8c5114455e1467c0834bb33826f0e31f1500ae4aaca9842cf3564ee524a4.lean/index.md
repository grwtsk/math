# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousRaster.Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a091455720fbbd9e94371c4971b6e91356bb1a4",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a091455720fbbd9e94371c4971b6e91356bb1a4`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.PrismMesh` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Terrain.BinaryCharge` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [boolToReal](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/booltoreal--b2a02c6123492bbd97756d19.md) | 30 | `declaration-track:b2a02c6123492bbd97756d1969bc66b6ec2d349c8de01608ae1419272ae6f7b4` |
| 2 | `theorem` | [boolToReal_false](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/booltoreal-false--f868e64375cd343bb8cad4b9.md) | 34 | `result-track:f868e64375cd343bb8cad4b92fc9bf944bd29e026a2361f62870401c6f9422b7` |
| 3 | `theorem` | [boolToReal_true](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/booltoreal-true--9dc46876d09e0f4de2e18d88.md) | 35 | `result-track:9dc46876d09e0f4de2e18d887c5268a6336c207788bfc9fda17f9aaebb9512cf` |
| 4 | `structure` | [RasterBoundaryData](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/rasterboundarydata--a98b69252d5c3d570f0401c9.md) | 38 | `declaration-track:a98b69252d5c3d570f0401c969cc6d2aa441f998abfc8f9c7668f7326c2abd29` |
| 5 | `structure` | [ContinuousTerrainRaster](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/continuousterrainraster--81d134b30aa13832f5517ff6.md) | 49 | `declaration-track:81d134b30aa13832f5517ff6aa1f6a272c76db9117abea35d09c921a4fc16cca` |
| 6 | `theorem` | [at_vertex](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/at-vertex--0ead7d00b135d9b8750204c9.md) | 91 | `result-track:0ead7d00b135d9b8750204c9930c82ae6e4c32e4e6775d47f46e775858d19313` |
| 7 | `theorem` | [value_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/value-mem-icc--1b1df8fb9dd2e17563ab26bf.md) | 100 | `result-track:1b1df8fb9dd2e17563ab26bf4c65737196ab44e6a8e42eca26fa8cd0eafcade2` |
| 8 | `theorem` | [interpolate_on_cell](../../../../../mathematics/Topology/GeneralTopology/ContinuousRaster/Variant3c6c8c5114455e1467c0834bb33826f0e31f1500ae4aaca9842cf3564ee524a4.lean/declarations/interpolate-on-cell--e560479cae5fead935920640.md) | 108 | `result-track:e560479cae5fead935920640e2dd507d9e944a584288916a8ad97c3bcff6c07f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
