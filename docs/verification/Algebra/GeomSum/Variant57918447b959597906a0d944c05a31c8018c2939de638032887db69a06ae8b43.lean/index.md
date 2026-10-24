# Verification target: GRWTSK.Algebra.GeomSum.Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f5c350c832d77e1042ffbc62a6358ef019e759b",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/index.md) · [Full source](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f5c350c832d77e1042ffbc62a6358ef019e759b`.

Source path: `GRWTSK/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [geom_sum_succ](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-succ--8f8b04bad0f97b4167e2a095.md) | 54 | `result-track:8f8b04bad0f97b4167e2a0951ea125115b80c46b34661b6583ea66925794471e` |
| 2 | `theorem` | [geom_sum_succ'](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-succ--5fe59419bb9701bc936e7172.md) | 59 | `result-track:5fe59419bb9701bc936e7172dd937c45cb366197c9c333e06b56c8376833fe67` |
| 3 | `theorem` | [geom_sum_zero](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-zero--7ae154a22f76540e13bdbbb0.md) | 64 | `result-track:7ae154a22f76540e13bdbbb00e3829bc4300ae1fb2e8292673814f298284bafc` |
| 4 | `theorem` | [geom_sum_one](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-one--b1fa678b7e5938b59e69122d.md) | 68 | `result-track:b1fa678b7e5938b59e69122d754e185a3b26466e586283e766f1b6d820c71bbd` |
| 5 | `theorem` | [geom_sum_two](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-two--7a8cfc5bee65ce4af3701651.md) | 72 | `result-track:7a8cfc5bee65ce4af3701651df2df1606c5aac14b7a726f79f95bc149aad957b` |
| 6 | `theorem` | [zero_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/zero-geom-sum--b5b1c9cdffd92a64a57ed372.md) | 76 | `result-track:b5b1c9cdffd92a64a57ed37200bbe55e53ed984c25ee30e25cb76029de8910d2` |
| 7 | `theorem` | [one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/one-geom-sum--5081593a2a31638f4bdb6784.md) | 84 | `result-track:5081593a2a31638f4bdb6784172f8b94581884afe29da357e2e74891acf61eb3` |
| 8 | `theorem` | [op_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/op-geom-sum--ea02c0eeb4cba208553a4f0b.md) | 89 | `result-track:ea02c0eeb4cba208553a4f0b687be734b010be9f2bd453d195bd02e7c796c2b6` |
| 9 | `theorem` | [op_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/op-geom-sum--b17d6c3a928f18eef44a72f4.md) | 95 | `result-track:b17d6c3a928f18eef44a72f4f842940297674d30db21e86fea7ebe525838528c` |
| 10 | `theorem` | [geom_sum₂_with_one](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-with-one--37875f37e3f79b7f47648982.md) | 105 | `result-track:37875f37e3f79b7f47648982e110d4315cb26bfd3e67a7c6958d6c4ef2d95602` |
| 11 | `theorem` | [Commute.geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-geom-sum-mul-add--419ab0a022172b38abc3eeaa.md) | 111 | `result-track:419ab0a022172b38abc3eeaadd3048a284f29e639515d64ef743fd8ce1b4c687` |
| 12 | `theorem` | [neg_one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/neg-one-geom-sum--bb74e7b262acc9597d2be0aa.md) | 140 | `result-track:bb74e7b262acc9597d2be0aa12478c26e300142127631a2c610989933b0a12d9` |
| 13 | `theorem` | [geom_sum₂_self](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-self--681d308f091102b058e6bc40.md) | 150 | `result-track:681d308f091102b058e6bc40912fab4139a27c38e6c47fd2b1985eecff5e682e` |
| 14 | `theorem` | [geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-mul-add--6062f6862470da1f030fd59a.md) | 164 | `result-track:6062f6862470da1f030fd59a17b83b213d2758d955445ffaeb000a188a452050` |
| 15 | `theorem` | [geom_sum_mul_add](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-mul-add--8399a705f4b3f064f0ef0e8f.md) | 169 | `result-track:8399a705f4b3f064f0ef0e8fc5e72162c43ebf5a5744368f572fcd648836547d` |
| 16 | `theorem` | [Commute.geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-geom-sum-mul--5e215d439e07c4fd33240670.md) | 176 | `result-track:5e215d439e07c4fd33240670c8811ba2951efc90a9f113026dec57e502a8c616` |
| 17 | `theorem` | [Commute.mul_neg_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-mul-neg-geom-sum--dca4358ee5889bd9dfa36022.md) | 183 | `result-track:dca4358ee5889bd9dfa36022717f89e40382e5ea9cc5cdd13977142e970ddc34` |
| 18 | `theorem` | [Commute.mul_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-mul-geom-sum--061c30d15b99da5a0c0b62a3.md) | 190 | `result-track:061c30d15b99da5a0c0b62a3d6ea8fb1f488e180eec0f4be8b4270a1343ec1f7` |
| 19 | `theorem` | [geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-mul--39151047f73dc6de07ee649a.md) | 195 | `result-track:39151047f73dc6de07ee649a9a0fc1b9a8e008407934d4a58450faa0e7f2946e` |
| 20 | `theorem` | [sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/sub-dvd-pow-sub-pow--a2ae0da7787e035b83c62db7.md) | 200 | `result-track:a2ae0da7787e035b83c62db778f06518dcaf0aead140ee58982b92a75dd4b663` |
| 21 | `theorem` | [nat_sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/nat-sub-dvd-pow-sub-pow--e859ab0befbe55d0157933bf.md) | 204 | `result-track:e859ab0befbe55d0157933bf59ca73c623d936e0bd1af0019bc764025f8f1005` |
| 22 | `theorem` | [Odd.add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/odd-add-dvd-pow-add-pow--9caba3bbf9bca7ad5ec5fa44.md) | 212 | `result-track:9caba3bbf9bca7ad5ec5fa443b25819a622082f497c28cdc79f34c454ce773fc` |
| 23 | `theorem` | [Odd.nat_add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/odd-nat-add-dvd-pow-add-pow--3be26cc5bf86838e60853720.md) | 219 | `result-track:3be26cc5bf86838e608537209e8dc6f417253603cde892a8e3f29b095635fa5f` |
| 24 | `theorem` | [geom_sum_mul](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-mul--3c1d81fe262274fc180555a3.md) | 223 | `result-track:3c1d81fe262274fc180555a3c6810dbdebeaf21e933f1bb3b1c42c8a461f4241` |
| 25 | `theorem` | [mul_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/mul-geom-sum--db6e0c9be7e71c9fa3e5f9e7.md) | 229 | `result-track:db6e0c9be7e71c9fa3e5f9e7fea5bef0caf0fd8839a2c4f793fcb678897b1490` |
| 26 | `theorem` | [geom_sum_mul_neg](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-mul-neg--d38e82e9d804ce891f33999a.md) | 233 | `result-track:d38e82e9d804ce891f33999a41c76498ef9253055d975f6bd4dc54f89bd74adb` |
| 27 | `theorem` | [mul_neg_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/mul-neg-geom-sum--896a0a83dafd96f727f9b9e3.md) | 240 | `result-track:896a0a83dafd96f727f9b9e38a26daaed6eb7132d079b9528b472414fbcd7d00` |
| 28 | `theorem` | [Commute.geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-geom-sum-comm--a903a48d1601d5beab688546.md) | 244 | `result-track:a903a48d1601d5beab6885468f2f0550abccacee3f05379717d631b5e1de09ee` |
| 29 | `theorem` | [geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-comm--87018125f66064d1f0574cee.md) | 254 | `result-track:87018125f66064d1f0574cee5bdb71f4c852a36586f45f0e45be8a89d01fd80b` |
| 30 | `theorem` | [Commute.geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-geom-sum--e95c367397c610eea08b37f8.md) | 259 | `result-track:e95c367397c610eea08b37f889cdf515769b3a6d0a83fc2012801cadee2fcf00` |
| 31 | `theorem` | [geom₂_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum--463fd0e5307e3c25b5ea5c3d.md) | 265 | `result-track:463fd0e5307e3c25b5ea5c3de4cea10b920ab83dcb2b09a67cb61c4a022898aa` |
| 32 | `theorem` | [geom_sum_eq](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-eq--53b9215354916f8633709275.md) | 270 | `result-track:53b9215354916f8633709275324d41028aa51b6446f895ec96c9a819f44f0ea1` |
| 33 | `theorem` | [Commute.mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-mul-geom-sum-ico--ad5cf3c7a178a73d45d72a1f.md) | 276 | `result-track:ad5cf3c7a178a73d45d72a1f07b8688af9a342105dc6bac132c54d7902a07306` |
| 34 | `theorem` | [Commute.geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-geom-sum-succ-eq--ae5e9b2bd04d3c53a8a1453b.md) | 296 | `result-track:ae5e9b2bd04d3c53a8a1453b39fd7744841aef6f29014517c65f3f89bdb4a175` |
| 35 | `theorem` | [geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-succ-eq--e895a2725a1fa9e1ac1f19b0.md) | 310 | `result-track:e895a2725a1fa9e1ac1f19b0cb2b4e840f0481771826ce961422c16c216bc500` |
| 36 | `theorem` | [mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/mul-geom-sum-ico--b8237c406da1ff63356b32ee.md) | 316 | `result-track:b8237c406da1ff63356b32ee11703299d4134a2111dce4f5517031860946f1a1` |
| 37 | `theorem` | [Commute.geom_sum₂_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-geom-sum-ico-mul--834b7b0eaab62dcde5b000eb.md) | 321 | `result-track:834b7b0eaab62dcde5b000eb31bc74009b434912823670cf5ca3aa9048cc2382` |
| 38 | `theorem` | [geom_sum_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-ico-mul--bebbfc4d84b351e5c88f2488.md) | 336 | `result-track:bebbfc4d84b351e5c88f2488dad398a26277831dfca9c9422a4f6253ec2b468a` |
| 39 | `theorem` | [geom_sum_Ico_mul_neg](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-ico-mul-neg--d82202ebd93d297b2e3e49c8.md) | 341 | `result-track:d82202ebd93d297b2e3e49c8d75b39838ac559413377affef21bff2759914da4` |
| 40 | `theorem` | [Commute.geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/commute-geom-sum-ico--605b5c96473c7a6e9ce43cc1.md) | 346 | `result-track:605b5c96473c7a6e9ce43cc1a5ea67ec0767286b34ade50a9d8a19c922ac72a4` |
| 41 | `theorem` | [geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-ico--e3bc1c5c59fab7b3c8073da1.md) | 353 | `result-track:e3bc1c5c59fab7b3c8073da1d0357e8664dc8c5284488c0d9a884bb3352af8fc` |
| 42 | `theorem` | [geom_sum_Ico](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-ico--b816200be29d7a0be21cbf2a.md) | 358 | `result-track:b816200be29d7a0be21cbf2aa49d92d4cbf66bd11b7b3d557a946272f1689173` |
| 43 | `theorem` | [geom_sum_Ico'](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-ico--05708a3882105009cf0c3030.md) | 363 | `result-track:05708a3882105009cf0c3030988a47da381f6965010bab054c5faff698f819b3` |
| 44 | `theorem` | [geom_sum_Ico_le_of_lt_one](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-ico-le-of-lt-one--8582baa9fdbeeb2014bb4a45.md) | 369 | `result-track:8582baa9fdbeeb2014bb4a4597227552021eef75aedb286eb27c2ed5cc412ccf` |
| 45 | `theorem` | [geom_sum_inv](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-inv--99286b5e8cfbc2b56e2eb831.md) | 381 | `result-track:99286b5e8cfbc2b56e2eb831386f5bfa60ffa3a7677740a67a0a80ae7ed06781` |
| 46 | `theorem` | [RingHom.map_geom_sum](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/ringhom-map-geom-sum--b7b45c7985cac2449ea93b5d.md) | 399 | `result-track:b7b45c7985cac2449ea93b5d0ad3ea881a3e67df26e02651db801b98345b9f80` |
| 47 | `theorem` | [RingHom.map_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/ringhom-map-geom-sum--83755677f459cfbcfe21407f.md) | 403 | `result-track:83755677f459cfbcfe21407f8fb055f8d67be0b04200361d4cb0b4a23dfcf098` |
| 48 | `theorem` | [Nat.pred_mul_geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/nat-pred-mul-geom-sum-le--412f77f332d613ec7e986cc6.md) | 411 | `result-track:412f77f332d613ec7e986cc6d4a93d35ec08be3284f55f913c2623483637473c` |
| 49 | `theorem` | [Nat.geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/nat-geom-sum-le--3d084e6773ab3599388bfe91.md) | 426 | `result-track:3d084e6773ab3599388bfe91b8deb6e842f12dbfd0c39032754c6804862f386d` |
| 50 | `theorem` | [Nat.geom_sum_Ico_le](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/nat-geom-sum-ico-le--11bbba34ec2b19d05bf4c137.md) | 436 | `result-track:11bbba34ec2b19d05bf4c13770b2b2d5828146121b01f22579a6ad00e777b310` |
| 51 | `theorem` | [geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-pos--f6f9cb2ed90ff25c0cc4f85b.md) | 458 | `result-track:f6f9cb2ed90ff25c0cc4f85ba59364be4da6b20b6d52d4fcaab0b999a497e330` |
| 52 | `theorem` | [geom_sum_pos_and_lt_one](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-pos-and-lt-one--8eae8c751ce67bb1ba059860.md) | 463 | `result-track:8eae8c751ce67bb1ba05986011f61fbd83a576843905c174964e73e357426ed6` |
| 53 | `theorem` | [geom_sum_alternating_of_le_neg_one](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-alternating-of-le-neg-one--5944cdf96542d8b41c65e115.md) | 476 | `result-track:5944cdf96542d8b41c65e1156b25097f905475d5c5042643381c7cb746ade935` |
| 54 | `theorem` | [geom_sum_alternating_of_lt_neg_one](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-alternating-of-lt-neg-one--08b6920d0479a0ecfa0002db.md) | 490 | `result-track:08b6920d0479a0ecfa0002db15240a9d2ade47ab658e5321ac35da801a429fa9` |
| 55 | `theorem` | [geom_sum_pos'](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-pos--3206ca24438760326dc86986.md) | 512 | `result-track:3206ca24438760326dc869863ec067dd6fcb960d110455374e503327f0328441` |
| 56 | `theorem` | [Odd.geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/odd-geom-sum-pos--ca8c5cac5f560e5741842fa1.md) | 522 | `result-track:ca8c5cac5f560e5741842fa17b535db60949516e5c0d701765f812664da0625c` |
| 57 | `theorem` | [geom_sum_pos_iff](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-pos-iff--ca75051e9e45d5c6da5d050b.md) | 535 | `result-track:ca75051e9e45d5c6da5d050b8738eadd4301ca5f390ed42247119cc129889e93` |
| 58 | `theorem` | [geom_sum_ne_zero](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-ne-zero--07b6dd8e62f6afef41200453.md) | 546 | `result-track:07b6dd8e62f6afef41200453790b14374b18f7cbf8418bf2e50b5529ebdb90f7` |
| 59 | `theorem` | [geom_sum_eq_zero_iff_neg_one](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-eq-zero-iff-neg-one--bfb86c568c1694c7f9d619e4.md) | 561 | `result-track:bfb86c568c1694c7f9d619e413f43c68242cc881c594135ccee5445b21077861` |
| 60 | `theorem` | [geom_sum_neg_iff](../../../../mathematics/Algebra/GeomSum/Variant57918447b959597906a0d944c05a31c8018c2939de638032887db69a06ae8b43.lean/declarations/geom-sum-neg-iff--dc4818784137e55ab342233a.md) | 572 | `result-track:dc4818784137e55ab342233a976dc01902a5b62c26f0ca09fe561c75762edcb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
