# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeCutGraph.Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20a94673bfd331f3eabd34bc21b182c4b847eb7f",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20a94673bfd331f3eabd34bc21b182c4b847eb7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemiLocalDefect.PrimeUniverse` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.GraphAccess.GraphCut` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimeCutGraphAdapter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8.lean/declarations/primecutgraphadapter--eade3bbf59b3323fdb6e7047.md) | 26 | `declaration-track:eade3bbf59b3323fdb6e704796eba187b9751c2585f3fca71643dce4951ab623` |
| 2 | `theorem` | [PrimeCutGraphAdapter.edge_strictly_enlarges](../../../../mathematics/CombinatoricsAndDiscreteMathematics/PrimeCutGraph/Variant3cfac0b14f498bd419567b8c0cf38d593fe638d2658bab4663f7c5c870e7eda8.lean/declarations/primecutgraphadapter-edge-strictly-enlarges--4dc12083fb8f9e76288a16c2.md) | 53 | `result-track:4dc12083fb8f9e76288a16c2d76f7fd1d39964bfbe6200bb642d44171fbb9961` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
