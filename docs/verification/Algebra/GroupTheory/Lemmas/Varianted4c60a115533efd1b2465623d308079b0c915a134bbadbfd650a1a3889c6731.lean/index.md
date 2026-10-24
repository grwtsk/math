# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e91b7bd2c4f7c44d8f0023df4d50839f0d3c674",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e91b7bd2c4f7c44d8f0023df4d50839f0d3c674`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ofnathom--80a5d4ea7e35506549d5a031.md) | 41 | `declaration-track:80a5d4ea7e35506549d5a031ec0861cf6677f83c4a8544adfc21b86a76027ee4` |
| 2 | `theorem` | [coe_nat_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/coe-nat-pos--6851a628a31f9ab4e6c4e712.md) | 47 | `result-track:6851a628a31f9ab4e6c4e7127afd68af084218bff884433bbf1d3b8794875fe0` |
| 3 | `theorem` | [coe_nat_succ_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/coe-nat-succ-pos--e9f7e95c1bcae3e7df859a1f.md) | 51 | `result-track:e9f7e95c1bcae3e7df859a1f6a86a24b1e1528dd77a1128106a4fb3ba37ef222` |
| 4 | `lemma` | [toNat_lt'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/tonat-lt--0b4517e0368bba006a89726e.md) | 55 | `result-track:0b4517e0368bba006a89726e78e150bbe928c4094d58ba49fc3675ab4588dfb7` |
| 5 | `lemma` | [natMod_lt](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/natmod-lt--fdd434a820bf6a2597954693.md) | 59 | `result-track:fdd434a820bf6a25979546934b7906850da67a9c079c0a91cc97e0100fd54423` |
| 6 | `theorem` | [cast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-mul--bc957e918cb8a16a7b597cd6.md) | 66 | `result-track:bc957e918cb8a16a7b597cd64c9bd0f858af2a905894ebe22412c060dc344afe` |
| 7 | `theorem` | [cast_ite](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-ite--dfed3a24fb2c56ef15315075.md) | 72 | `result-track:dfed3a24fb2c56ef15315075967c208d44d292d3c392bc48ef878bc052f75e64` |
| 8 | `def` | [castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/castaddhom--bfb6ec79164bc08af5b35139.md) | 78 | `declaration-track:bfb6ec79164bc08af5b35139f950b40a92126265e810dbec4e9081a0cb01f866` |
| 9 | `theorem` | [coe_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/coe-castaddhom--601a982c8bcce6b1e4d73753.md) | 85 | `result-track:601a982c8bcce6b1e4d73753b97276433529ffa21b215e679050d48769ab6f28` |
| 10 | `def` | [castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/castringhom--b98169976f57dfb3b078e50c.md) | 90 | `declaration-track:b98169976f57dfb3b078e50c2552c1c7c7a9a453894201056fdd03bc48328ab3` |
| 11 | `theorem` | [coe_castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/coe-castringhom--4084e633cf9f0cae4a6391a3.md) | 99 | `result-track:4084e633cf9f0cae4a6391a3d2aeaf471eb9e378d8e5d7de4a5d9400632d8398` |
| 12 | `theorem` | [cast_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-commute--53803aca2afa45810ef66020.md) | 103 | `result-track:53803aca2afa45810ef66020bb38904cea2e75f79bc2c7d17385730244a32cd6` |
| 13 | `theorem` | [cast_comm](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-comm--b4b96141b43ba91490ca464d.md) | 110 | `result-track:b4b96141b43ba91490ca464d3c25a18c27d580a5d216bb7910a6e78b7f89262d` |
| 14 | `theorem` | [commute_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/commute-cast--ed4976ac9bb21d71a0b748ea.md) | 114 | `result-track:ed4976ac9bb21d71a0b748eadc893d6fda000b63b36a30a66a82a13508f37934` |
| 15 | `theorem` | [cast_mono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-mono--b40c222d21d7d732ffdf1a2d.md) | 118 | `result-track:b40c222d21d7d732ffdf1a2da08ceaaced6f58b5e5f1095a431268f2fac845cc` |
| 16 | `theorem` | [cast_nonneg](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-nonneg--37cc662cc9cbd0406c2502bb.md) | 127 | `result-track:37cc662cc9cbd0406c2502bbe293b89943dfaa4dcdad6dad0a40886050789d86` |
| 17 | `theorem` | [cast_le](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-le--a6b7012ee3e3420c6570384b.md) | 135 | `result-track:a6b7012ee3e3420c6570384b39f28858dcdf4d3ec154c49825dc8977dd36390a` |
| 18 | `theorem` | [cast_strictMono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-strictmono--cbab155a1ad0e424e5db648c.md) | 139 | `result-track:cbab155a1ad0e424e5db648cb2e4213de56b09c0aec72889e1f31ac1fc706cf2` |
| 19 | `theorem` | [cast_lt](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-lt--b5bbb722bdb9f0ea382bf0af.md) | 144 | `result-track:b5bbb722bdb9f0ea382bf0afcc51f8fdf6de4b79889fa333df084f99afd43565` |
| 20 | `theorem` | [cast_nonpos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-nonpos--e1e1611e0e4e562b32983b70.md) | 149 | `result-track:e1e1611e0e4e562b32983b704cedb6ac9ecbb046f826d392dd494c382ed7b8f2` |
| 21 | `theorem` | [cast_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-pos--9ec99e267a69186cd8afc760.md) | 154 | `result-track:9ec99e267a69186cd8afc7601b9af18cfc1dc21f8ae8dd45436b8e40265544e0` |
| 22 | `theorem` | [cast_lt_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-lt-zero--367a349cd7dc0d8d3ee0cfdf.md) | 159 | `result-track:367a349cd7dc0d8d3ee0cfdf9cd461e67b9ede3846ffdedc4d10776a1882f20b` |
| 23 | `theorem` | [cast_min](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-min--70cd486b51d87a034f62a4f5.md) | 168 | `result-track:70cd486b51d87a034f62a4f5c3bef19dd0be3375408185dc6c94afe47fb9b798` |
| 24 | `theorem` | [cast_max](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-max--d93c022a2f9d9c63bb9cf647.md) | 173 | `result-track:d93c022a2f9d9c63bb9cf6473349feebbf45d1b507b3ab1f6cbf7f309a2d1b7c` |
| 25 | `theorem` | [cast_abs](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-abs--a2e73dad5c896bf1da3b9d3b.md) | 178 | `result-track:a2e73dad5c896bf1da3b9d3ba58af33bced19878c30a73d6352708992789babb` |
| 26 | `theorem` | [cast_one_le_of_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-one-le-of-pos--d9858074cde2d9e8297c540b.md) | 181 | `result-track:d9858074cde2d9e8297c540bca8d9b012403659a7e6ec5d3ef0b8c8f421c0e49` |
| 27 | `theorem` | [cast_le_neg_one_of_neg](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-le-neg-one-of-neg--1f35bde362c47c251ce2c35b.md) | 184 | `result-track:1f35bde362c47c251ce2c35b0d69642970ab0c3c4d2b080f7127431010ea2fe7` |
| 28 | `theorem` | [cast_le_neg_one_or_one_le_cast_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-le-neg-one-or-one-le-cast-of-ne-zero--b81b042b9c97324b9dd98391.md) | 191 | `result-track:b81b042b9c97324b9dd98391af7a3c3f3ed33f4ddd1252a907aa36aaabbfb0fe` |
| 29 | `theorem` | [nneg_mul_add_sq_of_abs_le_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/nneg-mul-add-sq-of-abs-le-one--c21f8923a9ae3b9d7eeb79ad.md) | 197 | `result-track:c21f8923a9ae3b9d7eeb79ad0bac3e705633383a6cdeb6fd2bf42e6db3245af8` |
| 30 | `theorem` | [cast_natAbs](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/cast-natabs--5439cb3de03a6da90b665b44.md) | 211 | `result-track:5439cb3de03a6da90b665b4426e3c7a4bca30b0604444972c4fb656236ea885a` |
| 31 | `theorem` | [coe_int_dvd](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/coe-int-dvd--54b9130a04061469909f642f.md) | 219 | `result-track:54b9130a04061469909f642f26c837d58f4ffe0a8e593e44e78f2dde1758d021` |
| 32 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ext-int--442e948802116fd936007fb1.md) | 236 | `result-track:442e948802116fd936007fb1ebae3107f0f80afc05910c392fc39cafe53347ce` |
| 33 | `theorem` | [eq_int_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/eq-int-castaddhom--04acf5a965342257e28ebfc1.md) | 246 | `result-track:04acf5a965342257e28ebfc160ba71f4fb18391fbb8dd43fa5716c66a740df94` |
| 34 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/eq-intcast--ccb3d2a5a38c3360a53948ed.md) | 252 | `result-track:ccb3d2a5a38c3360a53948edf8ac94d9b4e02fad2b424994ea7bdd97302c1440` |
| 35 | `theorem` | [Int.castAddHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/int-castaddhom-int--aaab009433d767494d535faf.md) | 258 | `result-track:aaab009433d767494d535fafd31b24351ee5a3443bb63370cf3dd0cd851b32fe` |
| 36 | `theorem` | [ext_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ext-mint--e0360ed330ec678aba4d1609.md) | 269 | `result-track:e0360ed330ec678aba4d1609cb2d3b7c5bb660c0727400af5d00918da1b24db6` |
| 37 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ext-int--3c81b467e0e916d81efd2db0.md) | 275 | `result-track:3c81b467e0e916d81efd2db07e8c4fda479555025d08c244f345867d716308c6` |
| 38 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ext-int--e78ec0546166fdab766bcf15.md) | 292 | `result-track:e78ec0546166fdab766bcf15eddaea986bd5a61e5e897d564c0e676f7cabb2c1` |
| 39 | `theorem` | [ext_int'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ext-int--b10ee10469a847e6562ab681.md) | 302 | `result-track:b10ee10469a847e6562ab6810f3bd2ecc616699fe3fa075d4cafb74828c74c40` |
| 40 | `theorem` | [eq_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/eq-intcast--4919fa3dade5ca7a266126ad.md) | 318 | `result-track:4919fa3dade5ca7a266126ad186dbf6f8f9e87f85eaa9cad9e8e04ac6b74fa13` |
| 41 | `theorem` | [map_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/map-intcast--fd07ed18a3b620ef0861ad25.md) | 323 | `result-track:fd07ed18a3b620ef0861ad2543a1daea6e6181ab00d46f759d435d9d0770b6ca` |
| 42 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/eq-intcast--3dd099921cc42772b417a206.md) | 329 | `result-track:3dd099921cc42772b417a206b76b7ae050d46548165727a56fb9189a08478c67` |
| 43 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ext-int--84f671ccc6ecaa5a08e8ac39.md) | 333 | `result-track:84f671ccc6ecaa5a08e8ac393bd68a98cc04c64de21eef34d0b5aa0a68a7402c` |
| 44 | `instance` | [Int.subsingleton_ringHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/int-subsingleton-ringhom--4274522d3556941467c3fb9c.md) | 337 | `declaration-track:4274522d3556941467c3fb9c93c8b890ea14bec3bcaaadc814c60d31aa8567a7` |
| 45 | `theorem` | [Int.castRingHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/int-castringhom-int--0676a08b4ecf6017cd2dcaa1.md) | 348 | `result-track:0676a08b4ecf6017cd2dcaa19c6a441c15b62fe081a4e935b8dfeae9b70c375f` |
| 46 | `instance` | [intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/intcast--df5be770a882fc469f2827e0.md) | 356 | `declaration-track:df5be770a882fc469f2827e0d9e4d0fa1b79443357cb07cdbdbbe8539a500f52` |
| 47 | `theorem` | [int_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/int-apply--9c16a4b68fecf96d0e074cb5.md) | 359 | `result-track:9c16a4b68fecf96d0e074cb51bf7183d29d3fed6eaa37d5cc5e77aa11d475a6a` |
| 48 | `theorem` | [coe_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/coe-int--a49f8806bcfc731be052f8d6.md) | 364 | `result-track:a49f8806bcfc731be052f8d617e4447dbaa18d5cbeb5af0e11ffe55f66e32879` |
| 49 | `theorem` | [Sum.elim_intCast_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/sum-elim-intcast-intcast--4ae53e2f3dc205141943c9e5.md) | 370 | `result-track:4ae53e2f3dc205141943c9e5fd7e096646529fe38c09421669b93b6f1990c946` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/instance--736275364f09fff04d4034cc.md) | 380 | `declaration-track:736275364f09fff04d4034ccf6133d824934458ebd3a5e5a405ff7c999cc56bb` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/instance--c82e272ec605276d5bb1d3be.md) | 383 | `declaration-track:c82e272ec605276d5bb1d3be752217e327db1bb9e5e419a02cc27076fff26e79` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/instance--33762dc4cdd9909fe8834bbb.md) | 386 | `declaration-track:33762dc4cdd9909fe8834bbbd94857193998da46d5a3ed69e3f7d3c0df8ee195` |
| 53 | `theorem` | [toDual_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/todual-intcast--be4c801550eaf40455a746b3.md) | 390 | `result-track:be4c801550eaf40455a746b3c6fbabb509d52b0c1b3195c05eed90b9006a9fe6` |
| 54 | `theorem` | [ofDual_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/ofdual-intcast--d919bdb5970c542b57bc3dbd.md) | 395 | `result-track:d919bdb5970c542b57bc3dbd76aff5de512bff1ff03f121179eb50c871d65eb9` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/instance--de239a17c74361d2fa5f3b34.md) | 402 | `declaration-track:de239a17c74361d2fa5f3b34ab8fb90bc690ef3c36f9a8fcde51e829699aaa21` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/instance--02b1b8994be4a051d50360e0.md) | 405 | `declaration-track:02b1b8994be4a051d50360e065570d40156a9b46f2b3cc5ea62ff753e28fd7c8` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/instance--867d5b503a63837567d130fc.md) | 408 | `declaration-track:867d5b503a63837567d130fceddc97df26b27d1e787684edffb8d2202ae3f2de` |
| 58 | `theorem` | [toLex_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/tolex-intcast--13bdb9d64b2ab983d3f4c24e.md) | 412 | `result-track:13bdb9d64b2ab983d3f4c24e11ad5728bd2b8375d15dfb6fa0c4bb6ba8390cb1` |
| 59 | `theorem` | [ofLex_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Varianted4c60a115533efd1b2465623d308079b0c915a134bbadbfd650a1a3889c6731.lean/declarations/oflex-intcast--49036e6d7314d2684420b7e9.md) | 417 | `result-track:49036e6d7314d2684420b7e9700f1d0bdd11ec424bb3a27dcf0dddd83ff920ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
