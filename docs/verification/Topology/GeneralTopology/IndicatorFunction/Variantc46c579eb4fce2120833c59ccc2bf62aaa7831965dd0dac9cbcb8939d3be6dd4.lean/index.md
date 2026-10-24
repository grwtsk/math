# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorFunction.Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "672698eb44324628a008a770d702a51dffaff800",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `672698eb44324628a008a770d702a51dffaff800`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean.json)

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
| 1 | `theorem` | [mulIndicator_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/mulindicator-eventuallyeq--783a638e889cd2f00a9fc50d.md) | 42 | `result-track:783a638e889cd2f00a9fc50d85350a0a314dc68ee77789099cb80ce92d813542` |
| 2 | `theorem` | [mulIndicator_union_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/mulindicator-union-eventuallyeq--0d2f2d448eab3a52192119c3.md) | 56 | `result-track:0d2f2d448eab3a52192119c3936e4061755a25528359fd2c5bd2b8c53a805adc` |
| 3 | `theorem` | [mulIndicator_eventuallyLE_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/mulindicator-eventuallyle-mulindicator--0e577a99b2bee9c99ff88d42.md) | 67 | `result-track:0e577a99b2bee9c99ff88d429ef86c5746f1db8333a4c03839f5f698e490a7e8` |
| 4 | `theorem` | [Monotone.mulIndicator_eventuallyEq_iUnion](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/monotone-mulindicator-eventuallyeq-iunion--3c8879b57ad2d45c549fe3c2.md) | 74 | `result-track:3c8879b57ad2d45c549fe3c29d420e90e50cab5329b0bb016ce7927e03d69d39` |
| 5 | `theorem` | [Monotone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/monotone-tendsto-mulindicator--d8af864b3551dab9c7a53415.md) | 80 | `result-track:d8af864b3551dab9c7a5341529edd0d7a6a4343c8e64a4f531b6efec546bdad7` |
| 6 | `theorem` | [Antitone.mulIndicator_eventuallyEq_iInter](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/antitone-mulindicator-eventuallyeq-iinter--9f5a2ebcc2f6763fe7f4e417.md) | 86 | `result-track:9f5a2ebcc2f6763fe7f4e41705715e03546e11d7f90cc63833c3f42d89f7708e` |
| 7 | `theorem` | [Antitone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/antitone-tendsto-mulindicator--4d1f4da123b82e2bc324f997.md) | 92 | `result-track:4d1f4da123b82e2bc324f9971bf1577e6a97e2f35d6bfa1c25c97d1b65d07e38` |
| 8 | `theorem` | [mulIndicator_biUnion_finset_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/mulindicator-biunion-finset-eventuallyeq--d5db0a7176f5d977f50b4e2b.md) | 98 | `result-track:d5db0a7176f5d977f50b4e2b35a63f66226a6cacc452efd4672e0f4a0085ff44` |
| 9 | `theorem` | [tendsto_mulIndicator_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/tendsto-mulindicator-biunion-finset--1ba72d2f46654a9878bd86a5.md) | 106 | `result-track:1ba72d2f46654a9878bd86a57b82e63fee31899bfda6fbce6c0158305e1ab390` |
| 10 | `theorem` | [Filter.EventuallyEq.mulSupport](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/filter-eventuallyeq-mulsupport--248a9a661b043a08236c8681.md) | 112 | `result-track:248a9a661b043a08236c8681e9a42dd65e39dae10ea3754d2374fe4539e745b7` |
| 11 | `theorem` | [Filter.EventuallyEq.mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/filter-eventuallyeq-mulindicator--b17400c66c1cf87eaad61b1f.md) | 118 | `result-track:b17400c66c1cf87eaad61b1f0d011619905689fa686026f8eabe5ff95ff835d1` |
| 12 | `theorem` | [Filter.EventuallyEq.mulIndicator_one](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/filter-eventuallyeq-mulindicator-one--321fccfae6a4e42789e2d917.md) | 123 | `result-track:321fccfae6a4e42789e2d9170185f2f66bd8c8233e4c8933db62975b13a52905` |
| 13 | `theorem` | [Filter.EventuallyEqSet.of_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/filter-eventuallyeqset-of-mulindicator--ab5a5677f452e517d86eb988.md) | 128 | `result-track:ab5a5677f452e517d86eb988d4e5736fbdee57a9c9866d173f57a559feb88126` |
| 14 | `theorem` | [Filter.EventuallyEqSet.of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/filter-eventuallyeqset-of-mulindicator-const--bf65917614fdfb2446f58bdb.md) | 140 | `result-track:bf65917614fdfb2446f58bdbdadb1bd9816ee74b584befd2f1984344c10ea1ce` |
| 15 | `theorem` | [Filter.mulIndicator_const_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variantc46c579eb4fce2120833c59ccc2bf62aaa7831965dd0dac9cbcb8939d3be6dd4.lean/declarations/filter-mulindicator-const-eventuallyeq--2143ae741576a98b4a1cef60.md) | 148 | `result-track:2143ae741576a98b4a1cef602b468847d3020fd44a83d442e506632126b76852` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
