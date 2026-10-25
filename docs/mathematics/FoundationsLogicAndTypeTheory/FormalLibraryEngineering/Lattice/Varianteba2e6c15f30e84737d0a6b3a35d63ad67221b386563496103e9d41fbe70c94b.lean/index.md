# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lattice.Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf653d70367b2124df95ef105a4e074ffb09196b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Varianteba2e6c15f30e84737d0a6b3a35d63ad67221b386563496103e9d41fbe70c94b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Slice](declarations/slice--0463715cf86fc5fcd24e3b3c.md) | 14 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [endExclusive](declarations/endexclusive--3785fc73d409d3f768611544.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [containsNat](declarations/containsnat--8e7150044cdd6bf812f3114f.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [containsFin](declarations/containsfin--bfbfd8eb52ed25d20521853d.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [containsFin_iff_containsNat](declarations/containsfin-iff-containsnat--5d6e9f37c44f18e275b56ffe.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [le](declarations/le--3fab54812debd8f36443e9ad.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_refl](declarations/le-refl--de83eace92262624eb1f2102.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_trans](declarations/le-trans--7aa1c660c9176702587c2dd0.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundsLe](declarations/boundsle--49452ed2a7b83ab9cefe1d90.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundsLe_implies_le](declarations/boundsle-implies-le--61f5610c28fd37533a44481b.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [start_le_length](declarations/start-le-length--8b10b0e5e089326ab0ee6a4d.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [endExclusive_le_length](declarations/endexclusive-le-length--e8051efce379a0a8b887a8d7.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [intersectStart](declarations/intersectstart--8e2fa3324a1a996118d35e8e.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [intersectEnd](declarations/intersectend--0a964d4961e6bdbbeb8fc278.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [intersect](declarations/intersect--9a29624355e57b6dc53260b7.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [containsNat_intersect](declarations/containsnat-intersect--f84174890d394ed82fe37a75.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [intersect_le_left](declarations/intersect-le-left--e18a730ff7c82b81fc018ef0.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [intersect_le_right](declarations/intersect-le-right--f5eccc5fa85ce9c52b50ae27.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [hullStart](declarations/hullstart--e552f143e603e43c6dfaea29.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [hullEnd](declarations/hullend--0986353d3de031b2838f30ae.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hullStart_le_hullEnd](declarations/hullstart-le-hullend--72140f84da50d921080b2d71.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [hull](declarations/hull--bccc1428cbdf76b264b16dc8.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [containsNat_hull_left](declarations/containsnat-hull-left--43fcdb7b75907051b7a4f9bc.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [containsNat_hull_right](declarations/containsnat-hull-right--e14a76a0c9267a7565721cc9.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_hull_left](declarations/le-hull-left--35627350c9133b3f45aca1ec.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_hull_right](declarations/le-hull-right--94f45b28a83ac2f27d596a59.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [hasGap](declarations/hasgap--7c8f438e0282cb383867bf9b.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [decidableHasGap](declarations/decidablehasgap--d6fae72e467a4a6da52769df.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [UnionGapResidue](declarations/uniongapresidue--e709c7d44acbf67a39d936c6.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [containsNat_zero_len_false](declarations/containsnat-zero-len-false--8999ebcd4da171ebdd50e437.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [containsNat_hull_no_gap](declarations/containsnat-hull-no-gap--e17270e40a4a3a43314e09f3.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [compatibleUnion?](declarations/compatibleunion--3c58cdd514c5c0f7f2f81847.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compatibleUnion?_sound](declarations/compatibleunion-sound--15719bff91c827988f3bae67.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [compatibleUnion?_none_gap](declarations/compatibleunion-none-gap--3f957d6a689d38e23a3600fe.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
