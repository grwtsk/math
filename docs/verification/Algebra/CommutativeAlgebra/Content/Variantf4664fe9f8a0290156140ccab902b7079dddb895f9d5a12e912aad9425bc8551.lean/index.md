# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Content.Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3a41ef09146c209c6a293e4a6c3c4c037547ac8",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3a41ef09146c209c6a293e4a6c3c4c037547ac8`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GCDMonoid.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.CancelLeads` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.EraseLead` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive--5fc2bb9e835606e4877c1ccb.md) | 49 | `declaration-track:5fc2bb9e835606e4877c1ccb50ce5cd3bc6a0bed4f88c3c5c5de1a42656bc189` |
| 2 | `theorem` | [isPrimitive_iff_isUnit_of_C_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-iff-isunit-of-c-dvd--0546280a3db1605c77d53808.md) | 52 | `result-track:0546280a3db1605c77d538087dcf926c4d9568b035c1eb2d408873967d1cde01` |
| 3 | `theorem` | [isPrimitive_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-one--8aebd07de8bfd12edeb0662c.md) | 56 | `result-track:8aebd07de8bfd12edeb0662c9eb3ce2d14b702f8a623dba5de081b44fc330d3a` |
| 4 | `theorem` | [Monic.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/monic-isprimitive--51cebcb2de2608c0029c883a.md) | 59 | `result-track:51cebcb2de2608c0029c883a18705bf63d80864ac0b3f8b77037e9a43e4e5880` |
| 5 | `theorem` | [IsPrimitive.ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-ne-zero--70c0bbc9134613b14f411928.md) | 63 | `result-track:70c0bbc9134613b14f411928abf96fa14a702cdbbdb12d63c47ed106a3a959d3` |
| 6 | `theorem` | [isPrimitive_of_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-of-dvd--1e67644487499ff6e4eea739.md) | 67 | `result-track:1e67644487499ff6e4eea739d46885deec5ec69c470da6345354310fd2a48ba0` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.CommutativeAlgebra.IsPrimitive.Variante0b81d671682ab7a8347e62474c715a0e49fbdae9efdf227cb5420ea9434b128.Irreducible.isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/root-grwtsk-algebra-commutativealgebra-isprimitive-variante0b81d671682ab--55fa86853235ccd339153493.md) | 71 | `result-track:55fa86853235ccd3391534935a5a5585a791caf199752d75a0fe6651afe0c56d` |
| 8 | `def` | [content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content--4acef2d1555ab759b4244a04.md) | 89 | `declaration-track:4acef2d1555ab759b4244a044ada237d432b0e9f8bc90ff5548b56a8e7cb74d5` |
| 9 | `theorem` | [content_dvd_coeff](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-dvd-coeff--775b6443d170906497f990c3.md) | 92 | `result-track:775b6443d170906497f990c37d2d45c8b5bc629dfeca7a56bb15c88149488105` |
| 10 | `theorem` | [content_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-c--c464b945f2bbac8548b2b89d.md) | 100 | `result-track:c464b945f2bbac8548b2b89d50ef25912c67f6bcd9fab9c19f1c21cdf31204b8` |
| 11 | `theorem` | [content_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-zero--54ec30a220e15a687561e132.md) | 108 | `result-track:54ec30a220e15a687561e132f90f395c7428f79300e1a08b24679bc4dd56dda8` |
| 12 | `theorem` | [content_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-one--00ccf5ed74529eb73a8b1536.md) | 111 | `result-track:00ccf5ed74529eb73a8b1536726993b55695ec867f38033bf5da1d26b4142958` |
| 13 | `theorem` | [content_X_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-x-mul--069dc5d0c5efc2c2a440d9ce.md) | 113 | `result-track:069dc5d0c5efc2c2a440d9ce018720ee8c51b4a3bb7b86a82a3a9879bb1beedd` |
| 14 | `theorem` | [content_X_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-x-pow--3822dd3fa9300d72abce4a68.md) | 136 | `result-track:3822dd3fa9300d72abce4a68f948c45fafb8dc4fd276b3e9af1dfbb2ea61ff31` |
| 15 | `theorem` | [content_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-x--f29a2b343be2bf6940affd51.md) | 142 | `result-track:f29a2b343be2bf6940affd512eb370a6d5df9c80c4cf0a8b2c30d3615c33f5aa` |
| 16 | `theorem` | [content_C_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-c-mul--1be9bc93249efb79061dfa51.md) | 144 | `result-track:1be9bc93249efb79061dfa5110fcd746444ba63f22825650d1944fdc0b7c568b` |
| 17 | `theorem` | [content_monomial](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-monomial--a653a94163a49dbaa82e7820.md) | 150 | `result-track:a653a94163a49dbaa82e7820404a8dc1d3bf14dca3329b63ee5b92d2cada5b6d` |
| 18 | `theorem` | [content_eq_zero_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-eq-zero-iff--ddfce66c064f25441d393e55.md) | 153 | `result-track:ddfce66c064f25441d393e556831c7540c28bf97115d3b5579520f6a0a25c3c0` |
| 19 | `theorem` | [normalize_content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/normalize-content--3956768f638af4ca8d518bf5.md) | 166 | `result-track:3956768f638af4ca8d518bf5f4ff22c9b6f90b17609fb20ee495087cf2bfd13a` |
| 20 | `theorem` | [normUnit_content](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/normunit-content--8edee283d6c0cae41e2b8e0b.md) | 170 | `result-track:8edee283d6c0cae41e2b8e0bed99e1c4e80b0b71ca5847097d5071482f49b632` |
| 21 | `theorem` | [content_eq_gcd_range_of_lt](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-eq-gcd-range-of-lt--4931107f34f3c9077c4e7580.md) | 177 | `result-track:4931107f34f3c9077c4e7580809df9fe14954525c1f6365e05a2fba92d843bc4` |
| 22 | `theorem` | [content_eq_gcd_range_succ](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-eq-gcd-range-succ--98c1d3af5d7fc17d1f00592a.md) | 190 | `result-track:98c1d3af5d7fc17d1f00592a9f313eb502a3d64fe1b2443caaa2a8d88a646765` |
| 23 | `theorem` | [content_eq_gcd_leadingCoeff_content_eraseLead](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-eq-gcd-leadingcoeff-content-eraselead--8de083e80aeac0a3224a014f.md) | 194 | `result-track:8de083e80aeac0a3224a014f28efd34115a2b8eaded746e5409f16df5752186a` |
| 24 | `theorem` | [dvd_content_iff_C_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/dvd-content-iff-c-dvd--e81fcc4c5bee89050c15bbfa.md) | 205 | `result-track:e81fcc4c5bee89050c15bbfa0c6ec679cf64bf96cfc8234a8a115576c25694bc` |
| 25 | `theorem` | [C_content_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/c-content-dvd--3ab4241ed6aa8b567b162350.md) | 215 | `result-track:3ab4241ed6aa8b567b1623507a21c750fab4761dc10610147c16411175d9702a` |
| 26 | `theorem` | [isPrimitive_iff_content_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-iff-content-eq-one--7e00546fd8b1377c459072b9.md) | 218 | `result-track:7e00546fd8b1377c459072b9929839e9cc7b79cf97563a317dc7bdc333ab6c9a` |
| 27 | `theorem` | [IsPrimitive.content_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-content-eq-one--313b9c80318db1e3adee29ad.md) | 223 | `result-track:313b9c80318db1e3adee29adf0063da26dc64e8f5937404a0b6204cb008a21ff` |
| 28 | `def` | [primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/primpart--9a28da3d43d61ffedbee35b5.md) | 230 | `declaration-track:9a28da3d43d61ffedbee35b53598d35eb6af29fcd5ddf3fadc55b8998f6f897c` |
| 29 | `theorem` | [eq_C_content_mul_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/eq-c-content-mul-primpart--d9daeb21f265d4596761b26d.md) | 234 | `result-track:d9daeb21f265d4596761b26d52ee25d394fd3026a89cd49f4ce0267903da01d6` |
| 30 | `theorem` | [primPart_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/primpart-zero--46759eee4d325f8ebf74a014.md) | 239 | `result-track:46759eee4d325f8ebf74a0140e2f96139104e37349580f4aca1254557b33f873` |
| 31 | `theorem` | [isPrimitive_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-primpart--83c6f390636365d6d5119a8b.md) | 242 | `result-track:83c6f390636365d6d5119a8bd09668bfa954d1dbfd9f08100f7429a77fe26a55` |
| 32 | `theorem` | [content_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-primpart--12ed0757a3f88e7d31d893ad.md) | 249 | `result-track:12ed0757a3f88e7d31d893ade5d612061ff70ad9198c4a391fe5bddb0656bcfe` |
| 33 | `theorem` | [primPart_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/primpart-ne-zero--2a4c7d79ece3bc656f786e99.md) | 252 | `result-track:2a4c7d79ece3bc656f786e99fbf700a5ddc0d067440a797a9dd644f2b0ea4389` |
| 34 | `theorem` | [natDegree_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/natdegree-primpart--649baee7631dc7b0d76a2693.md) | 255 | `result-track:649baee7631dc7b0d76a26930402758656f3754e59df5099869500e15d6f498f` |
| 35 | `theorem` | [IsPrimitive.primPart_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-primpart-eq--494b8d51cd069f046329362e.md) | 263 | `result-track:494b8d51cd069f046329362eaf4d5328453a600ca8c75509fe5dfedea89bbf1e` |
| 36 | `theorem` | [isUnit_primPart_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isunit-primpart-c--fb66a57b2a9ee1449382b981.md) | 266 | `result-track:fb66a57b2a9ee1449382b98136c8a2aeb4ccb8219f0171a8051c3b0172e99764` |
| 37 | `theorem` | [primPart_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/primpart-dvd--bdf0447ae57086f6f4903ec8.md) | 280 | `result-track:bdf0447ae57086f6f4903ec8e8b753cc6fbed350a69c4064d6f4a6042f989418` |
| 38 | `theorem` | [aeval_primPart_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/aeval-primpart-eq-zero--b77dc688c302ade6e34bddb3.md) | 283 | `result-track:b77dc688c302ade6e34bddb3700dd15c2dd23535e393db507fa5d3a595e3dfe0` |
| 39 | `theorem` | [eval₂_primPart_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/eval-primpart-eq-zero--d88e8342a751c7a266f6327e.md) | 292 | `result-track:d88e8342a751c7a266f6327e95923ff05d34b63d910c75c994d0af94d6345946` |
| 40 | `theorem` | [gcd_content_eq_of_dvd_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/gcd-content-eq-of-dvd-sub--620564506486edfbb08560d5.md) | 303 | `result-track:620564506486edfbb08560d5f20627bc1e6a8d7d2f8b22e3812d0799dfda032f` |
| 41 | `theorem` | [content_mul_aux](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-mul-aux--aaccccad3a018d5d97794ca2.md) | 315 | `result-track:aaccccad3a018d5d97794ca2a191d845429e5e2d79e3db277486b70aff1e793b` |
| 42 | `theorem` | [content_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/content-mul--f284e3cc7fa1cb0f71cb9b66.md) | 325 | `result-track:f284e3cc7fa1cb0f71cb9b6687f39f72dcdaeec2ea6ba98c819ab6944e45ceaf` |
| 43 | `theorem` | [IsPrimitive.mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-mul--8d82ffcc8f43e7d5eaa50a31.md) | 370 | `result-track:8d82ffcc8f43e7d5eaa50a31ba6936fc9debf21a70994fe604335d8158951e46` |
| 44 | `theorem` | [primPart_mul](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/primpart-mul--2a2f09d2ea5f01ae00568b81.md) | 375 | `result-track:2a2f09d2ea5f01ae00568b815683211f19eda452bd8a335b2133b5213fa1e33b` |
| 45 | `theorem` | [IsPrimitive.dvd_primPart_iff_dvd](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/isprimitive-dvd-primpart-iff-dvd--4b25934fb155a5f8a99f0e2e.md) | 385 | `result-track:4b25934fb155a5f8a99f0e2e392e10a66c5eb590dd9c0a62b2760e932269f996` |
| 46 | `theorem` | [exists_primitive_lcm_of_isPrimitive](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/exists-primitive-lcm-of-isprimitive--87f86037ab2438163f765eb1.md) | 392 | `result-track:87f86037ab2438163f765eb1dabaa97cd9ed2b4ba9203ae85402567394da4666` |
| 47 | `theorem` | [dvd_iff_content_dvd_content_and_primPart_dvd_primPart](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/dvd-iff-content-dvd-content-and-primpart-dvd-primpart--b57b3ed0c6c053743310b11e.md) | 434 | `result-track:b57b3ed0c6c053743310b11e95b0fd2017eed181f018261bd2a1b639ac791774` |
| 48 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/instance--00909a8e242c5e2ecc0d1f13.md) | 443 | `declaration-track:00909a8e242c5e2ecc0d1f135f619dec4ea0a035b755adc5e638465b71d40a72` |
| 49 | `theorem` | [degree_gcd_le_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/degree-gcd-le-left--927e06e67973a781af82d6b2.md) | 461 | `result-track:927e06e67973a781af82d6b22cbb0ed9f031904e003ae8a7850b4556e571ba9b` |
| 50 | `theorem` | [degree_gcd_le_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Content/Variantf4664fe9f8a0290156140ccab902b7079dddb895f9d5a12e912aad9425bc8551.lean/declarations/degree-gcd-le-right--81840d023e10440dde410dac.md) | 465 | `result-track:81840d023e10440dde410dac0d582eb71d83529af1074609efe286db49616fd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
