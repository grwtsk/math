# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Content.Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69359f8cb32856f27864d0d70177d22b20b6daf7",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69359f8cb32856f27864d0d70177d22b20b6daf7`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.FieldDivision` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.EraseLead` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.CancelLeads` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive--2b3881168d4f23063956874e.md) | 50 | `declaration-track:2b3881168d4f23063956874e1ebc37af65eed22d79fef14c3ef3794ad278de28` |
| 2 | `theorem` | [isPrimitive_iff_isUnit_of_C_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-iff-isunit-of-c-dvd--f1080caaee16b1f5c97a9b4f.md) | 54 | `result-track:f1080caaee16b1f5c97a9b4f309fc8ec5ddbf0c0243cb117c30e5dc01d56edcc` |
| 3 | `theorem` | [isPrimitive_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-one--a27cc8bf1dd8460028537301.md) | 60 | `result-track:a27cc8bf1dd84600285373014bf00254e59f98450d386f6af162c0f6f6b158bf` |
| 4 | `theorem` | [Monic.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/monic-isprimitive--3f9429bd8b69050f103f3159.md) | 64 | `result-track:3f9429bd8b69050f103f3159d50758860b21341bddc9c1bbbc3703b31f946203` |
| 5 | `theorem` | [IsPrimitive.ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-ne-zero--6339287a0008629ae6b31d87.md) | 69 | `result-track:6339287a0008629ae6b31d875bbdbf43d8c78e5ddce550104e294531f07af1ed` |
| 6 | `theorem` | [isPrimitive_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-of-dvd--43750f652cad84b17a9fbd5d.md) | 74 | `result-track:43750f652cad84b17a9fbd5dcc949038fa5ab8482ea9b63053ebc3583931108e` |
| 7 | `def` | [content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content--0533dee104523f17041be3ec.md) | 87 | `declaration-track:0533dee104523f17041be3ec1bf44d971266a9d565940277def1ab2fe7a07914` |
| 8 | `theorem` | [content_dvd_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-dvd-coeff--2ac1545317ce9c18803bde17.md) | 91 | `result-track:2ac1545317ce9c18803bde1760762d1f9b12a065f1645e8251fdee168a1c8a0b` |
| 9 | `theorem` | [content_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-c--11b199e9f9ff0b1bd9cee2c7.md) | 100 | `result-track:11b199e9f9ff0b1bd9cee2c75d3ac3b30b82ee614e4e187bb41f8706ccd07aa6` |
| 10 | `theorem` | [content_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-zero--8f9fe14962c2cc787e979eaf.md) | 110 | `result-track:8f9fe14962c2cc787e979eaf03dab509441d96d6b75c2c654363ccbdea281fbc` |
| 11 | `theorem` | [content_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-one--0bdf4fdd6e88d837c25706d5.md) | 114 | `result-track:0bdf4fdd6e88d837c25706d58bb2c0df2ddf17ed244d1b254982bcdf614169ce` |
| 12 | `theorem` | [content_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-x-mul--95bbd84cb6c9d28199b434b7.md) | 117 | `result-track:95bbd84cb6c9d28199b434b7c1e1e8310afc6248cb9a3f7e5cbe9842ccfc49ed` |
| 13 | `theorem` | [content_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-x-pow--3e2f876a5f3d6a34279c2f3d.md) | 142 | `result-track:3e2f876a5f3d6a34279c2f3d9a1f2f08dffe90cb146a49eb5c8d750763b59382` |
| 14 | `theorem` | [content_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-x--96fdada0a3c4276f7de3a63b.md) | 150 | `result-track:96fdada0a3c4276f7de3a63b239287abad746c9edb6df0ac2e275bbf8b31a78c` |
| 15 | `theorem` | [content_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-c-mul--9e54a7c4a67827a685b7685b.md) | 154 | `result-track:9e54a7c4a67827a685b7685b9d10ed25ce65d7c211ad5427898e43487d3e1b0d` |
| 16 | `theorem` | [content_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-monomial--0d8337f5bfff655e0da792e8.md) | 162 | `result-track:0d8337f5bfff655e0da792e8707766e1446e6a0289a5f8f611548e5a055ea9c7` |
| 17 | `theorem` | [content_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-eq-zero-iff--f3d70b6ad1c7b55a8b9857e8.md) | 166 | `result-track:f3d70b6ad1c7b55a8b9857e8044b7ca097a937effb86befc8fe8b2af62ce6882` |
| 18 | `theorem` | [normalize_content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/normalize-content--87f90032c049c3b5b489023a.md) | 180 | `result-track:87f90032c049c3b5b489023a58e5e41e23184d6aebd7c4a924ad9db38d31de66` |
| 19 | `theorem` | [normUnit_content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/normunit-content--0f74bed9593c8e8424e0c1d5.md) | 185 | `result-track:0f74bed9593c8e8424e0c1d5e01b380c560faca979d305f6ccc4d35e43d592ec` |
| 20 | `theorem` | [content_eq_gcd_range_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-eq-gcd-range-of-lt--b389d47cbc955c9f199add10.md) | 192 | `result-track:b389d47cbc955c9f199add10ccf87de28c323d39df0ea55fd49487eee03f4ad2` |
| 21 | `theorem` | [content_eq_gcd_range_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-eq-gcd-range-succ--a3f805ba3e8f40923a86bb11.md) | 206 | `result-track:a3f805ba3e8f40923a86bb11ce95c42ba150e7a767ac9adbf7d4bac809c12df9` |
| 22 | `theorem` | [content_eq_gcd_leadingCoeff_content_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-eq-gcd-leadingcoeff-content-eraselead--97cbbea0db62f3de45b89ceb.md) | 211 | `result-track:97cbbea0db62f3de45b89cebab0c3007de6b42fe6a3ee404224d8293a1891466` |
| 23 | `theorem` | [dvd_content_iff_C_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/dvd-content-iff-c-dvd--f8345a220a5db548946dbb42.md) | 223 | `result-track:f8345a220a5db548946dbb4200f69de330bcf891809663bd1ea99e09108d7810` |
| 24 | `theorem` | [C_content_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/c-content-dvd--b53f6b58a0b006e2c9f68dcb.md) | 235 | `result-track:b53f6b58a0b006e2c9f68dcb189d6c231ec931f3f454930963b8b0b374f23899` |
| 25 | `theorem` | [isPrimitive_iff_content_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-iff-content-eq-one--c0171112f58ae5c78295e3e3.md) | 240 | `result-track:c0171112f58ae5c78295e3e319d607ca8c6565ffe005f7ebe5f55dc5968c4496` |
| 26 | `theorem` | [IsPrimitive.content_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-content-eq-one--aaede86b70c9adc5fa53f3f4.md) | 246 | `result-track:aaede86b70c9adc5fa53f3f4189d94882dfce9f1ef621e110cb0b4cb29c7edf3` |
| 27 | `def` | [primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/primpart--968604942f82b74ce1deb4c0.md) | 256 | `declaration-track:968604942f82b74ce1deb4c06cb43a72afe371743570737fa46274a75393f70f` |
| 28 | `theorem` | [eq_C_content_mul_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/eq-c-content-mul-primpart--3f0c1a09fb74d2dc0f71be43.md) | 260 | `result-track:3f0c1a09fb74d2dc0f71be439751f780d5b0f754a6d6b3614b41c6f07376c306` |
| 29 | `theorem` | [primPart_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/primpart-zero--a61ad0c22550592d8d8835b7.md) | 267 | `result-track:a61ad0c22550592d8d8835b77848a84f9c0e7832801faa91b16f3a233c3fab0e` |
| 30 | `theorem` | [isPrimitive_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-primpart--08fb29e211b0d0a567406647.md) | 271 | `result-track:08fb29e211b0d0a567406647c3848723222126dbeb65bd8887b033658bfd57f8` |
| 31 | `theorem` | [content_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-primpart--57206d23234c1f26213e28f0.md) | 279 | `result-track:57206d23234c1f26213e28f0dfc583dbad866bde34703be5769d27403a80adaf` |
| 32 | `theorem` | [primPart_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/primpart-ne-zero--e60b028b3c6b3f0eedb43b1d.md) | 283 | `result-track:e60b028b3c6b3f0eedb43b1d730cbd5302afb28f0ea9fa69e6e6d768cdaa7bfa` |
| 33 | `theorem` | [natDegree_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/natdegree-primpart--6e05ddf9089de8330f736d6d.md) | 287 | `result-track:6e05ddf9089de8330f736d6d17b71bf572d1de636e16fb79eda1149bd76d068e` |
| 34 | `theorem` | [IsPrimitive.primPart_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-primpart-eq--6e7a5d1c69b3162166d49035.md) | 296 | `result-track:6e7a5d1c69b3162166d49035ccf613579e1fb4199716055e65024cdf07a2f35f` |
| 35 | `theorem` | [isUnit_primPart_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isunit-primpart-c--73ab2c5088e97af6208d04ec.md) | 300 | `result-track:73ab2c5088e97af6208d04ec89fe87a95cc66b5269ae49733d7b6dfa69014270` |
| 36 | `theorem` | [primPart_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/primpart-dvd--4a8a3f78edd86edcfecc1986.md) | 316 | `result-track:4a8a3f78edd86edcfecc1986be650ec4ad48184e2536fd205f9bbf3a41c5b0fd` |
| 37 | `theorem` | [aeval_primPart_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/aeval-primpart-eq-zero--952b982cbab2b0afbc24603d.md) | 320 | `result-track:952b982cbab2b0afbc24603dc4e3d0021c3c3d9719ca7dfec2e906ea29a928be` |
| 38 | `theorem` | [eval₂_primPart_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/eval-primpart-eq-zero--e53ea068bfc2e5daf736e869.md) | 330 | `result-track:e53ea068bfc2e5daf736e86997800f272509e858a17bfb37abbf87f11a41d813` |
| 39 | `theorem` | [gcd_content_eq_of_dvd_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/gcd-content-eq-of-dvd-sub--6e464035f1c7cb0cd36a3db4.md) | 342 | `result-track:6e464035f1c7cb0cd36a3db4a04e7b3ffb625dfbc0d6c22bd9666a5a106314fe` |
| 40 | `theorem` | [content_mul_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-mul-aux--b2b4f803e7a311fb594b09b5.md) | 355 | `result-track:b2b4f803e7a311fb594b09b502adc93ff2e6fa83727529cc4b15e5483e478c4f` |
| 41 | `theorem` | [content_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/content-mul--de324bff2561880bd22ec4db.md) | 366 | `result-track:de324bff2561880bd22ec4db42b5a7b72c5d5352f2a51a00807eecb69ccc18a6` |
| 42 | `theorem` | [IsPrimitive.mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-mul--cffee6e0dda356fc68c2dfe4.md) | 414 | `result-track:cffee6e0dda356fc68c2dfe44ec1c392fc7ac09dd52f75fa346bd2a169791bd1` |
| 43 | `theorem` | [primPart_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/primpart-mul--fe4b2e845a94fad590522618.md) | 420 | `result-track:fe4b2e845a94fad590522618b732365aed295292809c4ef74cf935fa4ea816bf` |
| 44 | `theorem` | [IsPrimitive.dvd_primPart_iff_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/isprimitive-dvd-primpart-iff-dvd--87693e1b4eb6c6d41ee2c45e.md) | 431 | `result-track:87693e1b4eb6c6d41ee2c45eb643cb2e58e438e43429a2a0920bb8c1742c1cdb` |
| 45 | `theorem` | [exists_primitive_lcm_of_isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/exists-primitive-lcm-of-isprimitive--7b993f6140dc96222ce0af2f.md) | 439 | `result-track:7b993f6140dc96222ce0af2ff09ed6f61402a6fd91c4ff08111977561d9d367e` |
| 46 | `theorem` | [dvd_iff_content_dvd_content_and_primPart_dvd_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/dvd-iff-content-dvd-content-and-primpart-dvd-primpart--f79abfe47fec3406236e985e.md) | 482 | `result-track:f79abfe47fec3406236e985ea51f792034ae74b648ee1ad6bc30d3d8b9c35cf1` |
| 47 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/instance--66e4d739b82021201bd98695.md) | 492 | `declaration-track:66e4d739b82021201bd98695f89e929afb15b59ca5d0aa6b1d64d8f40f062fd2` |
| 48 | `theorem` | [degree_gcd_le_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/degree-gcd-le-left--a2f33b170e0c800281c68e7c.md) | 510 | `result-track:a2f33b170e0c800281c68e7c132719057e1ad9a4632cfec42a01d8e5b670cc71` |
| 49 | `theorem` | [degree_gcd_le_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variant70d5e3091f9864c1f777aeb64cfe4785e8e7446cf57d447cf428562f9ab25d04.lean/declarations/degree-gcd-le-right--6f2f57b1791b1691e92f5884.md) | 515 | `result-track:6f2f57b1791b1691e92f588465e0272607e6884cebf28ba6f5204f6ae6ec395c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
