# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b6f158def9999cfd7332419005455adced36735",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b6f158def9999cfd7332419005455adced36735`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.NatInt` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddConstMap](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/addconstmap--8f8c3ba0161c5526022a26dc.md) | 37 | `declaration-track:8f8c3ba0161c5526022a26dc2f1e798b00e0c7ee9e28e6a1b955138a812d6606` |
| 2 | `class` | [AddConstMapClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/addconstmapclass--d8b2fe6dd2acb7db5425393c.md) | 52 | `declaration-track:d8b2fe6dd2acb7db5425393cda94471d0ab8a859b3ca3bb42f734bd4c34e5309` |
| 3 | `theorem` | [semiconj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/semiconj--21c8430cde1d4951bed545b1.md) | 70 | `result-track:21c8430cde1d4951bed545b1ca15517d4a8df2e7c519c88407756cb4391cbfde` |
| 4 | `theorem` | [map_add_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-nsmul--2f7ae4ef54865f110f1b7546.md) | 75 | `result-track:2f7ae4ef54865f110f1b754664192061c540dd1d0fc6acf428a3a4b69abd2210` |
| 5 | `theorem` | [map_add_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-nat--a0692fd8288be80e55f8498d.md) | 80 | `result-track:a0692fd8288be80e55f8498df74900ce48d355be65216f50925be33bd3631293` |
| 6 | `theorem` | [map_add_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-one--816319eab7f2c53678863a19.md) | 83 | `result-track:816319eab7f2c53678863a19f9ce5d06a50aac2caeb9f06a6bf99f0886315be7` |
| 7 | `theorem` | [map_add_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-ofnat--17a2e569fb5c796737650400.md) | 87 | `result-track:17a2e569fb5c796737650400e0f93f958cd67e22a7b76e7d8c1ffab1e8da8e01` |
| 8 | `theorem` | [map_add_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-nat--708f82025b299c7685b87c59.md) | 92 | `result-track:708f82025b299c7685b87c5920585e31c51d73751d71cc6947731dfdacbee94f` |
| 9 | `theorem` | [map_add_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-ofnat--9a888d37e3ab87e71da4f2f2.md) | 95 | `result-track:9a888d37e3ab87e71da4f2f2732781d06a9bc9d5ad160d4b97523b917862a968` |
| 10 | `theorem` | [map_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-const--76a0164530ccc06ec0165364.md) | 100 | `result-track:76a0164530ccc06ec01653642307ddd36dd8e7c69a85dc09f30210cf7938a1f6` |
| 11 | `theorem` | [map_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-one--957cbaae813a697e09c76a7e.md) | 104 | `result-track:957cbaae813a697e09c76a7e506b730cdfb7126e1951039de09e7761bd9c903d` |
| 12 | `theorem` | [map_nsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-nsmul-const--5d6d848b22969902cdbb4cff.md) | 109 | `result-track:5d6d848b22969902cdbb4cffa84678cf2f0aa8cb9a7790a5760aa24317000949` |
| 13 | `theorem` | [map_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-nat--03cebdc156d070ba10dda9d7.md) | 114 | `result-track:03cebdc156d070ba10dda9d7bbb85884a40a171dcc90702696b26afb7449ce68` |
| 14 | `theorem` | [map_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-ofnat--2be4f00c9eb828f80ec87194.md) | 118 | `result-track:2be4f00c9eb828f80ec87194faad232c11e45513e145227f3fbd3b91b4fa2fb4` |
| 15 | `theorem` | [map_nat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-nat--b38d6fdb9a195c21e2411849.md) | 123 | `result-track:b38d6fdb9a195c21e24118499a367a89e848dd34d1b1f444bbfc7d8d1858c926` |
| 16 | `theorem` | [map_ofNat](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-ofnat--0c0710050a6aa85eb0bd0bd2.md) | 126 | `result-track:0c0710050a6aa85eb0bd0bd24a110c127d319e38d6e7384cb4d729a659d95796` |
| 17 | `theorem` | [map_const_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-const-add--085dd54a02762c0f9ad0cc67.md) | 131 | `result-track:085dd54a02762c0f9ad0cc67f91db2743c4fc0c3310dbea7c1a45adc846f0212` |
| 18 | `theorem` | [map_one_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-one-add--c179d2d19e0de9d5e4e355a2.md) | 135 | `result-track:c179d2d19e0de9d5e4e355a2395de5c2f9acdf74ae1fe030dc184f2941d52745` |
| 19 | `theorem` | [map_nsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-nsmul-add--e5697b00164ba1675dbaac2e.md) | 139 | `result-track:e5697b00164ba1675dbaac2ebb7916701c453f37b13bf6e50591067a9186bf05` |
| 20 | `theorem` | [map_nat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-nat-add--5c27cb490752b3db4ba10038.md) | 144 | `result-track:5c27cb490752b3db4ba10038b6450ff2facc57cac75b291f2ca796db04da4206` |
| 21 | `theorem` | [map_ofNat_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-ofnat-add--7106a7a7fbd1ec9351ba4053.md) | 148 | `result-track:7106a7a7fbd1ec9351ba40533216ed3aff2db4aef8606712a3553f3fbaaa298c` |
| 22 | `theorem` | [map_nat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-nat-add--1c365ef7fb371901b636bdba.md) | 153 | `result-track:1c365ef7fb371901b636bdba69bf0c207a107f01867d838fb41c891636107047` |
| 23 | `theorem` | [map_ofNat_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-ofnat-add--0cd86294b979b9d9e1c814cf.md) | 156 | `result-track:0cd86294b979b9d9e1c814cf3ea7de45c31bd1b28330b712f27afd771cc7ca23` |
| 24 | `theorem` | [map_sub_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-nsmul--89f2c74b42fcf4eca31f03e2.md) | 162 | `result-track:89f2c74b42fcf4eca31f03e2989f9c6bd0f945fac7c1fcbb79889cff2bc2e9a1` |
| 25 | `theorem` | [map_sub_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-const--ab5efc9ca2bb1f9ad622a589.md) | 167 | `result-track:ab5efc9ca2bb1f9ad622a589ad3dece3c2abe4ff9e8f2ad2cef7d9141681df0e` |
| 26 | `theorem` | [map_sub_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-one--938f6972cad396808ef857a6.md) | 171 | `result-track:938f6972cad396808ef857a6a5fad2a4e433e0e0183b77b158a8593c62b86294` |
| 27 | `theorem` | [map_sub_nat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-nat--efeebe6204aac6c92d9bd5f3.md) | 176 | `result-track:efeebe6204aac6c92d9bd5f313859f0dec73813b3be67019d0b7c6a0508e9564` |
| 28 | `theorem` | [map_sub_ofNat'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-ofnat--d99c6ba3cd970078790db7d6.md) | 181 | `result-track:d99c6ba3cd970078790db7d64c3b780c59b6fd360551fc1f348bd63fdba3f72f` |
| 29 | `theorem` | [map_add_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-zsmul--80987c9ad3ee7d360e872dbc.md) | 187 | `result-track:80987c9ad3ee7d360e872dbc132fe909d1cba100da385c1ac2e4417108aa5eb2` |
| 30 | `theorem` | [map_zsmul_const](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-zsmul-const--60e60859c9ec29637b3a58ef.md) | 193 | `result-track:60e60859c9ec29637b3a58ef5d23e233a2251d63f79c349371a8fe063822763a` |
| 31 | `theorem` | [map_add_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-int--64bce766fe38d5112b90c5e7.md) | 198 | `result-track:64bce766fe38d5112b90c5e7fcdf55e474df1c72029f40e82799e65d390cb1d6` |
| 32 | `theorem` | [map_add_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-add-int--75d355d52f98ad2898a3f234.md) | 202 | `result-track:75d355d52f98ad2898a3f2349a4a46ad620d17a1fea3402e359b0972251bc1e3` |
| 33 | `theorem` | [map_sub_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-zsmul--d0529f95f1647d01b60f0b6c.md) | 206 | `result-track:d0529f95f1647d01b60f0b6ca0af382974dd5adac43290da8c552e4eee22576c` |
| 34 | `theorem` | [map_sub_int'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-int--b9caf3e3e800a5720e1cac9a.md) | 211 | `result-track:b9caf3e3e800a5720e1cac9a5f8c74957678b5fd0a0a2744e8f3fe004509c56a` |
| 35 | `theorem` | [map_sub_int](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-sub-int--1afd58711d925ec9c0751d6e.md) | 215 | `result-track:1afd58711d925ec9c0751d6ea86b917e6f3d1e698140b0934984ea4cbe6f9bbb` |
| 36 | `theorem` | [map_zsmul_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-zsmul-add--e9c81ec9d659b899407e15dc.md) | 219 | `result-track:e9c81ec9d659b899407e15dcdc685101a69bb4681b98c032d31c9a8747490594` |
| 37 | `theorem` | [map_int_add'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-int-add--f680b581dcb4a62a885bdb18.md) | 224 | `result-track:f680b581dcb4a62a885bdb183d444072dbe279abb63388dc97c4c6a79f5c97cd` |
| 38 | `theorem` | [map_int_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-int-add--05afec4c922cae10f8002ee1.md) | 228 | `result-track:05afec4c922cae10f8002ee10dcf8c91fe6ad7243f2d0ae7b38cc2b02fb5ffb0` |
| 39 | `theorem` | [map_fract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/map-fract--bfb53cc66ef21fedbecb938b.md) | 231 | `result-track:bfb53cc66ef21fedbecb938b99b40a382471e89f2e9bcc291285b2e64af31469` |
| 40 | `theorem` | [rel_map_of_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/rel-map-of-icc--d19addfe87070cbdc641a5b6.md) | 239 | `result-track:d19addfe87070cbdc641a5b6f348604ea752576a43f0517cab86333c2693a14b` |
| 41 | `theorem` | [monotone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/monotone-iff-icc--77ad820d88dda239eb720295.md) | 281 | `result-track:77ad820d88dda239eb7202956622b522ee84b154df2e64b01234f64e82e62035` |
| 42 | `theorem` | [antitone_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/antitone-iff-icc--f1a04be684dd2510f3cb219b.md) | 288 | `result-track:f1a04be684dd2510f3cb219b9dabaa95514a9fff4e49359f8e475dc8d51f26ea` |
| 43 | `theorem` | [strictMono_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/strictmono-iff-icc--51559569d806bf907a4dd596.md) | 294 | `result-track:51559569d806bf907a4dd5963759a2ae1201150ef2296876b1d73aba207efdeb` |
| 44 | `theorem` | [strictAnti_iff_Icc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/strictanti-iff-icc--9aa384478efaab618bf715ea.md) | 300 | `result-track:9aa384478efaab618bf715ea4a54a48cd07d09b0488b0ed67ae7051c4ab604b3` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--0029ccecedb191bd289b7e1d.md) | 320 | `declaration-track:0029ccecedb191bd289b7e1d7fe2ae12c0c7ee814b68c780aa3a55ba8376b03b` |
| 46 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/coe-mk--72eef2c9d21e019987624d80.md) | 324 | `result-track:72eef2c9d21e019987624d8054b13d9b74f3eedb315fb7aad63df9bdd77a2027` |
| 47 | `theorem` | [mk_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/mk-coe--41426f1a56854429ee36d80c.md) | 325 | `result-track:41426f1a56854429ee36d80c0b90c609019825937743f1410c5cdc22a3dcc4bc` |
| 48 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/tofun-eq-coe--ed9bf673243363c0ab8861e9.md) | 326 | `result-track:ed9bf673243363c0ab8861e97e699012fae51b389e936ba884d6f3f9257ba276` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--1955ea01da3a4b00661eb09a.md) | 328 | `declaration-track:1955ea01da3a4b00661eb09acf180a03013519c15c19ceb748307739d01bbd80` |
| 50 | `theorem` | [ext](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/ext--983ea4a232e6ccf03571fa54.md) | 331 | `result-track:983ea4a232e6ccf03571fa54fe7edf071cb7f32a8e9871f35fe8afc57985dd42` |
| 51 | `def` | [id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/id--de0d92aa1ec100c56d2e9383.md) | 342 | `declaration-track:de0d92aa1ec100c56d2e93839873370deccb866f19bc11cc5673708a1ccb99f6` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--f21f051ce83f2e52cfddf99b.md) | 344 | `declaration-track:f21f051ce83f2e52cfddf99b2643096240b6db3a5749149b77ec367e712458bb` |
| 53 | `def` | [comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/comp--da53456908360ff4f01c1965.md) | 348 | `declaration-track:da53456908360ff4f01c19657a1995c098bced1faa9501227da2464d84d2de31` |
| 54 | `theorem` | [comp_id](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/comp-id--9f741bb74c91a6a68ab66afc.md) | 352 | `result-track:9f741bb74c91a6a68ab66afc4a4578f581a72462eef3fee9ddad3b051f3e7815` |
| 55 | `theorem` | [id_comp](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/id-comp--2f5008e2636e679e3852a1b9.md) | 353 | `result-track:2f5008e2636e679e3852a1b9fa5f49d54b4e2e7aca5967bba9ea546e2e3caebd` |
| 56 | `def` | [replaceConsts](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/replaceconsts--1905453cbbebc0f1cfa3c233.md) | 357 | `declaration-track:1905453cbbebc0f1cfa3c233fa7c1bba85d1d57cd4bdcf49ab340484efed8626` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--09c5d8fedb25a467f77d6083.md) | 367 | `declaration-track:09c5d8fedb25a467f77d6083393bf0f35366c8925bcb575328cc057035fd4ee9` |
| 58 | `theorem` | [coe_vadd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/coe-vadd--fbdc8d561ae7b31c84fd4658.md) | 371 | `result-track:fbdc8d561ae7b31c84fd46580f7cc3db0ec0396d8bc32087b1d8da14571327ab` |
| 59 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--4472f7338d6e88627f95082c.md) | 375 | `declaration-track:4472f7338d6e88627f95082ca934d7eb9aee7718cbd3c1fd5c91b4aa89175639` |
| 60 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--62c515b57f5b2eff46de3866.md) | 383 | `declaration-track:62c515b57f5b2eff46de3866a1080a165d58dca5975d4af9d2df7e61091e7a66` |
| 61 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--d121d59d0112e72b3f5bdbfc.md) | 384 | `declaration-track:d121d59d0112e72b3f5bdbfc973c4f3105f46a37b5f0d2f8f9d31ef73ee1fa0a` |
| 62 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--fb4320505d1992d17f17b33a.md) | 386 | `declaration-track:fb4320505d1992d17f17b33a6fa0c1785c2b8cc58c3c5c557aaf3215d1a1ca14` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/instance--1064c72231766634f0717c1d.md) | 389 | `declaration-track:1064c72231766634f0717c1d299a55dce3f2c600845a35707ef1738c8641d1e3` |
| 64 | `theorem` | [mul_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/mul-def--9ba19d7c51e65bd1a4df273a.md) | 392 | `result-track:9ba19d7c51e65bd1a4df273a401085868571ac9d874e266eb0cb12f6793d00ef` |
| 65 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/coe-mul--bfb7ff4cf9c89523ace8003f.md) | 393 | `result-track:bfb7ff4cf9c89523ace8003f5d308c323b2f78f5e44897e89eaf501606f64292` |
| 66 | `theorem` | [one_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/one-def--fc7395bf2e641fb51a499d4e.md) | 395 | `result-track:fc7395bf2e641fb51a499d4e2440d6e8fe2e0e69fc9168c23f9ee5c0e4c0673d` |
| 67 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/coe-one--0dfba3303ee0bff7b578fcf8.md) | 396 | `result-track:0dfba3303ee0bff7b578fcf81e8c90f82d3d2697707fe2a860fe594f47c5cb76` |
| 68 | `theorem` | [coe_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/coe-pow--12538f02abf83b064eaa1bde.md) | 398 | `result-track:12538f02abf83b064eaa1bde12d37152940f39f08667c06cb98a45467722f53c` |
| 69 | `theorem` | [pow_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/pow-apply--dd481c6d0a36a7ad85d0133d.md) | 400 | `result-track:dd481c6d0a36a7ad85d0133dfe0dad593a5891d8f1c3e8a34a6573c5869f3c22` |
| 70 | `def` | [toEnd](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/toend--9c11c4df82eeed6940c96fda.md) | 404 | `declaration-track:9c11c4df82eeed6940c96fdafb45ec8b266363bd3603e8bec0d2fc888622187f` |
| 71 | `def` | [smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/smul--be75f5d58c76ced96256401c.md) | 427 | `declaration-track:be75f5d58c76ced96256401ca379692968dde90659c257cfbc2ecc797f3c1541` |
| 72 | `def` | [addLeftHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/addlefthom--6dc9fb1dcf0e3f7ed6065cd9.md) | 440 | `declaration-track:6dc9fb1dcf0e3f7ed6065cd981ad4da2c6bb5248d3cb7c7d87dd1d9ba0cadfbc` |
| 73 | `def` | [conjNeg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/conjneg--b71afef80b776b438a6f894d.md) | 453 | `declaration-track:b71afef80b776b438a6f894dff3e9cc3c23e7582c5e0a4029363bd438ef573d7` |
| 74 | `theorem` | [conjNeg_symm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/conjneg-symm--830dcb1eda068f7e9d22a9fe.md) | 457 | `result-track:830dcb1eda068f7e9d22a9fefec0f8dfa5039c8dfbca3292e82b2a6323b90506` |
| 75 | `def` | [mkFract](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant232018613f2b1d13638fc4e9b783c9dafc461d27cb7189e2b1361cc5bc8b6e05.lean/declarations/mkfract--ea9ca3f97b4813d35dd3fe06.md) | 467 | `declaration-track:ea9ca3f97b4813d35dd3fe06bdd61acaa8b43b7656a738304182bb0f24fbf902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
