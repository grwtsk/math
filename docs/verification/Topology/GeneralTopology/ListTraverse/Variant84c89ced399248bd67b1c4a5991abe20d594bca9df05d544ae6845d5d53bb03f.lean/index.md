# Verification target: GRWTSK.Topology.GeneralTopology.ListTraverse.Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43b1fc2113c608e7e38df7ea6a9568ac8edf01aa",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43b1fc2113c608e7e38df7ea6a9568ac8edf01aa`.

Source path: `GRWTSK/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Instances` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sequence_mono](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean/declarations/sequence-mono--43e6e267fdf2e0399bef1475.md) | 31 | `result-track:43e6e267fdf2e0399bef14750a9698a98bb1fc0f28626b600e179150f491a2fd` |
| 2 | `theorem` | [mem_traverse](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean/declarations/mem-traverse--96c7911acb4bcd990f20f1f8.md) | 35 | `result-track:96c7911acb4bcd990f20f1f8714634712a075f43ac4c02b5084da17059f6246f` |
| 3 | `theorem` | [mem_traverse_iff](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant84c89ced399248bd67b1c4a5991abe20d594bca9df05d544ae6845d5d53bb03f.lean/declarations/mem-traverse-iff--cf63109deac4726b00862400.md) | 42 | `result-track:cf63109deac4726b008624004e5b0ce9ac00364dc3b0a116b958509801ae85ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
