# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.BasicGraphTheory.DyadicGridAdjacency.Variant350089c50d9ab36b.CompleteCubicalAdjacencyAndProofs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "831cc6e744580d41d96d5c1ad799e7eff264fa93",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean/index.md) · [Full source](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `831cc6e744580d41d96d5c1ad799e7eff264fa93`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Cellular.Cube` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CoordDiffOne](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean/declarations/coorddiffone--dbc47c50ae6d35a363927a82.md) | 37 | `declaration-track:dbc47c50ae6d35a363927a82b653dab882e1b21250f242a2a707808e0f8e487d` |
| 2 | `def` | [SameExcept](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean/declarations/sameexcept--99fd02308016974ae67991ab.md) | 44 | `declaration-track:99fd02308016974ae67991ab68d3b49566aa4dd2a39eca55dd412e664058050f` |
| 3 | `def` | [CubeAdjacent](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean/declarations/cubeadjacent--7cc445009672396387144460.md) | 50 | `declaration-track:7cc445009672396387144460f2ab7c9cff7f3ef54201ebe62405ac86d2db33b6` |
| 4 | `theorem` | [cubeAdjacent_symm](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean/declarations/cubeadjacent-symm--5478598512fbf7a798641033.md) | 55 | `result-track:5478598512fbf7a798641033f10f64484935acf030c70a4444aa040228c7cd4f` |
| 5 | `theorem` | [cubeAdjacent_irrefl](../../../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/BasicGraphTheory/DyadicGridAdjacency/Variant350089c50d9ab36b/CompleteCubicalAdjacencyAndProofs.lean/declarations/cubeadjacent-irrefl--c5261821fa9efec193c92e81.md) | 66 | `result-track:c5261821fa9efec193c92e81c4843b961a34d86a1630058cdfe34a87a007c2d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
