# Verification target: GRWTSK.Algebra.Truncated.Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36361b8a179cf66013b34bf2d6f357b932ef9808",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/index.md) · [Full source](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36361b8a179cf66013b34bf2d6f357b932ef9808`.

Source path: `GRWTSK/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TruncatedWittVector](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatedwittvector--3fe24c72cd9d9076b7668ad9.md) | 62 | `declaration-track:3fe24c72cd9d9076b7668ad9f423e21553c697f38b425d7c0627c53fec806bf5` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--1497464729cd8babde705ab7.md) | 65 | `declaration-track:1497464729cd8babde705ab708f785178b2279428aa02f64ef5299ab197c2908` |
| 3 | `def` | [mk](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/mk--5f06e7793e699753f96bc72d.md) | 74 | `declaration-track:5f06e7793e699753f96bc72db0606d4fb1a1c7c2d928d7f720f696e77c72f54f` |
| 4 | `def` | [coeff](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/coeff--021c1170660076abc7fb5340.md) | 78 | `declaration-track:021c1170660076abc7fb5340de55df83a5974595b041452521a92ee1fc6b3ac6` |
| 5 | `theorem` | [ext](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/ext--fc25126b03072af0333a4a72.md) | 82 | `result-track:fc25126b03072af0333a4a723e54fe9886366bf270a15ec763c268ae46ea120a` |
| 6 | `theorem` | [coeff_mk](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/coeff-mk--9811847298623d76069cb169.md) | 86 | `result-track:9811847298623d76069cb1694a04f354a70f7c8963612fd4d1288851e2877f0e` |
| 7 | `theorem` | [mk_coeff](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/mk-coeff--1829388f3dd9f40c21cfa4f4.md) | 90 | `result-track:1829388f3dd9f40c21cfa4f43f03abb25651e7c07d7514abdcaef45d1fc29c0a` |
| 8 | `def` | [out](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/out--9e3edfff0bb8bcd004347676.md) | 98 | `declaration-track:9e3edfff0bb8bcd00434767631769d5f7241e160ddb6a20ac254452c9a4da847` |
| 9 | `theorem` | [coeff_out](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/coeff-out--f158e20a37ec7029071d82cd.md) | 102 | `result-track:f158e20a37ec7029071d82cd5bc814b361bb1d4a2eb0db1807156dc580225fc8` |
| 10 | `theorem` | [out_injective](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/out-injective--be7754c6dc7b210f80bdf420.md) | 105 | `result-track:be7754c6dc7b210f80bdf4201652095f1f578f08f3d2c9a9c066ba74388637c3` |
| 11 | `def` | [truncateFun](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun--e141c80e3e29cf1da4860aa0.md) | 122 | `declaration-track:e141c80e3e29cf1da4860aa0ee0592ee2aaae20ebce62a6064d9eca1cac77c01` |
| 12 | `theorem` | [coeff_truncateFun](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/coeff-truncatefun--705a92a9b863160e227e1fbe.md) | 130 | `result-track:705a92a9b863160e227e1fbe4b409c412284e8f75bc0e351925b01dbbd67842c` |
| 13 | `theorem` | [out_truncateFun](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/out-truncatefun--d269f910872d3d478ba5dd72.md) | 136 | `result-track:d269f910872d3d478ba5dd72149091f88d8b49e466eebb46efa55175195d5266` |
| 14 | `theorem` | [truncateFun_out](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-out--75c0406e04a4b1a54277cfab.md) | 149 | `result-track:75c0406e04a4b1a54277cfab6be8a5267c93875b20cd1ae547d429154b1a479f` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--c2424d8d014efa0fb51f8292.md) | 157 | `declaration-track:c2424d8d014efa0fb51f829206d82e98fe836c1a73598529075946e28049a3b1` |
| 16 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--0c4eeee3280c6c95a6b1cbcc.md) | 160 | `declaration-track:0c4eeee3280c6c95a6b1cbcc5e83fdf01b1c41e51013c67ff7325bdf4268485e` |
| 17 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--7845bfd0326b9dce7846413b.md) | 163 | `declaration-track:7845bfd0326b9dce7846413b2fba8d39d4eef421ca60425fd848a7543598b201` |
| 18 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--c0da4ae513f31455a3349466.md) | 166 | `declaration-track:c0da4ae513f31455a3349466a43fcef06dfb4cb4ac749e73580f9726204f5256` |
| 19 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--626ab36dde316b1e091d1b37.md) | 169 | `declaration-track:626ab36dde316b1e091d1b37364854e3e4d625009ad4c4710f09785d0341a8eb` |
| 20 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--0af50f7b995632cd223b4d10.md) | 172 | `declaration-track:0af50f7b995632cd223b4d107bfb2955f3f36245d94876aa65d94d9e12c54c56` |
| 21 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--8f2a50f20f45ff32bcfcc092.md) | 175 | `declaration-track:8f2a50f20f45ff32bcfcc092dbef661e218b872ca4a8f86598649fb7253b068f` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--f1b826d3af89fdc832be913a.md) | 178 | `declaration-track:f1b826d3af89fdc832be913a2fa2c1996c05f2e8238400e04936c455f9408c58` |
| 23 | `instance` | [hasNatScalar](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/hasnatscalar--79b5e4b3062ce48d85907bd9.md) | 181 | `declaration-track:79b5e4b3062ce48d85907bd943e1ba91ecce9983f7f66a28c220e7972317faa3` |
| 24 | `instance` | [hasIntScalar](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/hasintscalar--af322ae8624e5b90f01e72a5.md) | 184 | `declaration-track:af322ae8624e5b90f01e72a5504b7cfd8ad95fa68707b1960199fc4f1e181665` |
| 25 | `instance` | [hasNatPow](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/hasnatpow--c354ae2da9a03a9fda07e3d6.md) | 187 | `declaration-track:c354ae2da9a03a9fda07e3d6b9548761807e3ad3d8de36b52467acb0c72b5891` |
| 26 | `theorem` | [coeff_zero](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/coeff-zero--57a46901ca9b7b9645044daa.md) | 191 | `result-track:57a46901ca9b7b9645044daa47445d27f11fb2fa7cc2e827f2a2438bf947a56b` |
| 27 | `macro` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/macro--92ef179252f3398a1f9750c7.md) | 198 | `declaration-track:92ef179252f3398a1f9750c75717fb6526cec08ff51f31c20ea4147a0d95e446` |
| 28 | `theorem` | [truncateFun_surjective](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-surjective--7101de0535f350d7a079258e.md) | 217 | `result-track:7101de0535f350d7a079258ecb6ad3f4fa274ee83a8b181da49247cb9d33ba51` |
| 29 | `theorem` | [truncateFun_zero](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-zero--d7c560ae700adc99a3070df8.md) | 223 | `result-track:d7c560ae700adc99a3070df833c17c4bc41802d891f319e8ea51315008a2076c` |
| 30 | `theorem` | [truncateFun_one](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-one--004e85021e6ef2b2b516a1ae.md) | 226 | `result-track:004e85021e6ef2b2b516a1aedf0427128c4a109d4d3533c017be148a9b529651` |
| 31 | `theorem` | [truncateFun_add](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-add--c0e62a7cc7b9312baf9ebabd.md) | 231 | `result-track:c0e62a7cc7b9312baf9ebabd929ddf4a7d5c3705f95b001f28ed6e7b34206890` |
| 32 | `theorem` | [truncateFun_mul](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-mul--eb2c376c19a11f0f00fc12cd.md) | 236 | `result-track:eb2c376c19a11f0f00fc12cdac588291fdc2e1869bb263cac7b55cb0dd93c116` |
| 33 | `theorem` | [truncateFun_neg](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-neg--88026f25ce94c65a6f4d9b2a.md) | 240 | `result-track:88026f25ce94c65a6f4d9b2ae9f044c13e4105e6702f907f9628ba6cfa60b719` |
| 34 | `theorem` | [truncateFun_sub](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-sub--f876d2cdabf5a8054850f0ee.md) | 243 | `result-track:f876d2cdabf5a8054850f0ee08ed8ac944ca5b65b6864b4785fa73a66da2e9ea` |
| 35 | `theorem` | [truncateFun_nsmul](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-nsmul--4f3c9e3fb1528e3f72e6ba27.md) | 247 | `result-track:4f3c9e3fb1528e3f72e6ba278a8c9fa180be4ac68ece457a5368001f9382e3a0` |
| 36 | `theorem` | [truncateFun_zsmul](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-zsmul--53935498635f93fef9b7c296.md) | 250 | `result-track:53935498635f93fef9b7c29658fb3ee405924d266541ec0a6fd2df31396ff77f` |
| 37 | `theorem` | [truncateFun_pow](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-pow--dbb941d1ebaac09ecfaaf668.md) | 253 | `result-track:dbb941d1ebaac09ecfaaf6682b84df66130a24884aa12a7cf0e5f038c5819b73` |
| 38 | `theorem` | [truncateFun_natCast](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-natcast--91a61f0f61ab6007e610848c.md) | 256 | `result-track:91a61f0f61ab6007e610848c66c53b21163527a2002492e66dc6009f1fba1ef2` |
| 39 | `theorem` | [truncateFun_intCast](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncatefun-intcast--cd5c68ae3d54486b8b9570f8.md) | 258 | `result-track:cd5c68ae3d54486b8b9570f83127e43bb92582e2bd490b83783eae4e3ad3f09c` |
| 40 | `instance` | [instCommRing](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instcommring--0a1243173e16df472446088e.md) | 270 | `declaration-track:0a1243173e16df472446088e4830efc87aac3b62828a9802f4c760b1cc70802f` |
| 41 | `def` | [truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate--2f945ac77bace1b59f0ea5fb.md) | 288 | `declaration-track:2f945ac77bace1b59f0ea5fb088cd9dc5c2a7bb4ff5c51d343c2039b0f032157` |
| 42 | `theorem` | [truncate_surjective](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-surjective--e33385ae4192e38cf78b64dd.md) | 297 | `result-track:e33385ae4192e38cf78b64dd76da87891041fa0a24a474d4016d83a43ecc6a5a` |
| 43 | `theorem` | [coeff_truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/coeff-truncate--5741ed29f824612db3574435.md) | 303 | `result-track:5741ed29f824612db3574435e3417eaa6c05486c85635529e8b3f48847bf0c83` |
| 44 | `theorem` | [mem_ker_truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/mem-ker-truncate--7d60e0ba726516bf79716480.md) | 308 | `result-track:7d60e0ba726516bf79716480ebf74f1a37100e0382718f9aca6d252f87960c73` |
| 45 | `theorem` | [truncate_mk'](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-mk--4ed4a6c09e5b6100fac1bac6.md) | 317 | `result-track:4ed4a6c09e5b6100fac1bac652082cd87c4b9557ed7fd6d19186a8346f9b2cf7` |
| 46 | `def` | [truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate--df7f489a24816e762d974e31.md) | 334 | `declaration-track:df7f489a24816e762d974e31bb79c8723ddebdef8d9a1aadb30facbb9d2611a4` |
| 47 | `theorem` | [truncate_comp_wittVector_truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-comp-wittvector-truncate--1e58fc2c7b3ef20b646dfdec.md) | 343 | `result-track:1e58fc2c7b3ef20b646dfdec7d1f4b10ac2d8b6c931bd0a474fe5ef34ca5b007` |
| 48 | `theorem` | [truncate_wittVector_truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-wittvector-truncate--9fabb60daf12122b748e84fc.md) | 348 | `result-track:9fabb60daf12122b748e84fcef5ad6670d5fd4c9e1b5bc32124c60dc27d2418c` |
| 49 | `theorem` | [truncate_truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-truncate--43dfb4cf63f6e7417420a016.md) | 353 | `result-track:43dfb4cf63f6e7417420a016f8a91460cdabf5407c809ea662785b97af4c7af1` |
| 50 | `theorem` | [truncate_comp](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-comp--4e235b964a96fdc1215223bc.md) | 360 | `result-track:4e235b964a96fdc1215223bc0b343f3ac948e03fffbe4edb693aecb077464d42` |
| 51 | `theorem` | [truncate_surjective](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-surjective--0ad68d6cecf166fd4ff85399.md) | 364 | `result-track:0ad68d6cecf166fd4ff85399c489f7b2dc87f15593bbe6080806b993c9229c10` |
| 52 | `theorem` | [coeff_truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/coeff-truncate--493e7cc555402fd1241cd545.md) | 370 | `result-track:493e7cc555402fd1241cd545f6e2c46b1db13e13e926373b9058a6c148f3ede3` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/instance--4b8b3d6698b6b2dc22253f83.md) | 379 | `declaration-track:4b8b3d6698b6b2dc22253f83d865040fbfbe2a6e97794769b698575ac5431f9f` |
| 54 | `theorem` | [card](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/card--d4824a9f1888bbfeed2edb1a.md) | 384 | `result-track:d4824a9f1888bbfeed2edb1a62e63dbfd7de3dbcf2a67356f0e32d8810d2a434` |
| 55 | `theorem` | [iInf_ker_truncate](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/iinf-ker-truncate--715f4e63345f41b9c1881507.md) | 392 | `result-track:715f4e63345f41b9c188150734b41b7c8b02d6b3f987b5f9435a85b0d4d3aff8` |
| 56 | `def` | [liftFun](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/liftfun--604ae094b154e1bde7dadf54.md) | 419 | `declaration-track:604ae094b154e1bde7dadf54dbd3ecc1cc508e11df2ff13ff3eff2d2b61cbe9c` |
| 57 | `theorem` | [truncate_liftFun](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-liftfun--40919ced61c97ce27f32e0db.md) | 425 | `result-track:40919ced61c97ce27f32e0db849785d0381cc6c0b824ed98a8736e7784a26e73` |
| 58 | `def` | [lift](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/lift--a9712fb34cef62c0507b5c44.md) | 437 | `declaration-track:a9712fb34cef62c0507b5c44b463d1e1fa8295db8f6281151799f62e0e0224ac` |
| 59 | `theorem` | [truncate_lift](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-lift--f6edde67a6e76799432adc40.md) | 450 | `result-track:f6edde67a6e76799432adc400bdd4a777346520609e62da7cb4ff8aaeed544fb` |
| 60 | `theorem` | [truncate_comp_lift](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/truncate-comp-lift--f7ba583c2704e00eac4a3eff.md) | 454 | `result-track:f7ba583c2704e00eac4a3effe20e1e142c088ce6269f9855a63dd5b4abadfa0c` |
| 61 | `theorem` | [lift_unique](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/lift-unique--26d3c8126705754e97fb1df6.md) | 458 | `result-track:26d3c8126705754e97fb1df64a70827d48380afc99c085fc75d6d6873484837e` |
| 62 | `def` | [liftEquiv](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/liftequiv--5206f6b20b18dd4044dde69d.md) | 467 | `declaration-track:5206f6b20b18dd4044dde69d5d3cbb96775de26d69eeca7d9f1c8da89ee47633` |
| 63 | `theorem` | [hom_ext](../../../../mathematics/Algebra/Truncated/Variant9dd80407588387f940e22e25e7a8783a9cb51355cb597b1e437a5497d3622587.lean/declarations/hom-ext--c720cc5d8873d087b0a58c2c.md) | 477 | `result-track:c720cc5d8873d087b0a58c2c8aaf6ed62942497b4eb567aaaa93fafded857b22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
