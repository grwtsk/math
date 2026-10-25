# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d767e9ed3e74a3ce2a31017f2d73ceb524f32c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantd15e4b80f2883c4541100e6631bd337772ffc764dec2d99314be7afc0e0621f0.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `lemma` | [ite_pos](declarations/ite-pos--26a42f6d4b507ac0da23f052.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [ite_nonneg](declarations/ite-nonneg--7adab8185086f5626b22570e.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [ite_nonneg_of_pos_of_nonneg](declarations/ite-nonneg-of-pos-of-nonneg--df8d0ca8e1fb35a3336641f0.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [ite_nonneg_of_nonneg_of_pos](declarations/ite-nonneg-of-nonneg-of-pos--91fe2d78e3dfefb227f5dd74.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [ite_ne_zero](declarations/ite-ne-zero--e6419c42d5a22b377f152491.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [ite_ne_zero_of_pos_of_ne_zero](declarations/ite-ne-zero-of-pos-of-ne-zero--f34e9d814543ec728adb94b6.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [ite_ne_zero_of_ne_zero_of_pos](declarations/ite-ne-zero-of-ne-zero-of-pos--d4bb3530c93e46a7791184c8.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [evalIte](declarations/evalite--ba2b5a3fe643be824acd22c4.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [le_min_of_lt_of_le](declarations/le-min-of-lt-of-le--76b8703b3f30ed6d319265d6.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [le_min_of_le_of_lt](declarations/le-min-of-le-of-lt--f9e7811f3ed00d5b532e9cc4.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [min_ne](declarations/min-ne--2d3d7a35b5e1018b91db45fa.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [min_ne_of_ne_of_lt](declarations/min-ne-of-ne-of-lt--c0bdee3235bbf31e10b749fd.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [min_ne_of_lt_of_ne](declarations/min-ne-of-lt-of-ne--256772a292918116551e21ea.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [max_ne](declarations/max-ne--426cb7ccdc4d5de28635ddd6.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [evalMin](declarations/evalmin--2b4450094f994c3b20798142.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [evalMax](declarations/evalmax--acdad0705365c2b1070138ce.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [evalAdd](declarations/evaladd--ab1b494b6e6f34ef4e8063b4.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [mul_nonneg_of_pos_of_nonneg](declarations/mul-nonneg-of-pos-of-nonneg--eb662317b4b205c20ae68dd6.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](declarations/mul-nonneg-of-nonneg-of-pos--d4f06892264b2cf4e27cfca0.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](declarations/mul-ne-zero-of-ne-zero-of-pos--deb782c8e29cf4fd7a3bb6f1.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](declarations/mul-ne-zero-of-pos-of-ne-zero--93d38a3bbcdfa0fdf4b4f806.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [evalMul](declarations/evalmul--ea49233725062fc8bf8d58f0.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [int_div_self_pos](declarations/int-div-self-pos--5510a6faf2b86e7d4e978a7b.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](declarations/int-div-nonneg-of-pos-of-nonneg--5838ecceaadebd7ac29dbe71.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](declarations/int-div-nonneg-of-nonneg-of-pos--2c02a0723e11c644aee13cde.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](declarations/int-div-nonneg-of-pos-of-pos--327c84ca47110665819b8b8e.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [evalIntDiv](declarations/evalintdiv--9cc0fdfe3435614b97a78b4d.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [div_nonneg_of_pos_of_nonneg](declarations/div-nonneg-of-pos-of-nonneg--b8522d47a67023c47471bc90.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [div_nonneg_of_nonneg_of_pos](declarations/div-nonneg-of-nonneg-of-pos--8dd74542dcfd41086b05f7ea.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [div_ne_zero_of_pos_of_ne_zero](declarations/div-ne-zero-of-pos-of-ne-zero--b0b760eab12d9ab429897f74.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [div_ne_zero_of_ne_zero_of_pos](declarations/div-ne-zero-of-ne-zero-of-pos--3fc54bbe4701c416cd46e1c1.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [evalDiv](declarations/evaldiv--9b6029280f3c14dde8f66bf0.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [evalInv](declarations/evalinv--00f0dacb2b46f7d183a5612a.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [pow_zero_pos](declarations/pow-zero-pos--2009484de42666d024d28bfb.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [zpow_zero_pos](declarations/zpow-zero-pos--2044550ac8876553d5d017b7.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [evalPowZeroNat](declarations/evalpowzeronat--9e44fad91901b84b7912d91c.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [evalPowZeroInt](declarations/evalpowzeroint--f2826e7b4996030f449a2fba.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [evalPow](declarations/evalpow--8456912a8cc3d19b55db3615.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [abs_pos_of_ne_zero](declarations/abs-pos-of-ne-zero--7322f3fd6a4ab57c2f2a58c5.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [evalAbs](declarations/evalabs--6e16d8d2d73f334af7716127.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [int_natAbs_pos](declarations/int-natabs-pos--2ce20df6b64fb4419be969f7.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [evalNatAbs](declarations/evalnatabs--6c57ac97282388940c87e65b.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [evalNatCast](declarations/evalnatcast--74cb38eae2a62cfd8a8a577c.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [evalIntCast](declarations/evalintcast--959e8308008b7f031da6a0d1.md) | 435 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [evalNatSucc](declarations/evalnatsucc--a5c49cb0686f658a8f1f3a4e.md) | 464 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [evalFactorial](declarations/evalfactorial--f7149d62ae06747b86376a34.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
