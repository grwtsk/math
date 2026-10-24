# Verification target: GRWTSK.Topology.GeneralTopology.Lift.Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51d949e57518cdff4e244707dfa6a7fd5f3135f5",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51d949e57518cdff4e244707dfa6a7fd5f3135f5`.

Source path: `GRWTSK/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Bases.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [lift_top](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-top--99e7c31b07130a53466530ed.md) | 34 | `result-track:99e7c31b07130a53466530ed86cc56e0b716ead39169f35593037400ba65613b` |
| 2 | `theorem` | [HasBasis.mem_lift_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/hasbasis-mem-lift-iff--938ab1412f69d14d1b1ae0f8.md) | 45 | `result-track:938ab1412f69d14d1b1ae0f8100d79c5f431cd0985e761f68289b6708d809cb9` |
| 3 | `theorem` | [HasBasis.lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/hasbasis-lift--72728209e3e892494ba98427.md) | 64 | `result-track:72728209e3e892494ba98427aee1864216f02c35060746858e0440683390b52a` |
| 4 | `theorem` | [mem_lift_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/mem-lift-sets--d618f6b312b6ca73028f8e7f.md) | 71 | `result-track:d618f6b312b6ca73028f8e7f14ece7cf0524fd4152850596b2ee2e225d533d0a` |
| 5 | `theorem` | [sInter_lift_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/sinter-lift-sets--3ae26588091e60dd7b5284c3.md) | 75 | `result-track:3ae26588091e60dd7b5284c3b7bebe9768ba8fbb33e9684fabe3f10087613cc4` |
| 6 | `theorem` | [mem_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/mem-lift--818e42cb5e87e798ededa09c.md) | 80 | `result-track:818e42cb5e87e798ededa09cd2c038994f9975e1deb9287faccf74ba3854321c` |
| 7 | `theorem` | [lift_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-le--74112e7015709f19cb94f162.md) | 84 | `result-track:74112e7015709f19cb94f16274ae4a95479aa96e13af15e40704c3a95952b340` |
| 8 | `theorem` | [le_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/le-lift--b4b1472eac5ed337aa4fe1d7.md) | 88 | `result-track:b4b1472eac5ed337aa4fe1d7fc0733a3bd7aeb484ec26cdba77ac1ea5c9b755c` |
| 9 | `theorem` | [lift_mono](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-mono--0a4009002986207774aa2abe.md) | 92 | `result-track:0a4009002986207774aa2abef9d3ff021133464feb77963fbe9d6a8e4414cef6` |
| 10 | `theorem` | [lift_mono'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-mono--183b03a2313658d1861751b0.md) | 95 | `result-track:183b03a2313658d1861751b0ce3a7f84a26696271d5a9861b5e8f0b11c2e4725` |
| 11 | `theorem` | [tendsto_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/tendsto-lift--2dfcf7f8ee204b01f3007cf1.md) | 97 | `result-track:2dfcf7f8ee204b01f3007cf1c48723afd0ec4bf70af462c7f554db9b91a679aa` |
| 12 | `theorem` | [map_lift_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/map-lift-eq--596a40399e24b4193039e571.md) | 101 | `result-track:596a40399e24b4193039e571d8a259106e2bcbd7af6aa1faa5e8d7ac2cbfb313` |
| 13 | `theorem` | [comap_lift_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/comap-lift-eq--93ffd41f24cd5f8a140eab73.md) | 106 | `result-track:93ffd41f24cd5f8a140eab733720e2622a81e801faa84a2a84c6bfd7c8c4a69f` |
| 14 | `theorem` | [comap_lift_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/comap-lift-eq2--6ecc5b3c71083e58f1e0eede.md) | 109 | `result-track:6ecc5b3c71083e58f1e0eedeb4d57c7f9ee60bce477e3016840b1b5954f26039` |
| 15 | `theorem` | [lift_map_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-map-le--a6535b94de2ea5fdb7dbc4c9.md) | 114 | `result-track:a6535b94de2ea5fdb7dbc4c94577481b22e7b0003093fa1686ec570568ecb324` |
| 16 | `theorem` | [map_lift_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/map-lift-eq2--ac07fe88bb8f2e948a2abf94.md) | 117 | `result-track:ac07fe88bb8f2e948a2abf948525486e46149f894768f0552ba27d144bf2777c` |
| 17 | `theorem` | [lift_comm](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-comm--4f431faa96de1ef3630afbf8.md) | 121 | `result-track:4f431faa96de1ef3630afbf8f2997fefdb7e1b50a1794a89c26bb39d1e181040` |
| 18 | `theorem` | [lift_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-assoc--3b9801a5bb4337260d2e835c.md) | 129 | `result-track:3b9801a5bb4337260d2e835c8e4f5aa09de64198882b55ab31c751e2f94db364` |
| 19 | `theorem` | [lift_lift_same_le_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-lift-same-le-lift--6f0636c209a3f8224528a8c1.md) | 138 | `result-track:6f0636c209a3f8224528a8c1717a20bc144580dcc12cc58581ea42452f71093a` |
| 20 | `theorem` | [lift_lift_same_eq_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-lift-same-eq-lift--191514b05eb8b2f54a5a4f93.md) | 142 | `result-track:191514b05eb8b2f54a5a4f937312787e1130877c0ffe6a429c8df7d1277a2b5a` |
| 21 | `theorem` | [lift_principal](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-principal--4067176c6178d3cc7e40a5c7.md) | 150 | `result-track:4067176c6178d3cc7e40a5c73c38a824566df72e984f916d7d8d4ec834a38bfa` |
| 22 | `theorem` | [monotone_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/monotone-lift--25ed792b825f043e799d4c10.md) | 153 | `result-track:25ed792b825f043e799d4c10e7d1cde15d97aa6bfff65223168de8bda5ad5e90` |
| 23 | `theorem` | [lift_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-nebot-iff--8b690030d64726864aa62fc1.md) | 156 | `result-track:8b690030d64726864aa62fc1286e5ae31a37e6f08842b1d68c926cf50c79bba4` |
| 24 | `theorem` | [lift_const](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-const--642184bf07836977b1634c68.md) | 160 | `result-track:642184bf07836977b1634c68980fc6fd01706d2b84c988f94890eb191ffe05ae` |
| 25 | `theorem` | [lift_inf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-inf--83a490a8c88c386311ae466f.md) | 164 | `result-track:83a490a8c88c386311ae466f0808354623dd9b46d695417c80b86cb029b23106` |
| 26 | `theorem` | [lift_principal2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-principal2--995522885f8a326633902298.md) | 168 | `result-track:995522885f8a32663390229850426ccbd1ab622726817bb8adc54694291a85cc` |
| 27 | `theorem` | [lift_iInf_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-iinf-le--f6c57336a5833a5e284fea3a.md) | 172 | `result-track:f6c57336a5833a5e284fea3a26c55bc922b483fa8557e442ec893857a658df6e` |
| 28 | `theorem` | [lift_iInf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-iinf--d1b35fc08130b0a192a05434.md) | 176 | `result-track:d1b35fc08130b0a192a054343ea4e857198553f864fb0fdf1026ab0928b27ac2` |
| 29 | `theorem` | [lift_iInf_of_directed](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-iinf-of-directed--c04a3a29bc47c977b2b5c2c5.md) | 189 | `result-track:c04a3a29bc47c977b2b5c2c5eb8274c1f0df9a7fb650ef1a45832c1dfbced70b` |
| 30 | `theorem` | [lift_iInf_of_map_univ](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-iinf-of-map-univ--7f07b9113c4185231d672afb.md) | 195 | `result-track:7f07b9113c4185231d672afb0cf50e3b6303bfb470ee57e45623b219fb4328f5` |
| 31 | `theorem` | [lift'_top](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-top--47a23d723fce118085a17d4c.md) | 209 | `result-track:47a23d723fce118085a17d4cd013e5bef7ef9ab66e35e60338cc645c14aaf473` |
| 32 | `theorem` | [mem_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/mem-lift--eb70413a95a63548ecd1a48a.md) | 212 | `result-track:eb70413a95a63548ecd1a48a859ef6718c7b80fdc603ec7d5025dbc993f3f2d0` |
| 33 | `theorem` | [tendsto_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/tendsto-lift--7caa4e640a071ee399099f98.md) | 215 | `result-track:7caa4e640a071ee399099f980a0ee75006cd7a5408a41329895ecb74fa2fa127` |
| 34 | `theorem` | [HasBasis.lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/hasbasis-lift--52656b1f4078a5443eedc82c.md) | 219 | `result-track:52656b1f4078a5443eedc82c0ca45f11f7b0fe8642fb1ba34b071a30cbb2f359` |
| 35 | `theorem` | [mem_lift'_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/mem-lift-sets--dee5bd72b9dde93a1ae59fda.md) | 224 | `result-track:dee5bd72b9dde93a1ae59fda47da71bc275550b5bc5c2317f2fe8d25bb4c9a7e` |
| 36 | `theorem` | [eventually_lift'_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/eventually-lift-iff--a769a10ca000c6b9999b49e0.md) | 227 | `result-track:a769a10ca000c6b9999b49e02fdcf41915927e78e5a0c5777ef58957787e43f4` |
| 37 | `theorem` | [sInter_lift'_sets](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/sinter-lift-sets--ff922144f87a3b9075a47c7f.md) | 231 | `result-track:ff922144f87a3b9075a47c7fb64fc5dcf606ddf96327e7ec5e87f92fa80fd3ae` |
| 38 | `theorem` | [lift'_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-le--41aae68624b6ca96172ecb3c.md) | 234 | `result-track:41aae68624b6ca96172ecb3cb73d77d7129867c39d538bd805b97ea7210f38ce` |
| 39 | `theorem` | [lift'_mono](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-mono--fd96b07602f71877468ae9b7.md) | 238 | `result-track:fd96b07602f71877468ae9b73ea33ef8b1c84d817fc1cf4107fe74202f11d4f2` |
| 40 | `theorem` | [lift'_mono'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-mono--de3b4ccff573e623b2db496a.md) | 241 | `result-track:de3b4ccff573e623b2db496ada06472dc02ef3f98f3ff1ad30eecdbed38c9812` |
| 41 | `theorem` | [lift'_cong](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-cong--16e5a34fe1b44e1e355571e2.md) | 244 | `result-track:16e5a34fe1b44e1e355571e2e08830d05c543f1044ef86b8290f38640170242e` |
| 42 | `theorem` | [map_lift'_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/map-lift-eq--80a2ae6dde0a59de1a8de08c.md) | 248 | `result-track:80a2ae6dde0a59de1a8de08cb09f21b799d38fb05c697a4b40e3b9d7d487ca5b` |
| 43 | `theorem` | [lift'_map_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-map-le--5dfa2985d06d8fed588bfa3a.md) | 253 | `result-track:5dfa2985d06d8fed588bfa3a23eaa25a8c59b9c8aa91a9740ef5d75787aa6376` |
| 44 | `theorem` | [map_lift'_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/map-lift-eq2--dd4cb941456f8eee55beb3ad.md) | 256 | `result-track:dd4cb941456f8eee55beb3ad20a3253e20acb0b0ed55d9155bf8ab34509638da` |
| 45 | `theorem` | [comap_lift'_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/comap-lift-eq--43c6b44ca1a53a4d252dae8b.md) | 260 | `result-track:43c6b44ca1a53a4d252dae8bb96a71d588a66a3edde397235ced891f1542dbe6` |
| 46 | `theorem` | [comap_lift'_eq2](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/comap-lift-eq2--61ec499a4aef233635c159e3.md) | 263 | `result-track:61ec499a4aef233635c159e3c34fb6b66cad0d631d5c3491a6e0301acb6e7155` |
| 47 | `theorem` | [lift'_principal](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-principal--a88a35d93b98ac089bf2323f.md) | 267 | `result-track:a88a35d93b98ac089bf2323f4a61e5b95c8bb2560a5a1fc49461013668b00ca2` |
| 48 | `theorem` | [lift'_pure](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-pure--612f275fd935b66f5fec91dc.md) | 270 | `result-track:612f275fd935b66f5fec91dc14ed3115671453c9528f45618c2152b382cec4ee` |
| 49 | `theorem` | [lift'_bot](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-bot--cbfaf58511e5605cdc64d2d9.md) | 273 | `result-track:cbfaf58511e5605cdc64d2d9ec67e6d9beee37fa3b9b8af99c5169eac3cd455a` |
| 50 | `theorem` | [le_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/le-lift--5841bae21ff37b71392f8e71.md) | 276 | `result-track:5841bae21ff37b71392f8e7152a52f1c65b18723cea5244b70fb2bbe9343f1d3` |
| 51 | `theorem` | [principal_le_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/principal-le-lift--af5b0405500ba43b27367a53.md) | 280 | `result-track:af5b0405500ba43b27367a530fc2be29962b907a8af8980ea6ef3f1b9fd5a1e3` |
| 52 | `theorem` | [monotone_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/monotone-lift--be619361818218df912c5dad.md) | 283 | `result-track:be619361818218df912c5dad8b3591b43fb5259b1e649519b529e67b72080da6` |
| 53 | `theorem` | [lift_lift'_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-lift-assoc--a97bbb580f5d9847f82e2ce4.md) | 286 | `result-track:a97bbb580f5d9847f82e2ce4ac6b5e3bdeb730180824f3c0445ba7b77d5a3f6b` |
| 54 | `theorem` | [lift'_lift'_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-lift-assoc--d0046514fb093889fe54ebc7.md) | 292 | `result-track:d0046514fb093889fe54ebc7e22b736e7144ae34f407de497e9e43ec6f0a902d` |
| 55 | `theorem` | [lift'_lift_assoc](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-lift-assoc--7dc597047b832b054e0bb3fb.md) | 296 | `result-track:7dc597047b832b054e0bb3fbbe7804e489c3260976aa5590257d152fd53f9f2e` |
| 56 | `theorem` | [lift_lift'_same_le_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-lift-same-le-lift--78c6f0c273646b2977046bb1.md) | 300 | `result-track:78c6f0c273646b2977046bb18b16f6c832daac1ead45230484f22c70be2c09fc` |
| 57 | `theorem` | [lift_lift'_same_eq_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-lift-same-eq-lift--ceebc2995843154658fca1bf.md) | 304 | `result-track:ceebc2995843154658fca1bf2fbd869e911fe9a0f243c772cc018935dc5b8d17` |
| 58 | `theorem` | [lift'_inf_principal_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-inf-principal-eq--9b20bbd89e807b1a8e2c6f80.md) | 310 | `result-track:9b20bbd89e807b1a8e2c6f8008bc10d69a73018fe79192ccd58a74d61836f076` |
| 59 | `theorem` | [lift'_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-nebot-iff--a297a499be246ffa617ac1e1.md) | 314 | `result-track:a297a499be246ffa617ac1e1a082fa89b4ca072f579cff57665b445102004f9c` |
| 60 | `theorem` | [lift'_id](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-id--f3610db7f2dd718e76b0aceb.md) | 320 | `result-track:f3610db7f2dd718e76b0aceb10c69ee8fbef493791b7926e8b2ddd5318a23c85` |
| 61 | `theorem` | [lift'_iInf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-iinf--ffa640a07788621379f47590.md) | 323 | `result-track:ffa640a07788621379f47590d9e45e9c9a5ea35be86a9884d4aa49dee3b3e5c3` |
| 62 | `theorem` | [lift'_iInf_of_map_univ](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-iinf-of-map-univ--325586515329fcec815bdb45.md) | 327 | `result-track:325586515329fcec815bdb45abdc2fc99139aa9acf54def76e44319e9df311c0` |
| 63 | `theorem` | [lift'_inf](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-inf--1bb7bb50248a8589f371a5aa.md) | 333 | `result-track:1bb7bb50248a8589f371a5aafea9cf0a072fae21abca1f8ecfa97dfe2e480065` |
| 64 | `theorem` | [lift'_inf_le](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/lift-inf-le--69db27c560631982f95cd060.md) | 339 | `result-track:69db27c560631982f95cd0604d5b11c490c2a9137429b1d9c3e0087ecc201845` |
| 65 | `theorem` | [comap_eq_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/comap-eq-lift--7943425e5fc6c40bf4297490.md) | 343 | `result-track:7943425e5fc6c40bf4297490a3fc624b9ab2699ba4350e5015a236b9de3b3a65` |
| 66 | `theorem` | [prod_def](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/prod-def--7a2d1f22cd2934980f75d643.md) | 352 | `result-track:7a2d1f22cd2934980f75d643d789e786d8fb31b2f5ff538fac85beb3657a6baa` |
| 67 | `theorem` | [prod_same_eq](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/prod-same-eq--dba36bd21fa632d2c19f2152.md) | 359 | `result-track:dba36bd21fa632d2c19f21521554c26228e58bdd16adf2ec226168600ece5ec8` |
| 68 | `theorem` | [tendsto_prod_self_iff](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/tendsto-prod-self-iff--7646172bb398db6ee51a080d.md) | 362 | `result-track:7646172bb398db6ee51a080d095f19960cafc31f2857526c720ac37d1b6db8b1` |
| 69 | `theorem` | [prod_lift_lift](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/prod-lift-lift--f50fdc51e3f719b3b581019e.md) | 368 | `result-track:f50fdc51e3f719b3b581019ee668372d8abfa739b107b360cfa00ee2723789a1` |
| 70 | `theorem` | [prod_lift'_lift'](../../../../../mathematics/Topology/GeneralTopology/Lift/Variant7dff8e4e62a57d1978d939a69c001f02a14289f8c441490dd6ce80d9e6e5a174.lean/declarations/prod-lift-lift--7aa04dcd0f7edc2d4bff4ae9.md) | 377 | `result-track:7aa04dcd0f7edc2d4bff4ae9885235e32a9480df9571821d2c5133d7541a92a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
