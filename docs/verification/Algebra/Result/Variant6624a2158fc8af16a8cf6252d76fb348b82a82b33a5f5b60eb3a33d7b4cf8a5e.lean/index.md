# Verification target: GRWTSK.Algebra.Result.Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6345f2801a5f710ba76c13e9a7fc62ca08217548",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6345f2801a5f710ba76c13e9a7fc62ca08217548`.

Source path: `GRWTSK/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Qq.MetaM` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [instAddMonoidWithOneNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/instaddmonoidwithonenat--d63fc213d6711e169b80882c.md) | 46 | `declaration-track:d63fc213d6711e169b80882c60d401fcec80cbcef326f6460451bf9329a42149` |
| 2 | `def` | [instAddMonoidWithOne](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/instaddmonoidwithone--ebf6dbcccb0610a50d999a81.md) | 49 | `declaration-track:ebf6dbcccb0610a50d999a8150a4762e04cea52bc82de695332af9330a36a537` |
| 3 | `def` | [inferAddMonoidWithOne](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/inferaddmonoidwithone--267543dfa749102b9c9fffdb.md) | 52 | `declaration-track:267543dfa749102b9c9fffdba7e722ed95ce53b6bb3aa30140ffaf99d864cca9` |
| 4 | `def` | [inferSemiring](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/infersemiring--611ea70c2ef089576e548738.md) | 57 | `declaration-track:611ea70c2ef089576e548738bfaa38c3931a97bdc8a0f14dfc85b82f44f63f1a` |
| 5 | `def` | [inferRing](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/inferring--b78817a7c0cb3447e5394cba.md) | 61 | `declaration-track:b78817a7c0cb3447e5394cbaddcbd98cbe9cd6207f7118846cf89da458eb9cce` |
| 6 | `def` | [mkRawIntLit](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/mkrawintlit--5c7e3b9b76ef382afa4aceeb.md) | 73 | `declaration-track:5c7e3b9b76ef382afa4aceebcd0b5fa0ed358220d0aa5f62f164ff99203e6d8b` |
| 7 | `def` | [mkRawRatLit](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/mkrawratlit--3ba2a58a220e6011576ffa3c.md) | 84 | `declaration-track:3ba2a58a220e6011576ffa3cd079fb4f10c430352669f024543063d6b4898650` |
| 8 | `def` | [rawIntLitNatAbs](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/rawintlitnatabs--d898fee9208b122bc67db0f5.md) | 91 | `declaration-track:d898fee9208b122bc67db0f596a0f9085c0aec8dcfbbac2fd3a1a2f92a894579` |
| 9 | `def` | [mkOfNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/mkofnat--f58fcbd0b2b6f37d1a85c033.md) | 109 | `declaration-track:f58fcbd0b2b6f37d1a85c033764151258acd4856edbc68bde0c3d68e7e445723` |
| 10 | `structure` | [IsNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat--87f4e9ad5edd7b5de2cbaf56.md) | 133 | `declaration-track:87f4e9ad5edd7b5de2cbaf56d5b09cad5e65587e34304140ba96a143109f6009` |
| 11 | `theorem` | [IsNat.raw_refl](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat-raw-refl--555aa13993a1dedf1e566811.md) | 137 | `result-track:555aa13993a1dedf1e5668118bf870bf5be08acfea377932b0fa9c410250e941` |
| 12 | `def` | [_root_.GRWTSK.Algebra.IsNat.Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.Nat.rawCast](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/root-grwtsk-algebra-isnat-variantc65a0aee8bea44421154ffced94c3b9593f6986--f1c4bbdf4ce388c1f0c606ad.md) | 144 | `declaration-track:f1c4bbdf4ce388c1f0c606adb1e82119f1d584ca17f7dae79bb62b32e40c7a9b` |
| 13 | `theorem` | [IsNat.to_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat-to-eq--803f1e54fdf0fa1f2c9969df.md) | 146 | `result-track:803f1e54fdf0fa1f2c9969df26d0b4fa6030aadae2ce3f327c04fe92c051f13e` |
| 14 | `theorem` | [IsNat.to_raw_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat-to-raw-eq--97b21c337bf8ec3c7c6d2398.md) | 149 | `result-track:97b21c337bf8ec3c7c6d23983322f691e2ce1ebf7f22fc892b71856a0e59a553` |
| 15 | `theorem` | [IsNat.of_raw](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat-of-raw--1c1e2a784246f12859dbbf43.md) | 152 | `result-track:1c1e2a784246f12859dbbf43e4733ebe9b554a6e3abeb7d0379196c414d1294a` |
| 16 | `theorem` | [isNat.natElim](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat-natelim--5dbd56bf89e6e61ea2c0b365.md) | 155 | `result-track:5dbd56bf89e6e61ea2c0b365467ae9e70c06ee9bbd54a18145e02547934e16b1` |
| 17 | `structure` | [IsInt](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isint--a4e43d0fe173b13c922b548d.md) | 159 | `declaration-track:a4e43d0fe173b13c922b548d685755e549c9d565364353e875b2201d2464b394` |
| 18 | `def` | [_root_.GRWTSK.Algebra.IsNat.Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.Int.rawCast](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/root-grwtsk-algebra-isnat-variantc65a0aee8bea44421154ffced94c3b9593f6986--cd325dbec44086d9aea88428.md) | 173 | `declaration-track:cd325dbec44086d9aea884289a6b7e1ef322d609cc408b59cc06903fe6ceb1f6` |
| 19 | `theorem` | [IsInt.to_isNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isint-to-isnat--291275253626a2f3f0065207.md) | 175 | `result-track:291275253626a2f3f00652077dec0e89503c34f9e4794cffb3827ce3ac21ac4f` |
| 20 | `theorem` | [IsNat.to_isInt](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat-to-isint--f52940c37b7d03a33385b955.md) | 178 | `result-track:f52940c37b7d03a33385b955b63f2c80057bdfa195531c341b50945e75e48fad` |
| 21 | `theorem` | [IsInt.to_raw_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isint-to-raw-eq--0af46ccbd7be046b3cbdb028.md) | 181 | `result-track:0af46ccbd7be046b3cbdb028e7c92231d585a9e1012a975e95d81070ecd0e49b` |
| 22 | `theorem` | [IsInt.of_raw](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isint-of-raw--f6bf7cc3fc0306f5d3382ed3.md) | 184 | `result-track:f6bf7cc3fc0306f5d3382ed361584e516b851f9d357c44a7f78597cadd1ff5c6` |
| 23 | `theorem` | [IsInt.neg_to_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isint-neg-to-eq--df1f6bbd210cafb657c1696a.md) | 186 | `result-track:df1f6bbd210cafb657c1696a1fc93270008d2d00ffd6518428da6374010adf7f` |
| 24 | `theorem` | [IsInt.nonneg_to_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isint-nonneg-to-eq--5a3b0c9600baab4e7a3f2e60.md) | 190 | `result-track:5a3b0c9600baab4e7a3f2e60991265871a4b832b0bb3671e045f550b86425eb4` |
| 25 | `inductive` | [IsRat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt--1a92bb46bb545d4b2e39e65c.md) | 199 | `declaration-track:1a92bb46bb545d4b2e39e65c129e5f3bb52d34c5bb07b1c97ebc1668f60f99f3` |
| 26 | `def` | [_root_.GRWTSK.Algebra.IsNat.Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.Rat.rawCast](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/root-grwtsk-algebra-isnat-variantc65a0aee8bea44421154ffced94c3b9593f6986--cffc7025460bc6569a6cdd21.md) | 217 | `declaration-track:cffc7025460bc6569a6cdd210ee8e22e2c993e4c54845754340c721827891fb7` |
| 27 | `theorem` | [IsRat.to_isNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt-to-isnat--e5cfed24210ed4a7e54f0acc.md) | 219 | `result-track:e5cfed24210ed4a7e54f0acc718cab6a4330101f3e93a3c1787541535504aa52` |
| 28 | `theorem` | [IsNat.to_isRat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isnat-to-israt--39c89dbaf551aef6f51808b4.md) | 222 | `result-track:39c89dbaf551aef6f51808b4e7a982bc06d83a59aeee876ecd5d000d27006017` |
| 29 | `theorem` | [IsRat.to_isInt](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt-to-isint--cee7d5aaf98c613d56926c66.md) | 225 | `result-track:cee7d5aaf98c613d56926c6665dfdc3f7461b8bf3b2e7e2527f183f9fa7a2163` |
| 30 | `theorem` | [IsInt.to_isRat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/isint-to-israt--030ff1cfa465a690115bff51.md) | 228 | `result-track:030ff1cfa465a690115bff51138ba1ab583e1492f5cccd15ce26a3c13238dc7e` |
| 31 | `theorem` | [IsRat.to_raw_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt-to-raw-eq--9fc058547c9578a977e78d57.md) | 231 | `result-track:9fc058547c9578a977e78d57b5548b707244befa7bd7196508b8a33c0976117c` |
| 32 | `theorem` | [IsRat.neg_to_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt-neg-to-eq--9ac50ad3a9ab47d41d69b92d.md) | 235 | `result-track:9ac50ad3a9ab47d41d69b92d70ac584ad7d6394099fa49c30d5e6c3ad9347004` |
| 33 | `theorem` | [IsRat.nonneg_to_eq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt-nonneg-to-eq--6478765f153d5cfbfd142ef2.md) | 239 | `result-track:6478765f153d5cfbfd142ef2e44b5a3817cc8e84719a80d81f566448b95d3b99` |
| 34 | `theorem` | [IsRat.of_raw](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt-of-raw--4dde4ba64a5b35a17fdfed0c.md) | 243 | `result-track:4dde4ba64a5b35a17fdfed0c88218288ad06473334ea829dca8604ccc5bf05e0` |
| 35 | `theorem` | [IsRat.den_nz](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/israt-den-nz--f2316962ec4611f648e6440d.md) | 248 | `result-track:f2316962ec4611f648e6440d32a5bab9800ac96bbc3efca15a11de0b9ebecc1a` |
| 36 | `inductive` | [Result'](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result--5caba55ba916bbfc3816277f.md) | 253 | `declaration-track:5caba55ba916bbfc3816277f8beb527d5439229bd5e6dd408245671e812bfee2` |
| 37 | `def` | [Result](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result--cdf527dbbf982d0a7e0452f4.md) | 268 | `declaration-track:cdf527dbbf982d0a7e0452f49c13f79360ef98c091501612c5b34493d088cc33` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/instance--63d8cf0dc8fb7d9fdb07eb54.md) | 270 | `declaration-track:63d8cf0dc8fb7d9fdb07eb5482631595fdb7fb72e1d6cf0f4f6e87d843f2d438` |
| 39 | `def` | [Result.isTrue](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-istrue--a97bbc628698f6865cbd5c66.md) | 273 | `declaration-track:a97bbc628698f6865cbd5c6678c30af0120b12c76ecde48078af68bd288aab03` |
| 40 | `def` | [Result.isFalse](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-isfalse--e6fae7e91570583509258a99.md) | 277 | `declaration-track:e6fae7e91570583509258a99d92b0cc23cd6e8d995b034ba6200ed9c96dccd6d` |
| 41 | `def` | [Result.isNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-isnat--43cb713755180c49ac94329f.md) | 281 | `declaration-track:43cb713755180c49ac94329fc46a0196995baa42eebdb5ef91df8e1fcde3f256` |
| 42 | `def` | [Result.isNegNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-isnegnat--08f28c2c323cdb3798348a31.md) | 287 | `declaration-track:08f28c2c323cdb3798348a31b4269f0e720dad8db397012e86eb3a339c7bd3e3` |
| 43 | `def` | [Result.isRat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-israt--b578b4ef0fda4bdd558e5aa6.md) | 295 | `declaration-track:b578b4ef0fda4bdd558e5aa6474eef12be8a40be87f794bd7da4b8127d5f241d` |
| 44 | `def` | [Result.isInt](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-isint--7e0409c8e6732d28c3760460.md) | 304 | `declaration-track:7e0409c8e6732d28c37604602b4ce81696b75544e5863c7a4f9d5918977091be` |
| 45 | `def` | [Result.isRat'](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-israt--33eb1b522a6e023d1b09bdd5.md) | 315 | `declaration-track:33eb1b522a6e023d1b09bdd50354eedc3c7ce6845b73d94ad0bea7ce0240adff` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/instance--9b03afc528c1ae873e52aa0b.md) | 323 | `declaration-track:9b03afc528c1ae873e52aa0b66f861de519ab8991b94e43607b23d2288e92821` |
| 47 | `def` | [Result.toRat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-torat--7f9adcc3b73e81d3aa2ae047.md) | 332 | `declaration-track:7f9adcc3b73e81d3aa2ae0477fcd252129aff4b828352f9fcda16b783319d2db` |
| 48 | `def` | [Result.toRatNZ](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-toratnz--bb8625211056d3f460818a9e.md) | 340 | `declaration-track:bb8625211056d3f460818a9e9298ccf6eb5dc843b313bc647b4777bf9b8d3680` |
| 49 | `def` | [Result.toInt](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-toint--53f0904cb7fe527edcee1f5c.md) | 350 | `declaration-track:53f0904cb7fe527edcee1f5c51e59487d136626adbbc39521538745d92a7b5ca` |
| 50 | `def` | [Result.toRat'](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-torat--a7024c1a9d99efb5da474be3.md) | 362 | `declaration-track:a7024c1a9d99efb5da474be311faaa507bf1b8c67a808ab8ee86f4440d0a6c58` |
| 51 | `def` | [Result.toRawEq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-toraweq--f2aa1ede8d11225c5ad35a33.md) | 380 | `declaration-track:f2aa1ede8d11225c5ad35a3371aa76e4814f29ca64c6fca812046f3249429d5c` |
| 52 | `def` | [Result.toRawIntEq](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-torawinteq--b2fc43ec0bfa332651b646f3.md) | 397 | `declaration-track:b2fc43ec0bfa332651b646f3cccf4aa63488895cc4f75a4cccb7cef50469eb2a` |
| 53 | `def` | [Result.ofRawNat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-ofrawnat--d25fd5415c2c3cd845c466db.md) | 404 | `declaration-track:d25fd5415c2c3cd845c466dbaa6e612389a7fd713d9da833d2576f2db2b8cbcb` |
| 54 | `def` | [Result.ofRawInt](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-ofrawint--9af9dec0f0fac506ed009b91.md) | 410 | `declaration-track:9af9dec0f0fac506ed009b91c8d2053554c9d0f3f241f5903cc91a5d4f02d694` |
| 55 | `def` | [Result.ofRawRat](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-ofrawrat--1b7dc76362f98519183c5403.md) | 419 | `declaration-track:1b7dc76362f98519183c5403049f3aac8610b8c565923ac2943bc88fa54474a9` |
| 56 | `def` | [Result.toSimpResult](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-tosimpresult--78da52a94e9797a1ca3c9ffc.md) | 429 | `declaration-track:78da52a94e9797a1ca3c9ffc02e9e368e0c7955efaa076f631b806b9633dd1ac` |
| 57 | `abbrev` | [BoolResult](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/boolresult--79277f1c4edc3688c33b39ce.md) | 454 | `declaration-track:79277f1c4edc3688c33b39ceef0d9f2470d583e3cb9f1d75879d56ea2b363f7e` |
| 58 | `def` | [Result.ofBoolResult](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-ofboolresult--19f922b6f8a7014abde3636f.md) | 458 | `declaration-track:19f922b6f8a7014abde3636fce924d17e9d46338cf7d5f84f7d3549dd244477f` |
| 59 | `def` | [Result.eqTrans](../../../../mathematics/Algebra/Result/Variant6624a2158fc8af16a8cf6252d76fb348b82a82b33a5f5b60eb3a33d7b4cf8a5e.lean/declarations/result-eqtrans--6debc0b924523a02211e1bbb.md) | 462 | `declaration-track:6debc0b924523a02211e1bbbff3f1842318ad8cd66c194bf81aa0095f9eba345` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
