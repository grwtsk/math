# GRWTSK.NumberTheory.Farey.GroupSuperwalk

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Farey/GroupSuperwalk.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18676d1d9b7ae5f4359dc2c5c1bb8c8730188e91`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Farey/GroupSuperwalk.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MatZ](declarations/matz--c15a4c1226b8688081c5065d.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Turn](declarations/turn--f01a617fae1310f68380a9cc.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [turnCell](declarations/turncell--6395d08dcb851a6d38df6bd8.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [walk](declarations/walk--ec0da558c9666b99f5b4b030.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [walk_nil](declarations/walk-nil--98b8a66f0347b2ce083220ad.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [walk_cons](declarations/walk-cons--76f6f8cad45b3da0611e75ce.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [walk_append](declarations/walk-append--4c3c0c244d1614e12c0f1afb.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [frame](declarations/frame--b5d17513f74e2c30f573968c.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [leftShear](declarations/leftshear--15a64cf4c671554e7ab841f5.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [rightShear](declarations/rightshear--102be06af66bee25b2bc8634.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [turnShear](declarations/turnshear--edb5df17852330ebd59f13d6.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [leftUnit](declarations/leftunit--0578b9dddabd599a1a142ffe.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [rightUnit](declarations/rightunit--28b4f209b5b70591e714ad91.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [turnUnit](declarations/turnunit--17740fd5737608fccdf577f5.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [wordUnit](declarations/wordunit--6e4eaff5374343af2873befc.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [wordUnit_nil](declarations/wordunit-nil--d3791fdd256c4684a31c69ab.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [wordUnit_cons](declarations/wordunit-cons--80066c87e13ea061e8d2453c.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [wordUnit_append](declarations/wordunit-append--c1bd29d0fd266efeead8a999.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [frame_leftChild](declarations/frame-leftchild--41a7a63942d430e40f849e89.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [frame_rightChild](declarations/frame-rightchild--489fa1db46c3a5da6a62f213.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [frame_turn](declarations/frame-turn--4e7389fe9d82e2d7f7ff1be3.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [frame_walk](declarations/frame-walk--341c155bd4af3f96a5b53b46.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [frame_det](declarations/frame-det--f907c1fa812dcb1444e99281.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [walk_frame_det](declarations/walk-frame-det--71a23d760c8222ad3882f20d.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [left_right_product](declarations/left-right-product--f6fccb59e45cf3710d46a7b9.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [right_left_product](declarations/right-left-product--c683100488dd6a871df9abc9.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [shears_do_not_commute](declarations/shears-do-not-commute--b30c043c28006f5265b27aa0.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [left_right_trace_three](declarations/left-right-trace-three--06cf5166a3ae3fc3f33eb16f.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [quintic_eye_on_walk_iff_of_endpoint_pos](declarations/quintic-eye-on-walk-iff-of-endpoint-pos--cf7e35e996daf52b31dee11d.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [quintic_eye_on_walk_iff](declarations/quintic-eye-on-walk-iff--cdb173c47d329da3649d033c.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [rootCell](declarations/rootcell--d5627db741d394fca82c1bde.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
