# Verification target: GRWTSK.Topology.GeneralTopology.Archimedean.Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d68ef3454609ae72e25153f884cca41f2d77ca3d",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d68ef3454609ae72e25153f884cca41f2d77ca3d`.

Source path: `GRWTSK/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Nat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/nat-comap-cast-attop--2a0010d3a5fd022cf409efc8.md) | 31 | `result-track:2a0010d3a5fd022cf409efc87d9e68ce3c7d3e3e8cef07cb38ccf5ddf2830941` |
| 2 | `theorem` | [tendsto_natCast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-natcast-attop-iff--135061cf673e30fb0a4a733a.md) | 35 | `result-track:135061cf673e30fb0a4a733afe124f19f46c35cdeb7e2177a9ce7b3c107daf76` |
| 3 | `theorem` | [PNat.tendsto_comp_val_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/pnat-tendsto-comp-val-iff--240dbd884f2eda7e432eacde.md) | 40 | `result-track:240dbd884f2eda7e432eacdec6a1480aaf17e32b06789f419ac6f58fa3ec3403` |
| 4 | `theorem` | [tendsto_natCast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-natcast-attop-attop--3980ce1ce0380fd951ceb5d0.md) | 44 | `result-track:3980ce1ce0380fd951ceb5d0cfa5f8a89bae7daa1292885f9036aceb0935e908` |
| 5 | `lemma` | [tendsto_PNat_val_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-pnat-val-attop-attop--fbbcfa04dff705276a1979ea.md) | 49 | `result-track:fbbcfa04dff705276a1979eaefc229941380cd65ea3a8775c2d966e483c6f251` |
| 6 | `theorem` | [Filter.Eventually.natCast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/filter-eventually-natcast-attop--a23b35ca7601ef71569adbe1.md) | 52 | `result-track:a23b35ca7601ef71569adbe1251a7b052fba6350eac8a042865caf15db127ee8` |
| 7 | `theorem` | [Int.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/int-comap-cast-attop--a66ce291b6ff50f2455dddeb.md) | 57 | `result-track:a66ce291b6ff50f2455dddebd77d350096ffd60b991b4200e910c3516a31923b` |
| 8 | `theorem` | [Int.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/int-comap-cast-atbot--15e88d29f28e98556bf8b983.md) | 64 | `result-track:15e88d29f28e98556bf8b983982f9fb37b1f06f09c75fc98d84529e198aba9d8` |
| 9 | `theorem` | [tendsto_intCast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-intcast-attop-iff--f2aa7fbdda5c86e953ee7173.md) | 70 | `result-track:f2aa7fbdda5c86e953ee71736f43e013a4f524434a4d271297b1476416b5c8b8` |
| 10 | `theorem` | [tendsto_intCast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-intcast-atbot-iff--ed25c3c4c9f2431cac49dcff.md) | 75 | `result-track:ed25c3c4c9f2431cac49dcff557f50207997d92dd34d6b3609a6d49723ac41d1` |
| 11 | `theorem` | [tendsto_intCast_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-intcast-attop-attop--62a6dd6602d461149b063ed5.md) | 80 | `result-track:62a6dd6602d461149b063ed5a5c02edaa23254a70928733d0f7cd4bf0cbe9e5c` |
| 12 | `theorem` | [Filter.Eventually.intCast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/filter-eventually-intcast-attop--53d82921b88e56bfff0cb5d0.md) | 85 | `result-track:53d82921b88e56bfff0cb5d0fb1363e07ca3687961d728a18c4cf333444d2f2a` |
| 13 | `theorem` | [Filter.Eventually.intCast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/filter-eventually-intcast-atbot--77ca7daa529008b707fed1d4.md) | 90 | `result-track:77ca7daa529008b707fed1d4036ed6a19cef40c6ab789d8e6c1c253291f4d47a` |
| 14 | `theorem` | [Rat.comap_cast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/rat-comap-cast-attop--1731917cf11efce6278793b2.md) | 96 | `result-track:1731917cf11efce6278793b2fa5751a1099f9e11c50ed78b420b1b5b7a29850b` |
| 15 | `theorem` | [Rat.comap_cast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/rat-comap-cast-atbot--8a67cc663583a679c2809ee9.md) | 101 | `result-track:8a67cc663583a679c2809ee994b245dad576174584e06f2bc092e543b9accdce` |
| 16 | `theorem` | [tendsto_ratCast_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-ratcast-attop-iff--49e36f7744f815e02b63e031.md) | 108 | `result-track:49e36f7744f815e02b63e031b89a43a010981de3b0fd10e021745a2be9a71818` |
| 17 | `theorem` | [tendsto_ratCast_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-ratcast-atbot-iff--9189110bb80c56e64219c816.md) | 113 | `result-track:9189110bb80c56e64219c8162da2ef1c911a8b2d7aefa9cb49dd5ae6752c1f68` |
| 18 | `theorem` | [Filter.Eventually.ratCast_atTop](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/filter-eventually-ratcast-attop--a8d2c332e647292b33c76155.md) | 118 | `result-track:a8d2c332e647292b33c761557612170ae61a888b9f5c69b47ee4e742cf6dc87e` |
| 19 | `theorem` | [Filter.Eventually.ratCast_atBot](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/filter-eventually-ratcast-atbot--df4d623c38489ace69fe437c.md) | 123 | `result-track:df4d623c38489ace69fe437cc36311a6df3f0df6b325abbc5dd1acde8b47c163` |
| 20 | `theorem` | [atTop_hasAntitoneBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/attop-hasantitonebasis-of-archimedean--e9ffe106d48a01bdd5880450.md) | 128 | `result-track:e9ffe106d48a01bdd5880450c1b93125bdadd2b5441e778a5455025df4db6bfb` |
| 21 | `theorem` | [atTop_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/attop-hascountablebasis-of-archimedean--5424fe6d63bfcd0b04cc8f0d.md) | 133 | `result-track:5424fe6d63bfcd0b04cc8f0dafbeac1a1db95d01507ee36ed74c19693860f95c` |
| 22 | `theorem` | [atBot_hasCountableBasis_of_archimedean](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/atbot-hascountablebasis-of-archimedean--0045c3989b674501aa6799dd.md) | 138 | `result-track:0045c3989b674501aa6799dd2f32ab84150c9855183c1df3fe144b31f92e0c9a` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/instance--b305f92ffbdebff1f443c5d9.md) | 147 | `declaration-track:b305f92ffbdebff1f443c5d962dff64a350ebd7d8d11df5aeaffca374449f8a1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/instance--d9ce268fa95752b5275dac4f.md) | 152 | `declaration-track:d9ce268fa95752b5275dac4f30903d5faab6152d3ac063a2e55d2de6b1245855` |
| 25 | `theorem` | [map_add_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/map-add-attop-eq--cd89c2228733534b252c9dbb.md) | 161 | `result-track:cd89c2228733534b252c9dbbd18849fe83a58907fc24d65507604f5f261315c3` |
| 26 | `theorem` | [map_sub_atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/map-sub-attop-eq--71d788300adcb92f2aae0b87.md) | 165 | `result-track:71d788300adcb92f2aae0b87143ef38c51d64c37ea617225cb20032dc38b08e6` |
| 27 | `theorem` | [Tendsto.const_mul_atTop'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-const-mul-attop--ec38059bf1ea61ec4601da0f.md) | 178 | `result-track:ec38059bf1ea61ec4601da0f6882c64e6722f9788d37462a90f7a519e7c5f769` |
| 28 | `theorem` | [Tendsto.atTop_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-attop-mul-const--412255423ec02a546448f495.md) | 196 | `result-track:412255423ec02a546448f495858cfec686e157febed14264555d61d33d472e40` |
| 29 | `theorem` | [Tendsto.atTop_mul_const_of_neg'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-attop-mul-const-of-neg--fa03dba962f30da1341e6d0d.md) | 218 | `result-track:fa03dba962f30da1341e6d0de030776513ecbdd32c0fcd75878346c378e2be82` |
| 30 | `theorem` | [Tendsto.atBot_mul_const'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-atbot-mul-const--ecc59b36b8fe6ace769ad9f0.md) | 224 | `result-track:ecc59b36b8fe6ace769ad9f0c6e13d392108e329c36af83ecd878f7891c5edad` |
| 31 | `theorem` | [Tendsto.atBot_mul_const_of_neg'](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-atbot-mul-const-of-neg--24c3d53a73027a8332e2987e.md) | 231 | `result-track:24c3d53a73027a8332e2987e5a40848035c6d546dfb211cadcf7493b4dad9fc8` |
| 32 | `theorem` | [Tendsto.atTop_nsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-attop-nsmul-const--6e675e22e114618bee310e97.md) | 241 | `result-track:6e675e22e114618bee310e97b851a8b555152caed3dbca8f6f6f8fdcb27ae181` |
| 33 | `theorem` | [Tendsto.atTop_nsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-attop-nsmul-neg-const--b2f1b9be6354da2e15d4e396.md) | 253 | `result-track:b2f1b9be6354da2e15d4e3969b5289dc65d1378c0eb0978f216cca695001b22a` |
| 34 | `theorem` | [Tendsto.atTop_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-attop-zsmul-const--1c857fdf2925ff3e89b546b5.md) | 256 | `result-track:1c857fdf2925ff3e89b546b531b489f25f014272839422e9f12fb82fc3d106fb` |
| 35 | `theorem` | [Tendsto.atTop_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-attop-zsmul-neg-const--94bf62f69989995db5aa36aa.md) | 263 | `result-track:94bf62f69989995db5aa36aada4bf7ff597f5b71fa2a11a432522d01ad353bfe` |
| 36 | `theorem` | [Tendsto.atBot_zsmul_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-atbot-zsmul-const--cfb6cd025cd70a0f57862b8d.md) | 266 | `result-track:cfb6cd025cd70a0f57862b8d944e9184180b9653c05727ce2877e6914312f33a` |
| 37 | `theorem` | [Tendsto.atBot_zsmul_neg_const](../../../../../mathematics/Topology/GeneralTopology/Archimedean/Variant0ba4137bb8d0837d43b1140379163e3cdf89e88675c26807c51f5e801ad31df3.lean/declarations/tendsto-atbot-zsmul-neg-const--1af12a797b674c15f00eef67.md) | 271 | `result-track:1af12a797b674c15f00eef67c974671185704491224431ee21c964d100522c6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
