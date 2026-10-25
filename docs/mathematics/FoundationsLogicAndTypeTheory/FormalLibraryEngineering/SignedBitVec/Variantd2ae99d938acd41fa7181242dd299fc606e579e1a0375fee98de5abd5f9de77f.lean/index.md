# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SignedBitVec.Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c65ae0999b87a94b57ef5171954fc4f7d5197f2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SignedBitVec/Variantd2ae99d938acd41fa7181242dd299fc606e579e1a0375fee98de5abd5f9de77f.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [intMinSealed](declarations/intminsealed--8e7a68630a4d4e4eed3ed54a.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [intMaxSealed](declarations/intmaxsealed--86a65aa4cb674858984c06c2.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [intMinSealed_def](declarations/intminsealed-def--cb49db6e1bc4c8ed127f93c1.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [intMaxSealed_def](declarations/intmaxsealed-def--f927558cf2f7cf28ea2dee68.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [rotate](declarations/rotate--fc3eff396679418bea9cdc93.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [intMaxSealed_eq_intMinSealed_add](declarations/intmaxsealed-eq-intminsealed-add--5c4c478c241b92912cd98c23.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intMinSealed_add_intMinSealed](declarations/intminsealed-add-intminsealed--d73ae99c9862d44048fdd38c.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rotate_neg_eq_intMinSealed_sub](declarations/rotate-neg-eq-intminsealed-sub--195dda8ba07df68e3117dc11.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rotate_add](declarations/rotate-add--683ff11ba73bb7ac9174d304.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rotate_sub](declarations/rotate-sub--a06a52dcc935c174bed7c407.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rotate_intMinSealed](declarations/rotate-intminsealed--3f4a36fab20bbf092c03e7c8.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rotate_intMaxSealed](declarations/rotate-intmaxsealed--e3ae75b35e3798ac8f06e5af.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [rotate_rotate](declarations/rotate-rotate--36bfeb47e3df67b0fb41d916.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [rotate_map_eq_iff](declarations/rotate-map-eq-iff--6b6c2186757e7bb11ffd7f15.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instUpwardEnumerable](declarations/instupwardenumerable--bb8701b3bf30e827d2ad4e12.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [succ?_rotate](declarations/succ-rotate--078eb8cb3eb44b1cac1bbb8f.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [succMany?_rotate](declarations/succmany-rotate--fb8138a5447e7119178a4d20.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [sle_iff_rotate_le_rotate](declarations/sle-iff-rotate-le-rotate--2f556040b1eb32ad08e0fa5f.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [rotate_inj](declarations/rotate-inj--df64194d80c56f63fbba4bda.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [rotate_eq_iff](declarations/rotate-eq-iff--7ebd744563d78b9774b27cb8.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [toInt_eq_ofNat_toNat_rotate_sub](declarations/toint-eq-ofnat-tonat-rotate-sub--0a7098c493ca4d4e954ddb45.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [ofNat_eq_rotate_ofInt_sub](declarations/ofnat-eq-rotate-ofint-sub--1f98420323d3059ac7b33c50.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `instance` | [instLE](declarations/instle--a9d4f7ade42d8df724030329.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `instance` | [instLT](declarations/instlt--851de8015d3178fca14a8c55.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `instance` | [instDecidableLE](declarations/instdecidablele--187069a6b02aa0763e02d519.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [instDecidableLT](declarations/instdecidablelt--779fd04ab0531bc173e99b42.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance--fbfce41cc2cf5e2136325100.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `instance` | [(anonymous)](declarations/instance--d23300b69a41da14260cd644.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance--f36fb1fbdef3f5435b1af844.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `instance` | [(anonymous)](declarations/instance--743bd7334500319f26ed7cbe.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance--96f03360c30db81d8ff6b31b.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [instRxcHasSize](declarations/instrxchassize--dda1e27eda16a2bd079a1a52.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [instRxcLawfulHasSize](declarations/instrxclawfulhassize--c8cc37046a9e908d71016252.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [instRxcIsAlwaysFinite](declarations/instrxcisalwaysfinite--2d7f7fbfea7557b3a7d3ca80.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [instRxoHasSize](declarations/instrxohassize--74610820277a8f4953eb2685.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `instance` | [instRxoLawfulHasSize](declarations/instrxolawfulhassize--4b410d2f42f6d08b9f074e54.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `instance` | [instRxoIsAlwaysFinite](declarations/instrxoisalwaysfinite--4c683d211405c0547689220b.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [instRxiHasSize](declarations/instrxihassize--5e2ef7fe44dac9d29e645f55.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [instRxiLawfulHasSize](declarations/instrxilawfulhassize--43bf5e48ead449127dede568.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [instRxiIsAlwaysFinite](declarations/instrxiisalwaysfinite--eb627d30d4bf1679b1d60d50.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
