# Verification target: GRWTSK.Topology.GeneralTopology.ENat.Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17dc7c5ba2e0aeaaed8582d74506f91decc53f2f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17dc7c5ba2e0aeaaed8582d74506f91decc53f2f`.

Source path: `GRWTSK/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Discrete` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.WithBotTop` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pointwise` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Monoid.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/instance--7e934084c305e83c9133f41a.md) | 26 | `declaration-track:7e934084c305e83c9133f41a6fbb3e4c0c86d94d339fb3767a13da5207aa1aa2` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/instance--c180e570836f10b71f052d0c.md) | 28 | `declaration-track:c180e570836f10b71f052d0cce369b34e165223cbdc2a0c92dc60f0b135e9b80` |
| 3 | `theorem` | [range_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/range-natcast--99de8a32ad4220b088767394.md) | 30 | `result-track:99de8a32ad4220b0887673949785c040b83737160f45e97232dac65636a273d4` |
| 4 | `theorem` | [isEmbedding_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/isembedding-natcast--1f5e870bb79c25605c648b01.md) | 33 | `result-track:1f5e870bb79c25605c648b0149fa8531692c70151fc3ad4be5cc900d8c12da71` |
| 5 | `theorem` | [isOpenEmbedding_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/isopenembedding-natcast--77b1a7b0c9b8d45b1a10a10f.md) | 39 | `result-track:77b1a7b0c9b8d45b1a10a10fd2c425d4404954ca42bc31e193763d4f45009efb` |
| 6 | `theorem` | [nhds_natCast](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/nhds-natcast--c6d6aa1cc0fc717f5fd77512.md) | 42 | `result-track:c6d6aa1cc0fc717f5fd77512846aa9688d34b7f5f85219387595a307352d64a8` |
| 7 | `theorem` | [nhds_eq_pure](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/nhds-eq-pure--9f1e9426d5581ac179f1ce6a.md) | 46 | `result-track:9f1e9426d5581ac179f1ce6ad9bafb9a0a5f6f572c564d8b89fdbef1d959c651` |
| 8 | `theorem` | [isOpen_singleton](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/isopen-singleton--1a96a99d21e5be753f492c73.md) | 50 | `result-track:1a96a99d21e5be753f492c73352bc97232620f180936bc59e78361d9ab6a4535` |
| 9 | `theorem` | [mem_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/mem-nhds-iff--62d7071896f05dd0fc3deee2.md) | 53 | `result-track:62d7071896f05dd0fc3deee20c2e0201dfb114ed6d202d8aeb091e75ac413e39` |
| 10 | `theorem` | [mem_nhds_natCast_iff](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/mem-nhds-natcast-iff--a4656d0a7590200a4a2f7dcd.md) | 56 | `result-track:a4656d0a7590200a4a2f7dcddbeb6ecd588792acac14992da7d51cc69da82c39` |
| 11 | `theorem` | [tendsto_nhds_top_iff_natCast_lt](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/tendsto-nhds-top-iff-natcast-lt--e56fbe0db1f2bd87aaf4398c.md) | 59 | `result-track:e56fbe0db1f2bd87aaf4398c5e4e93604afa7b8476829332912f1ba28dc1abd7` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/instance--f892ccfcf28cf316bc0e0da4.md) | 64 | `declaration-track:f892ccfcf28cf316bc0e0da46545ddfc9670d84d658ca80ac533a0d084efd780` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/instance--0507d78b1303852258601723.md) | 71 | `declaration-track:0507d78b1303852258601723dc47c2319544ea134c7214ab096f9f906dd39a8b` |
| 14 | `theorem` | [continuousAt_sub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/continuousat-sub--9b5233ffe8419efbf6657613.md) | 88 | `result-track:9b5233ffe8419efbf66576136e2728600aad2309c99870347b50e315fab8d66e` |
| 15 | `theorem` | [Filter.Tendsto.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/filter-tendsto-enatsub--ce5c388f921f8e0f21520779.md) | 103 | `result-track:ce5c388f921f8e0f21520779dbc5e7d4a0528b476bd8bac120f92a2fff5fb121` |
| 16 | `theorem` | [ContinuousWithinAt.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/continuouswithinat-enatsub--7962b92e686ae1e053e323f5.md) | 110 | `result-track:7962b92e686ae1e053e323f5387ac658a3ac048316b4181562d1aa8b116ecfec` |
| 17 | `theorem` | [ContinuousAt.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/continuousat-enatsub--c5c13698a61e26ca256455a6.md) | 115 | `result-track:c5c13698a61e26ca256455a6e4f4b263cce31878f759fc5dabc78591fe08e624` |
| 18 | `theorem` | [ContinuousOn.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/continuouson-enatsub--374eba46f309c9cea1cdcb68.md) | 120 | `result-track:374eba46f309c9cea1cdcb6893532d1b54fb82fa08770145cda707d6d216e09a` |
| 19 | `theorem` | [Continuous.enatSub](../../../../../mathematics/Topology/GeneralTopology/ENat/Variant1baa7c01aa9f8e62077e44564eb13349d86049644afebf869ded0df9d602efe1.lean/declarations/continuous-enatsub--add3002fb53920e32c4b8ec3.md) | 125 | `result-track:add3002fb53920e32c4b8ec3eb02f078a1aeb692a979b6dcb43402f21962d699` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
