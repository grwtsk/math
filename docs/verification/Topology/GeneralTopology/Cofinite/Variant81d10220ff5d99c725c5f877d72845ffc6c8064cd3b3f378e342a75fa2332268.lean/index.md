# Verification target: GRWTSK.Topology.GeneralTopology.Cofinite.Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4833d14a0fe1af195e97f21b73c82d4e5ea184ba",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4833d14a0fe1af195e97f21b73c82d4e5ea184ba`.

Source path: `GRWTSK/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pi` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/cofinite--ce90c11933c17a17e9209d5d.md) | 32 | `declaration-track:ce90c11933c17a17e9209d5de53179a058405f294ec456788b2d0ad2248f18c4` |
| 2 | `theorem` | [mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/mem-cofinite--68890c56b3635d41100c3d33.md) | 40 | `result-track:68890c56b3635d41100c3d33139805ad4f6bcc343113e16818e954e116e3ba17` |
| 3 | `theorem` | [eventually_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/eventually-cofinite--2659aa87a4a2d1b85c531940.md) | 45 | `result-track:2659aa87a4a2d1b85c531940c64c02126187bacfb18083c2445222c7efb0783a` |
| 4 | `theorem` | [hasBasis_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/hasbasis-cofinite--d0a0d493b64d31a4ae442354.md) | 49 | `result-track:d0a0d493b64d31a4ae442354a2beb748625fded384634f4e2d5abb1a835542c4` |
| 5 | `instance` | [cofinite_neBot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/cofinite-nebot--1c26519a2b5fa1b853b6fef0.md) | 55 | `declaration-track:1c26519a2b5fa1b853b6fef0439bb34ae12763f5207242d0b8e91c341ad03579` |
| 6 | `theorem` | [cofinite_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/cofinite-eq-bot-iff--b222c1fe5b35a5626ec8f2b2.md) | 60 | `result-track:b222c1fe5b35a5626ec8f2b2cd7a5fa72f5266b8eb4664b70bf811766b155c4d` |
| 7 | `theorem` | [cofinite_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/cofinite-eq-bot--a3987fcc5c2013cf357ac45d.md) | 64 | `result-track:a3987fcc5c2013cf357ac45d9a04ac5754cd221571e4dbb697f4714605e45260` |
| 8 | `theorem` | [frequently_cofinite_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/frequently-cofinite-iff-infinite--18b5f30ff1cb4004c22ff81b.md) | 66 | `result-track:18b5f30ff1cb4004c22ff81bd6d3aea4ecc1abe17c4f0e2170141fbb4e82d91a` |
| 9 | `theorem` | [_root_.Set.Finite.compl_mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/root-set-finite-compl-mem-cofinite--4bdb7487bdb88c5e06a06990.md) | 72 | `result-track:4bdb7487bdb88c5e06a069905ccb43b31aba34b3f13fda2faa5a79e167b048ca` |
| 10 | `theorem` | [_root_.Set.Finite.eventually_cofinite_nmem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/root-set-finite-eventually-cofinite-nmem--66dd648a79b4ca41f5d8201c.md) | 76 | `result-track:66dd648a79b4ca41f5d8201c83418f1d4750f292aaef1dd4afdc0fca9b34bfbb` |
| 11 | `theorem` | [_root_.Finset.eventually_cofinite_nmem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/root-finset-eventually-cofinite-nmem--d114b4b30e2e5da8a9967d53.md) | 81 | `result-track:d114b4b30e2e5da8a9967d533914cafcc1a17d1b3dd45a2eab5e8f21362b2831` |
| 12 | `theorem` | [_root_.Set.infinite_iff_frequently_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/root-set-infinite-iff-frequently-cofinite--0ed2335a475bc193f2f7666e.md) | 85 | `result-track:0ed2335a475bc193f2f7666e5b1ff46ae6513fdfa200fb815917af7c20caf971` |
| 13 | `theorem` | [eventually_cofinite_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/eventually-cofinite-ne--ee1350a31d40db675f5146f7.md) | 90 | `result-track:ee1350a31d40db675f5146f7c15e03864444297b712dfe7599689b3d12b3b005` |
| 14 | `theorem` | [le_cofinite_iff_compl_singleton_mem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/le-cofinite-iff-compl-singleton-mem--ba4daa5ca945c56fe02a647b.md) | 94 | `result-track:ba4daa5ca945c56fe02a647bb6c582386679019236e110bba6ba3d4c0368e0bd` |
| 15 | `theorem` | [le_cofinite_iff_eventually_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/le-cofinite-iff-eventually-ne--623197414758cd20c00b8292.md) | 100 | `result-track:623197414758cd20c00b8292172c10e9fb1bea14e04d179877a6d9c96811dc94` |
| 16 | `theorem` | [atTop_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/attop-le-cofinite--d9c57eeca5f13a82c4b77f5a.md) | 105 | `result-track:d9c57eeca5f13a82c4b77f5abdc4e306a9dc3dcbd8efc243ab71ea4faac4d307` |
| 17 | `theorem` | [comap_cofinite_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/comap-cofinite-le--e86fdf9f389da52a5c5ce701.md) | 109 | `result-track:e86fdf9f389da52a5c5ce7016fb8c2cbfe691d826072787955d0ce9cf891a855` |
| 18 | `theorem` | [coprod_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/coprod-cofinite--12ccf8588afaa2d7c02cd7b7.md) | 115 | `result-track:12ccf8588afaa2d7c02cd7b77228a674581c95df7485d91387596b00be8156b8` |
| 19 | `theorem` | [coprodᵢ_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/coprod-cofinite--97b4031f3e222c402a2fa28c.md) | 120 | `result-track:97b4031f3e222c402a2fa28cce74aea95c04853ec4fb8ea20db35354f1cdd8da` |
| 20 | `theorem` | [disjoint_cofinite_left](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/disjoint-cofinite-left--135d14df336475c69831aca3.md) | 128 | `result-track:135d14df336475c69831aca354eea185be6ce0c0604fc72c16c8ed8a2fdaf2f9` |
| 21 | `theorem` | [disjoint_cofinite_right](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/disjoint-cofinite-right--fe4be239ea2a96cc92b5b28d.md) | 135 | `result-track:fe4be239ea2a96cc92b5b28d33d3301054c9e4afac93c533beccf702963b2b5b` |
| 22 | `theorem` | [countable_compl_sInter_sets](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/countable-compl-sinter-sets--b552fa8943a4b39bf92d46ef.md) | 140 | `result-track:b552fa8943a4b39bf92d46efc6c693d3c4329a8a339476b8a2622e48594a3378` |
| 23 | `theorem` | [Tendsto.countable_compl_preimage_sInter_sets](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/tendsto-countable-compl-preimage-sinter-sets--a8069901547edd4876f2bc50.md) | 148 | `result-track:a8069901547edd4876f2bc50feaee9e5059d62828805f0b3c79d630454fd76dd` |
| 24 | `theorem` | [Nat.cofinite_eq_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/nat-cofinite-eq-attop--0a14a94a75dc388be3c5e8d9.md) | 159 | `result-track:0a14a94a75dc388be3c5e8d92745201fab4ae53f6ed2ec01075343e1e6f94751` |
| 25 | `theorem` | [Nat.frequently_atTop_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/nat-frequently-attop-iff-infinite--2e2fb2ca37232194adcc98dc.md) | 165 | `result-track:2e2fb2ca37232194adcc98dc4e740296b6c0869e9de5859ff1e7503ac73c845d` |
| 26 | `theorem` | [Filter.Tendsto.exists_within_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/filter-tendsto-exists-within-forall-le--fe94c47480ed5f829cc04b9f.md) | 170 | `result-track:fe94c47480ed5f829cc04b9f564992e6d06d850403b2a87983867a857c1271d3` |
| 27 | `theorem` | [Filter.Tendsto.exists_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/filter-tendsto-exists-forall-le--e0d5c3f0cbe83a446082aeeb.md) | 187 | `result-track:e0d5c3f0cbe83a446082aeebc54647e348e66ff3dd63f87151ec6c34cf3c07d0` |
| 28 | `theorem` | [Filter.Tendsto.exists_within_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/filter-tendsto-exists-within-forall-ge--77e2e56f5c7a9bc27b840b23.md) | 193 | `result-track:77e2e56f5c7a9bc27b840b231bd2c1ef54d77755c546e6532466f79778433986` |
| 29 | `theorem` | [Filter.Tendsto.exists_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/filter-tendsto-exists-forall-ge--777b930bdd7a528d64115181.md) | 199 | `result-track:777b930bdd7a528d641151819022f11b2540ad57337cbfcdadb4eaa51ecff725` |
| 30 | `theorem` | [Function.Surjective.le_map_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/function-surjective-le-map-cofinite--575a47f40930beb469a7e890.md) | 204 | `result-track:575a47f40930beb469a7e89061f95ba95d442146d5fb8a850a7bb97999f643fa` |
| 31 | `theorem` | [Function.Injective.tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/function-injective-tendsto-cofinite--cf3bbb6b029a272221cb80c7.md) | 209 | `result-track:cf3bbb6b029a272221cb80c7b98795f63e1d65a48616b99ff8b290793f876fb5` |
| 32 | `theorem` | [Function.Injective.comap_cofinite_eq](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/function-injective-comap-cofinite-eq--28e3507a89f0e13f09bd2fc9.md) | 215 | `result-track:28e3507a89f0e13f09bd2fc9e7987b0efe9ff2b611ad3fd966b85fdae5ed8035` |
| 33 | `theorem` | [Function.Injective.nat_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.lean/declarations/function-injective-nat-tendsto-attop--2134474860a1579f1a8017d8.md) | 221 | `result-track:2134474860a1579f1a8017d82979634bd1cb236919b0369415d7b36d80c5da19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
