# Verification target: GRWTSK.Algebra.LinearAlgebra.Basis.Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7ac4a782a0ec4f00ac238d7374fec354278cc8f",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7ac4a782a0ec4f00ac238d7374fec354278cc8f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Basis.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toDual](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual--4521befaad58e10f1582087d.md) | 53 | `declaration-track:4521befaad58e10f1582087d9d1c5e023f7d4ec931168e58155e955724e87b48` |
| 2 | `theorem` | [toDual_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-apply--94df325826a6b2b6e2b66293.md) | 56 | `result-track:94df325826a6b2b6e2b662935b4d6a7cee52ea1cbd45a22cf021e82d821392f4` |
| 3 | `theorem` | [toDual_linearCombination_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-linearcombination-left--55ac3573751c7181d39d9ea9.md) | 61 | `result-track:55ac3573751c7181d39d9ea9c6aaf9af54a9f8c6aa8f0fe0829b9d449dd2e05f` |
| 4 | `theorem` | [toDual_linearCombination_right](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-linearcombination-right--cbd94c18b948ef953cbd6fff.md) | 71 | `result-track:cbd94c18b948ef953cbd6fff2989a8f6c7f7cfe64945c4329dbacd9e37db988a` |
| 5 | `theorem` | [toDual_apply_left](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-apply-left--d66afdf722f9395865e6172c.md) | 79 | `result-track:d66afdf722f9395865e6172c23e761e1891320c424e8749016ecf3a69f5dcf43` |
| 6 | `theorem` | [toDual_apply_right](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-apply-right--44c7636482d18a91939227c3.md) | 82 | `result-track:44c7636482d18a91939227c38d75664ed916cd64591c1ea8e0d9ce6f3e22405d` |
| 7 | `theorem` | [coe_toDual_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coe-todual-self--d8b47e8bd942b8f7184c8a9c.md) | 85 | `result-track:d8b47e8bd942b8f7184c8a9c4c562c7be7978db9146ca47d176951ef2586d0e0` |
| 8 | `def` | [toDualFlip](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todualflip--b0aff1be6d3a72d8a99ae463.md) | 90 | `declaration-track:b0aff1be6d3a72d8a99ae4636e2d61af514666bdffe2927b78692fac34b71eef` |
| 9 | `theorem` | [toDualFlip_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todualflip-apply--d0c050dcd9f02ad8afee3260.md) | 93 | `result-track:d0c050dcd9f02ad8afee3260088206e3a86ea299c77de6ff9fc8259d6e905249` |
| 10 | `theorem` | [toDual_eq_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-eq-repr--c1a947614399c840eb185469.md) | 96 | `result-track:c1a947614399c840eb18546975b353fb251e9a96dedf6fb2f7b4d6fddaeff315` |
| 11 | `theorem` | [toDual_eq_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-eq-equivfun--a8166f742a5716ec1b5e3900.md) | 99 | `result-track:a8166f742a5716ec1b5e39002c039c2c2340d33f867c381eb7effa3cbe6ce310` |
| 12 | `theorem` | [toDual_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-injective--35517a691f7dc416d0b99870.md) | 102 | `result-track:35517a691f7dc416d0b99870ca6125e2947917a513897a9ed805c13a29fad766` |
| 13 | `theorem` | [toDual_inj](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-inj--c764d6db30220ff8079b655e.md) | 105 | `result-track:c764d6db30220ff8079b655e333b90869d7924b26efc412ee868c1aa28d31110` |
| 14 | `theorem` | [toDual_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-ker--9567ed4624a45eaeed45702f.md) | 108 | `result-track:9567ed4624a45eaeed45702f67c59e005aea8d9bb25fa047776d321ed677d9a8` |
| 15 | `theorem` | [toDual_range](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-range--456e08df1bac4b1552314351.md) | 111 | `result-track:456e08df1bac4b15523143515908ee22bfb803120b829a97ecdfadd80f9c24bb` |
| 16 | `theorem` | [sum_dual_apply_smul_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/sum-dual-apply-smul-coord--80ab1764a9f3cc50d6a6cab7.md) | 120 | `result-track:80ab1764a9f3cc50d6a6cab7fd022dfbea489f3be6beea151d5a1315c6eccd0e` |
| 17 | `def` | [toDualEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todualequiv--27f04f9eb3b0bc0d2e05c749.md) | 131 | `declaration-track:27f04f9eb3b0bc0d2e05c749b758472c05d1ea130df7cdab6286c1948365476e` |
| 18 | `theorem` | [toDualEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todualequiv-apply--18528c0973ab811c7b94002b.md) | 136 | `result-track:18528c0973ab811c7b94002b3911da0f371eb2a0fb866210a02ffbd0e9a757d5` |
| 19 | `def` | [dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/dualbasis--22e242ab90bf787bda2ec0ce.md) | 140 | `declaration-track:22e242ab90bf787bda2ec0ced3191297002f3e41c82acff71be7cc2befd8a71a` |
| 20 | `theorem` | [dualBasis_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/dualbasis-apply-self--de50d6e44f9e2b8efe2676d8.md) | 144 | `result-track:de50d6e44f9e2b8efe2676d8bf53ca3ba5b85846c488da6fc79fb9af0f0a6e6e` |
| 21 | `theorem` | [linearCombination_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/linearcombination-dualbasis--e955133dda5cd72e9871177e.md) | 149 | `result-track:e955133dda5cd72e9871177e61eb6cd87cc8cd01759eb0c3cc631c5d2ba52951` |
| 22 | `theorem` | [dualBasis_repr](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/dualbasis-repr--0c9997a61ccd7035372d5161.md) | 158 | `result-track:0c9997a61ccd7035372d51614391ccfae2bb11ec185ef41a0e00db893043921f` |
| 23 | `theorem` | [dualBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/dualbasis-apply--bb46d6d7f6a84fac718ed8a7.md) | 161 | `result-track:bb46d6d7f6a84fac718ed8a7657eecddf353878601ec3370d8c3ee72d0cb400a` |
| 24 | `theorem` | [coe_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coe-dualbasis--f8fe858f2458c5a4f84cedd7.md) | 165 | `result-track:f8fe858f2458c5a4f84cedd73e89b92fe07a1c302940a80e07f25c4940abfc0e` |
| 25 | `theorem` | [toDual_toDual](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/todual-todual--a91f3abbe7a5c5cf30b574aa.md) | 170 | `result-track:a91f3abbe7a5c5cf30b574aa2f20cc1b6bafca6f38102ee165bdc1eab8842407` |
| 26 | `theorem` | [dualBasis_equivFun](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/dualbasis-equivfun--a801bce2c4f3c177c3dfd4ef.md) | 177 | `result-track:a801bce2c4f3c177c3dfd4ef98713ce229edff785e5c16471bc34a1d4aae04c0` |
| 27 | `theorem` | [eval_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/eval-injective--47f49d7e9a0d12e285d989a1.md) | 180 | `result-track:47f49d7e9a0d12e285d989a1745f5a8eb86917946cce4f12a1cfde43ede4ac93` |
| 28 | `theorem` | [eval_ker](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/eval-ker--8551ff1bbfd855729d808f82.md) | 185 | `result-track:8551ff1bbfd855729d808f82ab9bce3b49ed01aaf45afb45f1a02579b366b3bb` |
| 29 | `theorem` | [eval_range](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/eval-range--a5b2dc53a0fb8afe3ca4192a.md) | 188 | `result-track:a5b2dc53a0fb8afe3ca4192a3da25baf034c07387d9bdd4c14e978d2f04c5cd2` |
| 30 | `lemma` | [dualBasis_coord_toDualEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/dualbasis-coord-todualequiv-apply--5eac36c5e1fc0a4c76e5f7d8.md) | 194 | `result-track:5eac36c5e1fc0a4c76e5f7d833df0066f73c6f07d6763fc7d8f24d924407bdac` |
| 31 | `lemma` | [coord_toDualEquiv_symm_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coord-todualequiv-symm-apply--5591423354ee3f68a3ce383e.md) | 198 | `result-track:5591423354ee3f68a3ce383edd4d00a0597f42c88afb161f1746640c0ad9b466` |
| 32 | `theorem` | [linearCombination_coord](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/linearcombination-coord--ed1e68f857c168d7df634436.md) | 206 | `result-track:ed1e68f857c168d7df634436f44645b88ad62b00bbe8f27962f79fed91df36a7` |
| 33 | `def` | [evalUseFiniteInstance](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/evalusefiniteinstance--8d4f62972e6d8238b3dbf11f.md) | 224 | `declaration-track:8d4f62972e6d8238b3dbf11f277c78a5dfb08cc5b767893905b0e1b39135d13d` |
| 34 | `elab` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/elab--d7ccd4c06175466562226f6a.md) | 227 | `declaration-track:d7ccd4c06175466562226f6a1112075732e90920f74f09e7fec1cfc24a9a7bb1` |
| 35 | `structure` | [Module.DualBases](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/module-dualbases--cb14c0d9aecd7f1229db1819.md) | 230 | `declaration-track:cb14c0d9aecd7f1229db1819fb7490d425b4421aaa45317c4f8cfcac81ae9e00` |
| 36 | `def` | [coeffs](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coeffs--a578dd68215082cfcfefac6b.md) | 247 | `declaration-track:a578dd68215082cfcfefac6b0586ff8e16db5a44352aa37ae57366279368671d` |
| 37 | `theorem` | [coeffs_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coeffs-apply--d0516886464864c24d5aa929.md) | 253 | `result-track:d0516886464864c24d5aa929ee5a23fb27505b2a234e0d3c0812f974e5936a67` |
| 38 | `def` | [lc](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/lc--f72bf88807416b4fd460db04.md) | 258 | `declaration-track:f72bf88807416b4fd460db0496a9cc9e19039cf8ad68dac137cd2c002304a12b` |
| 39 | `theorem` | [lc_def](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/lc-def--1cb3b612c52202952036f07b.md) | 261 | `result-track:1cb3b612c52202952036f07b7dc925951b4274300c1419e69b53b25dd4a8a1d4` |
| 40 | `theorem` | [dual_lc](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/dual-lc--65921583ddbe6a08afb5afdf.md) | 269 | `result-track:65921583ddbe6a08afb5afdf84b005a119efd9b8dcb9f98ac08725f3c8b8db60` |
| 41 | `theorem` | [coeffs_lc](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coeffs-lc--15c2101cff715c24df1a1d0d.md) | 277 | `result-track:15c2101cff715c24df1a1d0dffb4265e9e0e9744c088252e6cab68ea5dc49f42` |
| 42 | `theorem` | [lc_coeffs](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/lc-coeffs--59ab24daa43ea779cee2cf7e.md) | 283 | `result-track:59ab24daa43ea779cee2cf7e6a0f159c8c4d0872dc999da7a07e0559f0f30e26` |
| 43 | `def` | [basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/basis--ee15279acc57a28e0272994f.md) | 287 | `declaration-track:ee15279acc57a28e0272994f8de9ab824e3ec6ad68ee27c9d0297f4d291f2bf0` |
| 44 | `theorem` | [coe_basis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coe-basis--2d1dd7eed60d22faac1639f9.md) | 301 | `result-track:2d1dd7eed60d22faac1639f99c56c35272ae82a78ff1eecc283d9b4f902a4f14` |
| 45 | `theorem` | [mem_of_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/mem-of-mem-span--7e165f3677ed374d889697fd.md) | 309 | `result-track:7e165f3677ed374d889697fd28c0f620a5da1760129e0d0cdb30dcc840f3fe16` |
| 46 | `theorem` | [coe_dualBasis](../../../../../mathematics/Algebra/LinearAlgebra/Basis/Variantada91ceea9092ff3f3ebffe6d9b97df1bfdd165a4af3fee2ac53bb8cf0ae9739.lean/declarations/coe-dualbasis--d92e8b022edac263ed0c235e.md) | 316 | `result-track:d92e8b022edac263ed0c235ece309f4af35ebde4e04b2dcebbe5ea6b884c629f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
