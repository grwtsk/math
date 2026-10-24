# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.TransfiniteIteration.Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57324d45ed4296dc121c08ca87c205fdb22cb9f7",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57324d45ed4296dc121c08ca87c205fdb22cb9f7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SuccPred.Limit` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transfiniteIterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/declarations/transfiniteiterate--2ab718cbbba65d4519a2ec7d.md) | 43 | `declaration-track:2ab718cbbba65d4519a2ec7dec303838be949749c9614644f30399633c0c6898` |
| 2 | `lemma` | [transfiniteIterate_bot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/declarations/transfiniteiterate-bot--847b3bcb9700eb3739152838.md) | 48 | `result-track:847b3bcb9700eb373915283835c6317d39852e2f8b119bd1de990440ec2be4fe` |
| 3 | `lemma` | [transfiniteIterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/declarations/transfiniteiterate-succ--62a425d718d0390fc573a2cf.md) | 53 | `result-track:62a425d718d0390fc573a2cf112b00ed32aae61d7331d55e0baa04a23cf57678` |
| 4 | `lemma` | [transfiniteIterate_limit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/declarations/transfiniteiterate-limit--b2402dd69d672e5056fc25ed.md) | 60 | `result-track:b2402dd69d672e5056fc25ed672f34395d1d7d2794123db20e4be2f177030fc8` |
| 5 | `lemma` | [monotone_transfiniteIterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/declarations/monotone-transfiniteiterate--657c0cf21fe8ac17a80a5556.md) | 74 | `result-track:657c0cf21fe8ac17a80a55564ec6c43166117ba301c755839d8084c6e6e4b6e3` |
| 6 | `lemma` | [top_mem_range_transfiniteIterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/TransfiniteIteration/Variantcf7f9429605eeb82a2810a334a5254bd69fbf3d69a3563257d3c421db3aefdfc.lean/declarations/top-mem-range-transfiniteiterate--10f7b9310002bd1704927926.md) | 96 | `result-track:10f7b9310002bd1704927926a004b7ac4a853773980397546a25cb1c045c57a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
