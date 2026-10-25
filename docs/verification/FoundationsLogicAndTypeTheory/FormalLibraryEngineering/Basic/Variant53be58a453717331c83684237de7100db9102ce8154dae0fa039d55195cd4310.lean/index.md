# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f94971ac9cc69bf8e5a6525248acaf7f52bf05c0",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f94971ac9cc69bf8e5a6525248acaf7f52bf05c0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Lean.Parser` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity.Core` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Qq` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [ite_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/ite-pos--6346bb7d2a36dcea67849b63.md) | 37 | `result-track:6346bb7d2a36dcea67849b63983f04a786ef7928fd04fc337609bd054b1fe4a4` |
| 2 | `lemma` | [ite_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/ite-nonneg--59c8a4b4cecfd676e6e255f2.md) | 40 | `result-track:59c8a4b4cecfd676e6e255f2f27b05a6dd541e2d8b6031fdaac59835fcfba9e3` |
| 3 | `lemma` | [ite_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/ite-nonneg-of-pos-of-nonneg--53290083a420e7b8a1671438.md) | 43 | `result-track:53290083a420e7b8a16714383a70f829999c68c3199bc5fbe6cb2b2a89a6ec61` |
| 4 | `lemma` | [ite_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/ite-nonneg-of-nonneg-of-pos--990d5ec2603de801f2d1d2ff.md) | 46 | `result-track:990d5ec2603de801f2d1d2ffe2b3feda17af8b620efda09ef260e3181aefed2d` |
| 5 | `lemma` | [ite_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/ite-ne-zero--0f167c2c7b365cd43101e615.md) | 49 | `result-track:0f167c2c7b365cd43101e615970420045a6098ee10d819c0f3c30d1f2f9efe70` |
| 6 | `lemma` | [ite_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/ite-ne-zero-of-pos-of-ne-zero--b62100d7e182bb789aee2745.md) | 51 | `result-track:b62100d7e182bb789aee27451bbb55713dae57492bd325d8e61c22689273bdde` |
| 7 | `lemma` | [ite_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/ite-ne-zero-of-ne-zero-of-pos--3267ce1291d6bc3556314dbb.md) | 55 | `result-track:3267ce1291d6bc3556314dbb6905ba315392aef7cd07ec28bb417fe1f5b98d7d` |
| 8 | `def` | [evalIte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalite--addc15e7e3c836af67862eb6.md) | 63 | `declaration-track:addc15e7e3c836af67862eb608176b5d899da1c19b903b5caab48a0d52ed7c7f` |
| 9 | `lemma` | [le_min_of_lt_of_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/le-min-of-lt-of-le--386e7ea4de8f0adb2a0cfb8e.md) | 97 | `result-track:386e7ea4de8f0adb2a0cfb8e3f56e3bcf83b5b970a6f68d2e5e0980acc6d475a` |
| 10 | `lemma` | [le_min_of_le_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/le-min-of-le-of-lt--c7e2ad763300f20c70b69765.md) | 98 | `result-track:c7e2ad763300f20c70b697654586d39d5f2135cc2ccc959d9b9211eeecf3eb60` |
| 11 | `lemma` | [min_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/min-ne--47dcfd059f4ec4c4cbb61de9.md) | 99 | `result-track:47dcfd059f4ec4c4cbb61de9c948a55049224d0dbab0c6565749beea2d2eb1e5` |
| 12 | `lemma` | [min_ne_of_ne_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/min-ne-of-ne-of-lt--0cfdd2a43288dedd5599ba33.md) | 102 | `result-track:0cfdd2a43288dedd5599ba333f4e347d71282a770a4b2f19c95b008c0008241b` |
| 13 | `lemma` | [min_ne_of_lt_of_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/min-ne-of-lt-of-ne--f0d2a695b86285dd659100e8.md) | 103 | `result-track:f0d2a695b86285dd659100e8ba7c188ff7853902e36147b0fff2c90a9535864b` |
| 14 | `lemma` | [max_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/max-ne--7e5e1276175d099df95fb257.md) | 105 | `result-track:7e5e1276175d099df95fb257e49b4dd430d26c3d374a5e0bbf3eaba12286558f` |
| 15 | `def` | [evalMin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalmin--e47cb593f7863e0b9f01f5a5.md) | 112 | `declaration-track:e47cb593f7863e0b9f01f5a5d9ef491ab58cabc80b3e23083e5535fdf2a21937` |
| 16 | `def` | [evalMax](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalmax--148db332b5e4a207f3f8cada.md) | 131 | `declaration-track:148db332b5e4a207f3f8cada4e92d3cf7989db74d52cee51e8f4404b80eb55a7` |
| 17 | `def` | [evalAdd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evaladd--ec00e1960be2e3f6596faabb.md) | 160 | `declaration-track:ec00e1960be2e3f6596faabb5d10b9626d0b6ac3a3a8ddb346206a73705a3fb1` |
| 18 | `theorem` | [mul_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/mul-nonneg-of-pos-of-nonneg--813ac231f78f61535a3bf0f1.md) | 183 | `result-track:813ac231f78f61535a3bf0f19f6ef701daff0c5e02b2461a583dd334d906953e` |
| 19 | `theorem` | [mul_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/mul-nonneg-of-nonneg-of-pos--e1c87e66c469a1badd6cab77.md) | 187 | `result-track:e1c87e66c469a1badd6cab77fcc3e24c915b27677b784c90b92b9751ee35a185` |
| 20 | `theorem` | [mul_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/mul-ne-zero-of-ne-zero-of-pos--fa8bbce89c71a48c3b392896.md) | 191 | `result-track:fa8bbce89c71a48c3b3928969319ffa0e673810b1cacf1af8739472b2cdca6e9` |
| 21 | `theorem` | [mul_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/mul-ne-zero-of-pos-of-ne-zero--7fc2d2c345c44841b4e73a24.md) | 195 | `result-track:7fc2d2c345c44841b4e73a24dec1d885d47b4ebd6febd1c13808ac09182f0fcb` |
| 22 | `def` | [evalMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalmul--9e23e58a2c71d029ee3ff09c.md) | 201 | `declaration-track:9e23e58a2c71d029ee3ff09ccf5716964cb05e81af7c1a00b5446d06b975ca93` |
| 23 | `lemma` | [int_div_self_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/int-div-self-pos--2031a8d4f9288ec83f09e6cf.md) | 226 | `result-track:2031a8d4f9288ec83f09e6cf6936a826d453bc3f5a3aa203716039cd61023578` |
| 24 | `lemma` | [int_div_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/int-div-nonneg-of-pos-of-nonneg--08f24f675e023b96aa7781fc.md) | 229 | `result-track:08f24f675e023b96aa7781fcdc802e29f0fdb8799c8c99d1a88254ff53f41738` |
| 25 | `lemma` | [int_div_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/int-div-nonneg-of-nonneg-of-pos--335bf7953997d1d808b12c82.md) | 232 | `result-track:335bf7953997d1d808b12c821543fd7dae179eebaf7ac180ed53fc9c85ac0c8d` |
| 26 | `lemma` | [int_div_nonneg_of_pos_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/int-div-nonneg-of-pos-of-pos--22fa64ec0f55ece4ed4bdab8.md) | 235 | `result-track:22fa64ec0f55ece4ed4bdab85e1f23f08ccb88184516aa756c578cc2097fb449` |
| 27 | `def` | [evalIntDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalintdiv--0c8fd35ad7bfd8ef7906172f.md) | 240 | `declaration-track:0c8fd35ad7bfd8ef7906172f35b1cfe12ef6fdabec5e159800c871dae1e59b77` |
| 28 | `lemma` | [div_nonneg_of_pos_of_nonneg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/div-nonneg-of-pos-of-nonneg--948761ccc0d93d96231adef4.md) | 269 | `result-track:948761ccc0d93d96231adef44906389e8d919d6f72e186331ab9ddb43f597816` |
| 29 | `lemma` | [div_nonneg_of_nonneg_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/div-nonneg-of-nonneg-of-pos--8199299c53c84c18ab7eaed6.md) | 272 | `result-track:8199299c53c84c18ab7eaed699f9e650a10188d582f88595c22bf4bddbd0048c` |
| 30 | `lemma` | [div_ne_zero_of_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/div-ne-zero-of-pos-of-ne-zero--5210d4f03eb728a3b99eeb83.md) | 275 | `result-track:5210d4f03eb728a3b99eeb83f9614386cecc17623a06c81665935dfe64dc77a2` |
| 31 | `lemma` | [div_ne_zero_of_ne_zero_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/div-ne-zero-of-ne-zero-of-pos--e100608b1f13f4b3e7343b20.md) | 278 | `result-track:e100608b1f13f4b3e7343b209109096043a89c7ebb67f30e0c52c4269c10319e` |
| 32 | `def` | [evalDiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evaldiv--2b35d4a21cdcb83d6afedf2f.md) | 285 | `declaration-track:2b35d4a21cdcb83d6afedf2f605232823719d9c0960aa36bb105fc2bf11537a8` |
| 33 | `def` | [evalInv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalinv--a107dac2a382c8346bcf5bf4.md) | 306 | `declaration-track:a107dac2a382c8346bcf5bf486062d7b56be452bd55f2a76cf82a43043ea8628` |
| 34 | `theorem` | [pow_zero_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/pow-zero-pos--08b7382e18d8bcad39f9661d.md) | 319 | `result-track:08b7382e18d8bcad39f9661d026fc22e0a2c1ba6e7006a48d653d6b9468a9283` |
| 35 | `lemma` | [zpow_zero_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/zpow-zero-pos--94ff99d889812b203b46d602.md) | 322 | `result-track:94ff99d889812b203b46d6023484af5fed2a65f70dd5b94e34180af9d041ebe1` |
| 36 | `def` | [evalPowZeroNat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalpowzeronat--b71436c884b152c136c9ca39.md) | 328 | `declaration-track:b71436c884b152c136c9ca39b48705927191422856dcea4325650e12ad9d3b42` |
| 37 | `def` | [evalPowZeroInt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalpowzeroint--98d343b0c3ba57f2a22167a8.md) | 336 | `declaration-track:98d343b0c3ba57f2a22167a80575d17d30a6a370e66412dfcff41dd5c49538b4` |
| 38 | `def` | [evalPow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalpow--d390001b636c3233128b5b32.md) | 345 | `declaration-track:d390001b636c3233128b5b320f173061336049c7cc9e816f5d91f3f4c8537b2a` |
| 39 | `theorem` | [abs_pos_of_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/abs-pos-of-ne-zero--4a853a954366fad304cafbd8.md) | 383 | `result-track:4a853a954366fad304cafbd82f25e3eb09e9acc0a2f2b670d003e4f34ee3ab10` |
| 40 | `def` | [evalAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalabs--07b388b2b5536b1ce4bddc29.md) | 388 | `declaration-track:07b388b2b5536b1ce4bddc29157b3345ab8f0c82509369a5b510590e1ee0f221` |
| 41 | `theorem` | [int_natAbs_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/int-natabs-pos--f8b872b62dcd720ddbc37bc3.md) | 403 | `result-track:f8b872b62dcd720ddbc37bc35031f848e3439d0a396acfdfa9472202351704f2` |
| 42 | `def` | [evalNatAbs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalnatabs--eb871493eab3d4b4630bc35e.md) | 411 | `declaration-track:eb871493eab3d4b4630bc35e2d97723ceb6e3663aa3ea8bc0a54c2cd08a14337` |
| 43 | `def` | [evalNatCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalnatcast--9fa6317a9eb54c0c16a66081.md) | 427 | `declaration-track:9fa6317a9eb54c0c16a66081b17baa276da0e2cbc5a25860aa824269406fd0cf` |
| 44 | `def` | [evalIntCast](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalintcast--d51f7e1c0350d21cf224023d.md) | 443 | `declaration-track:d51f7e1c0350d21cf224023d00838e0b26633a595fd1da67bcedc0bde77bc2fe` |
| 45 | `def` | [evalNatSucc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalnatsucc--e5949f9f424037f72ca0c126.md) | 472 | `declaration-track:e5949f9f424037f72ca0c126f213f7f1200890ad1f9fd81bea76717f54d6ce2e` |
| 46 | `def` | [evalFactorial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant53be58a453717331c83684237de7100db9102ce8154dae0fa039d55195cd4310.lean/declarations/evalfactorial--58770ac264313891c59890e5.md) | 478 | `declaration-track:58770ac264313891c59890e5be6541976c3b2542f3606752d0f42ca3b6a2fcd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
