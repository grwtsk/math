# Verification target: GRWTSK.Topology.GeneralTopology.Closed.Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9fcfeb0a22efcbe2fa9be143358ebe3da94b83c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9fcfeb0a22efcbe2fa9be143358ebe3da94b83c`.

Source path: `GRWTSK/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.SheafOfTypes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/close--df2c06a36e09baee831e03c7.md) | 59 | `declaration-track:df2c06a36e09baee831e03c73a93363a7e276574244fcda257a31a054f01534f` |
| 2 | `theorem` | [le_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/le-close--f2b318361ff95ebb4d5b3a52.md) | 64 | `result-track:f2b318361ff95ebb4d5b3a52b44e01139e9ffdf8122b8542b3e74b7868b4b38c` |
| 3 | `def` | [IsClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/isclosed--27f211c9f26e2a4f7c6cd387.md) | 73 | `declaration-track:27f211c9f26e2a4f7c6cd38728dc1481366bd76af363f4d4a4c9e37b4099f9d8` |
| 4 | `theorem` | [covers_iff_mem_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/covers-iff-mem-of-isclosed--d0d8a9817bab767bf5b16150.md) | 77 | `result-track:d0d8a9817bab767bf5b16150c910b89f6666c2743af19a97bf2cf5b85c4a991b` |
| 5 | `theorem` | [isClosed_pullback](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/isclosed-pullback--ce490053d324a7c6b0d1fc80.md) | 82 | `result-track:ce490053d324a7c6b0d1fc80d389ff2fe3a895c213785c2887930eeda118e308` |
| 6 | `theorem` | [le_close_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/le-close-of-isclosed--cc93b485e911152392bab66b.md) | 89 | `result-track:cc93b485e911152392bab66be871c304a825eb690b3f0a5eedecb741910f08b5` |
| 7 | `theorem` | [close_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/close-isclosed--a7ea3a0dc840c94dac4d1185.md) | 94 | `result-track:a7ea3a0dc840c94dac4d1185e957ebc920eb19a9948735a02ee93844aeb7245e` |
| 8 | `def` | [closureOperator](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/closureoperator--4107ee77d20e8bbf914aea9b.md) | 99 | `declaration-track:4107ee77d20e8bbf914aea9b8edf1be9f40e1aca75508dfe1a649f217c077b66` |
| 9 | `theorem` | [isClosed_iff_close_eq_self](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/isclosed-iff-close-eq-self--ebe12de9f4cc430b726ac3eb.md) | 103 | `result-track:ebe12de9f4cc430b726ac3eb48b3093098ffde15dedb8dad60e39191f3d89068` |
| 10 | `theorem` | [close_eq_self_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/close-eq-self-of-isclosed--805d4499545b2755caf27d59.md) | 106 | `result-track:805d4499545b2755caf27d592b969f996d49507ab7ed978b8458680bec097c5d` |
| 11 | `theorem` | [pullback_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/pullback-close--d919490be9e818db7c5b098c.md) | 110 | `result-track:d919490be9e818db7c5b098cbe84b74b9fdc153d10492ac16915d2f1377e96ba` |
| 12 | `theorem` | [monotone_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/monotone-close--031a28a9655845ca6262df6d.md) | 121 | `result-track:031a28a9655845ca6262df6d7803c0b3cb6f20879b588d1c4e8615f3b963861b` |
| 13 | `theorem` | [close_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/close-close--b083a2955029d7ed89939e60.md) | 125 | `result-track:b083a2955029d7ed89939e6033cced97295d8df280276f92fe406bd8599b0080` |
| 14 | `theorem` | [close_eq_top_iff_mem](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/close-eq-top-iff-mem--e2cea4f712b0c2958aba446b.md) | 132 | `result-track:e2cea4f712b0c2958aba446bc7147c5d96992f595edee765b397903c1c85220c` |
| 15 | `def` | [Functor.closedSieves](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/functor-closedsieves--2cd0d06a9e9ec0bf0e6dbb5a.md) | 151 | `declaration-track:2cd0d06a9e9ec0bf0e6dbb5a62f1522435458031736afed25f2dba4d78c6cf2c` |
| 16 | `theorem` | [classifier_isSheaf](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/classifier-issheaf--ff7d8a11c9819e473eb41f4b.md) | 158 | `result-track:ff7d8a11c9819e473eb41f4b4b961b85ba26bd814c27cc583b3abf4d783746d3` |
| 17 | `theorem` | [le_topology_of_closedSieves_isSheaf](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/le-topology-of-closedsieves-issheaf--d114cf68bf25cff9269b3bd3.md) | 211 | `result-track:d114cf68bf25cff9269b3bd3e26f9c79d75f78952aa1cd682297e34f6d7d7b99` |
| 18 | `theorem` | [topology_eq_iff_same_sheaves](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/topology-eq-iff-same-sheaves--64792a8fe50cee0f07c1a246.md) | 231 | `result-track:64792a8fe50cee0f07c1a246f78e01e28b0f024235806ddc8403d77619d86d06` |
| 19 | `def` | [topologyOfClosureOperator](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/topologyofclosureoperator--910092f1874c45e6e5b2dedf.md) | 252 | `declaration-track:910092f1874c45e6e5b2dedfa3db90f2e8ac778cf87f8c87806cb239037c82c5` |
| 20 | `theorem` | [topologyOfClosureOperator_self](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/topologyofclosureoperator-self--2f1395e7f9a5908933aeaad9.md) | 271 | `result-track:2f1395e7f9a5908933aeaad99fa8b73afeaf7c5984fbad1f74d7208af8a9723f` |
| 21 | `theorem` | [topologyOfClosureOperator_close](../../../../../mathematics/Topology/GeneralTopology/Closed/Variant3e041921dd101d27180eddfe6c1a49d535ffc32cdb996339e646a90d3de96120.lean/declarations/topologyofclosureoperator-close--c387d752cd5760644bafcff5.md) | 276 | `result-track:c387d752cd5760644bafcff5feb4a3a96c9559c5200f8cff19d6f74baef67afa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
