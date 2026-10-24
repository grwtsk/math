# Verification target: GRWTSK.Algebra.Instances.Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41ff68bb45fe0584c241a79e75740d917cbd37d9",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/index.md) · [Full source](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41ff68bb45fe0584c241a79e75740d917cbd37d9`.

Source path: `GRWTSK/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.InjSurj` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instZero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instzero--24af32f601ddc766685440e0.md) | 61 | `declaration-track:24af32f601ddc766685440e0dcc70641e1dd1830f47c19f5a272066e5b971c93` |
| 2 | `instance` | [instOne](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instone--ee095191c3b7eb9c9d14a2cc.md) | 63 | `declaration-track:ee095191c3b7eb9c9d14a2cc70bc37805793a37d5c34bee6399d74e5ae2e3734` |
| 3 | `instance` | [instZeroLEOneClass](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instzeroleoneclass--73a4f06b342409e937d5873b.md) | 65 | `declaration-track:73a4f06b342409e937d5873b1058431ff1378f6e9a66cc3bb92da8489ea450f2` |
| 4 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-zero--41cd2ad576e53006bfaa1f48.md) | 68 | `result-track:41cd2ad576e53006bfaa1f48e8f58b6f13f2ff280eef6d9f05fc8698ab8cb902` |
| 5 | `theorem` | [coe_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-one--bad2d71569dcdea60315a3da.md) | 72 | `result-track:bad2d71569dcdea60315a3da039e49c5e64421ea6cb4282759429bba6a6dc4f6` |
| 6 | `theorem` | [mk_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mk-zero--57aef2db19bd2ccc1be4f1d1.md) | 76 | `result-track:57aef2db19bd2ccc1be4f1d18828a88707cebb41a160a0560e405cbc0836107c` |
| 7 | `theorem` | [mk_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mk-one--3c3f0332c16ba2dd6401e1b0.md) | 80 | `result-track:3c3f0332c16ba2dd6401e1b01316211fe871f92598700ed9d7c5d1d155ad2660` |
| 8 | `theorem` | [coe_eq_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-eq-zero--967fbc798cd61b5fda324ff6.md) | 84 | `result-track:967fbc798cd61b5fda324ff6ec635f88a01c93be377bd1a00ea95f144f0c0fed` |
| 9 | `theorem` | [coe_ne_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-ne-zero--13307b472ba9e1c4f4df14a7.md) | 88 | `result-track:13307b472ba9e1c4f4df14a7fc0db6aabdb4e29857c82544aa64cbfa7e899f18` |
| 10 | `theorem` | [coe_eq_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-eq-one--163d028cd541e5944eb8bcad.md) | 92 | `result-track:163d028cd541e5944eb8bcad931d2995ff6890acf5785a4da692b304e330ef49` |
| 11 | `theorem` | [coe_ne_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-ne-one--0c7383103b206441d6390032.md) | 96 | `result-track:0c7383103b206441d639003245cb534ff2ca8db876da3a72164f85a4343e8074` |
| 12 | `theorem` | [coe_nonneg](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-nonneg--652d06829bd5d7be11a27051.md) | 100 | `result-track:652d06829bd5d7be11a27051e024d70a8cab31cb922aa003fcee0be4988d2f79` |
| 13 | `theorem` | [coe_le_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-le-one--ef70bbcd0b784103de758e36.md) | 104 | `result-track:ef70bbcd0b784103de758e366e07c30849e137b17d4a0b925fc14fcce6dc77e9` |
| 14 | `theorem` | [nonneg](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/nonneg--9bd58fe562d22d0baa3a7f3c.md) | 108 | `result-track:9bd58fe562d22d0baa3a7f3c3b6fa7c17974c5ef68e824cd924bfe48c73c16e2` |
| 15 | `theorem` | [le_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/le-one--761099aee7e5ea4de6781fb8.md) | 112 | `result-track:761099aee7e5ea4de6781fb89dae53edd32b357eff67d57909f98a6b3182a3fb` |
| 16 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instmul--aaa5b3ad2e04e9db34c80717.md) | 115 | `declaration-track:aaa5b3ad2e04e9db34c80717cc9ef40bd28a5a579e69f49df3115d951fa24544` |
| 17 | `instance` | [instPow](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instpow--02db8e293a1fc7252a52199f.md) | 118 | `declaration-track:02db8e293a1fc7252a52199fcfa0aff2d104b4a0c2b45ffe4bec958394b621e5` |
| 18 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-mul--6fe6317868cf80eaa5aeeba3.md) | 122 | `result-track:6fe6317868cf80eaa5aeeba3112e74509c13121ed29bf551cb0361b1269e4337` |
| 19 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-pow--1f7c614590271750b3200a4b.md) | 126 | `result-track:1f7c614590271750b3200a4b4bd441870b2663f88d45031740746e6e5d058e3a` |
| 20 | `theorem` | [mul_le_left](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mul-le-left--ce8aa63f8770aa9c7b7bb282.md) | 129 | `result-track:ce8aa63f8770aa9c7b7bb282220af681bff78c1af220e5c881d82fa15df54d5c` |
| 21 | `theorem` | [mul_le_right](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mul-le-right--5386666e6424dd6c15c524b1.md) | 132 | `result-track:5386666e6424dd6c15c524b1e488469b46637392a9bcb4f7089a97640ecae1a4` |
| 22 | `instance` | [instMonoidWithZero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instmonoidwithzero--3cc97896af9ad5efa815fd9f.md) | 135 | `declaration-track:3cc97896af9ad5efa815fd9fc659c91a419739839f91fb5448d65f0715d5436b` |
| 23 | `instance` | [instCommMonoidWithZero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcommmonoidwithzero--93d2d15b5860837fd44b39cc.md) | 138 | `declaration-track:93d2d15b5860837fd44b39cc4f629fb7e703ac08a55271ba2632877eaef0d2c8` |
| 24 | `instance` | [instCancelMonoidWithZero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcancelmonoidwithzero--463612d1b4a380f77a966071.md) | 142 | `declaration-track:463612d1b4a380f77a9660716ac3421fcee966d8f725b4b908e33d4ad10fa925` |
| 25 | `instance` | [instCancelCommMonoidWithZero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcancelcommmonoidwithzero--127762302abfe6e1e9bdbbb6.md) | 148 | `declaration-track:127762302abfe6e1e9bdbbb65f6b9fb61089f2a5b6b909fa5b1a9404ebd76392` |
| 26 | `theorem` | [one_sub_mem](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/one-sub-mem--ec65476010e0c43e35c855de.md) | 156 | `result-track:ec65476010e0c43e35c855de3a827c8e037cec797a05a898957b9de9800c8d74` |
| 27 | `theorem` | [mem_iff_one_sub_mem](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mem-iff-one-sub-mem--7998876ddd57e05c6d53e12b.md) | 160 | `result-track:7998876ddd57e05c6d53e12b6e21b84258721928b581504fd7d0d7894ef3dcab` |
| 28 | `theorem` | [one_sub_nonneg](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/one-sub-nonneg--1acbb8ac5e41b102521d0120.md) | 163 | `result-track:1acbb8ac5e41b102521d012045a0d7ccb16841f1a8dcbe8b63a7c95e6615af14` |
| 29 | `theorem` | [one_sub_le_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/one-sub-le-one--f050995b4da8ad93890320d8.md) | 165 | `result-track:f050995b4da8ad93890320d88a1a0be371933541f2401be9f1acca9f001aba23` |
| 30 | `instance` | [instZero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instzero--0e2542e27ae14f9ff8224191.md) | 174 | `declaration-track:0e2542e27ae14f9ff82241917a5263a8b0815b0393b130e7756e0445a2d0046f` |
| 31 | `theorem` | [coe_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-zero--91e41c0c77f9c912696c6a33.md) | 177 | `result-track:91e41c0c77f9c912696c6a331909994420912998ef765442070580d6193b2822` |
| 32 | `theorem` | [mk_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mk-zero--cbdc44388d3db538bdbe0810.md) | 181 | `result-track:cbdc44388d3db538bdbe0810e88cc603a5e9222c3d0718165a9ed4c4bfbf96b6` |
| 33 | `theorem` | [coe_eq_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-eq-zero--06819bf6e93ad9eedb3c7353.md) | 185 | `result-track:06819bf6e93ad9eedb3c7353e474d2b2e76a7d0e8f339f41530e0535a4e63c57` |
| 34 | `theorem` | [coe_ne_zero](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-ne-zero--021d7de3e4b7d69c47a733bb.md) | 189 | `result-track:021d7de3e4b7d69c47a733bbc85c314b1b335ce6486737534268841381f01958` |
| 35 | `theorem` | [coe_nonneg](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-nonneg--45e30a24e180149474a08c49.md) | 193 | `result-track:45e30a24e180149474a08c4978c94c68dd5bc0b4c95650a2367ab1651e936acb` |
| 36 | `theorem` | [coe_lt_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-lt-one--99b1d8d1ef8ca31dae6e0529.md) | 197 | `result-track:99b1d8d1ef8ca31dae6e0529328cf52b0d634b351488f4910c508bd1191e325b` |
| 37 | `theorem` | [nonneg](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/nonneg--ea0755c85fc0b618c3f90935.md) | 201 | `result-track:ea0755c85fc0b618c3f90935a895421757232e41f31aa404dcfa20b8bf357ecd` |
| 38 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instmul--6e419b8008e71fb4a56902b4.md) | 204 | `declaration-track:6e419b8008e71fb4a56902b433bc63cebb7158c7fe62e4d4553d3f0c7fb6a055` |
| 39 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-mul--02ab195ff9a0eeb1477260f1.md) | 209 | `result-track:02ab195ff9a0eeb1477260f11b0ebdef278b3f81ceba57ccf6c293e028e19540` |
| 40 | `instance` | [instSemigroup](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instsemigroup--8ceaebb52e2deed7741772b0.md) | 212 | `declaration-track:8ceaebb52e2deed7741772b03341c7a5a4a03b8b424988f2afbb9752b724b0f0` |
| 41 | `instance` | [instCommSemigroup](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcommsemigroup--90d6e1be87692513da73786d.md) | 215 | `declaration-track:90d6e1be87692513da73786d09ee840643108bac1d38e9fd5e811e3e6832fef1` |
| 42 | `instance` | [instOne](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instone--53fbbeb743f080aa1aa0729c.md) | 230 | `declaration-track:53fbbeb743f080aa1aa0729c60b975ce2f155aaf1bdb8dc13d3299e466143c9e` |
| 43 | `theorem` | [coe_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-one--0ab46afafaa942bab5bfd216.md) | 233 | `result-track:0ab46afafaa942bab5bfd216709dc80b4c6243977c43cac59f8bcfd6f4d37e97` |
| 44 | `theorem` | [mk_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mk-one--d5499b7c689de7f536892eab.md) | 237 | `result-track:d5499b7c689de7f536892eab035201d812acf67b49bf7f269fdb37a9db3b7bbb` |
| 45 | `theorem` | [coe_eq_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-eq-one--005b2653ea8398edbe62d411.md) | 241 | `result-track:005b2653ea8398edbe62d411ed30ac1b66c5aa3150b3d514ad24ec756064e982` |
| 46 | `theorem` | [coe_ne_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-ne-one--a199e965ac80efb9d499879f.md) | 245 | `result-track:a199e965ac80efb9d499879f61bcc4aac8c3d2ddb926e8cef2825c83772f95bf` |
| 47 | `theorem` | [coe_pos](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-pos--3ae53779d4622d6579519c89.md) | 249 | `result-track:3ae53779d4622d6579519c8922188aea3d3fc427d1041885e32808c399bf4375` |
| 48 | `theorem` | [coe_le_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-le-one--fc37605209b76369beba1998.md) | 253 | `result-track:fc37605209b76369beba19980e53bcf981d8f95fdbcbfadb7682849a7cb1ac6a` |
| 49 | `theorem` | [le_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/le-one--e743492d7c95ee2ed845cd6b.md) | 257 | `result-track:e743492d7c95ee2ed845cd6b73d15509f13e2ef89ce12fb3f504a0591fd0fb28` |
| 50 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instmul--3a681780ae204c8e49ef81cd.md) | 260 | `declaration-track:3a681780ae204c8e49ef81cd35781161af7ca427e603982351dd26508f2a9354` |
| 51 | `instance` | [instPow](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instpow--345cd59f72394a3edf87fbc5.md) | 263 | `declaration-track:345cd59f72394a3edf87fbc511274050f4053b0575b3d87de9dada006f0aeea2` |
| 52 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-mul--6a7ff03ad54908f7fc1487d9.md) | 267 | `result-track:6a7ff03ad54908f7fc1487d932f1f742c2d70a4bffe120f90e907f10bd4dcd71` |
| 53 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-pow--2dbb2234080d6df0727f15bb.md) | 271 | `result-track:2dbb2234080d6df0727f15bb3c73a2d7846b4d919d597006ffe8bdd6eadf1473` |
| 54 | `instance` | [instSemigroup](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instsemigroup--0ae5e43271edcdb2738140cc.md) | 274 | `declaration-track:0ae5e43271edcdb2738140cc0261584b37a8cba44eb2910a80a05b2256face93` |
| 55 | `instance` | [instMonoid](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instmonoid--fc45fa5d7d722ba8295ff284.md) | 277 | `declaration-track:fc45fa5d7d722ba8295ff2846752ab1aec82692838e7380c5953928c96caffa4` |
| 56 | `instance` | [instCommSemigroup](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcommsemigroup--50a1061773bfdbef577b11a6.md) | 280 | `declaration-track:50a1061773bfdbef577b11a629dc2df9665c24460b658654cd0a72c99c922e2f` |
| 57 | `instance` | [instCommMonoid](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcommmonoid--cba26e21e81b12aaa6147f5c.md) | 284 | `declaration-track:cba26e21e81b12aaa6147f5c6542505789226561686875801ad705f7469a51b0` |
| 58 | `instance` | [instCancelMonoid](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcancelmonoid--dd8f2716e034559dbc1bddab.md) | 288 | `declaration-track:dd8f2716e034559dbc1bddabb9a3bdb910e6b821dfc1b09104aa7b509c629253` |
| 59 | `instance` | [instCancelCommMonoid](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcancelcommmonoid--468f251fe1d7b35a6d636708.md) | 296 | `declaration-track:468f251fe1d7b35a6d6367083ae675f18d7fb0201eed62c34b2cf7861d8d4d89` |
| 60 | `theorem` | [pos](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/pos--cb3f7d99ccf282c1e0815849.md) | 309 | `result-track:cb3f7d99ccf282c1e0815849cf23a8281e9e39c477ff955dabe37c129fcf0637` |
| 61 | `theorem` | [lt_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/lt-one--fb2ea572de5f4f4d32a81ce3.md) | 313 | `result-track:fb2ea572de5f4f4d32a81ce3a14114e673c602d1f3e4cc62b915d526826840ab` |
| 62 | `instance` | [instMul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instmul--6073c2a692b8186cce4f5f47.md) | 316 | `declaration-track:6073c2a692b8186cce4f5f4796f474b9c6331b0fc2db3b62f3cfc2f789907ac0` |
| 63 | `theorem` | [coe_mul](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/coe-mul--e19650252d2a9e98101e9e89.md) | 321 | `result-track:e19650252d2a9e98101e9e893abe3dba9f2ce41f4094db1b1bd290ae210a8ca0` |
| 64 | `instance` | [instSemigroup](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instsemigroup--6049f0995a9569ac449f1305.md) | 324 | `declaration-track:6049f0995a9569ac449f1305ada6b3c9289a4275721c66fe4b149576e43ba9d9` |
| 65 | `instance` | [instCommSemigroup](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/instcommsemigroup--cb42804096b25d4c5fe5eb35.md) | 327 | `declaration-track:cb42804096b25d4c5fe5eb35fd64465ee2f3574d0920dd46d4e993503e14fc6e` |
| 66 | `theorem` | [one_sub_mem](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/one-sub-mem--f2f26f2fc8017badfb84c432.md) | 333 | `result-track:f2f26f2fc8017badfb84c432c50a1ce1389e6106608df265e73e6d06e4a02151` |
| 67 | `theorem` | [mem_iff_one_sub_mem](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/mem-iff-one-sub-mem--7c7808dd6f6cd135d88b707a.md) | 338 | `result-track:7c7808dd6f6cd135d88b707a808c67a98dbc0ddbd1af0ba7b87bf03139772dad` |
| 68 | `theorem` | [one_minus_pos](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/one-minus-pos--82fdaddace8d1e54595ff073.md) | 341 | `result-track:82fdaddace8d1e54595ff073a2e0e6ecab04c2486c53566fe5052369381e0bc8` |
| 69 | `theorem` | [one_minus_lt_one](../../../../mathematics/Algebra/Instances/Varianta3cadf205c33e679ddde3f55b2d07514f0ecd17fa73dd32bfbb3d40b3dfefe02.lean/declarations/one-minus-lt-one--fb41e320ee7af0442704ea15.md) | 343 | `result-track:fb41e320ee7af0442704ea158f7187a45395c1cea628c8f13100c9e945ff8d56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
