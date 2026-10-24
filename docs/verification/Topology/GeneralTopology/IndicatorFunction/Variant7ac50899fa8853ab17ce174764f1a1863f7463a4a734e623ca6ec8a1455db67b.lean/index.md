# Verification target: GRWTSK.Topology.GeneralTopology.IndicatorFunction.Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e405dfff62a767a00841649e56cfbe6ecb707b6",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e405dfff62a767a00841649e56cfbe6ecb707b6`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.IndicatorFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mulIndicator_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/mulindicator-eventuallyeq--dd524ca6b8bb6047d25f2a7e.md) | 29 | `result-track:dd524ca6b8bb6047d25f2a7eb6c21bf48c4531019afaa8938d4a88fccf558f81` |
| 2 | `theorem` | [mulIndicator_union_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/mulindicator-union-eventuallyeq--28d45b32e4091e502c0edaba.md) | 44 | `result-track:28d45b32e4091e502c0edabada7127bbb7382a571136c4fb46572fc061dee74e` |
| 3 | `theorem` | [mulIndicator_eventuallyLE_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/mulindicator-eventuallyle-mulindicator--1ddf9cadee595e332ab6767d.md) | 56 | `result-track:1ddf9cadee595e332ab6767d7572f5acca8128fb8c272f0591feb45dc68b548a` |
| 4 | `theorem` | [Monotone.mulIndicator_eventuallyEq_iUnion](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/monotone-mulindicator-eventuallyeq-iunion--1c64da63569be7b24b572672.md) | 64 | `result-track:1c64da63569be7b24b5726727b08cd3cba476b2c38363bf32fea4b33f07f584c` |
| 5 | `theorem` | [Monotone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/monotone-tendsto-mulindicator--f878c403b5b65929ac68025d.md) | 70 | `result-track:f878c403b5b65929ac68025d752cf12f4d3301fa3bd1bfafd6426fe6c6629b8c` |
| 6 | `theorem` | [Antitone.mulIndicator_eventuallyEq_iInter](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/antitone-mulindicator-eventuallyeq-iinter--7e4f08afd174ec3b36e42fbc.md) | 77 | `result-track:7e4f08afd174ec3b36e42fbcab2abf09fba032bb709fbc352517afef8f81b462` |
| 7 | `theorem` | [Antitone.tendsto_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/antitone-tendsto-mulindicator--674cf2e111fddebd46d995ff.md) | 83 | `result-track:674cf2e111fddebd46d995ffcb15e2b672867ed1f0fb9f2ce78adffb15aeac9e` |
| 8 | `theorem` | [mulIndicator_biUnion_finset_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/mulindicator-biunion-finset-eventuallyeq--518fd14253b2c6d14971d378.md) | 90 | `result-track:518fd14253b2c6d14971d3787d746cc7a900d99995cfbf6ab9b7708315b1e076` |
| 9 | `theorem` | [tendsto_mulIndicator_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/tendsto-mulindicator-biunion-finset--4fee865e50b95d1e720d81a7.md) | 98 | `result-track:4fee865e50b95d1e720d81a7b45e10b41a7bea3ade3fd61cf8c9efe7d222df84` |
| 10 | `theorem` | [Filter.EventuallyEq.mulSupport](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/filter-eventuallyeq-mulsupport--3120eed5bc57aa450dddf8c5.md) | 105 | `result-track:3120eed5bc57aa450dddf8c54d330c91806f214f6e6043088747beac6b1fa945` |
| 11 | `theorem` | [Filter.EventuallyEq.mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/filter-eventuallyeq-mulindicator--7c6d8b82c3e9c44a3f5de22e.md) | 112 | `result-track:7c6d8b82c3e9c44a3f5de22eb38599a99b8c5e281b66ecccd68132d1ff40b2b9` |
| 12 | `theorem` | [Filter.EventuallyEq.mulIndicator_one](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/filter-eventuallyeq-mulindicator-one--c6704c4ffa35e2e7212526a6.md) | 118 | `result-track:c6704c4ffa35e2e7212526a61634e1af208f179353d38e57f0d7fe0cc8de7895` |
| 13 | `theorem` | [Filter.EventuallyEq.of_mulIndicator](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/filter-eventuallyeq-of-mulindicator--54d0888f40ba0f42b8b7a350.md) | 124 | `result-track:54d0888f40ba0f42b8b7a3506bec6dc222d9a8d3cc38caa19d9d67e98ac2c45b` |
| 14 | `theorem` | [Filter.EventuallyEq.of_mulIndicator_const](../../../../../mathematics/Topology/GeneralTopology/IndicatorFunction/Variant7ac50899fa8853ab17ce174764f1a1863f7463a4a734e623ca6ec8a1455db67b.lean/declarations/filter-eventuallyeq-of-mulindicator-const--4b8aa13869fc0545b12f178c.md) | 133 | `result-track:4b8aa13869fc0545b12f178ca5ed1c3c211e8a8e5394b554e748331d60da445f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
