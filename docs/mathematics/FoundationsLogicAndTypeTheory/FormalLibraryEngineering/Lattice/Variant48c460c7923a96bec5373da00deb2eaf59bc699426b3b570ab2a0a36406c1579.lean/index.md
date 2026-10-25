# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lattice.Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a02de2374f8e63656a3bdb9403e999c9fcc2f204`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lattice/Variant48c460c7923a96bec5373da00deb2eaf59bc699426b3b570ab2a0a36406c1579.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Slice](declarations/slice--510690a7544f4c26166684e4.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [endExclusive](declarations/endexclusive--be9b73a4d3f40095e9ad6217.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [containsNat](declarations/containsnat--a670d09011e3703d5c5caf79.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [containsFin](declarations/containsfin--2af08d477862aa3625efb22e.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [containsFin_iff_containsNat](declarations/containsfin-iff-containsnat--ebfa8fe1f1c9bd139db8d73c.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [le](declarations/le--5375afffcfea71197f94ae69.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [le_refl](declarations/le-refl--b7be4fc33b13ed24c2d5648b.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [le_trans](declarations/le-trans--07b69f70b4bb0262cbbec3cd.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [boundsLe](declarations/boundsle--60db4fcf645fb40d27416b39.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [boundsLe_implies_le](declarations/boundsle-implies-le--d5a99785f9d7d053ec456ac5.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [start_le_length](declarations/start-le-length--fb503f705fda4f0c9687b11e.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [endExclusive_le_length](declarations/endexclusive-le-length--2bb131109032dca58be84601.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [intersectStart](declarations/intersectstart--5b5637f8bb66864fd554151f.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [intersectEnd](declarations/intersectend--b49b7087e5e97d580bbbc8c4.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [intersect](declarations/intersect--f0f54641beeb9135292b77d0.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [containsNat_intersect](declarations/containsnat-intersect--627c68e6f82fe8f23dc93f00.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [intersect_le_left](declarations/intersect-le-left--4ce090c28c2b457b1f1bec87.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [intersect_le_right](declarations/intersect-le-right--aa9224b5593060c436c92a63.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [hullStart](declarations/hullstart--b077ea853df626b2d548fee3.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [hullEnd](declarations/hullend--e9e002ca081bf9ad9139b03b.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hullStart_le_hullEnd](declarations/hullstart-le-hullend--6a8d9b13ec8afd7e544c9682.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [hull](declarations/hull--4cef92c64355f21ee4c931c2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [containsNat_hull_left](declarations/containsnat-hull-left--67b213d26de52e898538fa13.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [containsNat_hull_right](declarations/containsnat-hull-right--b48fd52b8c92f98446427015.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [le_hull_left](declarations/le-hull-left--ac129bc5012892febdfbc726.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [le_hull_right](declarations/le-hull-right--279c059b8c11bc033a3c7c92.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [hasGap](declarations/hasgap--a3df618c6987b1e50928fb5a.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [decidableHasGap](declarations/decidablehasgap--892c42b06a0126ad7dfdc97f.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `structure` | [UnionGapResidue](declarations/uniongapresidue--860bec6191c5f2f45c659290.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [containsNat_zero_len_false](declarations/containsnat-zero-len-false--82c5e909774118ed57143d45.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [containsNat_hull_no_gap](declarations/containsnat-hull-no-gap--6596bbd18b76802115628da4.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [compatibleUnion?](declarations/compatibleunion--e6a64c3e902e229cb3712f85.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compatibleUnion?_sound](declarations/compatibleunion-sound--d6784d1b2fe27e1bf5dddc36.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [compatibleUnion?_none_gap](declarations/compatibleunion-none-gap--cec74b73a750679526f08cd4.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
