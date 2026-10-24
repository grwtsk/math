# Verification target: GRWTSK.Topology.GeneralTopology.Cofinite.Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "642d29f9d99b9aad1a0a6ac99ea8cf5ded38846c",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `642d29f9d99b9aad1a0a6ac99ea8cf5ded38846c`.

Source path: `GRWTSK/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pi` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/cofinite--1353f878e95be771551e4522.md) | 40 | `declaration-track:1353f878e95be771551e4522a0906ca804a3633c96b8f41895ba663421b9ac6a` |
| 2 | `theorem` | [mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/mem-cofinite--e2b4fe028db01626edcab5ae.md) | 48 | `result-track:e2b4fe028db01626edcab5ae090ff22d39db4be7bb6e94cfcd3c9cd711631300` |
| 3 | `theorem` | [eventually_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/eventually-cofinite--dcd9d275e087e0a167ce3ecb.md) | 53 | `result-track:dcd9d275e087e0a167ce3ecb3acf992d4dee6c9cd516c1505fba654df778d5f1` |
| 4 | `theorem` | [hasBasis_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/hasbasis-cofinite--3d031608e93af2089273cde3.md) | 57 | `result-track:3d031608e93af2089273cde3c0d75cdb163ac999acdef330d8a04d43a70e040f` |
| 5 | `instance` | [cofinite_neBot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/cofinite-nebot--52e8b49b3bed564cea80c37a.md) | 63 | `declaration-track:52e8b49b3bed564cea80c37a8e2ffc2d572ba0f102b640f883159c0f8ec1743b` |
| 6 | `theorem` | [cofinite_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/cofinite-eq-bot-iff--544425547d2dbf82a2644f54.md) | 68 | `result-track:544425547d2dbf82a2644f5452b8e9bea63f2440338dff5907df011d7009750a` |
| 7 | `theorem` | [cofinite_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/cofinite-eq-bot--54655af33617af675f02d5ab.md) | 72 | `result-track:54655af33617af675f02d5ab8aaccb65ae1e80d1de649762a7a0aa4eae1dc821` |
| 8 | `theorem` | [frequently_cofinite_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/frequently-cofinite-iff-infinite--7631daa026447cc7d932f16e.md) | 74 | `result-track:7631daa026447cc7d932f16e553aecd4ddb8eb06cd037c9b22859d446e528dac` |
| 9 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.Set.Finite.compl_mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variant81d10220ff5d99c725c--2c48cfd651fc667433faeac9.md) | 80 | `result-track:2c48cfd651fc667433faeac984fd6fd83eb5b15d97db3d16a34fa8757e20ec3a` |
| 10 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.Set.Finite.eventually_cofinite_nmem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variant81d10220ff5d99c725c--2099b856985c2eb798997e87.md) | 84 | `result-track:2099b856985c2eb798997e87b62f7692987e4e26acf2fac0f0daf81b20b5f67f` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.Finset.eventually_cofinite_nmem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variant81d10220ff5d99c725c--2783fdb5b18bd0a78454f643.md) | 89 | `result-track:2783fdb5b18bd0a78454f64390622adddda067f9f4223f9e06cba28702e06462` |
| 12 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variant81d10220ff5d99c725c5f877d72845ffc6c8064cd3b3f378e342a75fa2332268.Set.infinite_iff_frequently_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variant81d10220ff5d99c725c--7ec7b4f4aef74ef7d5f77a38.md) | 93 | `result-track:7ec7b4f4aef74ef7d5f77a38c14a83427fd9c4e812fcdc85f72484103c9d88a5` |
| 13 | `theorem` | [eventually_cofinite_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/eventually-cofinite-ne--dae77ef2caba95c6c89898c8.md) | 98 | `result-track:dae77ef2caba95c6c89898c870eae5d48aa80b0daa614c6798e73f61bdbdb0b1` |
| 14 | `theorem` | [le_cofinite_iff_compl_singleton_mem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/le-cofinite-iff-compl-singleton-mem--8a87fe654c7f4fcbfb807c25.md) | 102 | `result-track:8a87fe654c7f4fcbfb807c253ba9dc02c101108ae85cfe130b8530c54a363c8d` |
| 15 | `theorem` | [le_cofinite_iff_eventually_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/le-cofinite-iff-eventually-ne--93f953fd62b678c084611938.md) | 108 | `result-track:93f953fd62b678c084611938249c63e5eec19c07c9fe7d9310fc031415754645` |
| 16 | `theorem` | [atTop_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/attop-le-cofinite--0ef3453276c9521ae8c12211.md) | 113 | `result-track:0ef3453276c9521ae8c122110009e9930cda4409d0479ad8f9e5736694449224` |
| 17 | `theorem` | [comap_cofinite_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/comap-cofinite-le--6c2d7a8e8062259303e28001.md) | 117 | `result-track:6c2d7a8e8062259303e280011682ffc572c7f2b2649416bf0769be32032ebb59` |
| 18 | `theorem` | [coprod_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/coprod-cofinite--8095f2b1470a18052cf2d7a9.md) | 123 | `result-track:8095f2b1470a18052cf2d7a9758625e82e0a12ca39b09535635898302ceef127` |
| 19 | `theorem` | [coprodᵢ_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/coprod-cofinite--d208dd49587d3b7a7b390073.md) | 128 | `result-track:d208dd49587d3b7a7b390073260935c98c664d6df1b9518058acbe474231f634` |
| 20 | `theorem` | [disjoint_cofinite_left](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/disjoint-cofinite-left--03ccf16f0787940ae943f436.md) | 136 | `result-track:03ccf16f0787940ae943f436331c05961f505348d0db4b5fa724326afb1f703d` |
| 21 | `theorem` | [disjoint_cofinite_right](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/disjoint-cofinite-right--fad91fbf784dcb89a2666ab0.md) | 143 | `result-track:fad91fbf784dcb89a2666ab0ca0c42a8b239f31107e4d665c90a638851154eb0` |
| 22 | `theorem` | [countable_compl_sInter_sets](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/countable-compl-sinter-sets--7debdb3f308539079d656b9f.md) | 148 | `result-track:7debdb3f308539079d656b9f8dc027c7eb8c829037150c500e7beb34e3a9fd71` |
| 23 | `theorem` | [Tendsto.countable_compl_preimage_sInter_sets](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/tendsto-countable-compl-preimage-sinter-sets--090db62cc402faed91d59c41.md) | 156 | `result-track:090db62cc402faed91d59c41f1f3d41ddd308749e644f0400eee450484924058` |
| 24 | `theorem` | [Nat.cofinite_eq_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/nat-cofinite-eq-attop--f994f8d374e8fa2174134f6b.md) | 167 | `result-track:f994f8d374e8fa2174134f6b7216528e8d7a530900f18ab6adf49fbf5f1cf396` |
| 25 | `theorem` | [Nat.frequently_atTop_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/nat-frequently-attop-iff-infinite--7932539c459da677bc69e80e.md) | 173 | `result-track:7932539c459da677bc69e80e8c9062eaa91e10a32209163cd97f11941fee6cd3` |
| 26 | `theorem` | [Filter.Tendsto.exists_within_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/filter-tendsto-exists-within-forall-le--4ae51feba255bef97dd81c17.md) | 178 | `result-track:4ae51feba255bef97dd81c17f9cd09c332d62518300da63db61f5a54676daabd` |
| 27 | `theorem` | [Filter.Tendsto.exists_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/filter-tendsto-exists-forall-le--8acddcf58e90eb065e8a4019.md) | 195 | `result-track:8acddcf58e90eb065e8a401939fec78bfb025be37e8dc88c7e268365f059c616` |
| 28 | `theorem` | [Filter.Tendsto.exists_within_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/filter-tendsto-exists-within-forall-ge--bf6681bcd59d175470b7b07d.md) | 201 | `result-track:bf6681bcd59d175470b7b07d6d1ed4233413b16f556c4e2a9b7f30135a3cb8f2` |
| 29 | `theorem` | [Filter.Tendsto.exists_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/filter-tendsto-exists-forall-ge--203a24ed38cbc64b752a263d.md) | 207 | `result-track:203a24ed38cbc64b752a263d3afb778f51162f81a19ad3f906d9dfbc0f36fe5a` |
| 30 | `theorem` | [Function.Surjective.le_map_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/function-surjective-le-map-cofinite--54d3a2c5bbc46b78cd118b61.md) | 212 | `result-track:54d3a2c5bbc46b78cd118b6130486a30883a5b9c17a62a3402f237fe76e74eb7` |
| 31 | `theorem` | [Function.Injective.tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/function-injective-tendsto-cofinite--35e907ca87989d42c26c1e50.md) | 217 | `result-track:35e907ca87989d42c26c1e5033a5a297591c0c390b2a497d46ac4e97bfca78d7` |
| 32 | `theorem` | [Function.Injective.comap_cofinite_eq](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/function-injective-comap-cofinite-eq--56e42c985ef8debed2523c9c.md) | 223 | `result-track:56e42c985ef8debed2523c9c2bebde0547d3ddc1fd6d19856860f9451fac51f0` |
| 33 | `theorem` | [Function.Injective.nat_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant755aa8b3c9af91c50932f3850779a23ff061c35267b2a11cf3129a44f42ddcce.lean/declarations/function-injective-nat-tendsto-attop--42f8a9d97fca8283b4101050.md) | 229 | `result-track:42f8a9d97fca8283b4101050c107ea2b1a67ed7d51fd8dba8f0c6422122735b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
