# GRWTSK.Algebra.Ring.Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 34 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/Ring/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `350cbc6d49b24051540cf5d302d0b3db629d8b9d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/RingTheory/Variant7aa9f9fe43797c1d4cc78198dbad37f181882345f7451566fe325d6fead51a22.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `class` | [OrderedRing](declarations/orderedring--4d3c85db54debdfd34ccb359.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [neg_one_lt_zero](declarations/neg-one-lt-zero--f2731a2a6893ec09ede9645c.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [ofNat_nonneg](declarations/ofnat-nonneg--b60c01eec71b2082e33a0b69.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [le_of_natCast_le_natCast](declarations/le-of-natcast-le-natcast--86456ad68c1b1196e5bd79fb.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [le_of_intCast_le_intCast](declarations/le-of-intcast-le-intcast--02018431526e2988d7a1e65f.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [lt_of_natCast_lt_natCast](declarations/lt-of-natcast-lt-natcast--2c7136e1b68f0611ba2f4762.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [lt_of_intCast_lt_intCast](declarations/lt-of-intcast-lt-intcast--fc7d85d15bc9dbadbc7264f5.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [natCast_le_natCast_of_le](declarations/natcast-le-natcast-of-le--65c1bf2e975813ec2787e03f.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [natCast_nonneg](declarations/natcast-nonneg--6cc40a3e2f6e211d1e7f4631.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [natCast_lt_natCast_of_lt](declarations/natcast-lt-natcast-of-lt--bdca4677aaabffd12218115e.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pos_natCast_of_pos](declarations/pos-natcast-of-pos--c9481b08d3daff1e72efa6bf.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pos_intCast_of_pos](declarations/pos-intcast-of-pos--609d903faae654d1c4b5337a.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [neg_intCast_of_neg](declarations/neg-intcast-of-neg--bb93e953f5f0976da7dd749a.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [nonneg_intCast_of_nonneg](declarations/nonneg-intcast-of-nonneg--cee8e71b083b7ffb00a3ec32.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [nonpos_intCast_of_nonpos](declarations/nonpos-intcast-of-nonpos--d4e602f1fe9ab1f5c25b559a.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance--44193bf5653747bbc71f123d.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mul_pos](declarations/mul-pos--73516e0e050ca7b9d3c7e07c.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zero_le_one](declarations/zero-le-one--9b2bbfc29fd69af0604b6ab1.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_one_lt_zero](declarations/not-one-lt-zero--683e59ff9f73abf3eb28fde2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_le_mul_of_nonneg_left](declarations/mul-le-mul-of-nonneg-left--a9f3863b2b5ac5f0db4d4f52.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_le_mul_of_nonneg_right](declarations/mul-le-mul-of-nonneg-right--fc7a3411d32425a3aa560ed0.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_le_mul_of_nonpos_left](declarations/mul-le-mul-of-nonpos-left--629e181824d6b9a18bc885c6.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [mul_le_mul_of_nonpos_right](declarations/mul-le-mul-of-nonpos-right--c18f176f31a21a5a4e8b7612.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mul_lt_mul_of_neg_left](declarations/mul-lt-mul-of-neg-left--ed54ea3bc405164ed72b91ed.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mul_lt_mul_of_neg_right](declarations/mul-lt-mul-of-neg-right--ab411178b1f5706f1f7ae8b3.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [mul_nonneg](declarations/mul-nonneg--63335f55228fc4e313318cfb.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [mul_nonneg_of_nonpos_of_nonpos](declarations/mul-nonneg-of-nonpos-of-nonpos--fa94b9c57d2d003e0c3a1294.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mul_nonpos_of_nonneg_of_nonpos](declarations/mul-nonpos-of-nonneg-of-nonpos--185c6bb4d58aa006befe8bfa.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mul_nonpos_of_nonpos_of_nonneg](declarations/mul-nonpos-of-nonpos-of-nonneg--dbb045fc29bfe29922f891e9.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mul_pos_of_neg_of_neg](declarations/mul-pos-of-neg-of-neg--a7022f0caa5258cc6b8d38e9.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [mul_neg_of_pos_of_neg](declarations/mul-neg-of-pos-of-neg--d32fd9cad4a9d9ba1c8accd6.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [mul_neg_of_neg_of_pos](declarations/mul-neg-of-neg-of-pos--2b88c1f2437b66f7fe31971c.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [mul_nonneg_iff](declarations/mul-nonneg-iff--ab9e69e8495012137b71d0d5.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [mul_pos_iff](declarations/mul-pos-iff--6922feb51f281620b46e0cd1.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [sq_nonneg](declarations/sq-nonneg--4c323bb97e8cad88326ffde1.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [sq_pos](declarations/sq-pos--ec660777c3ee70cfcb1873ae.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
