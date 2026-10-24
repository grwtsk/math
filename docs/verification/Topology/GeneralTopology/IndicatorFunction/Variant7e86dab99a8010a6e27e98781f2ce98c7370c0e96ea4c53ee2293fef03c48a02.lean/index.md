# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorFunction.Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b50bad7c89222d63f6c115624f30f8c35f2a33d8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b50bad7c89222d63f6c115624f30f8c35f2a33d8`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean.json)

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
| 1 | `theorem` | [mulIndicator_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/mulindicator-eventuallyeq--91d44379e67649958a51a520.md) | 34 | `result-track:91d44379e67649958a51a520768448746e8b7a9540f23bb4c14e0030807c9eca` |
| 2 | `theorem` | [mulIndicator_union_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/mulindicator-union-eventuallyeq--0bf00a392a34f275033e6004.md) | 48 | `result-track:0bf00a392a34f275033e6004f9d62054da42949f5957abbae0a93b86d3c9223f` |
| 3 | `theorem` | [mulIndicator_eventuallyLE_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/mulindicator-eventuallyle-mulindicator--097e343c70eb6ea7af59cfb1.md) | 59 | `result-track:097e343c70eb6ea7af59cfb1ba36a64c691e32a62e4b2ab0079033d1f944bdc4` |
| 4 | `theorem` | [Monotone.mulIndicator_eventuallyEq_iUnion](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/monotone-mulindicator-eventuallyeq-iunion--1e0c15e13c5b3004eb23a316.md) | 66 | `result-track:1e0c15e13c5b3004eb23a3168e47aac4edef4886230dc1b29bf8e872fdb8ab43` |
| 5 | `theorem` | [Monotone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/monotone-tendsto-mulindicator--fc4a162a5a196b81cf7ee486.md) | 72 | `result-track:fc4a162a5a196b81cf7ee48631aa4c2bb3a07103920a14d163186b24a6d70e64` |
| 6 | `theorem` | [Antitone.mulIndicator_eventuallyEq_iInter](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/antitone-mulindicator-eventuallyeq-iinter--51d50b8d1bb3f9ca472ae583.md) | 78 | `result-track:51d50b8d1bb3f9ca472ae5831b53dd6f67fd0df64d44548b284d2315b643ed75` |
| 7 | `theorem` | [Antitone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/antitone-tendsto-mulindicator--8a277e95efd79a6fb8b95778.md) | 84 | `result-track:8a277e95efd79a6fb8b95778050fd39cf3e592b0c4e53aa74dbf6a73eb07df6b` |
| 8 | `theorem` | [mulIndicator_biUnion_finset_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/mulindicator-biunion-finset-eventuallyeq--7fb94b28d4dae1d2de168160.md) | 90 | `result-track:7fb94b28d4dae1d2de1681603f3c94e438d56b2d7d5f1ddcf89c2dee46bb6a32` |
| 9 | `theorem` | [tendsto_mulIndicator_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/tendsto-mulindicator-biunion-finset--48f06ee8d4e4dfd5aacbdecb.md) | 98 | `result-track:48f06ee8d4e4dfd5aacbdecbf4f523fe5cfa3b17e855d073f52caac7402e20a1` |
| 10 | `theorem` | [Filter.EventuallyEq.mulSupport](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/filter-eventuallyeq-mulsupport--1ace14b99d0f257a45d23606.md) | 104 | `result-track:1ace14b99d0f257a45d2360663cf331af27423e1969d70d505ff10c6f8395c0c` |
| 11 | `theorem` | [Filter.EventuallyEq.mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/filter-eventuallyeq-mulindicator--7c881e73e6ff06ec0654ae35.md) | 110 | `result-track:7c881e73e6ff06ec0654ae35bca03a7750fec9cb2cc90cada68b5242d646fd19` |
| 12 | `theorem` | [Filter.EventuallyEq.mulIndicator_one](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/filter-eventuallyeq-mulindicator-one--9bfaaca813fa94a366f60e5a.md) | 115 | `result-track:9bfaaca813fa94a366f60e5a07d72c62f949bf77b19d6718fe5aca3f15509980` |
| 13 | `theorem` | [Filter.EventuallyEqSet.of_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/filter-eventuallyeqset-of-mulindicator--b60df40abde3fd88ffaec1a0.md) | 120 | `result-track:b60df40abde3fd88ffaec1a0ec1bcfd15dddb39a2f49c7f8b7fddd0adf224fe2` |
| 14 | `theorem` | [Filter.EventuallyEqSet.of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/filter-eventuallyeqset-of-mulindicator-const--e5c536d1e684fc2f6fdaa535.md) | 132 | `result-track:e5c536d1e684fc2f6fdaa5357e066d68effd43e838376c9f24d7019a4459e315` |
| 15 | `theorem` | [Filter.mulIndicator_const_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/declarations/filter-mulindicator-const-eventuallyeq--2ff4ebffa19d28238488d9b7.md) | 140 | `result-track:2ff4ebffa19d28238488d9b7567a09ad2ce330c92da25324c826ca6c28e488ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
