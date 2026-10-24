# GRWTSK.Analysis.ErrorBounds.PartialMapComposition

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/PartialMapComposition.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea337082650adaf7beae43ae8e04413979be4a07`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ErrorBounds/PartialMapComposition.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [EndpointIdentity](declarations/endpointidentity--2e11371926c98182cae79334.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [FrameAddress](declarations/frameaddress--c84af51bae5a58d0e197ec91.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [FiberEndpoint](declarations/fiberendpoint--39043df9ef40a7971f104f3c.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [FramedPort](declarations/framedport--5a1b7d93cb7af741896eda33.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [defect_bound](declarations/defect-bound--50c2cc5aa60735ed11b5c257.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [comp](declarations/comp--a3df9077c263a426902eafc1.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [mem_comp_domain](declarations/mem-comp-domain--033ed54a00fe0a6590e631ce.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [comp_map](declarations/comp-map--2f78c84493282d8ef066fe6d.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [comp_residual](declarations/comp-residual--0638d7194739ee7d9119705b.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [comp_errorBudget](declarations/comp-errorbudget--89f76927d11ff0ed36987b57.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [composition_observation](declarations/composition-observation--b86c0f484d715bbd0383665e.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [comp_defect_bound](declarations/comp-defect-bound--200319d7b3551fbd46c4711f.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [identity](declarations/identity--5a5e1fe5a4d8ca61d347659e.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [identity_domain](declarations/identity-domain--155f10a1de3d6aeea8ccd5e8.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [identity_map](declarations/identity-map--4bac63318c88d267e00be4f2.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [identity_residual](declarations/identity-residual--dd7b825143232d967f08ed09.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [identity_errorBudget](declarations/identity-errorbudget--94db341306549a89f72fe532.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_identity_domain](declarations/comp-identity-domain--665f56ad5d1c0795f32d5b6a.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [identity_comp_domain](declarations/identity-comp-domain--64bcebf3c791527302125217.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_identity_map](declarations/comp-identity-map--425adfa4b7d77fae76c1137b.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [identity_comp_map](declarations/identity-comp-map--01306b24c3450bafed5f1105.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_identity_residual](declarations/comp-identity-residual--efb7f2cd4a64ddff4580f690.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [identity_comp_residual](declarations/identity-comp-residual--6a5d89825cb1b246b66d00af.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_identity_errorBudget](declarations/comp-identity-errorbudget--ea2e4c019e0bab077637ea22.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [identity_comp_errorBudget](declarations/identity-comp-errorbudget--ced073f5c92553861e1fa28c.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [comp_domain_assoc](declarations/comp-domain-assoc--bec064345037a59fce140505.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [comp_map_assoc](declarations/comp-map-assoc--3548e12f60b85f4bc98d7492.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [comp_residual_assoc](declarations/comp-residual-assoc--6167b03405dbd5538e95cd6d.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [comp_errorBudget_assoc](declarations/comp-errorbudget-assoc--7ab01dbb3f933c3ea80eb591.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [observe_eq_of_zero_residual](declarations/observe-eq-of-zero-residual--f5b249e65174148148a118cd.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [residual_eq_zero_of_zero_budget](declarations/residual-eq-zero-of-zero-budget--5c4c0bd2390fd6b04897ec04.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [observe_eq_of_zero_budget](declarations/observe-eq-of-zero-budget--3271e4827312b26dbe30c8d3.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [InvertibleFrameChange](declarations/invertibleframechange--41bdc62d341922febeb86ea4.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [toPort](declarations/toport--1d191b4b9be478a9f34f3649.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [reconstruct](declarations/reconstruct--1bb35a8027b2fb882e0fde5f.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [RankLosingReduction](declarations/ranklosingreduction--e69a2d0de257c10e620d4ca5.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [packet](declarations/packet--0a4a2909a862e8829c689448.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [reconstruct_packet_exact](declarations/reconstruct-packet-exact--6ca85163572be1d9c296c678.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [packet_injective](declarations/packet-injective--254eae999d8e8a9da1dcf6a6.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [reduce_not_injective](declarations/reduce-not-injective--e9a78c8069a2f675bf45c80a.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [recover_source_observe](declarations/recover-source-observe--2fbee8a9b8c543dd04b6e65c.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `structure` | [PortGram](declarations/portgram--87fa19175f2984db103c3bff.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [GramTransport](declarations/gramtransport--d56391f13680ac24a23365b0.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [SignedFormTransport](declarations/signedformtransport--c71d5fbbc0144dcc87bc10e6.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
