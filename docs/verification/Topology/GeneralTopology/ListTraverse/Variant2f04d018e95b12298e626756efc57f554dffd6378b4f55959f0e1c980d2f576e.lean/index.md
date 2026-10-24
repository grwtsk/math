# Verification target: GRWTSK.Topology.GeneralTopology.ListTraverse.Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "392ccfec14112aabd1b114ac11f8e2f688620d99",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `392ccfec14112aabd1b114ac11f8e2f688620d99`.

Source path: `GRWTSK/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Traversable.Instances` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Map` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sequence_mono](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean/declarations/sequence-mono--dc35b434a0af0b3b32752ab9.md) | 23 | `result-track:dc35b434a0af0b3b32752ab99f840b9e5420512d299d39934b4862a2d51f5d89` |
| 2 | `theorem` | [mem_traverse](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean/declarations/mem-traverse--602758a7a717c9fcf1210e64.md) | 27 | `result-track:602758a7a717c9fcf1210e641ca26e64a45f5e9627527cff6debdc525d27dfdc` |
| 3 | `theorem` | [mem_traverse_iff](../../../../../mathematics/Topology/GeneralTopology/ListTraverse/Variant2f04d018e95b12298e626756efc57f554dffd6378b4f55959f0e1c980d2f576e.lean/declarations/mem-traverse-iff--033bf9a0f65e4687810390d0.md) | 34 | `result-track:033bf9a0f65e4687810390d0e5e5c63192976e06d5024e1f0e8f30779845c93b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
