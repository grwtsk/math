# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lemmas.Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79a0e593e1a6d1e23e6da61b8e736ceb642664d1",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79a0e593e1a6d1e23e6da61b8e736ceb642664d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.TacticsExtra` — import line 14; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Simproc` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.
- `Init.RCases` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mod_add_mod_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-add-mod-lt--36ffc6d0e1faa4d7aa4cfcde.md) | 34 | `result-track:36ffc6d0e1faa4d7aa4cfcde172dcfda38b6d54bbda350a4e09a21f555dca29d` |
| 2 | `theorem` | [mod_add_mod_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-add-mod-eq--8d605a3fe00fc95eb7a395ab.md) | 39 | `result-track:8d605a3fe00fc95eb7a395aba5c82cb095a8a49503c5e4cadb6b24f78c3f0df5` |
| 3 | `theorem` | [add_mod_eq_sub](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/add-mod-eq-sub--5c6bdf171c5fe01944673c3c.md) | 55 | `result-track:5c6bdf171c5fe01944673c3c6b34945ed89be940ade130f504577ddcc85bc174` |
| 4 | `theorem` | [lt_div_iff_mul_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/lt-div-iff-mul-lt--2a06a04338bd71bcd84a0932.md) | 59 | `result-track:2a06a04338bd71bcd84a0932f1669f0293d93aaf360bfd536f38d11248d9b54d` |
| 5 | `theorem` | [div_le_iff_le_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-le-iff-le-mul--2d60df42a4fdef71892b80f8.md) | 67 | `result-track:2d60df42a4fdef71892b80f804db79f04150efee52383647cf485b8d41f75b75` |
| 6 | `theorem` | [le_mul_iff_le_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/le-mul-iff-le-left--3604451b21b36512981c9e04.md) | 71 | `result-track:3604451b21b36512981c9e049cd0c455f7737ce92e6ed9e84340e86326e70e8c` |
| 7 | `theorem` | [le_mul_iff_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/le-mul-iff-le-right--5b15c1e8f3ecd0ce85abcc93.md) | 76 | `result-track:5b15c1e8f3ecd0ce85abcc93c8d73ed65d9bf2a9c854fc96521b0ddab84c89f7` |
| 8 | `theorem` | [div_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-eq-iff--bb80d310a994c3b20732a3f8.md) | 81 | `result-track:bb80d310a994c3b20732a3f8b66a7a1fd39a60bff7f91cb0b400eaf987a7b42e` |
| 9 | `theorem` | [lt_of_div_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/lt-of-div-eq-zero--5b0f049638c8b2ed7e3aebaa.md) | 84 | `result-track:5b0f049638c8b2ed7e3aebaa984adfab7a1a0d0cb01aff8ccce31f763f474a88` |
| 10 | `theorem` | [div_eq_zero_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-eq-zero-iff-lt--d01f2baff1884de6d7cf5c7f.md) | 88 | `result-track:d01f2baff1884de6d7cf5c7fd7a2057760bf1649ec9a1954bb74776104915a97` |
| 11 | `theorem` | [div_mul_self_eq_mod_sub_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-mul-self-eq-mod-sub-self--eade00d913f0eaa444e9dc88.md) | 91 | `result-track:eade00d913f0eaa444e9dc881234c9798e17c9cc0ec407bd5102ec6e950b4825` |
| 12 | `theorem` | [mul_div_self_eq_mod_sub_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mul-div-self-eq-mod-sub-self--2e5ab9b89ea5f91a87100dde.md) | 96 | `result-track:2e5ab9b89ea5f91a87100dde520bed0509ca225b60f5e83a71d0fbf3fe2d379c` |
| 13 | `theorem` | [lt_div_mul_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/lt-div-mul-self--4de0e73d6707ff17cce688e4.md) | 99 | `result-track:4de0e73d6707ff17cce688e477a6677c0568cffb281333e17ae4bcd1b2832b75` |
| 14 | `theorem` | [div_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-pos--ec4cb9cacfdf9b7990b890ca.md) | 104 | `result-track:ec4cb9cacfdf9b7990b890cad379a31ed370b7d36e7e0c108ec4475b9c5614b3` |
| 15 | `theorem` | [div_le_div_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-le-div-left--edf723722510d58800a6168e.md) | 109 | `result-track:edf723722510d58800a6168e0162312787afce388e5d7a74eaf54768248dca28` |
| 16 | `theorem` | [div_le_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-le-div--73a8078b824a1c93a24b182c.md) | 113 | `result-track:73a8078b824a1c93a24b182ca6066f8ab576383342fa89e2be177cd140db1e28` |
| 17 | `theorem` | [div_add_le_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-add-le-right--f04a75d3d1077369dfbce490.md) | 117 | `result-track:f04a75d3d1077369dfbce490e8f1d46e3d2d35883495d8ed1dfff85d08cf5804` |
| 18 | `theorem` | [div_add_div_le_add_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-add-div-le-add-div--0542add841a5ce03cc533eb8.md) | 121 | `result-track:0542add841a5ce03cc533eb8d56a2cd401abe2953a2a964c00c54c7a5b3395d1` |
| 19 | `theorem` | [succ_div_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/succ-div-of-dvd--81aaf5c412f5c46a5c83e857.md) | 127 | `result-track:81aaf5c412f5c46a5c83e857e7d57de419ac49d461711f7f4f26db0ceafc8e7a` |
| 20 | `theorem` | [succ_div_of_mod_eq_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/succ-div-of-mod-eq-zero--0274d947387490d3ffe6bc0d.md) | 149 | `result-track:0274d947387490d3ffe6bc0dc69b25f575b427c2f4adf1b7df3b7d772ef57fdb` |
| 21 | `theorem` | [succ_div_of_not_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/succ-div-of-not-dvd--2b69486ef8f535799ea6c15a.md) | 153 | `result-track:2b69486ef8f535799ea6c15ac9f643fc34230927b45741f10c09ae14780ccf86` |
| 22 | `theorem` | [succ_div_of_mod_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/succ-div-of-mod-ne-zero--850d24df1011083ca7ac731a.md) | 167 | `result-track:850d24df1011083ca7ac731a94bf88e872d76904c36c939e772aa764ae4786d0` |
| 23 | `theorem` | [succ_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/succ-div--efdf8735ef31c2c1f2cf7104.md) | 171 | `result-track:efdf8735ef31c2c1f2cf7104ac2034e98dd1f1e906698116750d7d8d1461ec6a` |
| 24 | `theorem` | [add_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/add-div--dab47636060e3327f545a844.md) | 176 | `result-track:dab47636060e3327f545a844f014d95056cd077107bfe9d01a319bb1661e92e5` |
| 25 | `theorem` | [mod_add_mod_lt_of_add_mod_eq_sub_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-add-mod-lt-of-add-mod-eq-sub-one--cb0b223065de0a3324ac2427.md) | 193 | `result-track:cb0b223065de0a3324ac24270f51dca5d35010f1732c75c9a9b13b0c0a82db85` |
| 26 | `theorem` | [add_div_of_dvd_add_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/add-div-of-dvd-add-add-one--8e2e79238a40944c0c550028.md) | 200 | `result-track:8e2e79238a40944c0c550028d2dab51879a151cf43c3a7720d2de69a31183f68` |
| 27 | `theorem` | [div_lt_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-lt-of-lt--9df4850f07be586077ac9aff.md) | 207 | `result-track:9df4850f07be586077ac9aff6881b723f3e8dcfc4c8d45276b56c012905ebe79` |
| 28 | `theorem` | [div_mod_eq_div](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-mod-eq-div--25dbce85f9a3135e04e12cf9.md) | 214 | `result-track:25dbce85f9a3135e04e12cf99943b04901882730d7bbf0d316a6e9d57d72d224` |
| 29 | `theorem` | [div_mod_eq_mod_div_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/div-mod-eq-mod-div-mod--786717fd6548362757f8a028.md) | 217 | `result-track:786717fd6548362757f8a0281b114d03a217eda133496969740aa115a00a9999` |
| 30 | `theorem` | [mod_mod_eq_mod_of_lt_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-mod-eq-mod-of-lt-right--fe2631c9b1b399fa09e557ed.md) | 221 | `result-track:fe2631c9b1b399fa09e557ed2e257a8c07a2c590128fbe6e6fc3df0060ec1897` |
| 31 | `theorem` | [mod_mod_eq_mod_mod_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-mod-eq-mod-mod-mod--53e48f3b0e5451f56adce834.md) | 224 | `result-track:53e48f3b0e5451f56adce83488bd1adddb22c12ff02acd394e35e29cb42128f1` |
| 32 | `theorem` | [mod_mod_eq_mod_mod_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-mod-eq-mod-mod-of-dvd--68610343e6071ee3c8750576.md) | 228 | `result-track:68610343e6071ee3c87505769bd52716cae68b152512cb210f53a093c624de38` |
| 33 | `theorem` | [mod_mod_of_dvd'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-mod-of-dvd--dccb0ab83f099f908f6c83d1.md) | 233 | `result-track:dccb0ab83f099f908f6c83d10bd22f02ef06dda483a8a50c12e108aea4e881f4` |
| 34 | `theorem` | [mod_mod_eq_mod_mod_mod_of_dvd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-mod-eq-mod-mod-mod-of-dvd--956493687c210075565f0add.md) | 236 | `result-track:956493687c210075565f0add7b879719a87f9556571e8e3ba04a74eb5b2f206c` |
| 35 | `theorem` | [mod_eq_mod_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/mod-eq-mod-iff--30a57cfdb8fc2b9671532c0b.md) | 243 | `result-track:30a57cfdb8fc2b9671532c0b52cb180496b05f1b8acd6e1ccabdc0cc5386cf55` |
| 36 | `theorem` | [ext_div_mod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/ext-div-mod--8c5698039b541c907118e268.md) | 258 | `result-track:8c5698039b541c907118e2683ca43c3da635a9d145fa95b5b5354f7b9ae66c54` |
| 37 | `theorem` | [ext_div_mod_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/ext-div-mod-iff--3a2f17a7a00ab856a2ca6c7a.md) | 261 | `result-track:3a2f17a7a00ab856a2ca6c7a36ddc09d8a1d6cd62094e951a2296594f6440ab4` |
| 38 | `theorem` | [base_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant418a9464c7b6c397cc50a2eeeb9691a4fd0030ce98d83bdd8444ad0bf835db8e.lean/declarations/base-induction--4bc3e568c4b9008de04f40ca.md) | 265 | `result-track:4bc3e568c4b9008de04f40ca04ec41b1cc5d7a43d1155c31c2c241e0488f1905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
