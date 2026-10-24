# Verification target: GRWTSK.Algebra.Basic.Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5faf3e6fc1dd4d9781d9c10551110f22c63a4d26",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5faf3e6fc1dd4d9781d9c10551110f22c63a4d26`.

Source path: `GRWTSK/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Hom.Instances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.NeZero` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Opposites` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulleft--e3b5c6ab147512d8fa592a4c.md) | 31 | `declaration-track:e3b5c6ab147512d8fa592a4cfb965970fa51b660cab0f9fa45817f7361a72d35` |
| 2 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulright--d3b41961f29be42a41e9cb66.md) | 37 | `declaration-track:d3b41961f29be42a41e9cb66d10108ef92e269e43dc723a9947816bdaf677a22` |
| 3 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulleft--7386a94c426d5005e7d2b9ec.md) | 47 | `declaration-track:7386a94c426d5005e7d2b9ec658d4ad2d247a653c20fdf4812f7c3b20114043c` |
| 4 | `lemma` | [coe_mulLeft](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/coe-mulleft--bde4ce239cbb103b3d58172b.md) | 52 | `result-track:bde4ce239cbb103b3d58172bf30f868119e70971802299e28cb59119b142a1ef` |
| 5 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulright--493347088105b20d2b9b7a2c.md) | 55 | `declaration-track:493347088105b20d2b9b7a2c88a18b936465f6a8af36c576e3b698a0b7580df6` |
| 6 | `lemma` | [coe_mulRight](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/coe-mulright--acce49f2268e367beaa3f014.md) | 60 | `result-track:acce49f2268e367beaa3f01462789f7ac94a5ca65cc1be8373b714dfe45b266f` |
| 7 | `lemma` | [mulRight_apply](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulright-apply--1a8d9607570a85abc8ad9270.md) | 62 | `result-track:1a8d9607570a85abc8ad92706c2f999c07206f12de37e3e0c349625801581e3f` |
| 8 | `def` | [mul](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mul--46958419b8c617b0cff9ab9d.md) | 71 | `declaration-track:46958419b8c617b0cff9ab9d2e90a335167b62ce8e4e9f60a5d1c2dc50546694` |
| 9 | `lemma` | [mul_apply](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mul-apply--4d68250551959c2d10daf8a6.md) | 76 | `result-track:4d68250551959c2d10daf8a6648f14bd58ccde2a82a81af5a6f577c24542c8f5` |
| 10 | `lemma` | [coe_mul](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/coe-mul--6be1f34f3a458f7a91d702eb.md) | 78 | `result-track:6be1f34f3a458f7a91d702eb498e4d197b65436cb135ee8ea7de5da5904759af` |
| 11 | `lemma` | [coe_flip_mul](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/coe-flip-mul--d951f02963222cefff51fd81.md) | 79 | `result-track:d951f02963222cefff51fd81f6b2116052349175ddbde6f054c7eb3c020f017a` |
| 12 | `lemma` | [map_mul_iff](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/map-mul-iff--24890ab5f62a4a30327ac77c.md) | 85 | `result-track:24890ab5f62a4a30327ac77cec20023adbd58f61dad6088b9d6fcd03bf377cad` |
| 13 | `lemma` | [mulLeft_eq_mulRight_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulleft-eq-mulright-iff-forall-commute--9503358276acb63223915b83.md) | 89 | `result-track:9503358276acb63223915b8364611972d75cc8e1e857b71db474c636a1397e6c` |
| 14 | `lemma` | [mulRight_eq_mulLeft_iff_forall_commute](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulright-eq-mulleft-iff-forall-commute--cd45cddd6d08c615b47b3398.md) | 92 | `result-track:cd45cddd6d08c615b47b3398bf6ba9727fcd400baf4ab92affb6551817cbf49a` |
| 15 | `def` | [mulLeft](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulleft--c4e965c59526ddbcb129a655.md) | 103 | `declaration-track:c4e965c59526ddbcb129a655db2888d7624ac719fe323e18f92fd7d8f7a474f2` |
| 16 | `def` | [mulRight](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulright--b892af9446700ead415bd460.md) | 107 | `declaration-track:b892af9446700ead415bd460bc5905ca4ae685c3ee9fefb8c4b7ceac79f03174` |
| 17 | `lemma` | [mulRight_eq_mulLeft](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulright-eq-mulleft--8a283e2590d49531b8a173ce.md) | 114 | `result-track:8a283e2590d49531b8a173ce227648138b0493944ade47ef32cb0a9f20c01a37` |
| 18 | `instance` | [MulOpposite.instHasDistribNeg](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/mulopposite-insthasdistribneg--e38b1039f083b7b8612d6fb5.md) | 129 | `declaration-track:e38b1039f083b7b8612d6fb598f36f979acb3ef47fca2a13578f1d19a658a718` |
| 19 | `theorem` | [vieta_formula_quadratic](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/vieta-formula-quadratic--cb2ec24098ad2115cb636717.md) | 147 | `result-track:cb2ec24098ad2115cb636717fe3d2bf43e76778b7cc3572ee9ad71f04e5513a7` |
| 20 | `theorem` | [succ_ne_self](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/succ-ne-self--1e975dd3572145f2a13783dd.md) | 155 | `result-track:1e975dd3572145f2a13783dd803b3f06a6119e226ea6e74dce17dc8c8079f9a9` |
| 21 | `theorem` | [pred_ne_self](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/pred-ne-self--b5f8062e09c51c18d55cfcea.md) | 158 | `result-track:b5f8062e09c51c18d55cfceaeb30e88e7ea668878a09e2276e870fa609e51c5d` |
| 22 | `lemma` | [IsLeftCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/isleftcancelmulzero-to-nozerodivisors--4bcee335a3c4ca955cd54dea.md) | 165 | `result-track:4bcee335a3c4ca955cd54dea0d240910e4c6d1149a8475812099b6a51bc90866` |
| 23 | `lemma` | [IsRightCancelMulZero.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/isrightcancelmulzero-to-nozerodivisors--fa92f43e808145430a76be13.md) | 170 | `result-track:fa92f43e808145430a76be13c66544529189d7da412771ad71dde2ef0ba9601a` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/instance--900a2716a40f680adc3e9ad5.md) | 175 | `declaration-track:900a2716a40f680adc3e9ad5fc16da6e65615554e6651ae06d6cce2bbb5cd0aa` |
| 25 | `lemma` | [isCancelMulZero_iff_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/iscancelmulzero-iff-nozerodivisors--dd729700edd59fcd2f3b29ab.md) | 186 | `result-track:dd729700edd59fcd2f3b29abe072fb9fb2b38cdb03ab848295750bda6c4d7075` |
| 26 | `lemma` | [NoZeroDivisors.to_isDomain](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/nozerodivisors-to-isdomain--35446182a9452e761e0a2a60.md) | 190 | `result-track:35446182a9452e761e0a2a6066ede2bd09cb0091a33989e96a27e11882288032` |
| 27 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/instance--1cfd5dc3ae6ab07c39267de6.md) | 194 | `declaration-track:1cfd5dc3ae6ab07c39267de6800d1a030384215fd57709af0fd3110000fe43e8` |
| 28 | `instance` | [Subsingleton.to_isCancelMulZero](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/subsingleton-to-iscancelmulzero--f57b2bd66efd420dc8b01bdc.md) | 198 | `declaration-track:f57b2bd66efd420dc8b01bdc23aa662f5c96ed06e14fd799b41180d29dc6fbd6` |
| 29 | `instance` | [Subsingleton.to_noZeroDivisors](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/subsingleton-to-nozerodivisors--573af0c75b507959da296b1a.md) | 202 | `declaration-track:573af0c75b507959da296b1a4a5032bfa18047d937eb4c69cedccce458a7f171` |
| 30 | `lemma` | [isDomain_iff_cancelMulZero_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/isdomain-iff-cancelmulzero-and-nontrivial--04b3361bd8749a4d59a9330e.md) | 205 | `result-track:04b3361bd8749a4d59a9330ef8e0fe255fb12fde4fc177110d3213127730c577` |
| 31 | `lemma` | [isCancelMulZero_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/iscancelmulzero-iff-isdomain-or-subsingleton--959894e1500c857c0731b5bb.md) | 209 | `result-track:959894e1500c857c0731b5bbaf1a8c2eec60abaeb727991f717563bd322ac476` |
| 32 | `lemma` | [isDomain_iff_noZeroDivisors_and_nontrivial](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/isdomain-iff-nozerodivisors-and-nontrivial--f76008930f3cb1b7bb9a3328.md) | 215 | `result-track:f76008930f3cb1b7bb9a33283ceb43c0d5f077572f4c53e38c49260e44038837` |
| 33 | `lemma` | [noZeroDivisors_iff_isDomain_or_subsingleton](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/nozerodivisors-iff-isdomain-or-subsingleton--5f843c5a03200c47e816a49e.md) | 219 | `result-track:5f843c5a03200c47e816a49ecdcf269db6c5349008a5d71673e8e030f1763db1` |
| 34 | `lemma` | [one_div_neg_one_eq_neg_one](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/one-div-neg-one-eq-neg-one--2c832ed1c071aa40d0ce06aa.md) | 228 | `result-track:2c832ed1c071aa40d0ce06aa7be758fb4be1e9a0867bc3b70776e9c7d955b7e2` |
| 35 | `lemma` | [one_div_neg_eq_neg_one_div](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/one-div-neg-eq-neg-one-div--3c4b45910da65eb53db070d9.md) | 232 | `result-track:3c4b45910da65eb53db070d95867069428636affb8dc1fb13a3e11db7938a85c` |
| 36 | `lemma` | [div_neg_eq_neg_div](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/div-neg-eq-neg-div--ca54fe6dd1b40f06531dc5ae.md) | 239 | `result-track:ca54fe6dd1b40f06531dc5ae6ae4a828c989d196cfc11920bfe868fcb3c9c57e` |
| 37 | `lemma` | [neg_div](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/neg-div--48ab2625670df1421d77be0f.md) | 246 | `result-track:48ab2625670df1421d77be0f35e99b9d4da191de7e3c07aefdc667056281dd73` |
| 38 | `lemma` | [neg_div'](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/neg-div--96d12785e92b24158d625e9c.md) | 250 | `result-track:96d12785e92b24158d625e9cf533faaccd1b9c98861c07bb5a839c3c01e3c25a` |
| 39 | `lemma` | [neg_div_neg_eq](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/neg-div-neg-eq--252099adc3fd044c70c5bddc.md) | 253 | `result-track:252099adc3fd044c70c5bddc6ec93714201cff939d9645a7b542271d37905286` |
| 40 | `lemma` | [neg_inv](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/neg-inv--4238d2ceb5605bf4efbfd61e.md) | 255 | `result-track:4238d2ceb5605bf4efbfd61efd2706d3e80f49f946d02377c7ce49792d0eb234` |
| 41 | `lemma` | [div_neg](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/div-neg--20025573404f99c51528f485.md) | 257 | `result-track:20025573404f99c51528f4856d45a5030fb730dae762c3b3d15dcefedb585a7b` |
| 42 | `lemma` | [inv_neg](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/inv-neg--31489123ca5cb810da0075f3.md) | 260 | `result-track:31489123ca5cb810da0075f3be43d93c3f373fd2110921bf26b15b014c0df134` |
| 43 | `lemma` | [inv_neg_one](../../../../mathematics/Algebra/Basic/Variant56f921648c068b9bea90b29e3e6233c56f871a759ae80c779796c2d23d40ddd2.lean/declarations/inv-neg-one--94cc2173b68d09d5fb95b0e1.md) | 265 | `result-track:94cc2173b68d09d5fb95b0e1b2eca7a637b324491001d70fb328fa5be8f9d7e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
