# GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Path.Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d268d8b7a9cd97a7c1e52c22421ceeff70e4df47`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Path/Variant200c18fdd204e023975c4f986f7e557d7c95c3f7abef58ee8ede0e054c8854ef.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [Path](declarations/path--e2b12237f583b3dc7a5c0483.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [Hom.toPath](declarations/hom-topath--2f08e9c2795cdb2e9bc7c7f3.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [nil_ne_cons](declarations/nil-ne-cons--9b59ee5535996e40ac55b289.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [cons_ne_nil](declarations/cons-ne-nil--0af91b0b7767450c1a20dcbc.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [obj_eq_of_cons_eq_cons](declarations/obj-eq-of-cons-eq-cons--8929dec047bdd2c1ccf68f1b.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [heq_of_cons_eq_cons](declarations/heq-of-cons-eq-cons--88e8a143e42ffce7fad0dd17.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [hom_heq_of_cons_eq_cons](declarations/hom-heq-of-cons-eq-cons--6192f3d682f5c42851be8e7d.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [length](declarations/length--5402a2b82f90151c02c05e52.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--a8ac642d09b7669ce9786879.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [length_nil](declarations/length-nil--a53a6fb4faa56927f6f752f7.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [length_cons](declarations/length-cons--962a65111857efa153d2d57f.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [eq_of_length_zero](declarations/eq-of-length-zero--7473adde1a09cbe0b616dc82.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [eq_nil_of_length_zero](declarations/eq-nil-of-length-zero--7543c83c5402336af20b7359.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [comp](declarations/comp--6dcceaf96922b2fd56f85757.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [comp_cons](declarations/comp-cons--fad6236709721c8f29518b3a.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [comp_nil](declarations/comp-nil--ba5e37caa4a738ad126675f3.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [nil_comp](declarations/nil-comp--080d8566c83e36233be7c181.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [comp_assoc](declarations/comp-assoc--17749a45fd51ee240e113a48.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_comp](declarations/length-comp--3a1e1dcdc53a87b18b6db671.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [comp_inj](declarations/comp-inj--d50d98786617b4c1b5153828.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comp_inj'](declarations/comp-inj--31aac7799b7595a69fd9a37c.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [comp_injective_left](declarations/comp-injective-left--8ed1b4b4f28c36b41c2e1626.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [comp_injective_right](declarations/comp-injective-right--1b4dd401d7a9a2c9ead0639a.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [comp_inj_left](declarations/comp-inj-left--be88f2cd8c680f74e47a8970.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [comp_inj_right](declarations/comp-inj-right--f9b62d85e9978ae5a7a2f49d.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [eq_toPath_comp_of_length_eq_succ](declarations/eq-topath-comp-of-length-eq-succ--55577a848ab878851556291f.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [toList](declarations/tolist--b5d530aa3912249a9cd91b8b.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [toList_comp](declarations/tolist-comp--b64f3d5f6424f54779e9b6c6.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toList_chain_nonempty](declarations/tolist-chain-nonempty--8240ddb31c0a95fde0784ecf.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toList_injective](declarations/tolist-injective--432a930c978c54e9de16570b.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [toList_inj](declarations/tolist-inj--4018d56eca770dca0733c3fd.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [mapPath](declarations/mappath--a47ca2ca51bf8de42b8e5fae.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mapPath_nil](declarations/mappath-nil--f7e2ac1bc0f777e7b6f6a0a4.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mapPath_cons](declarations/mappath-cons--8cf9e69bf5cb8529f4d5fc72.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mapPath_comp](declarations/mappath-comp--b7a2da2662a4bdc77099d61e.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mapPath_toPath](declarations/mappath-topath--6386f6e477f68c22c704216c.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [mapPath_id](declarations/mappath-id--bc12d8d33eb2db2d814c4595.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [mapPath_comp_apply](declarations/mappath-comp-apply--954e80e71226e0ec7ce0f64b.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
