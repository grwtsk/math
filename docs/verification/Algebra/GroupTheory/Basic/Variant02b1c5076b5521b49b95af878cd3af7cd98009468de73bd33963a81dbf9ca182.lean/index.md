# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f25d54c524947da657e3db5489d0004289e1d2b",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f25d54c524947da657e3db5489d0004289e1d2b`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_ite](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-ite--725294de8e467f21817d0370.md) | 52 | `result-track:725294de8e467f21817d0370db9b89e947aff38e9169f5b75142657d4b83ff44` |
| 2 | `theorem` | [ite_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/ite-pow--2293665b76149b9f1b4efa8e.md) | 57 | `result-track:2293665b76149b9f1b4efa8e778148b1df19bb5e37956dbd66aeaa7d621ca49e` |
| 3 | `theorem` | [nsmul_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/nsmul-zero--7c440cc170cd40f0760c15a5.md) | 72 | `result-track:7c440cc170cd40f0760c15a501729bc2adbce900cd602733d8b2fce48eab58cf` |
| 4 | `theorem` | [one_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/one-nsmul--aa92a7cb7e30c0c0a50ff6fd.md) | 79 | `result-track:aa92a7cb7e30c0c0a50ff6fd20d93565d3eaa85e5ff592c66a5f48e685d99f46` |
| 5 | `theorem` | [add_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/add-nsmul--16daee89bd323928ef2b16ce.md) | 82 | `result-track:16daee89bd323928ef2b16cef6c178551b6b730ae678516f5c5dda218d82f3f7` |
| 6 | `theorem` | [one_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/one-pow--313e568f5aec807cc66dda27.md) | 90 | `result-track:313e568f5aec807cc66dda277dad7e226f2bb5572e714ca045d51076b19418ed` |
| 7 | `theorem` | [pow_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-one--94fb06d4075d0b072182759d.md) | 97 | `result-track:94fb06d4075d0b072182759d2b799b5baaf6fd8f466b4643e46f562fce8cff10` |
| 8 | `theorem` | [pow_two](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-two--923f27a7e16d01595adab1a1.md) | 102 | `result-track:923f27a7e16d01595adab1a1900a8af36b1a369961d214e7d2c162c833ee32e1` |
| 9 | `theorem` | [pow_three'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-three--7e840cc9999cab119ef10bd5.md) | 110 | `result-track:7e840cc9999cab119ef10bd5732baa8dc730867b51c2ad9acfc7214aa510a8a4` |
| 10 | `theorem` | [pow_three](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-three--13426f3770aa9363cacebccb.md) | 114 | `result-track:13426f3770aa9363cacebccb03957881bbe95ca0b1725b8efbad9fc848436674` |
| 11 | `theorem` | [pow_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-add--66c1d54b214ed59880b20506.md) | 118 | `result-track:66c1d54b214ed59880b205066bca6e49aeb89cd62f64c900c1ca9a334504970b` |
| 12 | `theorem` | [pow_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-mul--24e2182fab15156f3e0af79d.md) | 125 | `result-track:24e2182fab15156f3e0af79d26eaa656e691333c3652e00bf6e38ddb3ff235ba` |
| 13 | `theorem` | [pow_mul'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-mul--4a362b375b772efbb10f760a.md) | 135 | `result-track:4a362b375b772efbb10f760a3af68ee6fc20f266ff4ff1a5efd9bb545bffbe13` |
| 14 | `theorem` | [Commute.mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/commute-mul-pow--0ccbc4fe5953abe20b1dc793.md) | 140 | `result-track:0ccbc4fe5953abe20b1dc79342681a5f64711b3955dbc85f99c29b8180b370ba` |
| 15 | `theorem` | [pow_mul_comm'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-mul-comm--b0402bdeb6d07d18068b5380.md) | 148 | `result-track:b0402bdeb6d07d18068b538056fc098bc5087a1664a576070988ba0401bdd697` |
| 16 | `theorem` | [pow_boole](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-boole--375ad17b00551ec98aa31117.md) | 154 | `result-track:375ad17b00551ec98aa3111729eed32ec1464a699dd614d5d63a4a34225a775b` |
| 17 | `theorem` | [pow_right_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-right-comm--6da24a428a11b10eebefe39b.md) | 159 | `result-track:6da24a428a11b10eebefe39b589642a40a44526212630c9cc96a13ae41e0e2a1` |
| 18 | `theorem` | [pow_mul_pow_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-mul-pow-sub--ea24f5baac24955dea53cf77.md) | 165 | `result-track:ea24f5baac24955dea53cf7733b5bf11199b2c4f00caa4571553d3429fca8970` |
| 19 | `theorem` | [pow_sub_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-sub-mul-pow--8eef86b881e742dd0db20bb7.md) | 171 | `result-track:8eef86b881e742dd0db20bb7f90ae1a09106c1cbb81ef91c622fbc6ec14e1137` |
| 20 | `theorem` | [pow_eq_pow_mod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-eq-pow-mod--97040776a462edb5a8000324.md) | 178 | `result-track:97040776a462edb5a80003242781fd9472b292f97ab55a011ca8b37964677f97` |
| 21 | `theorem` | [pow_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-mul-comm--3cdc03b2bc964adebe019190.md) | 187 | `result-track:3cdc03b2bc964adebe019190d7f1ad57930099255399f9f1f7773c89cdc50552` |
| 22 | `theorem` | [pow_bit0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-bit0--28a44db2f41ab0ae4732d6bb.md) | 197 | `result-track:28a44db2f41ab0ae4732d6bb1dcf7bb9727ac00690ab20b2fe1bd00195c6fcf9` |
| 23 | `theorem` | [pow_bit1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-bit1--ac820cd36e1240bd3a28bc44.md) | 203 | `result-track:ac820cd36e1240bd3a28bc447ebea158635214303c7122c8e95e183110347248` |
| 24 | `theorem` | [pow_bit0'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-bit0--8693f5dd7d8f252c52600d43.md) | 209 | `result-track:8693f5dd7d8f252c52600d43d0ac97bf53325569d693578493459f29984bec75` |
| 25 | `theorem` | [pow_bit1'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-bit1--881a997f4d3661e4e556ace1.md) | 215 | `result-track:881a997f4d3661e4e556ace128e0176dfd45487c50cf7427eb688136bfbeee9a` |
| 26 | `theorem` | [pow_mul_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-mul-pow-eq-one--9d171fbb505340340e12a905.md) | 223 | `result-track:9d171fbb505340340e12a90537959b0a39368743f49908751b418049c39228fc` |
| 27 | `theorem` | [dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/dvd-pow--4164398ea5e895dd9f36eb01.md) | 233 | `result-track:4164398ea5e895dd9f36eb013bd10e94fe10fd50327d1d9fdd2c73a1f49c21b3` |
| 28 | `theorem` | [dvd_pow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/dvd-pow-self--17da2b3dc0e1270f34d35163.md) | 242 | `result-track:17da2b3dc0e1270f34d35163440cc81e20383b177dcafb62c03af4f96e6ff7db` |
| 29 | `theorem` | [mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/mul-pow--02aa3ed296514c79fc19cd5c.md) | 257 | `result-track:02aa3ed296514c79fc19cd5cbe137f30ef77bbb5d886738019842de1ad94064e` |
| 30 | `def` | [powMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/powmonoidhom--67fe1cbfdcc23df21304a803.md) | 267 | `declaration-track:67fe1cbfdcc23df21304a80344400b05a710ea02f462be2008a83546a30c1453` |
| 31 | `theorem` | [zpow_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-one--3e73dbe339495ed592223fe6.md) | 285 | `result-track:3e73dbe339495ed592223fe6134e6f902c54b98493a8d28a3f2b95d87134a673` |
| 32 | `theorem` | [zpow_two](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-two--7d027a0b9f953793250dd2a4.md) | 292 | `result-track:7d027a0b9f953793250dd2a49bd98962b73ad4ce686575fe4243274cbf28b250` |
| 33 | `theorem` | [zpow_neg_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-neg-one--2b42dd86281ca2b824055bdb.md) | 299 | `result-track:2b42dd86281ca2b824055bdb3c5bf53fd5d628eb7bcd2c7a52e9a6946eae7bc3` |
| 34 | `theorem` | [zpow_neg_coe_of_pos](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-neg-coe-of-pos--c1e93227fdcc85d89b083b54.md) | 305 | `result-track:c1e93227fdcc85d89b083b5473b6c82c4080f041624def3e1b19b880078c022f` |
| 35 | `theorem` | [inv_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/inv-pow--e649bfa9bb8515b0ec6f880a.md) | 317 | `result-track:e649bfa9bb8515b0ec6f880a275af1c15fa98d89b6b21eba129e18724bea2cc0` |
| 36 | `theorem` | [one_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/one-zpow--c890dcde845bd7eba534a42c.md) | 325 | `result-track:c890dcde845bd7eba534a42c10e234461231483fb49a7bae9a3cc3c9aa18c282` |
| 37 | `theorem` | [zpow_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-neg--92eadb7ae18e47ebedfed6ef.md) | 332 | `result-track:92eadb7ae18e47ebedfed6ef12c0f0326eb8a7bbb8012b881aae8798991cf574` |
| 38 | `theorem` | [mul_zpow_neg_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/mul-zpow-neg-one--72e3c0be4d1fec657e96133a.md) | 344 | `result-track:72e3c0be4d1fec657e96133a31cf864de562efe9e38b5b1595b498999e6db57d` |
| 39 | `theorem` | [inv_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/inv-zpow--1ba7f7e6b31854df047e5468.md) | 350 | `result-track:1ba7f7e6b31854df047e546847112be2c9287ee8770f1ebc1f864b12d4529255` |
| 40 | `theorem` | [inv_zpow'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/inv-zpow--024d23336ef52ac00d0c4303.md) | 357 | `result-track:024d23336ef52ac00d0c4303b2a725d053bb4d80b8620c3c4346e95bbfb95d7a` |
| 41 | `theorem` | [one_div_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/one-div-pow--a9aaaae2c60833b08a745f31.md) | 362 | `result-track:a9aaaae2c60833b08a745f31796c5f14bf501edcd74578edee4d6a0c10658891` |
| 42 | `theorem` | [one_div_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/one-div-zpow--a5a998b3d02e9a2663f239c2.md) | 367 | `result-track:a5a998b3d02e9a2663f239c2ecd01bd04649bd0d3980facb2fad2bbeb67f8f72` |
| 43 | `theorem` | [Commute.mul_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/commute-mul-zpow--f2ff6cf9cd7fe650ca098a94.md) | 372 | `result-track:f2ff6cf9cd7fe650ca098a9494f90b5547b69bb6ac605c98268b4ca4d7a61b41` |
| 44 | `theorem` | [mul_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/mul-zpow--e35f152fce635a03f4f1db8e.md) | 385 | `result-track:e35f152fce635a03f4f1db8ed1575c4d752e1725e70ef95e3553f218a65300d2` |
| 45 | `theorem` | [div_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/div-pow--36646f0a687d0a25b96a1f3d.md) | 391 | `result-track:36646f0a687d0a25b96a1f3d8f5a525e0b4f26b46085550ee65a5f9538589a40` |
| 46 | `theorem` | [div_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/div-zpow--b535edc637065f56932b2237.md) | 397 | `result-track:b535edc637065f56932b2237e150f4c88f2c435e6e420dffbed18634dcb5cf14` |
| 47 | `def` | [zpowGroupHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpowgrouphom--d5a4f47cfef61a1030d30d23.md) | 407 | `declaration-track:d5a4f47cfef61a1030d30d23bf4cd7d430d8fca7a10e4b7ce84894eb733da393` |
| 48 | `theorem` | [pow_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-sub--df8690f42bdec6097e91e8cd.md) | 423 | `result-track:df8690f42bdec6097e91e8cdc31ec2fdf36f4aa354b8a22fc331901f75385599` |
| 49 | `theorem` | [pow_inv_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-inv-comm--0bdf958884da904236f3dc08.md) | 429 | `result-track:0bdf958884da904236f3dc08bbfaebc500864c00de871be12891c82609e8bc2b` |
| 50 | `theorem` | [inv_pow_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/inv-pow-sub--eeb271a788146efde9d65da8.md) | 435 | `result-track:eeb271a788146efde9d65da8d1ec242584128f589fcfcceb2612140bb48ad5a5` |
| 51 | `theorem` | [pow_dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/pow-dvd-pow--068fc74ea48715b1d22a2ae1.md) | 442 | `result-track:068fc74ea48715b1d22a2ae1a42733ac2b81a705907967d2dc2ba7a1757cda24` |
| 52 | `theorem` | [ofAdd_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/ofadd-nsmul--404d1c502ded7600a20a6b72.md) | 446 | `result-track:404d1c502ded7600a20a6b728b06d0822f04044f1b0a10eaea907a89293d2448` |
| 53 | `theorem` | [ofAdd_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/ofadd-zsmul--217361caaef59d3d5f47ca92.md) | 451 | `result-track:217361caaef59d3d5f47ca926a66330f30e39f446a281bcaa5085c49eb851128` |
| 54 | `theorem` | [ofMul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/ofmul-pow--958a1f966cf1f11a9f13d933.md) | 456 | `result-track:958a1f966cf1f11a9f13d9335ca06a19eeed1cb25ddf3259e3ae1c365e572e0c` |
| 55 | `theorem` | [ofMul_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/ofmul-zpow--56a3515d4ba05949c86ad2b1.md) | 460 | `result-track:56a3515d4ba05949c86ad2b1c196f0e7fe49c262cf78298e28afa8988eb4a5bd` |
| 56 | `theorem` | [SemiconjBy.zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/semiconjby-zpow-right--e766589f64b81904f5dd39e1.md) | 466 | `result-track:e766589f64b81904f5dd39e19d6fff2e681a4153bbfa7a8926ae2426650f381d` |
| 57 | `theorem` | [zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-right--621b0c67f2dc881a7fcde1d0.md) | 480 | `result-track:621b0c67f2dc881a7fcde1d0a3fd60f44c371bf4d9b862468428ded4ef74f03f` |
| 58 | `theorem` | [zpow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-left--537a4e81053895a83d3d2b76.md) | 486 | `result-track:537a4e81053895a83d3d2b76100a39ca60e1c388c10b8a2c3d49240cd365c8c9` |
| 59 | `theorem` | [zpow_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-zpow--531576a3fff933db56adf1f5.md) | 492 | `result-track:531576a3fff933db56adf1f5660a76b1f7283996aa0ac46675d10e14a52e31c1` |
| 60 | `theorem` | [self_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/self-zpow--33c9d7478d2ce6e04fd6f485.md) | 500 | `result-track:33c9d7478d2ce6e04fd6f4859d0241d4581eecece063110ba98dfe878ad74d85` |
| 61 | `theorem` | [zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-self--58b5441b5e8ddc65efa951df.md) | 506 | `result-track:58b5441b5e8ddc65efa951df472b0af9f9c0473df9af5db8d5f02abd30f8808c` |
| 62 | `theorem` | [zpow_zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant02b1c5076b5521b49b95af878cd3af7cd98009468de73bd33963a81dbf9ca182.lean/declarations/zpow-zpow-self--2a04d3439346c9d4e781835e.md) | 512 | `result-track:2a04d3439346c9d4e781835e52858016643dbfbb85e8601d292978b8dd7f8970` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
