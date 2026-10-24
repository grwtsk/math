# Verification target: GRWTSK.Topology.GeneralTopology.FiberPartition.Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "374de18e53c2691012207a05bcc1011d94d8e409",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `374de18e53c2691012207a05bcc1011d94d8e409`.

Source path: `GRWTSK/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigmaIsoHom](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/declarations/sigmaisohom--b85771f004fb5a79e0d012fc.md) | 44 | `declaration-track:b85771f004fb5a79e0d012fcfcc38a5ae3d8c2984d8a930fa8feebc645ec6cda` |
| 2 | `lemma` | [sigmaIsoHom_inj](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/declarations/sigmaisohom-inj--b0a8b5655a161cae84b0d843.md) | 49 | `result-track:b0a8b5655a161cae84b0d84374dd9cdc70a1f77644f9dabca77bedcacec06b64` |
| 3 | `lemma` | [sigmaIsoHom_surj](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/declarations/sigmaisohom-surj--d14f80b2add588bb332d58db.md) | 56 | `result-track:d14f80b2add588bb332d58dbc1339fc329ba0c7633f740658f1ab56e517c6fbb` |
| 4 | `def` | [sigmaIncl](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/declarations/sigmaincl--509e5160cec25a374ce6f3bd.md) | 60 | `declaration-track:509e5160cec25a374ce6f3bd9a204b1b1fa356cab6bbc6092c516faf461ae3fa` |
| 5 | `def` | [sigmaInclIncl](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/declarations/sigmainclincl--89eebfceb7faf425fd06fb79.md) | 65 | `declaration-track:89eebfceb7faf425fd06fb79c76b2020186a403afe9c65f09acca434bd6725fb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/declarations/instance--61faa5b0468eda42af2ad904.md) | 76 | `declaration-track:61faa5b0468eda42af2ad904ef1bef8e5d2994abdf4745b15440120e677ec705` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FiberPartition/Varianta6b8a99081e16d3ce1e842a7f21419b56afe88340ba0b91fea6ff8d0c03157a9.lean/declarations/instance--78118a088f784b97d44320cc.md) | 81 | `declaration-track:78118a088f784b97d44320cc1e6fbfbc3f394257b51296d34cef29cb1300f1d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
