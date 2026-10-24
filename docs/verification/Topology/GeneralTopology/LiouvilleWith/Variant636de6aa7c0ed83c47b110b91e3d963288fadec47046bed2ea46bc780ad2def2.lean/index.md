# Verification target: GRWTSK.Topology.GeneralTopology.LiouvilleWith.Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5881e446c8236fb773bfe5427ba8bed33a85a284",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5881e446c8236fb773bfe5427ba8bed33a85a284`.

Source path: `GRWTSK/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Transcendental.Liouville.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Irrational` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LiouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/liouvillewith--c9f343aae12551aa1419071d.md) | 47 | `declaration-track:c9f343aae12551aa1419071dc43f81a77cc6aa4b1786e887227b5fccb1dd37dc` |
| 2 | `theorem` | [liouvilleWith_one](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/liouvillewith-one--04c8893ca83ddfcd4602087f.md) | 51 | `result-track:04c8893ca83ddfcd4602087f5a1c121a3ae86686c0a115d3142f8b83f4135ea3` |
| 3 | `theorem` | [exists_pos](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/exists-pos--ec70f51005b9b0a63705baff.md) | 72 | `result-track:ec70f51005b9b0a63705baff05b8ab34785d8bbcb38cd67b3ab099882378875e` |
| 4 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/mono--7fd24a43f3d46370e2385fcc.md) | 84 | `result-track:7fd24a43f3d46370e2385fcc4bf07a0398cbf96765ff911f83f6592d854a0369` |
| 5 | `theorem` | [frequently_lt_rpow_neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/frequently-lt-rpow-neg--ab1e22c157fe710c9f67be32.md) | 93 | `result-track:ab1e22c157fe710c9f67be32ca6c9f1b853c09354f62d38699da4776e2e98d66` |
| 6 | `theorem` | [mul_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/mul-rat--3bfb6c9e6a01921f0a03a7ab.md) | 107 | `result-track:3bfb6c9e6a01921f0a03a7abce2ef5a939368ac0959f1882ecbe79f4b2709872` |
| 7 | `theorem` | [mul_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/mul-rat-iff--97cfcc703189939e09992579.md) | 125 | `result-track:97cfcc703189939e099925791fd61f223ba6f5fa9f86170f7c4cd168b46840a7` |
| 8 | `theorem` | [rat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/rat-mul-iff--4b66ba02134074510f76e1ae.md) | 133 | `result-track:4b66ba02134074510f76e1ae90e55b175e9b47f07104fe084c36ed2d1476582b` |
| 9 | `theorem` | [rat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/rat-mul--600bffa2dfd6a7d644a68855.md) | 136 | `result-track:600bffa2dfd6a7d644a68855192d82c909aea12633a06a7c0bad4c943df36a29` |
| 10 | `theorem` | [mul_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/mul-int-iff--1feb1b2a53a169424b9c0757.md) | 139 | `result-track:1feb1b2a53a169424b9c07571fecbd74e18f471109fc0d391e26fb63b5310cd4` |
| 11 | `theorem` | [mul_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/mul-int--c944cbc9f599f6e0e062c63b.md) | 142 | `result-track:c944cbc9f599f6e0e062c63b71b8a552b19373622268521fb4e3835b69ffc026` |
| 12 | `theorem` | [int_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/int-mul-iff--512dc887d0b40f0cdf4ffcd3.md) | 145 | `result-track:512dc887d0b40f0cdf4ffcd39598492e8065a52629746686996f9f8e49d7d2a0` |
| 13 | `theorem` | [int_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/int-mul--62d40d0b6d6af302e4a1019b.md) | 148 | `result-track:62d40d0b6d6af302e4a1019b135e013c2bab9bbd81251a1d959de594f8fa8e74` |
| 14 | `theorem` | [mul_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/mul-nat-iff--86a633f2cb460dc59e9eb1e1.md) | 151 | `result-track:86a633f2cb460dc59e9eb1e1b6946ba536ab42bf1442697edf44c079d1cbb1b3` |
| 15 | `theorem` | [mul_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/mul-nat--43f3c3e87c0c14d1550c933b.md) | 154 | `result-track:43f3c3e87c0c14d1550c933bf3de998bdcf550fc3f2661097271ed0b3ebcd99a` |
| 16 | `theorem` | [nat_mul_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/nat-mul-iff--aabc04bcebf38f847d8e4087.md) | 157 | `result-track:aabc04bcebf38f847d8e4087da7f7f87a764af1d5b658d3ce9b3be1cd4574982` |
| 17 | `theorem` | [nat_mul](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/nat-mul--1ba8cb0af7a1868215d06210.md) | 160 | `result-track:1ba8cb0af7a1868215d0621082409a287708e791fb6c5a072f15601c8456988d` |
| 18 | `theorem` | [add_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/add-rat--5ac38dd8f9fc92cb43d78010.md) | 163 | `result-track:5ac38dd8f9fc92cb43d780103a3797abfeced10ab431090452a763c8aa9132d8` |
| 19 | `theorem` | [add_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/add-rat-iff--11a7e5d679671cef2d6ea1e4.md) | 178 | `result-track:11a7e5d679671cef2d6ea1e463ae2efdc4bca9e29e4d2cc16ca483e12ab5cd3c` |
| 20 | `theorem` | [rat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/rat-add-iff--68e102e4434ea4949e6bb236.md) | 182 | `result-track:68e102e4434ea4949e6bb2360c26709e4c894d3dc1f3e95f9d72e0401642e7fc` |
| 21 | `theorem` | [rat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/rat-add--4dd685d113b9ea48185cabe9.md) | 184 | `result-track:4dd685d113b9ea48185cabe901ad3efe1d5d5ba4b0961b8260349787ec622a75` |
| 22 | `theorem` | [add_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/add-int-iff--dd28379a3a0e5cfd0206869d.md) | 188 | `result-track:dd28379a3a0e5cfd0206869d01aca12a61d38283df0804c1f563ca0b5a8bc062` |
| 23 | `theorem` | [int_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/int-add-iff--baa55fa9414eadd990e5ced7.md) | 192 | `result-track:baa55fa9414eadd990e5ced7bb894bef2bce701fc67635a2597684908cd6c407` |
| 24 | `theorem` | [add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/add-nat-iff--8f998f42da551f2188ba8cce.md) | 195 | `result-track:8f998f42da551f2188ba8ccec638d1bfa774dd4bc0734566abe6a20b8a35290f` |
| 25 | `theorem` | [nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/nat-add-iff--1431dc375cb9b37e17187175.md) | 199 | `result-track:1431dc375cb9b37e171871759d89d2b37eeaccb128c8daa523bdace9fe4faa7e` |
| 26 | `theorem` | [add_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/add-int--296f4694c4fa6a0b043ef3e5.md) | 201 | `result-track:296f4694c4fa6a0b043ef3e5586197802fa21333787465e3dc22493cef37eb4f` |
| 27 | `theorem` | [int_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/int-add--e2833fab3c24fd661929c20c.md) | 204 | `result-track:e2833fab3c24fd661929c20c06742e4dbe7433824c4ab8f893cbc4fcc343be1c` |
| 28 | `theorem` | [add_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/add-nat--86f62574bf0e5fd442c7e72a.md) | 207 | `result-track:86f62574bf0e5fd442c7e72a70d4718ae863076cf11aa97ffea680ea79d143f9` |
| 29 | `theorem` | [nat_add](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/nat-add--3f6f37934e7fd9c024f0a85c.md) | 210 | `result-track:3f6f37934e7fd9c024f0a85c83ce86ac69f111c06a987f204770120786d54852` |
| 30 | `theorem` | [neg](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/neg--7a5f348045cbf62408abdce5.md) | 213 | `result-track:7a5f348045cbf62408abdce5b4bb2e89925a647ae9e015ef2907a15c443b8dd0` |
| 31 | `theorem` | [neg_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/neg-iff--b5c6ad15822fc549f099b3ae.md) | 223 | `result-track:b5c6ad15822fc549f099b3ae2b359e7bd83e95b2f7f080ce50e5b3a13fef1112` |
| 32 | `theorem` | [sub_rat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/sub-rat-iff--2c421a5729c1e32ccb433c68.md) | 227 | `result-track:2c421a5729c1e32ccb433c6808902d124ceb39abd991c9d8ea5003b4e8e640cf` |
| 33 | `theorem` | [sub_rat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/sub-rat--5a79782a8ab08983e1dd82b6.md) | 230 | `result-track:5a79782a8ab08983e1dd82b6dd1d3806194d62174fb64600a0d822e6893a322f` |
| 34 | `theorem` | [sub_int_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/sub-int-iff--6900c25d23996da17a606bf4.md) | 234 | `result-track:6900c25d23996da17a606bf46600584c03aeec1d437faae1f93dd4ad773fc795` |
| 35 | `theorem` | [sub_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/sub-int--5912dc5f346f33be22918b85.md) | 237 | `result-track:5912dc5f346f33be22918b85146f856320ba0a37f1313a40fa7fb37d4395e234` |
| 36 | `theorem` | [sub_nat_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/sub-nat-iff--2e4d2b17cbf8931164b86a23.md) | 241 | `result-track:2e4d2b17cbf8931164b86a233d7067b12170a2068849804975e613a9d3331898` |
| 37 | `theorem` | [sub_nat](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/sub-nat--8ab50a6ec09babb16933346b.md) | 244 | `result-track:8ab50a6ec09babb16933346b101723a5954e5e36221034f6565a684ed4ed95a7` |
| 38 | `theorem` | [rat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/rat-sub-iff--dd38f3618c5c2d34d98bdae3.md) | 248 | `result-track:dd38f3618c5c2d34d98bdae3ea8b9b1e8529c7dddc5633b2d7d5076a670d1dee` |
| 39 | `theorem` | [rat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/rat-sub--7e5117ce3a9f9840efaf7a7a.md) | 250 | `result-track:7e5117ce3a9f9840efaf7a7a2072ba0009d2ca7a4d3bcb767ae1d8c8d34fb74c` |
| 40 | `theorem` | [int_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/int-sub-iff--d8901053b0168f1b81e8764c.md) | 254 | `result-track:d8901053b0168f1b81e8764c16cc06eee3cb7cdb0c43bdb802dae93aa92663ba` |
| 41 | `theorem` | [int_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/int-sub--f878e6733103e44b0bb4d6a3.md) | 256 | `result-track:f878e6733103e44b0bb4d6a35f1143f32eea3d9b83b92f671edc1014a257c721` |
| 42 | `theorem` | [nat_sub_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/nat-sub-iff--f81c34d8cb0dfd18af5c254e.md) | 260 | `result-track:f81c34d8cb0dfd18af5c254e5b27e7539ae5ef00de0aa5eecba240b78cebeb2a` |
| 43 | `theorem` | [nat_sub](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/nat-sub--c06b766954d2deb2a5ccebd2.md) | 262 | `result-track:c06b766954d2deb2a5ccebd224d04e0e9621769653f5c57d44bd7d80412d8bc4` |
| 44 | `theorem` | [ne_cast_int](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/ne-cast-int--14d80a17c57f12b4f4677dc0.md) | 265 | `result-track:14d80a17c57f12b4f4677dc076e203be7e830d3170ecd1693f3e87f8b59fa830` |
| 45 | `theorem` | [irrational](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/irrational--07f9aea21fcfeefe833bc007.md) | 279 | `result-track:07f9aea21fcfeefe833bc007c3566a9759275c3607ba4231be9987d111b9087f` |
| 46 | `theorem` | [frequently_exists_num](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/frequently-exists-num--b3f91739b2961b2f703b8eff.md) | 295 | `result-track:b3f91739b2961b2f703b8effa1827ad009ac4dfeb6839f28bce9528a42f3422f` |
| 47 | `theorem` | [liouvilleWith](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/liouvillewith--f386df8dedba5c03279bc1f4.md) | 321 | `result-track:f386df8dedba5c03279bc1f4661ca3265130bba2f9e1f3230b480fe4318dcb92` |
| 48 | `theorem` | [forall_liouvilleWith_iff](../../../../../mathematics/Topology/GeneralTopology/LiouvilleWith/Variant636de6aa7c0ed83c47b110b91e3d963288fadec47046bed2ea46bc780ad2def2.lean/declarations/forall-liouvillewith-iff--e9f26c70b68ebba536662c12.md) | 332 | `result-track:e9f26c70b68ebba536662c12f97e06d502de2cf36587c6a838d5732e659f8582` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
