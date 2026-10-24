# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.Adjacency.SourceComponents.Variant17131ddf74e1ced3.BooleanAdjacencyAndInfluence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8150172322aa9271bc82ad0a2554054706b687e0",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/index.md) · [Full source](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8150172322aa9271bc82ad0a2554054706b687e0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Matrix` — import line 19; external provider; requires a separately pinned dependency.
- `Boolean.Cube.ListTools` — import line 20; external provider; requires a separately pinned dependency.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.SourceComponents.Variant17131ddf74e1ced3.OrderedBooleanEnumeration`](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/SourceComponents/Variant17131ddf74e1ced3/OrderedBooleanEnumeration.lean/index.md) — import line 21; pinned internal source present.
- [`GRWTSK.CombinatoricsAndDiscreteMathematics.CodingTheory.SourceComponents.Variant17131ddf74e1ced3.BooleanFlipAndHamming`](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/CodingTheory/SourceComponents/Variant17131ddf74e1ced3/BooleanFlipAndHamming.lean/index.md) — import line 22; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hypercube.adjacencyMatrix](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/declarations/hypercube-adjacencymatrix--4a901a9dda8fd573b08492e2.md) | 29 | `declaration-track:4a901a9dda8fd573b08492e2ef601aa6fc8178176f1cfd1b2e1c7cadebc1fc99` |
| 2 | `def` | [Hypercube.boundaryEdgeMatrix](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/declarations/hypercube-boundaryedgematrix--7f28e450165f8b7cf163fe9f.md) | 42 | `declaration-track:7f28e450165f8b7cf163fe9f2a8b14cda4877f07ff2965b8f7655c9b118700b9` |
| 3 | `def` | [Hypercube.edgeChange](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/declarations/hypercube-edgechange--55870e7ab2208adcd1e925b0.md) | 51 | `declaration-track:55870e7ab2208adcd1e925b0fe9defe6ca4f60e5b43f958afaa0fc7288075054` |
| 4 | `def` | [Hypercube.influenceCount](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/declarations/hypercube-influencecount--d7f7c62d79894d95f1ec79a6.md) | 62 | `declaration-track:d7f7c62d79894d95f1ec79a674c8d5ae1190eb53b3ab44daf1b80a497a7be8d9` |
| 5 | `def` | [Hypercube.influenceVector](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/declarations/hypercube-influencevector--689fc2f69b11fcbe1bf1a081.md) | 69 | `declaration-track:689fc2f69b11fcbe1bf1a081c26a0ab3eb48ed87dd7ddab9d2be1e7e33188c98` |
| 6 | `def` | [Hypercube.directedBoundaryCount](../../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/Adjacency/SourceComponents/Variant17131ddf74e1ced3/BooleanAdjacencyAndInfluence.lean/declarations/hypercube-directedboundarycount--ca43517ce8736f4e314ff8ed.md) | 74 | `declaration-track:ca43517ce8736f4e314ff8ed3463b167b957f6a6a5a121f7ca1d6bbd48e4d707` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
