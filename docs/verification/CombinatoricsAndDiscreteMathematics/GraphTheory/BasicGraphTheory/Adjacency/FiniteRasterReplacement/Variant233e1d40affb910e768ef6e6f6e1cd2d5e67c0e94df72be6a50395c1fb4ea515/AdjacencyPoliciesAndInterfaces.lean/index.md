# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterReplacement.Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.AdjacencyPoliciesAndInterfaces

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0607e04ce0fec51954543e01925f6d5da06be30",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0607e04ce0fec51954543e01925f6d5da06be30`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Topology.RasterCubicalComplex` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 19; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515.FiniteCutAndReplacement`](../../../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/FiniteCutAndReplacement.lean/index.md) — import line 21; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AdjacencyPolicy](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy--a742eb2dbe4b80394d9f4b2f.md) | 42 | `declaration-track:a742eb2dbe4b80394d9f4b2fc7a742a23d484905887e1ee0cdf2cfcbb4daa190` |
| 2 | `def` | [AdjacencyPolicy.Adjacent](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy-adjacent--f8eae090e8bb3230d435d94c.md) | 49 | `declaration-track:f8eae090e8bb3230d435d94c2b61bcf8a533aff6b176044a85287146c1d35744` |
| 3 | `instance` | [adjacencyPolicyDecidable](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicydecidable--8f0fdd973cccd522826577f5.md) | 55 | `declaration-track:8f0fdd973cccd522826577f5b74d95e34f5c8ba7aef26c1228364dfeec2ce7a8` |
| 4 | `theorem` | [AdjacencyPolicy.adjacent_symmetric](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy-adjacent-symmetric--0daed43e90bbd0f0bc5643ec.md) | 60 | `result-track:0daed43e90bbd0f0bc5643ec4e54685097d2d5cdf0e5f5b37aa327094f8bb9b6` |
| 5 | `theorem` | [AdjacencyPolicy.not_adjacent_self](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy-not-adjacent-self--c27838b5bf37330b188a9b6b.md) | 67 | `result-track:c27838b5bf37330b188a9b6b9a6152750eb1c77467a1798b1103e21a4c958a8a` |
| 6 | `def` | [adjacencyInterface](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencyinterface--f6471abdd48b0962c44b52e3.md) | 77 | `declaration-track:f6471abdd48b0962c44b52e325133b13240a8cf5b2931ccb3d3b3ddd2469e966` |
| 7 | `theorem` | [adjacencyInterface_subset_exterior](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencyinterface-subset-exterior--852d7e0a99bf6d046b543470.md) | 82 | `result-track:852d7e0a99bf6d046b543470f5582951622a5c2b72df62cfc4d11bf63d183674` |
| 8 | `theorem` | [adjacencyInterface_edge](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variant233e1d40affb910e768ef6e6f6e1cd2d5e67c0e94df72be6a50395c1fb4ea515/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencyinterface-edge--44618575353492549bc2928c.md) | 89 | `result-track:44618575353492549bc2928c1960362857a20e539038ee1f99e6ecadf34670c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
