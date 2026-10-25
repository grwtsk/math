# GRWTSK.FoundationsLogicAndTypeTheory.Computability.DFA.Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**49 observed declarations and anonymous commands**, 37 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eb9c44511ab077418efc2ed7a9433bb1462e2ca`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Computability/DFA/Variantd2c94acd258d5beb51b9f23339524ba9f09ead338e25dd2bdbea2765770926fb.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DFA](declarations/dfa--5d20f3f47ab3eb9bb469790b.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance--f65d03966eb6bc978be97c83.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [evalFrom](declarations/evalfrom--3ad4edea121306c0a3606aed.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [evalFrom_nil](declarations/evalfrom-nil--56f2db8d63591f00ba97fc85.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [evalFrom_cons](declarations/evalfrom-cons--0c065f373599e6fd44701f3b.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [evalFrom_singleton](declarations/evalfrom-singleton--a8024d9bb7ee66daa216257d.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [evalFrom_append_singleton](declarations/evalfrom-append-singleton--30788649e14d2f402d375907.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [eval](declarations/eval--13940ddd211e2ae4c337c841.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [eval_nil](declarations/eval-nil--bd2f0deb8b777d48aab34962.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eval_singleton](declarations/eval-singleton--ca1f8f0352f54cd81c939fe2.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [eval_append_singleton](declarations/eval-append-singleton--4f668f47ea0cafa7e68f76c0.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [evalFrom_of_append](declarations/evalfrom-of-append--9441aa8e5ffa77a2532e5f8f.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [acceptsFrom](declarations/acceptsfrom--0a47c5d3a9d1d05ae8540b05.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [mem_acceptsFrom](declarations/mem-acceptsfrom--87462d47624262eb619be472.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [accepts](declarations/accepts--719b126a417686d6b35d5bca.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [mem_accepts](declarations/mem-accepts--7c2ce05a75d5a8208fe60d50.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [evalFrom_split](declarations/evalfrom-split--9674c4aacf8dbb836e409453.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [evalFrom_of_pow](declarations/evalfrom-of-pow--551ab0bee83f7978d290e279.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [pumping_lemma](declarations/pumping-lemma--166448fd7c63127f23bc40a6.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [comap](declarations/comap--c5114da3a4db13d63debf34d.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [comap_id](declarations/comap-id--dfcb504b9919628c24ea3b34.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [evalFrom_comap](declarations/evalfrom-comap--e2f223c1a025c9620da6e5ac.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [eval_comap](declarations/eval-comap--b415d8aa538b7f24f9c823bd.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [accepts_comap](declarations/accepts-comap--aefe7b68edf3c4fdecc4bef5.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [reindex](declarations/reindex--30bdcaf73c5d035efd230acf.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [reindex_refl](declarations/reindex-refl--0dd65231babe2d6f11ea9a72.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [symm_reindex](declarations/symm-reindex--e526c99c96157585a537e07f.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [evalFrom_reindex](declarations/evalfrom-reindex--c43159e1ded42121e85a95b5.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [eval_reindex](declarations/eval-reindex--53f3c4f2172496a283dc25c5.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [accepts_reindex](declarations/accepts-reindex--ed1485f36a048a3454647e83.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [comap_reindex](declarations/comap-reindex--b077274770d858370c86a57a.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance--5c956783cf6b3b1701bebdf9.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [compl_def](declarations/compl-def--28fe8dc17df9bf7b876809fc.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [acceptsFrom_compl](declarations/acceptsfrom-compl--e7e08248be89285bdb22ccb3.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [accepts_compl](declarations/accepts-compl--52d0f77c72b0dcaa27028935.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [union](declarations/union--ff9e504140c8186de80f1b33.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [acceptsFrom_union](declarations/acceptsfrom-union--4f8e7b06936f54d8c79d4eaa.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [accepts_union](declarations/accepts-union--095ae5c6669e99548a4e2d8b.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [inter](declarations/inter--b75097dadef3bbe432021d53.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [acceptsFrom_inter](declarations/acceptsfrom-inter--1c0feda195ad56bf972e96c5.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [accepts_inter](declarations/accepts-inter--fa56a87f2422f43d98522b78.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [IsRegular](declarations/isregular--3ed66d300445d34e3dfe1583.md) | 354 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [isRegular_iff.helper.](declarations/isregular-iff-helper--6f7a0a2e45551a0c9b79507e.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [isRegular_iff](declarations/isregular-iff--36568748e11ce09ad6d8fe4b.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [IsRegular.compl](declarations/isregular-compl--f81a328799cf4131134254ac.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [IsRegular.of_compl](declarations/isregular-of-compl--c045d61774037388dc56e297.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [IsRegular_compl](declarations/isregular-compl--b528d167a3df8818ed205193.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsRegular.add](declarations/isregular-add--8a7e158389e461f801f99c95.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [IsRegular.inf](declarations/isregular-inf--686be085e769e3e1661e9e2e.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
