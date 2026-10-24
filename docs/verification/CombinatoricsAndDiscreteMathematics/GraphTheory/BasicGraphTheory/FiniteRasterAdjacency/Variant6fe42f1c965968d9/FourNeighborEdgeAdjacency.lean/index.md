# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.FiniteRasterAdjacency.Variant6fe42f1c965968d9.FourNeighborEdgeAdjacency

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cfcf6c0973fd1411797ece9a97c0cfb1cc75915",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cfcf6c0973fd1411797ece9a97c0cfb1cc75915`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Geometry.GridCell` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [EdgeAdjacent](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean/declarations/edgeadjacent--f2b53a557d4c4d067e862fd8.md) | 36 | `declaration-track:f2b53a557d4c4d067e862fd886295fc4cdb71f3b2419749e5e88a48d3a087990` |
| 2 | `instance` | [edgeAdjacentDecidable](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean/declarations/edgeadjacentdecidable--d7a0c350233788f58aedff23.md) | 45 | `declaration-track:d7a0c350233788f58aedff234575bb7db2c11cd82d833bb13f039a644ce8f3f5` |
| 3 | `theorem` | [edgeAdjacent_symmetric](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean/declarations/edgeadjacent-symmetric--8dbf9321e4cf0729941d0ef1.md) | 51 | `result-track:8dbf9321e4cf0729941d0ef1b24bcf777d5d29dcae4e749b5df5ff17d040cd29` |
| 4 | `theorem` | [not_edgeAdjacent_self](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/FiniteRasterAdjacency/Variant6fe42f1c965968d9/FourNeighborEdgeAdjacency.lean/declarations/not-edgeadjacent-self--44d669572ddff21df60c5743.md) | 60 | `result-track:44d669572ddff21df60c5743f3c316f39530498732fbae21fc16b4f6d7304d8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
