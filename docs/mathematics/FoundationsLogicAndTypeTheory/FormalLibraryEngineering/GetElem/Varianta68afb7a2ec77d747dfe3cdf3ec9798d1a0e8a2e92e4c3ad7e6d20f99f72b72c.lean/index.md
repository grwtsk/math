# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetElem.Varianta68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**58 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Varianta68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c07bf9985c5f5d6b2083168c9bf8ba92fe1068c5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/GetElem/Varianta68afb7a2ec77d747dfe3cdf3ec9798d1a0e8a2e92e4c3ad7e6d20f99f72b72c.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [outOfBounds](declarations/outofbounds--20ef2c3538e1602b104ba4bd.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [outOfBounds_eq_default](declarations/outofbounds-eq-default--452ee2c9fdabcbded94c8c6f.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `class` | [GetElem](declarations/getelem--6eb2b7252833bf25fff4ed5f.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `macro_rules` | [(anonymous)](declarations/macro-rules--eac850bfc3ebf4db6bdab0c9.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `syntax` | [(anonymous)](declarations/syntax--b5ed94a50db5b0bfada17f31.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `macro_rules` | [(anonymous)](declarations/macro-rules--20452c9c90542226168e4613.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [decidableGetElem?](declarations/decidablegetelem--b69e186a3fbc3ee1b72d81fe.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `class` | [GetElem?](declarations/getelem--e48cb968247dc3056642d043.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--ad3ba673bca71e4206ab6f2c.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [getElem_congr](declarations/getelem-congr--3eef3f50fca38ee3ffedd458.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [getElem_congr_coll](declarations/getelem-congr-coll--811ec9d9b09461986e4d3860.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [getElem_congr_idx](declarations/getelem-congr-idx--e43a73d7fb61ea538c5699e7.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `class` | [LawfulGetElem](declarations/lawfulgetelem--e97e24c1d191ca39b4e5bec7.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [(anonymous)](declarations/instance--a744bc2d5cf2db115dbf489e.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [getElem?_pos](declarations/getelem-pos--9839572275e4aaeb18a31d0b.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [getElem?_neg](declarations/getelem-neg--d11d0e3cb1e249ccf6bba40b.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [getElem!_pos](declarations/getelem-pos--1c875a7067f90aa3aca578bb.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [getElem!_neg](declarations/getelem-neg--af46ad4f8662ab9d98c2ac3b.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [get_getElem?](declarations/get-getelem--9f1b5556e2bbfc01f21ac8ed.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [getElem?_eq_none_iff](declarations/getelem-eq-none-iff--1016d0e4d3ec4941db0ed41c.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [none_eq_getElem?_iff](declarations/none-eq-getelem-iff--9e8754b5a8e2474075f93a8c.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [of_getElem?_eq_some](declarations/of-getelem-eq-some--93b1b0a99d50ea3656f2805a.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [getElem?_eq_some_iff](declarations/getelem-eq-some-iff--e7da4736d9b332beb2d56c20.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [some_eq_getElem?_iff](declarations/some-eq-getelem-iff--311e22231b1ece644ce231fc.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [getElem_of_getElem?](declarations/getelem-of-getelem--f9e0651b6a2fc2c185683f19.md) | 240 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [of_getElem_eq](declarations/of-getelem-eq--583a86dee60ac55a2ff060b5.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [some_getElem_eq_getElem?_iff](declarations/some-getelem-eq-getelem-iff--a113f27f79d13be6a36c3460.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [getElem?_eq_some_getElem_iff](declarations/getelem-eq-some-getelem-iff--0336686e2654a913c4fec131.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [isSome_getElem?](declarations/issome-getelem--50924c56b9a47dc9fffa20a6.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [instGetElemFinVal](declarations/instgetelemfinval--91562c9031da44caf8e58323.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [instGetElem?FinVal](declarations/instgetelem-finval--e3fafb2c007eb9874666381c.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--ce92fbd645a39fc8c8acd8f9.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [getElem_fin](declarations/getelem-fin--4d9cb35d78dfbee644220ddb.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [getElem?_fin](declarations/getelem-fin--b2fe2bf4d2f188304efd6556.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [getElem!_fin](declarations/getelem-fin--9800c3613d57fd485870939b.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `macro_rules` | [(anonymous)](declarations/macro-rules--a1186be6bd258138f726cb9f.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [(anonymous)](declarations/instance--47832b593758a8fefeff4b86.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [getElem_cons_zero](declarations/getelem-cons-zero--1e26d8bbd5ec4b6339bceef5.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [getElem_cons_succ](declarations/getelem-cons-succ--906d5c9bada6983ab7462c57.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [getElem_mem](declarations/getelem-mem--b7647781d29e3906e3d8719b.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [getElem_cons_drop](declarations/getelem-cons-drop--9e5ee80ab8c82e2a923c0d8c.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [getElem_cons_drop_succ_eq_drop](declarations/getelem-cons-drop-succ-eq-drop--1c303a6b36e710707b4a44ed.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [get?Internal](declarations/get-internal--36f317f1695d990d436ce9dc.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [get!Internal](declarations/get-internal--96218eeaac9adbfca194bbee.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `instance` | [(anonymous)](declarations/instance--27d6afe97a43950ac9c6f9fe.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [get?Internal_eq_getElem?](declarations/get-internal-eq-getelem--7525962d238dc2f8868e49b0.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [get!Internal_eq_getElem!](declarations/get-internal-eq-getelem--1e887a5dcc6506572aa02e25.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [getElem?_eq_getElem](declarations/getelem-eq-getelem--3c25f25bca426c803d68404d.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [getElem?_eq_none_iff](declarations/getelem-eq-none-iff--68045593d25f9bbf547fa2ec.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [none_eq_getElem?_iff](declarations/none-eq-getelem-iff--4fc0a3e40708f8ec31e88106.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [getElem?_eq_none](declarations/getelem-eq-none--358257bcf987f02afd5d0620.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `instance` | [(anonymous)](declarations/instance--1e1d91663f8e6674fd3545e8.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `instance` | [(anonymous)](declarations/instance--a154189783155f38abd5b37c.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [(anonymous)](declarations/instance--9342c03dd1b0a0b5a3113561.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `instance` | [(anonymous)](declarations/instance--9d29531f04a8bc5a9a5c2ab5.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [getInternal_eq_getElem](declarations/getinternal-eq-getelem--8f85df23487c2401146581bf.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [get!Internal_eq_getElem!](declarations/get-internal-eq-getelem--6b913411adc63cd82a6006b5.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `instance` | [(anonymous)](declarations/instance--cac25674c655ea5c633de529.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
