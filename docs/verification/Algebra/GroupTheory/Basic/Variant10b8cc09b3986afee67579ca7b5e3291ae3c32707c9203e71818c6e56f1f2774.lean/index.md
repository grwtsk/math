# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c12762950a04a69162c14730da285304065a902a",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c12762950a04a69162c14730da285304065a902a`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Divisibility.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.TypeTags` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pow_ite](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-ite--bfc65093d0948e855b614524.md) | 60 | `result-track:bfc65093d0948e855b614524c40343e972102280b077409b27b8204c19ffeb15` |
| 2 | `theorem` | [ite_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/ite-pow--39e4baa1a7e5f76d4c19dc85.md) | 65 | `result-track:39e4baa1a7e5f76d4c19dc85b900a4d2a331a9e9b09c788e494820e68fb2d2b7` |
| 3 | `theorem` | [nsmul_zero](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/nsmul-zero--b32bf1749fddff1d084451cc.md) | 80 | `result-track:b32bf1749fddff1d084451cc7da80227e70edaff8157ac257f4902f81754e664` |
| 4 | `theorem` | [one_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/one-nsmul--afd6e26516548a6ebf7efca0.md) | 87 | `result-track:afd6e26516548a6ebf7efca05c82750af2ad19ac3dc3732f20f509accad2223b` |
| 5 | `theorem` | [add_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/add-nsmul--2adc9460b794fe36f3fef6a1.md) | 90 | `result-track:2adc9460b794fe36f3fef6a1822a65c3dd3d38b79326f0ba9f0153dbf7dc92db` |
| 6 | `theorem` | [one_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/one-pow--8e3711d8d596e3b2da9670bf.md) | 98 | `result-track:8e3711d8d596e3b2da9670bfec00c1243a724e4783f28ad78221c9f0b0376d63` |
| 7 | `theorem` | [pow_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-one--09e404e589a2c74b29355e29.md) | 105 | `result-track:09e404e589a2c74b29355e296cce8a22b285fe8b84a63d4d7abb16529a2b7038` |
| 8 | `theorem` | [pow_two](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-two--9b58691489438bd2ff1df3f8.md) | 110 | `result-track:9b58691489438bd2ff1df3f8023ec75021674433147c6fd48403c8656b067cda` |
| 9 | `theorem` | [pow_three'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-three--55b54e7fa2f7863c4fe77659.md) | 118 | `result-track:55b54e7fa2f7863c4fe7765922044c927f77b49ab3657ab0f0ecfe36c5b06e88` |
| 10 | `theorem` | [pow_three](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-three--5e70d16badf65a8c8c1ec41c.md) | 122 | `result-track:5e70d16badf65a8c8c1ec41ca3badf4bc2eed47a452d488c5faedadcf72ce535` |
| 11 | `theorem` | [pow_add](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-add--a813ba05c8c7ac0801363fb8.md) | 126 | `result-track:a813ba05c8c7ac0801363fb8689945bf418c723343531a6b0ceb716cad945a2a` |
| 12 | `theorem` | [pow_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-mul--084c0de4158b142b4045c2fc.md) | 133 | `result-track:084c0de4158b142b4045c2fc0abda774312440cd438f865cfc45370c6133de98` |
| 13 | `theorem` | [pow_mul'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-mul--56ae34d27f4365666f05dedd.md) | 143 | `result-track:56ae34d27f4365666f05dedde1376c717559fa2e494b83e859120268c467d0c6` |
| 14 | `theorem` | [Commute.mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/commute-mul-pow--592b8e629d6ff1d525fab62d.md) | 148 | `result-track:592b8e629d6ff1d525fab62d4389077f684e19314bb3ec897a03e3328b366a54` |
| 15 | `theorem` | [pow_mul_comm'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-mul-comm--5215312abeeeef66859610ed.md) | 156 | `result-track:5215312abeeeef66859610ed1b090394364c800c2a1b1e2df01e903e63db77af` |
| 16 | `theorem` | [pow_boole](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-boole--86890e8bf82a955c70de0346.md) | 162 | `result-track:86890e8bf82a955c70de0346e3e751a950f77f2d871ac92babd0e527ac94861c` |
| 17 | `theorem` | [pow_right_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-right-comm--67d266c67bf8e4fb2a9dd924.md) | 167 | `result-track:67d266c67bf8e4fb2a9dd92429215951815707e945d940e43aaf06ffada6d75b` |
| 18 | `theorem` | [pow_mul_pow_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-mul-pow-sub--43a4379f3c81f047657ef0df.md) | 173 | `result-track:43a4379f3c81f047657ef0df3011603e6a441686b5658fad81bfe9771c28658a` |
| 19 | `theorem` | [pow_sub_mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-sub-mul-pow--72e265d17e613fee04a59d70.md) | 179 | `result-track:72e265d17e613fee04a59d70b664e354fd5a1f1fe7fb721dcd8298d35ffad7dc` |
| 20 | `theorem` | [pow_eq_pow_mod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-eq-pow-mod--214c63af1e66de9ee1662b17.md) | 186 | `result-track:214c63af1e66de9ee1662b176956364b5a561ed4c7f7267790c345dfd92405ba` |
| 21 | `theorem` | [pow_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-mul-comm--d718dd14aee746ce299b49ca.md) | 195 | `result-track:d718dd14aee746ce299b49ca4577d56612a4f98531e9892352e2173445597325` |
| 22 | `theorem` | [pow_bit0](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-bit0--7ed454ebc9c180d93050b879.md) | 205 | `result-track:7ed454ebc9c180d93050b879445f81df76c56570543530649d4b1678067cc4a2` |
| 23 | `theorem` | [pow_bit1](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-bit1--cde3fb98fd80b05492627acd.md) | 211 | `result-track:cde3fb98fd80b05492627acdf51a40fcd602a44424abe77dea21f266294c750c` |
| 24 | `theorem` | [pow_bit0'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-bit0--3d325444f32aec2095fd46da.md) | 217 | `result-track:3d325444f32aec2095fd46da28d1cfa9ff2f3af568e04a42da4f6e543109b062` |
| 25 | `theorem` | [pow_bit1'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-bit1--4b3a06fe723fcfcbf68db531.md) | 223 | `result-track:4b3a06fe723fcfcbf68db5319c13f376de084c4d401c5db7393fc3fe1f332f1f` |
| 26 | `theorem` | [pow_mul_pow_eq_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-mul-pow-eq-one--d9c09f12e470b5538a2f36a6.md) | 231 | `result-track:d9c09f12e470b5538a2f36a6f7838fadd3a0356fb361f0b3d4cee10ef64b3af8` |
| 27 | `theorem` | [dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/dvd-pow--c0c3765f2e6c54a9ca402bc2.md) | 241 | `result-track:c0c3765f2e6c54a9ca402bc2af46d5784382500291f02400543187b468e3b7c3` |
| 28 | `theorem` | [dvd_pow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/dvd-pow-self--d6c5480a86fa3ffa78709f94.md) | 250 | `result-track:d6c5480a86fa3ffa78709f945dd9e7de30872441af0141a95e0bc7f3f783b177` |
| 29 | `theorem` | [mul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/mul-pow--72965bea09e00e8e8d727e1d.md) | 265 | `result-track:72965bea09e00e8e8d727e1debc579cdd6b08485f6030a6aab776b42b99b9c2d` |
| 30 | `def` | [powMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/powmonoidhom--fe2d026aca3d9a884f54ecc7.md) | 275 | `declaration-track:fe2d026aca3d9a884f54ecc71a68625d866f427334bbf4e4284b63ee8485f382` |
| 31 | `theorem` | [zpow_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-one--03bc50be4674644aecc873ae.md) | 293 | `result-track:03bc50be4674644aecc873ae61fb1a26fc173d9de0732c297539ea32e639b400` |
| 32 | `theorem` | [zpow_two](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-two--946b23c94039c9afe8801599.md) | 300 | `result-track:946b23c94039c9afe8801599fb3bed304bfd582661d58e662627634a7dddf607` |
| 33 | `theorem` | [zpow_neg_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-neg-one--d8942ea670ee3e76277f66fa.md) | 307 | `result-track:d8942ea670ee3e76277f66fa621ab63aa10129f58c54efceb3b6cef1a9776bed` |
| 34 | `theorem` | [zpow_neg_coe_of_pos](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-neg-coe-of-pos--edb84c883836b274aaf859d4.md) | 313 | `result-track:edb84c883836b274aaf859d4a7add116ccf2bf6f46158e7965b6f1330a642b24` |
| 35 | `theorem` | [inv_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/inv-pow--7b3a36be5330ced267fb3877.md) | 325 | `result-track:7b3a36be5330ced267fb38777e6d190e6c3a020bfbc88920a9ef8bfeeebc68bb` |
| 36 | `theorem` | [one_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/one-zpow--c6945e4e597f456d11c863f6.md) | 333 | `result-track:c6945e4e597f456d11c863f6a14c5ccba9f64bedcdcbe7733eb2438b0facfe67` |
| 37 | `theorem` | [zpow_neg](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-neg--c758a3d5286b267f19dafdfb.md) | 340 | `result-track:c758a3d5286b267f19dafdfbc08f89c9d259237776a823abad52c714e19b06bd` |
| 38 | `theorem` | [mul_zpow_neg_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/mul-zpow-neg-one--70b76b0114bfed45c3727f7e.md) | 352 | `result-track:70b76b0114bfed45c3727f7edd79c4a6d59b0a0fd3e43cae9617813bc2fe5628` |
| 39 | `theorem` | [inv_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/inv-zpow--7b716c5f394073d4ad87583c.md) | 358 | `result-track:7b716c5f394073d4ad87583c4aa72fcd05e184fec2b80da991d524a96cc7875e` |
| 40 | `theorem` | [inv_zpow'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/inv-zpow--e85a36c6f7519d8640a36d8f.md) | 365 | `result-track:e85a36c6f7519d8640a36d8f2cb4c37607c42be50add660bc58564237be6d0b7` |
| 41 | `theorem` | [one_div_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/one-div-pow--d4a4e77f016b2959fbab09ff.md) | 370 | `result-track:d4a4e77f016b2959fbab09ff8a37afff30926ecc86d2fae50e41a386dbbbd3bd` |
| 42 | `theorem` | [one_div_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/one-div-zpow--0cc452b33519b649e186fcf0.md) | 375 | `result-track:0cc452b33519b649e186fcf01c88e3691cc2b54b5d9f4a46f1641494e5a1aa52` |
| 43 | `theorem` | [Commute.mul_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/commute-mul-zpow--26129d51e2a7be8aad10a684.md) | 380 | `result-track:26129d51e2a7be8aad10a6840c30b14d95895f4d6e9b1a447f3cda683bc0c3b5` |
| 44 | `theorem` | [mul_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/mul-zpow--c89b8e00dce01ecd9ea4b13f.md) | 393 | `result-track:c89b8e00dce01ecd9ea4b13fd0846249b7b48b22b3bd406ad958bf68d6fb2855` |
| 45 | `theorem` | [div_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/div-pow--5d2e4637dad22b4c842a1245.md) | 399 | `result-track:5d2e4637dad22b4c842a1245c1b9c87880259eb8cf09400063dd403720c3842e` |
| 46 | `theorem` | [div_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/div-zpow--fd954fb445ed0c7834b1b01d.md) | 405 | `result-track:fd954fb445ed0c7834b1b01db7b836612a4aa7d715f49f659275020a6f526f92` |
| 47 | `def` | [zpowGroupHom](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpowgrouphom--97ef021f1fb18e31e7c72f15.md) | 415 | `declaration-track:97ef021f1fb18e31e7c72f152dfebbcca75042c67509f3430918af91e4c7c943` |
| 48 | `theorem` | [pow_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-sub--7e7b40602741a8076b12f50c.md) | 431 | `result-track:7e7b40602741a8076b12f50c9e593326a36e5f054d3e91f2af87aebccaa57838` |
| 49 | `theorem` | [pow_inv_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-inv-comm--76bb6f44756a59bb9592b64b.md) | 437 | `result-track:76bb6f44756a59bb9592b64b3c85d81fe10f382c778bcc403628ba2f97d11c26` |
| 50 | `theorem` | [inv_pow_sub](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/inv-pow-sub--9555ee0de3d48e2af992e8c4.md) | 443 | `result-track:9555ee0de3d48e2af992e8c4ea4865acccd237aa9357ee4f03994bac7226958f` |
| 51 | `theorem` | [pow_dvd_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/pow-dvd-pow--257665a20562220a71a8d85a.md) | 450 | `result-track:257665a20562220a71a8d85a970a0bb4b5fad7645b010be46e25919bba5f9b5e` |
| 52 | `theorem` | [ofAdd_nsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/ofadd-nsmul--fd53defe9e2ccf0201954b20.md) | 454 | `result-track:fd53defe9e2ccf0201954b2059472d3d19a7bb0f5e3de2778644b2808bbd54d3` |
| 53 | `theorem` | [ofAdd_zsmul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/ofadd-zsmul--ea0451fa6b407ad6b8266e40.md) | 459 | `result-track:ea0451fa6b407ad6b8266e407025f5c9efe1db0ad27d3ef7f2764bdc9b9eab06` |
| 54 | `theorem` | [ofMul_pow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/ofmul-pow--9fbfb57d674a94086496c941.md) | 464 | `result-track:9fbfb57d674a94086496c9413e3b48395847728b91cb4ee1e04a3c72c480a03c` |
| 55 | `theorem` | [ofMul_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/ofmul-zpow--3e55e09a92615db3f2b856aa.md) | 468 | `result-track:3e55e09a92615db3f2b856aa762543117c31b2e9d192b27d16dee4556a05be8a` |
| 56 | `theorem` | [SemiconjBy.zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/semiconjby-zpow-right--20f6388ea31f9f653a698f05.md) | 474 | `result-track:20f6388ea31f9f653a698f05e7d6beeaa0488988c5c0621d09d48535e4497ffa` |
| 57 | `theorem` | [zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-right--34c24d3bdbf7b1ef68412531.md) | 488 | `result-track:34c24d3bdbf7b1ef684125311ade0f0fa75ed61a3d1729212584bec6bcd1b9a8` |
| 58 | `theorem` | [zpow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-left--54b70f284b755f9fface365b.md) | 494 | `result-track:54b70f284b755f9fface365b942052d1b5133e72e390edfc0e3fdbcbd661b612` |
| 59 | `theorem` | [zpow_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-zpow--73acc61330d48274cb9840cc.md) | 500 | `result-track:73acc61330d48274cb9840ccc0eee805a096d019a38602d09ec327ac823a5f27` |
| 60 | `theorem` | [self_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/self-zpow--d4249d4cdc0ed6f963cf6d36.md) | 508 | `result-track:d4249d4cdc0ed6f963cf6d360f49ec1847a56d66dbb793e25c09856fc605b214` |
| 61 | `theorem` | [zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-self--c7165750784ccf3f1af6e81a.md) | 514 | `result-track:c7165750784ccf3f1af6e81a2e0321c312290c09dc83d0af9489c813c38324d3` |
| 62 | `theorem` | [zpow_zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant10b8cc09b3986afee67579ca7b5e3291ae3c32707c9203e71818c6e56f1f2774.lean/declarations/zpow-zpow-self--567be5ad9e35d12fc03a4002.md) | 520 | `result-track:567be5ad9e35d12fc03a40022baf038c5fdedf5c4bd0130bb88d746a44cb2d17` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
