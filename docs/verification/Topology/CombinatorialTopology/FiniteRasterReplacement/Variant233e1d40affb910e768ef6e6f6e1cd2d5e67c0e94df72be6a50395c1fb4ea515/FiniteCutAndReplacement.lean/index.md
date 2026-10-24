# Verification target: GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.FiniteCutAndReplacement

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03183148058832a728523bfdc4ed48406ca43d17",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/index.md) · [Full source](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03183148058832a728523bfdc4ed48406ca43d17`.

Source path: `GRWTSK/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Topology.RasterCubicalComplex` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RasterState](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/rasterstate--51e0419e0c2d6a8a2335b154.md) | 41 | `declaration-track:51e0419e0c2d6a8a2335b154baf2021456ed4799e3c081b860b2263cbae66aa1` |
| 2 | `structure` | [CutDatum](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/cutdatum--882d76033d7ecfa1d593b24f.md) | 45 | `declaration-track:882d76033d7ecfa1d593b24f6162f1bc45436d0101c650c3de9faf73dc4af1e3` |
| 3 | `def` | [exterior](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/exterior--a36b6b2d4a58929b4199abb4.md) | 52 | `declaration-track:a36b6b2d4a58929b4199abb480d5de0d0dae93a7858e4adfc5aaaed4f3065ff8` |
| 4 | `def` | [exposedInterface](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/exposedinterface--0f58fe55ee7f207325a36e3b.md) | 60 | `declaration-track:0f58fe55ee7f207325a36e3b13b8ac4ea1bd35662f5cd1c4d3b630545dacecc3` |
| 5 | `theorem` | [exposedInterface_subset_exterior](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/exposedinterface-subset-exterior--dbeea15eecc0afe0a88c6b27.md) | 65 | `result-track:dbeea15eecc0afe0a88c6b27eb6c1a02c1b7fb296b8d8c9f47cde9c8796a07e0` |
| 6 | `theorem` | [exterior_disjoint_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/exterior-disjoint-selected--09d573dc9b9d8a70f0a40e44.md) | 71 | `result-track:09d573dc9b9d8a70f0a40e443f9a8cfb8d9e5d4b890c1aa1ff43dd12294f8426` |
| 7 | `structure` | [Repair](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/repair--71314d4812d1f544618ddd21.md) | 81 | `declaration-track:71314d4812d1f544618ddd216d20508a40b2dc5f22aac7421216aba586d6197e` |
| 8 | `def` | [apply](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/apply--a3a24bdebe82730980de7389.md) | 87 | `declaration-track:a3a24bdebe82730980de738975f18e127773626f70b22b3d8a599fea3956e707` |
| 9 | `theorem` | [apply_inside](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/apply-inside--78ed6bd33de7be79793f0314.md) | 94 | `result-track:78ed6bd33de7be79793f03142e29d91412c41baf2c6623386f26699badde756f` |
| 10 | `theorem` | [apply_outside](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/apply-outside--e361dce09f0431031cfde578.md) | 101 | `result-track:e361dce09f0431031cfde5780710ead9d2f60b54e743119ff8f2c3baaf78dda8` |
| 11 | `def` | [changeSupport](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/changesupport--e2275842bba3dfb9c2f72dbb.md) | 108 | `declaration-track:e2275842bba3dfb9c2f72dbbf4a4434cd5b4331a7832289aa5fdb04c930a9362` |
| 12 | `def` | [addedCells](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/addedcells--2170a20ed0167049919f9107.md) | 113 | `declaration-track:2170a20ed0167049919f9107e0a91c3525e0638c84140d007dda8124bbf0d567` |
| 13 | `def` | [deletedCells](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/deletedcells--08787c62935502fef75c5312.md) | 119 | `declaration-track:08787c62935502fef75c531202d3145f2a0f87d68adea95ba28e480c88766918` |
| 14 | `theorem` | [changeSupport_subset_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/changesupport-subset-selected--f5f1cca193802160008bf36a.md) | 125 | `result-track:f5f1cca193802160008bf36a9281eee0156d20178c0a76e87b934d0311167c59` |
| 15 | `theorem` | [addedCells_subset_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/addedcells-subset-selected--f931ca40970ca0d23d95b299.md) | 134 | `result-track:f931ca40970ca0d23d95b299b216935c126aa287202c4be8bbeaa11d6019e33d` |
| 16 | `theorem` | [deletedCells_subset_selected](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/deletedcells-subset-selected--b3c03afc6dd879457387d39f.md) | 146 | `result-track:b3c03afc6dd879457387d39ff44d375e209674947fa59ce01b0e2253b5d437fc` |
| 17 | `def` | [reconstruct](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/reconstruct--a42402b53d026b2d8e17db60.md) | 159 | `declaration-track:a42402b53d026b2d8e17db60dd8231cbbd7208f3fbc57c50c02ae44e15a7631b` |
| 18 | `theorem` | [reconstruct_apply](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/reconstruct-apply--0c8ef09df6caa993045d29ef.md) | 163 | `result-track:0c8ef09df6caa993045d29ef0e6ac99a52005486f3daaa0aa3b82d94568134d4` |
| 19 | `theorem` | [overwrite](../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/declarations/overwrite--9c7801e581ee7e9bd8a63cea.md) | 170 | `result-track:9c7801e581ee7e9bd8a63cead436940acd801cd2577315539c54004fb56f137f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
