# Verification target: GRWTSK.Algebra.GroupTheory.Algebra.Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31d04fc67561419e1124fdf9f31f665c83ef6d0e",
  "lexical_observation_count": 72,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31d04fc67561419e1124fdf9f31f665c83ef6d0e`.

Source path: `GRWTSK/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--73eaaa61436e55fbae7fbe5c.md) | 27 | `declaration-track:73eaaa61436e55fbae7fbe5caa01fef93d0414869e68395805d219c656ee1609` |
| 2 | `theorem` | [coe_one](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coe-one--3ffc77134d42a6e131933555.md) | 30 | `result-track:3ffc77134d42a6e131933555bfdd513c1f1ceb30192228ef661413b6c721389e` |
| 3 | `theorem` | [one_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/one-apply--909c0cb2ab6319c1ab382cd8.md) | 36 | `result-track:909c0cb2ab6319c1ab382cd88623885f211b4709acc76cff86d92da8d5923fe6` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--dac6661b8e326b4ea623f9c0.md) | 42 | `declaration-track:dac6661b8e326b4ea623f9c08b7c9573ee6c9b0eeb729b930eccf4f478d51eaf` |
| 5 | `theorem` | [coe_inv](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coe-inv--76e58075a977f0b64dd24d5b.md) | 45 | `result-track:76e58075a977f0b64dd24d5b79878dee1d2610b6f689ff066b416b2259c37dd0` |
| 6 | `theorem` | [inv_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/inv-apply--6f6358d1f892e03636ed1509.md) | 51 | `result-track:6f6358d1f892e03636ed1509775c4a52dd7f3a48c600f2558a69649a67193812` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--b32171b8b132f6bb18d5d84f.md) | 57 | `declaration-track:b32171b8b132f6bb18d5d84ffec2f30dfc14dd28d3ca56352e0c96ec9de67035` |
| 8 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coe-mul--8acddcedacbddf659c3c3bdf.md) | 61 | `result-track:8acddcedacbddf659c3c3bdf0aaee0d69b28aa1a5476734cbf3f26e4a6504e42` |
| 9 | `theorem` | [mul_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/mul-apply--43d6a78a4e0f56b6bbf517ec.md) | 67 | `result-track:43d6a78a4e0f56b6bbf517ecf755755ba2e2def95a0c44264d5a9eb2ed97dad8` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--e5c072bb633f4d2cb69399a7.md) | 73 | `declaration-track:e5c072bb633f4d2cb69399a774cec1864a7b273a92b54b47dc53f63d54445180` |
| 11 | `def` | [coeFnMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coefnmonoidhom--3fb9fe0af6fd50fe69c2cc69.md) | 78 | `declaration-track:3fb9fe0af6fd50fe69c2cc692c45705679e7eb7a3e4dc65470cf406b4ccdf77a` |
| 12 | `def` | [constMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/constmonoidhom--418e8e7abb1e472ad67c6983.md) | 87 | `declaration-track:418e8e7abb1e472ad67c69832f5b78508f596d4453ebcf0be84623fc60a4fab8` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--a53ddc963921d6cfaa07cfb0.md) | 94 | `declaration-track:a53ddc963921d6cfaa07cfb0b5a94ff21812de5320562b538cb03c01c68e4f71` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--d5f91e3655548948a9163a68.md) | 97 | `declaration-track:d5f91e3655548948a9163a68566fc88fb085e2f6fc467897257c62a45cadb07e` |
| 15 | `def` | [charFn](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/charfn--6a6cafe7a943bc65432ad72c.md) | 106 | `declaration-track:6a6cafe7a943bc65432ad72cec512d34bb00ed3cfd874aac52ca75c176d25701` |
| 16 | `theorem` | [coe_charFn](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coe-charfn--fe016729e5038353a1b92c7d.md) | 110 | `result-track:fe016729e5038353a1b92c7d0ec88eab2286d49e55cbbbd1ed4fef1e52a83565` |
| 17 | `theorem` | [charFn_eq_one](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/charfn-eq-one--889f9e4ed597563b5102fe21.md) | 114 | `result-track:889f9e4ed597563b5102fe219768dae817b7acc9958d4d37c19ae046a581940e` |
| 18 | `theorem` | [charFn_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/charfn-eq-zero--e191abf4f68b15ba2db2e44f.md) | 118 | `result-track:e191abf4f68b15ba2db2e44f7a312c011d4fdb1ce80b892879cd1ef1dc69f93e` |
| 19 | `theorem` | [charFn_inj](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/charfn-inj--f4bbc318877d63e06bb7f47f.md) | 122 | `result-track:f4bbc318877d63e06bb7f47f87fd8567a6e74f07de46f6a3d1d8bcb2f47a7eee` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--52cd951be3548377e09767f5.md) | 130 | `declaration-track:52cd951be3548377e09767f56e48d1ecc995e50158dcce81d1614d87bae6f821` |
| 21 | `theorem` | [coe_div](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coe-div--0119d150dcdadc3a6d6caa1c.md) | 134 | `result-track:0119d150dcdadc3a6d6caa1c49e7e0286d1d0581c2e6bf1f74dce1724ffd45d3` |
| 22 | `theorem` | [div_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/div-apply--39228453f00ff4a547a5e10c.md) | 140 | `result-track:39228453f00ff4a547a5e10c8151727650bd89ddc58c41cb72e6baeb405006ac` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--1e7a3c727543280cd3defb4f.md) | 146 | `declaration-track:1e7a3c727543280cd3defb4ff07ce42af847392e64a774a1c8308d6036933b6c` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--755e3b2e980d83f29e2ae87c.md) | 149 | `declaration-track:755e3b2e980d83f29e2ae87c5225a6a4bba9c076cbc9df63a8ff6dcec4ceef08` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--d30f8d478caf800cfedce27c.md) | 153 | `declaration-track:d30f8d478caf800cfedce27ceb8f7218d69fa95aa96b75c8f5bd40b86f0779f0` |
| 26 | `instance` | [smul](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/smul--4acf0058b86661b4b21cb699.md) | 157 | `declaration-track:4acf0058b86661b4b21cb69957cfea289cdf85056763338a5751e6b0cdc51ae8` |
| 27 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coe-smul--95e0d9a804c6f3417ab3a7bc.md) | 161 | `result-track:95e0d9a804c6f3417ab3a7bc14c99861e1ea8502961b283830c0786821dc9736` |
| 28 | `theorem` | [smul_apply](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/smul-apply--8d769f81cd342a9f72f11d3a.md) | 166 | `result-track:8d769f81cd342a9f72f11d3a9c27247dccecfd286d1097b38d310dc096915b38` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--5446aeb371059bc4b10b2105.md) | 171 | `declaration-track:5446aeb371059bc4b10b2105f974d33e6834f0d79961cdc58ed3df399b7bb53e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--4cbcb3be1c2d827e830bdf5a.md) | 175 | `declaration-track:4cbcb3be1c2d827e830bdf5a00e0d4086652895155a483a1a8f159c044d49238` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--277eaa444054f8f0d98960e8.md) | 178 | `declaration-track:277eaa444054f8f0d98960e8ad7582bc321d777594bca65ba42e34a72ac836b7` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--c2eec1e3e37dbbb6c7e578dd.md) | 181 | `declaration-track:c2eec1e3e37dbbb6c7e578dd903c62d74a17d01a937f11c9664495fe0b5b1d17` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--a9cf55ae8e291b937534a8ee.md) | 184 | `declaration-track:a9cf55ae8e291b937534a8ee1c51e8332ce06f92c9f91117f6fa1dc8ed998d7c` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--2dff0c0e0803473c366e0c7a.md) | 189 | `declaration-track:2dff0c0e0803473c366e0c7a98a3a665bed9554fef2fc31e35000cc321df2429` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--2397807c9de63697d00b7994.md) | 194 | `declaration-track:2397807c9de63697d00b799481b3e1a370106e5183d86f267985b83e2e1d6b71` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--9d1589df5395a491c339a40a.md) | 199 | `declaration-track:9d1589df5395a491c339a40a3d2f068d46d7c1624ede983e10003f5aa82388e9` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--49d2eaf14db33dc6c96c6ac3.md) | 203 | `declaration-track:49d2eaf14db33dc6c96c6ac3d07318c1b78be23cdf86d4f405bf606228d30d38` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--36061ed85d33eb6fe140f116.md) | 206 | `declaration-track:36061ed85d33eb6fe140f116e59f5ffc3f4e4c3c755b8a7d8035c01ea1d20040` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--f297a02e28b9a60d8a96dd24.md) | 210 | `declaration-track:f297a02e28b9a60d8a96dd24bedb5620ca92be5fb7023137d42e2200f678d538` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--f53166eddc0d13ba168a3525.md) | 214 | `declaration-track:f53166eddc0d13ba168a35256af84bedc27e7d91894c24f191cb8455276d2f8f` |
| 41 | `def` | [constRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/constringhom--35870e7e2857eb0037dea9d3.md) | 220 | `declaration-track:35870e7e2857eb0037dea9d3cb3246923379053a686daa1b4b7df5e19dc178ce` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--88ab28f7eae02cd5ab4f72f7.md) | 224 | `declaration-track:88ab28f7eae02cd5ab4f72f700f7a00e908fa24878ae613c2a491510d328d6e5` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--96c7b939b1d288be0c0f567b.md) | 228 | `declaration-track:96c7b939b1d288be0c0f567b3e4be4242fabef344757082ba1fcae9daa340c77` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--8463ca1c72abdec45e83445e.md) | 232 | `declaration-track:8463ca1c72abdec45e83445e2266f5c9222cf9cd377e2a7c0f6a31d6a1cd5b95` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--1085093e5af5ec30dbd29279.md) | 236 | `declaration-track:1085093e5af5ec30dbd29279314a7c1053a26edfdae54b70315d4da8fc725a13` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--3822b6f66d81e997b5dbdd31.md) | 240 | `declaration-track:3822b6f66d81e997b5dbdd3178e8d1d2962210ac59c9063fabe41a591648bacd` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--8a662ba220f875cb589bb514.md) | 244 | `declaration-track:8a662ba220f875cb589bb51415b79a3b693106d014ad2fe0861a77644b6327cf` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--41a68f5321144061470f6a2e.md) | 249 | `declaration-track:41a68f5321144061470f6a2e90fecdf9276ba07f2ba8efa9f95d7126f5f43072` |
| 49 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--1ddab96b59f6d6282f36d62d.md) | 254 | `declaration-track:1ddab96b59f6d6282f36d62d7a7f25478c51df95d35f866e610d69b6fa65e9d1` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--6c7a4c1f0c4e62bf54bd4b71.md) | 258 | `declaration-track:6c7a4c1f0c4e62bf54bd4b71ea8f81d7230f6ed7707f2c58ff035df6f54cfa10` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--e70637d64f38d79bde488312.md) | 265 | `declaration-track:e70637d64f38d79bde488312572153171ab6b40938722490853f779a98155f34` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--9e952eead2c31ea1c1b652e3.md) | 268 | `declaration-track:9e952eead2c31ea1c1b652e312174a04c76ca8af5afd3898210c1b154432c87b` |
| 53 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--f19a5887272f0e7d7434ffe7.md) | 272 | `declaration-track:f19a5887272f0e7d7434ffe7961483ba3cc33e6d836c3da97ba7692036b3443c` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/instance--e855f3d9933e481b7379918a.md) | 279 | `declaration-track:e855f3d9933e481b7379918aaa4e3b915819a07f4a04b9b566843bc71b938033` |
| 55 | `theorem` | [coe_algebraMap](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coe-algebramap--bb475610e0c06b23a239379d.md) | 291 | `result-track:bb475610e0c06b23a239379d7507d2d98a3a99923cef888ab55ff2431cf64834` |
| 56 | `def` | [coeFnRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coefnringhom--6e6688ae1dc8377278978344.md) | 300 | `declaration-track:6e6688ae1dc83772789783449846b536b8436ce9675fb882d2fb4d1c3bebf096` |
| 57 | `def` | [coeFnₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coefn--668a280076e68b3a9a43f406.md) | 305 | `declaration-track:668a280076e68b3a9a43f406999bba8c165b779d8454937e0ee5bfe6f3cfe209` |
| 58 | `def` | [coeFnAlgHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/coefnalghom--1bb9fb94afd144c3a95e69d3.md) | 311 | `declaration-track:1bb9fb94afd144c3a95e69d30f146a7fa6e8947c71964fce7459f219ecff7ac6` |
| 59 | `def` | [evalMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/evalmonoidhom--135235a5f591c5f3e88ed135.md) | 322 | `declaration-track:135235a5f591c5f3e88ed1353f6819034bfaac8b280212ef1209b87d81419ad8` |
| 60 | `def` | [evalₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/eval--45eaf3def0fe16fb1c9dbd9b.md) | 326 | `declaration-track:45eaf3def0fe16fb1c9dbd9b99676d761f58cb9be1c148ecefa91c83c8f61931` |
| 61 | `def` | [evalRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/evalringhom--9b99a168fa4b4d8edcfa3c03.md) | 331 | `declaration-track:9b99a168fa4b4d8edcfa3c0374219976842ff70dec1cc4548c4b475bb735d975` |
| 62 | `def` | [evalₐ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/eval--03b51a5e13045ceaa900b07e.md) | 336 | `declaration-track:03b51a5e13045ceaa900b07e8bd955dc0d6557f81602759c5febb1f21e306974` |
| 63 | `def` | [comapMulHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/comapmulhom--1926024310b2dc1ccf3b9ce4.md) | 349 | `declaration-track:1926024310b2dc1ccf3b9ce4f1e8d502b5810a9b782223ffbe8d04d73d230073` |
| 64 | `def` | [comapMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/comapmonoidhom--6054371bfa468d5263bde3c2.md) | 357 | `declaration-track:6054371bfa468d5263bde3c2c2d7f7352bea786671d03b7a0577f3bdc5960a96` |
| 65 | `def` | [comapₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/comap--d048fe6c0d8e5198ad9e7e99.md) | 366 | `declaration-track:d048fe6c0d8e5198ad9e7e99027a43debffb2d67b848da463453fb0acad026dd` |
| 66 | `def` | [comapRingHom](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/comapringhom--4e856852fff79199846cbae7.md) | 375 | `declaration-track:4e856852fff79199846cbae773b0d2eed3bcd028e9a713cc4fca37dd49622843` |
| 67 | `def` | [comapₐ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/comap--8eab4884c6e1dbdca021b9f3.md) | 383 | `declaration-track:8eab4884c6e1dbdca021b9f33e8859ee27315c516c01d3faf91af8ab80c6418b` |
| 68 | `lemma` | [ker_comapₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/ker-comap--258ec2f4fec5ac0ab325334d.md) | 388 | `result-track:258ec2f4fec5ac0ab325334d71fb7f5c0930f2710a4efc6d121a961f106a98c5` |
| 69 | `def` | [congrLeftMulEquiv](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/congrleftmulequiv--db303a125acbf1a432fd3f0c.md) | 396 | `declaration-track:db303a125acbf1a432fd3f0cb392ba7baf91bd67356a07ae3522751aa89e846a` |
| 70 | `def` | [congrLeftₗ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/congrleft--1bb03b47e6fe125388992879.md) | 404 | `declaration-track:1bb03b47e6fe125388992879176c7f717c6ddf9585b4f135f9dc2203ba05c0fb` |
| 71 | `def` | [congrLeftRingEquiv](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/congrleftringequiv--24b8802b55795a28a2a8c8d0.md) | 412 | `declaration-track:24b8802b55795a28a2a8c8d075110bb9710d7d530109743a0b63a59eb7704575` |
| 72 | `def` | [congrLeftₐ](../../../../../mathematics/Algebra/GroupTheory/Algebra/Variant5d5c56dd61a1ec401b6e305f97a1d484dcaa3a9a53e550788855bd1cd63bcd60.lean/declarations/congrleft--d583a3587c99d63f55d7bead.md) | 421 | `declaration-track:d583a3587c99d63f55d7bead21b23ad6aff0e884c1b071ae607adcb08db1fd31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
