# Verification target: GRWTSK.Algebra.GeomSum.Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5a0a4f8fb2111f39679d67265985cd7df8f7ef3",
  "lexical_observation_count": 76,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/index.md) · [Full source](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5a0a4f8fb2111f39679d67265985cd7df8f7ef3`.

Source path: `GRWTSK/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.NatPowAssoc` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Opposite` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Regular` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [geom_sum_succ](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-succ--ff12b9fe169419caff5ef9b9.md) | 40 | `result-track:ff12b9fe169419caff5ef9b9c5085e8dedc214b83aa9a96be58a23d9eb612d54` |
| 2 | `theorem` | [geom_sum_succ'](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-succ--6fcff1fdc13285d66f27cb60.md) | 44 | `result-track:6fcff1fdc13285d66f27cb6095d34e7b91e1e7ca4a3fc7a67aa49e6e746c4d6c` |
| 3 | `theorem` | [geom_sum_zero](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-zero--447eee30340e87837c26284a.md) | 48 | `result-track:447eee30340e87837c26284ac07cc4db21d3e97c1bd6dbdf587ddeb1db03b1dd` |
| 4 | `theorem` | [geom_sum_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-one--507f0ba3a9a6d61a1f19922f.md) | 51 | `result-track:507f0ba3a9a6d61a1f19922f905f3b5d01cc4fdf9497438f73b65e22cb261e2f` |
| 5 | `theorem` | [geom_sum_two](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-two--d9ab1b3f0d2eda94e4856743.md) | 54 | `result-track:d9ab1b3f0d2eda94e485674317d2d4a8e581e5feda1e11b828aad6ef21ef3594` |
| 6 | `theorem` | [zero_geom_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/zero-geom-sum--d97634cb5d58e3518a4f4c1d.md) | 57 | `result-track:d97634cb5d58e3518a4f4c1d3fbe69d9e5a431663fa7a9948930fea64190ae5c` |
| 7 | `theorem` | [one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/one-geom-sum--aaaf9425659a91cb9f825cd8.md) | 64 | `result-track:aaaf9425659a91cb9f825cd85adcea09f84965c0a3eed057f4a4c34e69acee45` |
| 8 | `theorem` | [op_geom_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/op-geom-sum--c6d9367b655147240bd2ea62.md) | 66 | `result-track:c6d9367b655147240bd2ea629d26c51c2101da3e23b74da24e65abc3ec6459bb` |
| 9 | `theorem` | [op_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/op-geom-sum--f7ea4fd6faf7eb36fd3550f0.md) | 70 | `result-track:f7ea4fd6faf7eb36fd3550f0cb48211ef6b0fcc2da858f581cbb22257211d6d9` |
| 10 | `theorem` | [geom_sum₂_with_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-with-one--fa3d5c22c429656726ade998.md) | 79 | `result-track:fa3d5c22c429656726ade9987e981cf77e189a839fa7613fc1c34c33d9d9b1bc` |
| 11 | `theorem` | [Commute.geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-geom-sum-mul-add--f143b2969a0bbad6f8372cf4.md) | 84 | `result-track:f143b2969a0bbad6f8372cf4dea47746bd1fe3dd18a8068a6ae7340fa084a3dc` |
| 12 | `theorem` | [neg_one_geom_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/neg-one-geom-sum--bf4dfdb836c7b8ab50325239.md) | 109 | `result-track:bf4dfdb836c7b8ab503252396282703a9a888b2eace372ad5c703108d4f80dcb` |
| 13 | `theorem` | [geom_sum₂_self](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-self--d4289848fdbf2b0a9d8dc086.md) | 119 | `result-track:d4289848fdbf2b0a9d8dc086398050cf0d48987d30f9784751fe72bb04b4d6dd` |
| 14 | `theorem` | [geom_sum₂_mul_add](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul-add--b9b206b2dc5349b4a419ec11.md) | 132 | `result-track:b9b206b2dc5349b4a419ec11371a0482f3e43d5a42a48f122be95ff4c101cfb9` |
| 15 | `theorem` | [geom_sum_mul_add](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul-add--d71564126be89e40454c9619.md) | 136 | `result-track:d71564126be89e40454c96195916ee65cce4016b97d5b70d40e25d31a2f84b40` |
| 16 | `theorem` | [Commute.geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-geom-sum-mul--54a3d9d82e123bf89b3f150c.md) | 142 | `result-track:54a3d9d82e123bf89b3f150c1825c21c32392353aa241bf2a1ada9f9500fecd4` |
| 17 | `theorem` | [Commute.mul_neg_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-mul-neg-geom-sum--01594010800b47d8deb8be50.md) | 148 | `result-track:01594010800b47d8deb8be5062714ab333e99080739e6dcd0c7dd42ca2387555` |
| 18 | `theorem` | [Commute.mul_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-mul-geom-sum--9dccae75ecd90b75ef9f3b49.md) | 154 | `result-track:9dccae75ecd90b75ef9f3b491d601dee71bd71e1ee309914e08508c658dc13e1` |
| 19 | `theorem` | [geom_sum₂_mul](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul--0242abcfaade77c27b7bd4ee.md) | 158 | `result-track:0242abcfaade77c27b7bd4eeb5d82bd32977bb3472a9eaacf5345e46db43da29` |
| 20 | `theorem` | [geom_sum₂_mul_of_ge](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul-of-ge--24505376a4bc5300e24a4ac8.md) | 162 | `result-track:24505376a4bc5300e24a4ac8dae0ab23ab6b747ad4dea619ebe3f1463b10a08e` |
| 21 | `theorem` | [geom_sum₂_mul_of_le](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul-of-le--43c12722eb4d4f630df506e4.md) | 168 | `result-track:43c12722eb4d4f630df506e412ffdb3fd662ada274f6004d0f7ef45566c4fa56` |
| 22 | `theorem` | [Commute.sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-sub-dvd-pow-sub-pow--20da02c64f7da931f6c84122.md) | 178 | `result-track:20da02c64f7da931f6c8412232b6d276e68353298e62e1411ab0bd09f611f1aa` |
| 23 | `theorem` | [sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/sub-dvd-pow-sub-pow--6c6beb010a963485a2cd0da8.md) | 182 | `result-track:6c6beb010a963485a2cd0da849e1d3474a3ae39523b692c0dd487c64a836f277` |
| 24 | `theorem` | [nat_sub_dvd_pow_sub_pow](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/nat-sub-dvd-pow-sub-pow--6bdc46cfaa1ed3d83e3647bd.md) | 185 | `result-track:6bdc46cfaa1ed3d83e3647bd3c8ce94452e34888b316764fc7fcb17ffd851d4b` |
| 25 | `theorem` | [one_sub_dvd_one_sub_pow](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/one-sub-dvd-one-sub-pow--bc27dc9500a30a8734c7157b.md) | 192 | `result-track:bc27dc9500a30a8734c7157b0a857b9c41a28296140034249bf0799fab2d9bad` |
| 26 | `theorem` | [sub_one_dvd_pow_sub_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/sub-one-dvd-pow-sub-one--fdbf508170033120ec621e45.md) | 197 | `result-track:fdbf508170033120ec621e4557357d388db06d0d3efecb88aab5c6b692ff9684` |
| 27 | `lemma` | [pow_one_sub_dvd_pow_mul_sub_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/pow-one-sub-dvd-pow-mul-sub-one--97d83fa7912e7a0abb81a694.md) | 202 | `result-track:97d83fa7912e7a0abb81a6945e2e6c47d0528c988b157db12028b61d798a1c42` |
| 28 | `lemma` | [nat_pow_one_sub_dvd_pow_mul_sub_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/nat-pow-one-sub-dvd-pow-mul-sub-one--410db649847947759c9a37bb.md) | 207 | `result-track:410db649847947759c9a37bb9fbe73e49e82629eccbfad5c407cdb179e9ecd5a` |
| 29 | `theorem` | [Odd.add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/odd-add-dvd-pow-add-pow--552cd11c6ad66b66a1492f5a.md) | 212 | `result-track:552cd11c6ad66b66a1492f5a8e15944906f9dea02859d7577610dea2ba4800c1` |
| 30 | `theorem` | [Odd.nat_add_dvd_pow_add_pow](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/odd-nat-add-dvd-pow-add-pow--63049b54aff01e5a4a2c3264.md) | 218 | `result-track:63049b54aff01e5a4a2c32642eac28f72d569fb907826fdea2990132d353b04d` |
| 31 | `theorem` | [geom_sum_mul](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul--a4b75d3f9bd2bdb94cecc601.md) | 221 | `result-track:a4b75d3f9bd2bdb94cecc6012ed0bcfa39c6e44c8601aae0c780af89d4932e76` |
| 32 | `theorem` | [geom_sum_mul_of_one_le](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul-of-one-le--1ae962f6302bf7f40474d048.md) | 226 | `result-track:1ae962f6302bf7f40474d0480645b5b22bff7c382099c11d6851e2e5dbb34ecb` |
| 33 | `theorem` | [geom_sum_mul_of_le_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul-of-le-one--d186f0a194aea31aa593f430.md) | 231 | `result-track:d186f0a194aea31aa593f4309dcd5b47ed0f6adf0520f4a803132d0c0fce0d85` |
| 34 | `theorem` | [mul_geom_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/mul-geom-sum--a6124c2f38e5d8737fe3b370.md) | 236 | `result-track:a6124c2f38e5d8737fe3b370b3a16b70ee705b967a546bbeec5d7a759ab5eaa2` |
| 35 | `theorem` | [geom_sum_mul_neg](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-mul-neg--e363ed969ff9a32ea36df919.md) | 239 | `result-track:e363ed969ff9a32ea36df91937fee3e33fedc7dc74e2de4b798e184d754836cd` |
| 36 | `theorem` | [mul_neg_geom_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/mul-neg-geom-sum--2b3bd810485e4bd677963008.md) | 245 | `result-track:2b3bd810485e4bd677963008e28688ead574cf8021ceed6df01ffe334b56d32e` |
| 37 | `theorem` | [Commute.geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-geom-sum-comm--52467d18a41225ffae1ca76a.md) | 248 | `result-track:52467d18a41225ffae1ca76adee1c5c7bc1d51346162680816a4e7ea746e808c` |
| 38 | `theorem` | [geom_sum₂_comm](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-comm--b405f4c99c9c307b3964dfa8.md) | 257 | `result-track:b405f4c99c9c307b3964dfa870492113f26acfcf393892bba8d6d61cce6fee45` |
| 39 | `theorem` | [Commute.geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-geom-sum--1fb5fcd49e4349480fea5441.md) | 261 | `result-track:1fb5fcd49e4349480fea5441cebedddfd68c687b0dd84861f536f039d4b6d157` |
| 40 | `theorem` | [geom₂_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum--4ca84c40b8357f318473fbc0.md) | 266 | `result-track:4ca84c40b8357f318473fbc062f3e3cc10a28f4a25601c3d20ebc82d12137b05` |
| 41 | `theorem` | [geom₂_sum_of_gt](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-of-gt--d06b9bd53e386aac0706d3d4.md) | 270 | `result-track:d06b9bd53e386aac0706d3d47bf3fb797ccef341a39a71d4ced8100d7b05acbe` |
| 42 | `theorem` | [geom₂_sum_of_lt](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-of-lt--036264598185c73014fd419d.md) | 276 | `result-track:036264598185c73014fd419d73f60a17b73dbcf6f7328a245e42bffa56424230` |
| 43 | `theorem` | [geom_sum_eq](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-eq--206c83843b0ac64c0636811d.md) | 282 | `result-track:206c83843b0ac64c0636811d4fd7ae1d1cf7ecc917ee667b7e76389f5668434c` |
| 44 | `lemma` | [geom_sum_of_one_lt](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-of-one-lt--a0d617797b21f9011f99c5c1.md) | 287 | `result-track:a0d617797b21f9011f99c5c1da5be3d3f1dbd5301111c56bc70083d95f6005c3` |
| 45 | `lemma` | [geom_sum_of_lt_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-of-lt-one--ac2d923e9697c55ce16bddee.md) | 293 | `result-track:ac2d923e9697c55ce16bddeee453eea591b3cb1ac4f4535fb6e6dac5ce98945b` |
| 46 | `theorem` | [geom_sum_lt](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-lt--74dd66b86aed070de3db5479.md) | 299 | `result-track:74dd66b86aed070de3db5479aa83c1ef177197db24fbfecbdd5185829584e114` |
| 47 | `theorem` | [Commute.mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-mul-geom-sum-ico--7dd49a2a2d2eaba361fbe742.md) | 308 | `result-track:7dd49a2a2d2eaba361fbe7424a26403d952e1ebd28c40d32a2e8bcc6e856477f` |
| 48 | `theorem` | [Commute.geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-geom-sum-succ-eq--21fd7eb19474168f07821135.md) | 326 | `result-track:21fd7eb19474168f07821135831bc790a30e7389064f33a7b00f1a1f486ac4f5` |
| 49 | `theorem` | [geom_sum₂_succ_eq](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-succ-eq--ee61778acfa4fc43500218ec.md) | 336 | `result-track:ee61778acfa4fc43500218ec758ced0f446852f0d53b05dc79a572568847b6d2` |
| 50 | `theorem` | [mul_geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/mul-geom-sum-ico--3700c75de65b56d1f3af2fa5.md) | 341 | `result-track:3700c75de65b56d1f3af2fa50d1fe09cbcc2e301f728815345a55a970c10aa0c` |
| 51 | `theorem` | [Commute.geom_sum₂_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-geom-sum-ico-mul--d148910d0f6cb2fd66400b1b.md) | 345 | `result-track:d148910d0f6cb2fd66400b1b235d67ac724930991a112ee43d0d423360774dfb` |
| 52 | `theorem` | [geom_sum_Ico_mul](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-ico-mul--2f56ddba83b77bbd4c627a33.md) | 358 | `result-track:2f56ddba83b77bbd4c627a334da691bda932ea4a90f75b63a39011d1c42e77d8` |
| 53 | `theorem` | [geom_sum_Ico_mul_neg](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-ico-mul-neg--f59f58f8ab531dabd5c1549c.md) | 362 | `result-track:f59f58f8ab531dabd5c1549c844bc7669673e076471187afd18e5c58c199bacd` |
| 54 | `theorem` | [Commute.geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/commute-geom-sum-ico--36f4ff867955b239ac61c3a3.md) | 366 | `result-track:36f4ff867955b239ac61c3a3947924f33d247cf304a57bc90dd1a64ce15947cf` |
| 55 | `theorem` | [geom_sum₂_Ico](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-ico--cf19aeda937af92bd6f06064.md) | 372 | `result-track:cf19aeda937af92bd6f06064cbd3720e960f0cf2f9d35cf07117018bcd24b515` |
| 56 | `theorem` | [geom_sum_Ico](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-ico--19fe1ffecc2aeba9d15c1621.md) | 376 | `result-track:19fe1ffecc2aeba9d15c162116c5bb2f9a4da922cee7b7a4c0c246a9a58a90dc` |
| 57 | `theorem` | [geom_sum_Ico'](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-ico--0a67b476671b893e95f14e9d.md) | 380 | `result-track:0a67b476671b893e95f14e9d56619ad4488cd24ad4ff2b23c825cc9f9f8748bb` |
| 58 | `theorem` | [geom_sum_Ico_le_of_lt_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-ico-le-of-lt-one--c5108704a90d7d0085f1dc0a.md) | 385 | `result-track:c5108704a90d7d0085f1dc0a0868b85874555841847058a1f13b8e618e8369d4` |
| 59 | `theorem` | [geom_sum_inv](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-inv--1191c3e814e3ba70c63b694b.md) | 397 | `result-track:1191c3e814e3ba70c63b694b115fa008d40b20246d04c08c8916f228913a31ad` |
| 60 | `theorem` | [RingHom.map_geom_sum](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/ringhom-map-geom-sum--1b698fcdf9204c6e934d26a6.md) | 415 | `result-track:1b698fcdf9204c6e934d26a602bf2a6a504a9dbb17a90f49f270a4be4df155b3` |
| 61 | `theorem` | [RingHom.map_geom_sum₂](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/ringhom-map-geom-sum--c1c0bde546d06bca75539c16.md) | 418 | `result-track:c1c0bde546d06bca75539c160ff5cd9fd61fca930a2ab9621b5b748f0d4348e4` |
| 62 | `theorem` | [Nat.pred_mul_geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/nat-pred-mul-geom-sum-le--c1b3353e2fca7266f018a2c0.md) | 425 | `result-track:c1b3353e2fca7266f018a2c05da6b50c140efee517cbdb67bc7844593d2aae43` |
| 63 | `theorem` | [Nat.geom_sum_le](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/nat-geom-sum-le--3a7449230c6457ba2f96fe7a.md) | 438 | `result-track:3a7449230c6457ba2f96fe7ac89efac1f9bb3b4168b887dea0bd337ee778e60b` |
| 64 | `theorem` | [Nat.geom_sum_Ico_le](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/nat-geom-sum-ico-le--9705be0894f3606170966382.md) | 447 | `result-track:9705be0894f36061709663826f2151d7186db0cd580ca5857f19ff72c2079016` |
| 65 | `theorem` | [geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-pos--48729fbd48aead65501ecc35.md) | 469 | `result-track:48729fbd48aead65501ecc351b3e405f4451bd12870a285e99ec15aaa903eb53` |
| 66 | `theorem` | [geom_sum_pos_and_lt_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-pos-and-lt-one--a5db20a0e4ae26759192e930.md) | 474 | `result-track:a5db20a0e4ae26759192e9302c3dd20e3c3f9b2ce2ca9e328e870a7653584c8a` |
| 67 | `theorem` | [geom_sum_alternating_of_le_neg_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-alternating-of-le-neg-one--b2ed36ef453f6c8be33a25b6.md) | 487 | `result-track:b2ed36ef453f6c8be33a25b6d70af6a2cf37abead7de51b54bba63a6957fba8b` |
| 68 | `theorem` | [geom_sum_alternating_of_lt_neg_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-alternating-of-lt-neg-one--5e2564bbd36945c3b7b4fb7c.md) | 502 | `result-track:5e2564bbd36945c3b7b4fb7c785fac71e8cad91672f8e91f42ba9f28ac1ea7b6` |
| 69 | `theorem` | [geom_sum_pos'](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-pos--afcc29c5d2660d2c82e65062.md) | 524 | `result-track:afcc29c5d2660d2c82e65062acb75cc5cd76308f1cde25be4a38cc77e6ca377a` |
| 70 | `theorem` | [Odd.geom_sum_pos](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/odd-geom-sum-pos--08254f5bbe043b39d6a8bbc5.md) | 534 | `result-track:08254f5bbe043b39d6a8bbc549fcd731270cdfe0732bd348db1609a053f25be6` |
| 71 | `theorem` | [geom_sum_pos_iff](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-pos-iff--4f621afcef022117651899bc.md) | 547 | `result-track:4f621afcef022117651899bc2c2a1da5fe7522968abd2ba310b0125073ee265e` |
| 72 | `theorem` | [geom_sum_ne_zero](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-ne-zero--a8dbe884183456a6f00e981e.md) | 557 | `result-track:a8dbe884183456a6f00e981edf212796aa425df9def9b3ff948adf8dbadc5136` |
| 73 | `theorem` | [geom_sum_eq_zero_iff_neg_one](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-eq-zero-iff-neg-one--2f9c38771d1c06dd64ced875.md) | 571 | `result-track:2f9c38771d1c06dd64ced875c57d6422dbe7680d8342bea77f819e080d57ab73` |
| 74 | `theorem` | [geom_sum_neg_iff](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/geom-sum-neg-iff--b8cc3efc7a88c2c3c79504c8.md) | 581 | `result-track:b8cc3efc7a88c2c3c79504c85eaa75750f7387aa585a1a6bc24b7432bea6f5cf` |
| 75 | `lemma` | [Nat.geomSum_eq](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/nat-geomsum-eq--f7c55552db53abd9db7c9518.md) | 594 | `result-track:f7c55552db53abd9db7c9518a5142bde0dd5e856e905b9fd20f5494a075d8ea5` |
| 76 | `lemma` | [Nat.geomSum_lt](../../../../mathematics/Algebra/GeomSum/Variantc1cc6a6f61a6b66da84d97435cbc9de95f4f9d0a6c29176c3d335bc5722afbdc.lean/declarations/nat-geomsum-lt--5d6ba6d848f14ca471db2ed9.md) | 601 | `result-track:5d6ba6d848f14ca471db2ed9149d6257e5632996896c4a62f6dbf452b39a0345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
