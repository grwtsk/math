# Verification target: GRWTSK.Algebra.Basic.Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b5b92cd30f752cebe92841217a3d9baf4e3529c",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b5b92cd30f752cebe92841217a3d9baf4e3529c`.

Source path: `GRWTSK/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNontrivialInt](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instnontrivialint--d3b0b7132fea2a0cff3bd034.md) | 28 | `declaration-track:d3b0b7132fea2a0cff3bd03453cfff2683555596b584e5498d6da6488e1dcbc9` |
| 2 | `instance` | [instCommRingInt](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instcommringint--953658adb1ff96699d86ffab.md) | 30 | `declaration-track:953658adb1ff96699d86ffab7cc8a096bebad009ea9e1324f6f15fbeb37103f4` |
| 3 | `lemma` | [cast_id](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/cast-id--18199d0bc9b7fb9be1e6dd5d.md) | 65 | `result-track:18199d0bc9b7fb9be1e6dd5db47647e0539f9a7c741f429f81813c923e1ac9ab` |
| 4 | `lemma` | [ofNat_eq_cast](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/ofnat-eq-cast--2437d081d650151dee476999.md) | 67 | `result-track:2437d081d650151dee47699962f24b72675f62f1af85e881d28596e73334c19a` |
| 5 | `lemma` | [cast_Nat_cast](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/cast-nat-cast--32e709480112c3f26cc96a4f.md) | 69 | `result-track:32e709480112c3f26cc96a4fc74c869e52e74f4f6c118f372ff3a4667a340185` |
| 6 | `lemma` | [cast_eq_cast_iff_Nat](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/cast-eq-cast-iff-nat--6d5fd9c69b9fa10d1bbf092b.md) | 73 | `result-track:6d5fd9c69b9fa10d1bbf092b01258e384f129515ef7335d5845764aab7325e78` |
| 7 | `lemma` | [natAbs_cast](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/natabs-cast--ebd2f9cae8a86001b87d736b.md) | 76 | `result-track:ebd2f9cae8a86001b87d736bc2acff3dfbf1f4c780b5d71205c981bd2f291dc2` |
| 8 | `lemma` | [coe_nat_sub](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-nat-sub--3fc32d781e905ab54051fc7e.md) | 79 | `result-track:3fc32d781e905ab54051fc7e16c0544b184661d08b46af8e8c91fff618cbf04f` |
| 9 | `theorem` | [_root_.zpow_coe_nat](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/root-zpow-coe-nat--4837ed4ca13c747d97b393a5.md) | 82 | `result-track:4837ed4ca13c747d97b393a5468f1e41ca92ddb44167de0f4ab0f1c6eb5b3dec` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--f09623f5aff4ae70c232305e.md) | 91 | `declaration-track:f09623f5aff4ae70c232305e0aefc13a4d8878cda0c660183e3e36735829069a` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--fc5e60ecd227d5fcf95e9a62.md) | 92 | `declaration-track:fc5e60ecd227d5fcf95e9a620f1b49cece048a6e21610c362b99ad3df5b1caf5` |
| 12 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--38883870482a8271159fea39.md) | 93 | `declaration-track:38883870482a8271159fea391dfcb56d0b9690541cb8ee9ff6b8b0ce423fa61a` |
| 13 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--ddbfcc5c0b503cf164774330.md) | 94 | `declaration-track:ddbfcc5c0b503cf164774330301b29469da07d9f606f2d75b7185ef655aeec1c` |
| 14 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--7add0d58366c5edc0cd1a98a.md) | 95 | `declaration-track:7add0d58366c5edc0cd1a98a48d19f99267cb86ae2fb7e0472c1b9f57ac5742b` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--69e6c502f524dd582cb843ae.md) | 96 | `declaration-track:69e6c502f524dd582cb843ae177e7f85f191bb47b5b035f7f06c583a22d7aa0a` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--f2cb379ebd73ce5838f754b8.md) | 97 | `declaration-track:f2cb379ebd73ce5838f754b8c7606b71159ccb211fb9f1d9edff20ddd9abd1cc` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--5afe1be61772371846aa5893.md) | 98 | `declaration-track:5afe1be61772371846aa5893b25f2fb731fd37887605dc97642fedf9456ff39d` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--fe752c474b6b92f501b3a677.md) | 99 | `declaration-track:fe752c474b6b92f501b3a677557e26cae66473395647ce4b03ca5dc0bce57ee2` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--b90727d171c703e57041a4fc.md) | 100 | `declaration-track:b90727d171c703e57041a4fc093ee2528b8d4498a50578e5e2bac6a55c9d3acb` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--59ae855e41203c541da28467.md) | 101 | `declaration-track:59ae855e41203c541da284679c593a42c0499816b8705e6ebb965d19d7f3c5bf` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--74da011d008972b5c7b8a227.md) | 102 | `declaration-track:74da011d008972b5c7b8a227a2c8cc76d59322fa54f77f6d90b2d431c80cd068` |
| 22 | `instance` | [instRingInt](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instringint--b5ed9c0839f8172b9b792048.md) | 103 | `declaration-track:b5ed9c0839f8172b9b792048ed44d09516f753b3e8e888fdf696793f5c3fb3fe` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/instance--178b300567abc6e8711903b3.md) | 104 | `declaration-track:178b300567abc6e8711903b33387f2528c4b0dfff31fc8c0162588344f3520b6` |
| 24 | `theorem` | [coe_nat_inj'](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-nat-inj--5d9bff2175269f0e5983c7ce.md) | 116 | `result-track:5d9bff2175269f0e5983c7ce265248c29101768a06dd8cc5378c0f0bae82d1b7` |
| 25 | `theorem` | [coe_nat_strictMono](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-nat-strictmono--2f356fec0c0cf15b29595a18.md) | 119 | `result-track:2f356fec0c0cf15b29595a186183afbab66e3de48ea63e8e4b24653a2c26dbb1` |
| 26 | `theorem` | [coe_nat_nonneg](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-nat-nonneg--88795b97899a951028b3c52e.md) | 122 | `result-track:88795b97899a951028b3c52ee9a4252cb4ce3ccf2470b6c1f19ffc25f4f64df1` |
| 27 | `theorem` | [sign_coe_add_one](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/sign-coe-add-one--e02703a2189d61fbe1ff0abd.md) | 129 | `result-track:e02703a2189d61fbe1ff0abdae63ee5e724951578a17397c71f0cc3004cd59e8` |
| 28 | `theorem` | [sign_negSucc](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/sign-negsucc--f6d16a48b5fa15b9a59adc8c.md) | 134 | `result-track:f6d16a48b5fa15b9a59adc8c2d1d93818e2659e5c452f6d29f3f1bf52563c694` |
| 29 | `def` | [succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/succ--e806282e4e32358181e14904.md) | 141 | `declaration-track:e806282e4e32358181e14904402a610a87f849f2476fab0e53283aa9fd9cb1e6` |
| 30 | `def` | [pred](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/pred--a2693a349134105d30916403.md) | 145 | `declaration-track:a2693a349134105d309164031ce79bae9d0c37bf60c89cd9c8e138377c5f7d56` |
| 31 | `theorem` | [nat_succ_eq_int_succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/nat-succ-eq-int-succ--f64e752afa0f05682e69ac73.md) | 148 | `result-track:f64e752afa0f05682e69ac73b6f075a78257a5bc9657aacae095c83f88828f2d` |
| 32 | `theorem` | [pred_succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/pred-succ--c04baca7c7a9b73988549793.md) | 151 | `result-track:c04baca7c7a9b739885497937ce0f9cf2b6fc6c5ef90ca175914cce23c262640` |
| 33 | `theorem` | [succ_pred](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/succ-pred--bcfa185e902a1fe62103f6dd.md) | 154 | `result-track:bcfa185e902a1fe62103f6dd359d448423e7460e8aa1dfd25a068c49b39386c6` |
| 34 | `theorem` | [neg_succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/neg-succ--225f85a87087bddbe0ac2e9d.md) | 157 | `result-track:225f85a87087bddbe0ac2e9dac65e491e9b35200bad5bd5b4b6a231c7ac46be6` |
| 35 | `theorem` | [succ_neg_succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/succ-neg-succ--b4d055e3a76acb3030fbc748.md) | 160 | `result-track:b4d055e3a76acb3030fbc7486f4f638fb5bc7b960967c58269500c34653f1e06` |
| 36 | `theorem` | [neg_pred](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/neg-pred--05443e1785135afdb0c0cc58.md) | 163 | `result-track:05443e1785135afdb0c0cc58af4998f4f1893f0df1ba2a56050291ce29e5f4f9` |
| 37 | `theorem` | [pred_neg_pred](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/pred-neg-pred--5b0ebfd330500ad57af3b041.md) | 167 | `result-track:5b0ebfd330500ad57af3b04197f75c38c17f1e118e8e0bbf9596f30c49f5d86f` |
| 38 | `theorem` | [pred_nat_succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/pred-nat-succ--f92e5302ad15a69afe5a16c3.md) | 170 | `result-track:f92e5302ad15a69afe5a16c35e1d7d27d27d410b32fdc87bc6e01a8a620c64c8` |
| 39 | `theorem` | [neg_nat_succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/neg-nat-succ--92434b5c4077273b1e19122d.md) | 173 | `result-track:92434b5c4077273b1e19122d6ba2f936aa278f83d2850eb6baf7cee14d2aee43` |
| 40 | `theorem` | [succ_neg_nat_succ](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/succ-neg-nat-succ--dfe173b14baea2e9c17317a6.md) | 176 | `result-track:dfe173b14baea2e9c17317a60f3346bb3bdb0106a8045ae72f38abc517134b7b` |
| 41 | `theorem` | [coe_pred_of_pos](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-pred-of-pos--16aadc450eb6a78530d3a6b1.md) | 179 | `result-track:16aadc450eb6a78530d3a6b142f03ddd7209611051be098b63b6eb1806d01cdb` |
| 42 | `theorem` | [induction_on](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/induction-on--ab91a5b7a548647fd2e82c60.md) | 183 | `result-track:ab91a5b7a548647fd2e82c60b6f44ca169986043e84c8f46e0bd6f873472ab59` |
| 43 | `theorem` | [natAbs_surjective](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/natabs-surjective--9b6710d0ae877d3ab31db3fd.md) | 199 | `result-track:9b6710d0ae877d3ab31db3fd25cd4d131d08275b3be0f09776c4fde6ffa7bc17` |
| 44 | `theorem` | [natAbs_ne_zero_of_ne_zero](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/natabs-ne-zero-of-ne-zero--24c92461a472d91e1781ed31.md) | 211 | `result-track:24c92461a472d91e1781ed313be1b8c4b37cbf2da2f62b3b27fe6ea6cc5ce6e1` |
| 45 | `theorem` | [coe_nat_div](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-nat-div--2305d1ed899708d9abfa52ba.md) | 230 | `result-track:2305d1ed899708d9abfa52ba22977994ff416915cf533ec1c02fb487ff559152` |
| 46 | `theorem` | [coe_nat_ediv](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-nat-ediv--f1734ac2615572a7cd8846b9.md) | 233 | `result-track:f1734ac2615572a7cd8846b9d770420348913fed1a2f829e049d6f88b94ee9d2` |
| 47 | `theorem` | [ediv_of_neg_of_pos](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/ediv-of-neg-of-pos--f49ed0f3e42caeda11eb917e.md) | 239 | `result-track:f49ed0f3e42caeda11eb917e2279d5aacfde434c3fe678a0b6deb3117c5ca6b0` |
| 48 | `theorem` | [coe_nat_mod](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/coe-nat-mod--afbfcdaf7fd8f652bb4edc15.md) | 254 | `result-track:afbfcdaf7fd8f652bb4edc151acd2ed2e38713751f5917beb856ac943df035af` |
| 49 | `theorem` | [sign_coe_nat_of_nonzero](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/sign-coe-nat-of-nonzero--fb4094ecf63babad49d9258c.md) | 280 | `result-track:fb4094ecf63babad49d9258ce6fb665176cfa1222805449aa6e82fc5e9d50c92` |
| 50 | `theorem` | [toNat_coe_nat](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/tonat-coe-nat--2884858c54f8b024b358ee3c.md) | 294 | `result-track:2884858c54f8b024b358ee3c7adefdebd464939892862b9f3292a4e8b2f1b487` |
| 51 | `theorem` | [toNat_coe_nat_add_one](../../../../mathematics/Algebra/Basic/Variant6161b9d28a585d61f4ea8b86307fca826177c158e543a26d69249ee06b5bc812.lean/declarations/tonat-coe-nat-add-one--ef7f96988501c52e1f46e3b3.md) | 297 | `result-track:ef7f96988501c52e1f46e3b3657e88c6756a1eecbeab9308be96dc5241a1c58b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
