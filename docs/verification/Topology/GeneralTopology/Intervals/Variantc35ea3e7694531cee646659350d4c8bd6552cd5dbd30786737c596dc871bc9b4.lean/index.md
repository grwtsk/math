# Verification target: GRWTSK.Topology.GeneralTopology.Intervals.Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb82d6a376cab99aba8a28f4085feb15bd5f1c7a",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb82d6a376cab99aba8a28f4085feb15bd5f1c7a`.

Source path: `GRWTSK/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Bool.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ico](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/ico--1e6d768e68c426b4c4e34a64.md) | 44 | `declaration-track:1e6d768e68c426b4c4e34a64083cb9f91cd7ee4568b9bc5b9f04de34393852d2` |
| 2 | `theorem` | [zero_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/zero-bot--8dc50c017111ea0aebb24c82.md) | 49 | `result-track:8dc50c017111ea0aebb24c821ffb9f11ef5112fd9626296ee29efb58b3c37cd4` |
| 3 | `theorem` | [length](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/length--3ff33bdb9686880716e9ce05.md) | 52 | `result-track:3ff33bdb9686880716e9ce05572819dddf7a011801c1c2c1fd28998d4946839b` |
| 4 | `theorem` | [pairwise_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/pairwise-lt--477cd2b316f42ef8881e02ca.md) | 56 | `result-track:477cd2b316f42ef8881e02ca92e2f9ab62797b662ec03b7a91ffcc7aa73baf52` |
| 5 | `theorem` | [nodup](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/nodup--3faa1e5f7aa848cd229e194a.md) | 60 | `result-track:3faa1e5f7aa848cd229e194a4b7e7d0541eb6c1720730fa3d7631a887e56652e` |
| 6 | `theorem` | [mem](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/mem--d887a0d9513d90ffbdce6ca9.md) | 65 | `result-track:d887a0d9513d90ffbdce6ca97247b65e0812b2e163fa6697122885be4a0711aa` |
| 7 | `theorem` | [eq_nil_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/eq-nil-of-le--b49d071f1cd7a9abd6f48996.md) | 69 | `result-track:b49d071f1cd7a9abd6f48996649b04926e23d78b84728c147a385c4ce5a55d15` |
| 8 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/map-add--47cb87fc0b66706b096b63fc.md) | 72 | `result-track:47cb87fc0b66706b096b63fcdfce0af8016ba96013e21af1293e9c210734cf0e` |
| 9 | `theorem` | [map_sub](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/map-sub--a9fa7502a1d49a0afba031ad.md) | 75 | `result-track:a9fa7502a1d49a0afba031ad508d5645e0782e5a31e6a0d8b4ec80808f74cb9d` |
| 10 | `theorem` | [self_empty](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/self-empty--d51f1b83449aaf4c6f4c35ba.md) | 80 | `result-track:d51f1b83449aaf4c6f4c35ba428c7dd1700ba5db6132c178c6dc908e16ce700e` |
| 11 | `theorem` | [eq_empty_iff](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/eq-empty-iff--5dd1a740e7bf93c81362981b.md) | 84 | `result-track:5dd1a740e7bf93c81362981b3ecc186d123eb693ee7641c032516ea3b68e696f` |
| 12 | `theorem` | [append_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/append-consecutive--9524564e25ff5963d94be50f.md) | 87 | `result-track:9524564e25ff5963d94be50f8b1eda779377b45cbcbec6cbd14027bdae55f8f9` |
| 13 | `theorem` | [inter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/inter-consecutive--9d37cfaf02d3355ffc7e167b.md) | 95 | `result-track:9d37cfaf02d3355ffc7e167bc48ecac972e2fc9d6fdf24a50e578197ba5c39c0` |
| 14 | `theorem` | [bagInter_consecutive](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/baginter-consecutive--c9e67b75858bf3c8f53abd14.md) | 104 | `result-track:c9e67b75858bf3c8f53abd14a29c4afad57ee89f76dafd2dc588c1b5a8d38b71` |
| 15 | `theorem` | [succ_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/succ-singleton--99945baf4120a3ba1a591996.md) | 109 | `result-track:99945baf4120a3ba1a5919960ea1b15138332300a5ec9700ad97c19da488ff20` |
| 16 | `theorem` | [succ_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/succ-top--e2be20210a535e1003f4f0cb.md) | 113 | `result-track:e2be20210a535e1003f4f0cba640a733190de3b78fd4693e8bedaf02b758b5bd` |
| 17 | `theorem` | [eq_cons](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/eq-cons--403e60221f5364552c3f97d0.md) | 117 | `result-track:403e60221f5364552c3f97d06bd26e0c72893212306d6d75ba4261e40b4715e9` |
| 18 | `theorem` | [pred_singleton](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/pred-singleton--a811b01a4c5b41dbaafcacc7.md) | 122 | `result-track:a811b01a4c5b41dbaafcacc78b21639878695503750d36ec88c243791e5a9c59` |
| 19 | `theorem` | [chain'_succ](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/chain-succ--339eeef8d1680ec041a564f3.md) | 125 | `result-track:339eeef8d1680ec041a564f30c4c54b9a7667353045265c8d695f1cd5f3c4d38` |
| 20 | `theorem` | [notMem_top](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/notmem-top--96923eb9b5996f5e2b07a213.md) | 132 | `result-track:96923eb9b5996f5e2b07a213537c5a11ca4f92e1c078a461f4735362ca5d0b19` |
| 21 | `theorem` | [filter_lt_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-lt-of-top-le--647a2bdcd4f845388813617a.md) | 136 | `result-track:647a2bdcd4f845388813617a7e08a7ea17c74c9279388d17b070c40fd298220c` |
| 22 | `theorem` | [filter_lt_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-lt-of-le-bot--b6647f8bfc03546ee535c96f.md) | 141 | `result-track:b6647f8bfc03546ee535c96f9401b40f2b69fa66205b500942dafb5c9c081a6e` |
| 23 | `theorem` | [filter_lt_of_ge](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-lt-of-ge--7fe33a2a56c234acedaf3859.md) | 147 | `result-track:7fe33a2a56c234acedaf3859ca376c671724193da0d9572ebc5c3ba4077e806a` |
| 24 | `theorem` | [filter_lt](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-lt--6a3b9361f5b419a217c9b611.md) | 155 | `result-track:6a3b9361f5b419a217c9b611486fc10379332f91e1cfae1daddd524f0e14dade` |
| 25 | `theorem` | [filter_le_of_le_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-le-of-le-bot--1c0a1624d8c4fef4675d9d88.md) | 161 | `result-track:1c0a1624d8c4fef4675d9d88226cf88acd96b58ce2a7e448922f776cc8b53037` |
| 26 | `theorem` | [filter_le_of_top_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-le-of-top-le--aafe1d1b49e6450f144722f5.md) | 167 | `result-track:aafe1d1b49e6450f144722f5d20655e207a4f063139fff461cb5c35bf620fdb4` |
| 27 | `theorem` | [filter_le_of_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-le-of-le--ade1ac04d4e4ea37614d5e5b.md) | 172 | `result-track:ade1ac04d4e4ea37614d5e5b3ee4626f2c9af3874d836d264fe99b86ddaa6d9f` |
| 28 | `theorem` | [filter_le](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-le--2c7ad12d871cdbbd9b6f27a6.md) | 180 | `result-track:2c7ad12d871cdbbd9b6f27a6e1888e3b7e6e969761dfd2b7f330a5164db659b1` |
| 29 | `theorem` | [filter_lt_of_succ_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-lt-of-succ-bot--6e1d1f55d256e3faf5de1d1c.md) | 185 | `result-track:6e1d1f55d256e3faf5de1d1cc8da5533ae48c79f953e6da948f120439fa09958` |
| 30 | `theorem` | [filter_le_of_bot](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/filter-le-of-bot--fb07825271f4bd3e4ed6d0f8.md) | 191 | `result-track:fb07825271f4bd3e4ed6d0f8d9ecb76167d65f0ae0c2425926f8615447def578` |
| 31 | `theorem` | [trichotomy](../../../../../mathematics/Topology/GeneralTopology/Intervals/Variantc35ea3e7694531cee646659350d4c8bd6552cd5dbd30786737c596dc871bc9b4.lean/declarations/trichotomy--24fd46c36367d75a85158fe4.md) | 201 | `result-track:24fd46c36367d75a85158fe405391b60906256d89817f5b4998a6ca9600ff688` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
