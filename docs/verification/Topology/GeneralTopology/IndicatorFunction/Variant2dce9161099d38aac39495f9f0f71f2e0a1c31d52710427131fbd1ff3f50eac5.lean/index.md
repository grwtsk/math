# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorFunction.Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cdeccda59c69e4752a214c3290522e4672981e80",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cdeccda59c69e4752a214c3290522e4672981e80`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.CompleteLattice.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulIndicator_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/mulindicator-eventuallyeq--c842f6e22cc2b1a8d9d4fa34.md) | 38 | `result-track:c842f6e22cc2b1a8d9d4fa34e192fb4974e6687ae8f7232375c5fbca0d4bac8a` |
| 2 | `theorem` | [mulIndicator_union_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/mulindicator-union-eventuallyeq--f182a26470c43c49ca56c4e9.md) | 52 | `result-track:f182a26470c43c49ca56c4e94474b447fa777922fcb8057f72e3cc2e05bccb03` |
| 3 | `theorem` | [mulIndicator_eventuallyLE_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/mulindicator-eventuallyle-mulindicator--0f474533bd1c63d1856ce9c7.md) | 63 | `result-track:0f474533bd1c63d1856ce9c72bae7dd7eb9409c0eb4fd15adc81190634a1936c` |
| 4 | `theorem` | [Monotone.mulIndicator_eventuallyEq_iUnion](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/monotone-mulindicator-eventuallyeq-iunion--d92e54e03bb536a85badf163.md) | 70 | `result-track:d92e54e03bb536a85badf1639c4a767f272b23af255ec6f8d299d248139ce04f` |
| 5 | `theorem` | [Monotone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/monotone-tendsto-mulindicator--fe297bea52ed747eb0e3e6ab.md) | 76 | `result-track:fe297bea52ed747eb0e3e6abef8bf3ad4c07ec7d86aeb2814c9c36ce6e63aa28` |
| 6 | `theorem` | [Antitone.mulIndicator_eventuallyEq_iInter](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/antitone-mulindicator-eventuallyeq-iinter--144e4e211a84c20f5d5fcef0.md) | 82 | `result-track:144e4e211a84c20f5d5fcef013f1b8d260df7da2e7ffeef819977cfa1a28d669` |
| 7 | `theorem` | [Antitone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/antitone-tendsto-mulindicator--7224040ec8ee83bc75532926.md) | 88 | `result-track:7224040ec8ee83bc75532926e048060e6352a952d8466490a659339cc199b819` |
| 8 | `theorem` | [mulIndicator_biUnion_finset_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/mulindicator-biunion-finset-eventuallyeq--bcf19802c71feaf1ebba849d.md) | 94 | `result-track:bcf19802c71feaf1ebba849d59001c84fe781f6ed6dc909bd47e3235cf6b1c27` |
| 9 | `theorem` | [tendsto_mulIndicator_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/tendsto-mulindicator-biunion-finset--051968a9cb8beba262ee58bf.md) | 102 | `result-track:051968a9cb8beba262ee58bf899e8b05458539330e2c3119b0d3cb60893f9ff4` |
| 10 | `theorem` | [Filter.EventuallyEq.mulSupport](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/filter-eventuallyeq-mulsupport--1f4c312496db1b516d28aca4.md) | 108 | `result-track:1f4c312496db1b516d28aca4cd3f49f59905204b1c97f5e993454053c6e1b08a` |
| 11 | `theorem` | [Filter.EventuallyEq.mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/filter-eventuallyeq-mulindicator--35985c643982ad6b4db76cf8.md) | 114 | `result-track:35985c643982ad6b4db76cf8f083878366c0b88798971f4664127ca654775bb4` |
| 12 | `theorem` | [Filter.EventuallyEq.mulIndicator_one](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/filter-eventuallyeq-mulindicator-one--5f027a770d1a8ba0f2638d0c.md) | 119 | `result-track:5f027a770d1a8ba0f2638d0c10d908f382575bc26f52a13e641a9c8193f260ab` |
| 13 | `theorem` | [Filter.EventuallyEq.of_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/filter-eventuallyeq-of-mulindicator--3532ab705f50554a5c73c4f0.md) | 124 | `result-track:3532ab705f50554a5c73c4f0f4b4f97681c6c8f94f4cd50210d85c0e330ae449` |
| 14 | `theorem` | [Filter.EventuallyEq.of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/filter-eventuallyeq-of-mulindicator-const--c7e60eee521c1fb34eed1f93.md) | 133 | `result-track:c7e60eee521c1fb34eed1f93eabe518c1b87b811c3089f6886fd3a8c06f0c05c` |
| 15 | `theorem` | [Filter.mulIndicator_const_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant2dce9161099d38aac39495f9f0f71f2e0a1c31d52710427131fbd1ff3f50eac5.lean/declarations/filter-mulindicator-const-eventuallyeq--65fb9de635d08a2b904c9eaf.md) | 138 | `result-track:65fb9de635d08a2b904c9eaf0e0369234c072666070684ffdca3fce0098f9e03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
