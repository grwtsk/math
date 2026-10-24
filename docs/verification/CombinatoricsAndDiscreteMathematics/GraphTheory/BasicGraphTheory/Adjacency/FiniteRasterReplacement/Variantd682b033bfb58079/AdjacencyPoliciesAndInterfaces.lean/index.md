# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.FiniteRasterReplacement.Variantd682b033bfb58079.AdjacencyPoliciesAndInterfaces

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b98205b9c135e3b41512cae001bb32a440d71b21",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b98205b9c135e3b41512cae001bb32a440d71b21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Topology.RasterCubicalComplex` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.Topology.CombinatorialTopology.FiniteRasterReplacement.Variantd682b033bfb58079.FiniteCutAndReplacement`](../../../../../../../../mathematics/Topology/CombinatorialTopology/FiniteRasterReplacement/Variantd682b033bfb58079/FiniteCutAndReplacement.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [AdjacencyPolicy](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy--c6ba5f78ffcf262eacd95879.md) | 43 | `declaration-track:c6ba5f78ffcf262eacd958794ad38f4a0196fdba1d6e4827fd4ab56ba1f683d9` |
| 2 | `def` | [AdjacencyPolicy.Adjacent](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy-adjacent--db0463c7871e95beacde3c6d.md) | 50 | `declaration-track:db0463c7871e95beacde3c6ddd502eac0054fdafa183715387264bf55b9d44c4` |
| 3 | `instance` | [adjacencyPolicyDecidable](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicydecidable--df33eb6a8dfbfd8c838debd9.md) | 56 | `declaration-track:df33eb6a8dfbfd8c838debd96429c15cf8998905a80d8de907efd8269e5de220` |
| 4 | `theorem` | [AdjacencyPolicy.adjacent_symmetric](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy-adjacent-symmetric--2ab2d0eac389e4d30a811d79.md) | 61 | `result-track:2ab2d0eac389e4d30a811d79bc01e060d587d243b9a35092d82255be867643f8` |
| 5 | `theorem` | [AdjacencyPolicy.not_adjacent_self](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencypolicy-not-adjacent-self--47601deb7759ae41828ee1fe.md) | 68 | `result-track:47601deb7759ae41828ee1fe323e28e659af335566cf62260c4b58a4c7267323` |
| 6 | `def` | [adjacencyInterface](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencyinterface--5f34f68da2c29a9206994aee.md) | 78 | `declaration-track:5f34f68da2c29a9206994aee88336171764b6884c8096918dd84ab5e6789b3e9` |
| 7 | `theorem` | [adjacencyInterface_subset_exterior](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencyinterface-subset-exterior--6cc669e27b87691c7c2d12de.md) | 83 | `result-track:6cc669e27b87691c7c2d12de20b64e07133fefb4fd86b82aab75879cb64f38ae` |
| 8 | `theorem` | [adjacencyInterface_edge](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/FiniteRasterReplacement/Variantd682b033bfb58079/AdjacencyPoliciesAndInterfaces.lean/declarations/adjacencyinterface-edge--c229614c67f0f538767ceb96.md) | 90 | `result-track:c229614c67f0f538767ceb96a9983d06af4233c377ac0008b4be212f67fe2403` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
