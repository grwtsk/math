# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Tree.Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd52de76bb3ca507b8890263a70501a42bd29edf",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd52de76bb3ca507b8890263a70501a42bd29edf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Relation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.BinaryFrontier.PartialBitfield.Order` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BinaryRefinementTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/declarations/binaryrefinementtree--9617ca2be2d8b689bbfbc67e.md) | 25 | `declaration-track:9617ca2be2d8b689bbfbc67e77682d574ac4a16374bd38a6a50061cbd2675c1d` |
| 2 | `def` | [BinaryRefinementTree.ParentEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/declarations/binaryrefinementtree-parentedge--52204bdacc00f000b3b330f7.md) | 53 | `declaration-track:52204bdacc00f000b3b330f70e2b592d1ac59548dc8a184a26dc453774a0dd1d` |
| 3 | `structure` | [CompleteSplitRegistry](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/declarations/completesplitregistry--45a506d05e99689f99dafde5.md) | 63 | `declaration-track:45a506d05e99689f99dafde5c10b491c9659eceb184dc7475c8c86344b99642a` |
| 4 | `theorem` | [BinaryRefinementTree.edge_extends](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Tree/Variant13cb0ccfb13ae9d4c52a3c9f5f3aa906e4a31cdb44d0a95112ead0555e2ad17a.lean/declarations/binaryrefinementtree-edge-extends--0e28ad767de9535bf711706d.md) | 94 | `result-track:0e28ad767de9535bf711706d7fd05ec71fcaac6bf7cc4c416106eeaaf008af9d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
