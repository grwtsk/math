# Verification target: GRWTSK.Algebra.Result.Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "94f7db976f56cb5607ea8cb1a42e5f0cb7fc46ba",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/index.md) · [Full source](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `94f7db976f56cb5607ea8cb1a42e5f0cb7fc46ba`.

Source path: `GRWTSK/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Nat` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Qq.MetaM` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [instAddMonoidWithOneNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/instaddmonoidwithonenat--2f91237ff6bb7190e2f2cc7f.md) | 38 | `declaration-track:2f91237ff6bb7190e2f2cc7f0146ac9d3129341e4c880f96f7df1d51c4754228` |
| 2 | `def` | [instAddMonoidWithOne](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/instaddmonoidwithone--c63271709c550151fbcfa94a.md) | 41 | `declaration-track:c63271709c550151fbcfa94a845ba8ebbc3937faa8f8e7b75ce228be75cfa661` |
| 3 | `def` | [inferAddMonoidWithOne](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/inferaddmonoidwithone--508b7b60c3d7b4d5d6f0162c.md) | 44 | `declaration-track:508b7b60c3d7b4d5d6f0162c6613a7efc2f48b1bb1a7b6e4985ed060fe7d157e` |
| 4 | `def` | [inferSemiring](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/infersemiring--426e1176f774b38a5c09ca04.md) | 49 | `declaration-track:426e1176f774b38a5c09ca04e323a18f9c05d048d8befa05a860306fd19b36c6` |
| 5 | `def` | [inferRing](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/inferring--e40f4e99d287f088ef864b35.md) | 53 | `declaration-track:e40f4e99d287f088ef864b350d1626db066e9f42d309bd0a1f94930aab890935` |
| 6 | `def` | [mkRawIntLit](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/mkrawintlit--b08a634dc2a3c74a2887a71b.md) | 65 | `declaration-track:b08a634dc2a3c74a2887a71bf7f1b057d41e00acc05b7704027819fc0c371095` |
| 7 | `def` | [mkRawRatLit](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/mkrawratlit--7f62a7be4e6bb1df6c4fe4c3.md) | 76 | `declaration-track:7f62a7be4e6bb1df6c4fe4c3406a1b07bea9439d1689d91ab924a53875b4c264` |
| 8 | `def` | [rawIntLitNatAbs](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/rawintlitnatabs--5e11f244b1d87d6b8cecafed.md) | 83 | `declaration-track:5e11f244b1d87d6b8cecafedd90e79676eeb4ff68126277df40dea3fcf62f6ef` |
| 9 | `def` | [mkOfNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/mkofnat--72871181458876c2b5356b0c.md) | 101 | `declaration-track:72871181458876c2b5356b0c6f78ae85198de6f174faa2637c2b7c1f77156bc0` |
| 10 | `structure` | [IsNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat--e64f74a2108d0d202e743dca.md) | 125 | `declaration-track:e64f74a2108d0d202e743dcae6053f7f3f78b6e28aef13b6d676167bb39e7dc7` |
| 11 | `theorem` | [IsNat.raw_refl](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat-raw-refl--152e46cef8d91ea9cc8a4c7e.md) | 129 | `result-track:152e46cef8d91ea9cc8a4c7e9e5b4c62edb4f19833e887b4a49983480d9e4988` |
| 12 | `def` | [_root_.Nat.rawCast](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/root-nat-rawcast--038ffc963383f60999adda20.md) | 136 | `declaration-track:038ffc963383f60999adda20815d4e3748a94f7eedd487e9c93e296508571ff7` |
| 13 | `theorem` | [IsNat.to_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat-to-eq--e2dfc13f75af64a96c5f8128.md) | 138 | `result-track:e2dfc13f75af64a96c5f8128b24c42c0c3f5857be407d132a7a9ddee1f1f957c` |
| 14 | `theorem` | [IsNat.to_raw_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat-to-raw-eq--437d9f7905ce92aeda833cb1.md) | 141 | `result-track:437d9f7905ce92aeda833cb1c58ec98e12fad1d0a9588c9b3ac41c05a702abbe` |
| 15 | `theorem` | [IsNat.of_raw](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat-of-raw--0a4b94abb2c1a12267b926e3.md) | 144 | `result-track:0a4b94abb2c1a12267b926e3470783c758d82fa563e33c42942a66751a5f3302` |
| 16 | `theorem` | [isNat.natElim](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat-natelim--771d64bd9f0bedb0c27d75cf.md) | 147 | `result-track:771d64bd9f0bedb0c27d75cf7627ffea85c0e12343c6c8bd688e66c9c0106407` |
| 17 | `structure` | [IsInt](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isint--58a52fe4f1c30c7ef65f97b9.md) | 151 | `declaration-track:58a52fe4f1c30c7ef65f97b913a6199ffaae9db6d9185c1a2062a279269e3487` |
| 18 | `def` | [_root_.Int.rawCast](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/root-int-rawcast--2dbe8f6f423e0aa129e6bc8d.md) | 165 | `declaration-track:2dbe8f6f423e0aa129e6bc8d535e4e73f99b609283a6a668cf069218b5a314b7` |
| 19 | `theorem` | [IsInt.to_isNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isint-to-isnat--8f884605e2a35299390589f2.md) | 167 | `result-track:8f884605e2a35299390589f2d2ef702c962bbae968e015c0dfd048320cacc4e5` |
| 20 | `theorem` | [IsNat.to_isInt](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat-to-isint--34add209e2203060aa6c86ef.md) | 170 | `result-track:34add209e2203060aa6c86efde71ac91e6b4a74215a0cbd8f323407b287c499a` |
| 21 | `theorem` | [IsInt.to_raw_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isint-to-raw-eq--28191564f7d0260cd7bb207f.md) | 173 | `result-track:28191564f7d0260cd7bb207fdbd5cadb4eacf2853c002b55afc8a518116eaa91` |
| 22 | `theorem` | [IsInt.of_raw](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isint-of-raw--03bbf5875ad41b3c7b3d18e7.md) | 176 | `result-track:03bbf5875ad41b3c7b3d18e73641b47b60d9cd1e45c2e39d2df3c9b6b2f34e85` |
| 23 | `theorem` | [IsInt.neg_to_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isint-neg-to-eq--aa30e9ff0f8e3482c0407bf9.md) | 178 | `result-track:aa30e9ff0f8e3482c0407bf99ed89c71d8f887166aec647ec0e00b769208e7b6` |
| 24 | `theorem` | [IsInt.nonneg_to_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isint-nonneg-to-eq--6b90129781043f2bbd39105c.md) | 182 | `result-track:6b90129781043f2bbd39105ccde328ad4a262d88d78d8c541429c761ba2aaed9` |
| 25 | `inductive` | [IsRat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt--4a6b679f6d8b7d7c13773da1.md) | 191 | `declaration-track:4a6b679f6d8b7d7c13773da1ea8c5afdaddbc97cdf61a77a0c5678d6a08179ab` |
| 26 | `def` | [_root_.Rat.rawCast](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/root-rat-rawcast--3696088f75a8ffca9baf37d8.md) | 209 | `declaration-track:3696088f75a8ffca9baf37d8cbf9c7e573b58ca68d0b57c788c6d74c1e03ec88` |
| 27 | `theorem` | [IsRat.to_isNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt-to-isnat--9f688daa05361d3cd15799be.md) | 211 | `result-track:9f688daa05361d3cd15799be74213547eb90fe75f258f6312771a2b3d26b4bb5` |
| 28 | `theorem` | [IsNat.to_isRat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isnat-to-israt--7c909b26640ee3495d0097ad.md) | 214 | `result-track:7c909b26640ee3495d0097ad61b7d199f8c601727eed69e5f44e401c683e406c` |
| 29 | `theorem` | [IsRat.to_isInt](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt-to-isint--2481c8c9e70797bde7e460cd.md) | 217 | `result-track:2481c8c9e70797bde7e460cd891def279bc0b0bdbae6a389da12641be217d1c2` |
| 30 | `theorem` | [IsInt.to_isRat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/isint-to-israt--fb64e039d3cd828872e10fda.md) | 220 | `result-track:fb64e039d3cd828872e10fdaf610eee079c718df734aeb290d4048f6618111c5` |
| 31 | `theorem` | [IsRat.to_raw_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt-to-raw-eq--429ca87e5342feee6c9c5f2e.md) | 223 | `result-track:429ca87e5342feee6c9c5f2e484eedb32a7bbdc5784aeb04e9c6b9a6cbe9fe32` |
| 32 | `theorem` | [IsRat.neg_to_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt-neg-to-eq--1d36c806f03b9dcc101743c1.md) | 227 | `result-track:1d36c806f03b9dcc101743c149ec7bb69e51d4d3c33f51ad3304da2f1a2e91f6` |
| 33 | `theorem` | [IsRat.nonneg_to_eq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt-nonneg-to-eq--115be31b281874da0ef2a9e5.md) | 231 | `result-track:115be31b281874da0ef2a9e59735c06f9ae972dd11e5afea5eab4513131b8794` |
| 34 | `theorem` | [IsRat.of_raw](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt-of-raw--5e8ac2998d93d34d7e6dafa2.md) | 235 | `result-track:5e8ac2998d93d34d7e6dafa2fde67e8e716242375d6aa9c92b169cd0f7068993` |
| 35 | `theorem` | [IsRat.den_nz](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/israt-den-nz--1eeee2f5ea3a7f80f9f0d270.md) | 240 | `result-track:1eeee2f5ea3a7f80f9f0d270878978dd42975f41e1c3ab56f7bdb99066213b0f` |
| 36 | `inductive` | [Result'](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result--84d171de3cec9858557d53a6.md) | 245 | `declaration-track:84d171de3cec9858557d53a6664f494c207c2c7c4644d0473e061056d7c4c04c` |
| 37 | `def` | [Result](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result--56b72075a0f5986dc66d56f9.md) | 260 | `declaration-track:56b72075a0f5986dc66d56f97854728d83c2d953a6fa70af180296bf679b1fef` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/instance--f864ae51a9e0db73e2508f9a.md) | 262 | `declaration-track:f864ae51a9e0db73e2508f9ad2b14ad0d0669bc120dbf393080d4b9186321bd0` |
| 39 | `def` | [Result.isTrue](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-istrue--ba316bc0a91ed89e6e284e6a.md) | 265 | `declaration-track:ba316bc0a91ed89e6e284e6ace7c432fc6f725ad32d44f73c7a744637ddfde70` |
| 40 | `def` | [Result.isFalse](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-isfalse--85fe680db0ae4642b9d5d84b.md) | 269 | `declaration-track:85fe680db0ae4642b9d5d84b67d4afd3eb8236482e5e3c8685b1b00fdf2a0f8a` |
| 41 | `def` | [Result.isNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-isnat--2737fa3dfd0c5ac124713a08.md) | 273 | `declaration-track:2737fa3dfd0c5ac124713a084e93794f853e2b9b5a4832b765699e96d56dea7e` |
| 42 | `def` | [Result.isNegNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-isnegnat--bd20f9d3433c2ef69ed8bffb.md) | 279 | `declaration-track:bd20f9d3433c2ef69ed8bffbf83cc983e46953f2f745eb80aad8b10e2b399838` |
| 43 | `def` | [Result.isRat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-israt--df3940c00fd5b0eda4946ef4.md) | 287 | `declaration-track:df3940c00fd5b0eda4946ef4f038ad38786e5d36bbc540720de31dc93213edc4` |
| 44 | `def` | [Result.isInt](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-isint--cf187d7c88f9d29122177eaa.md) | 296 | `declaration-track:cf187d7c88f9d29122177eaa786582ffb70ba466ba0ab479aa8864e56543de44` |
| 45 | `def` | [Result.isRat'](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-israt--524bd5ef6330bd598de41836.md) | 307 | `declaration-track:524bd5ef6330bd598de41836048a351cf9aa15dd405ef23804a7c8637bde99e3` |
| 46 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/instance--4ec244cc03171b5e7f28ae62.md) | 315 | `declaration-track:4ec244cc03171b5e7f28ae62283977a17587996371b74fc15148fa7cbcda950f` |
| 47 | `def` | [Result.toRat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-torat--dc9832a4dfe3d50290aa626f.md) | 324 | `declaration-track:dc9832a4dfe3d50290aa626fa5b95a80d69d9f183a3873815f95c4a2170592b1` |
| 48 | `def` | [Result.toRatNZ](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-toratnz--65992142cbf36a3dc1818147.md) | 332 | `declaration-track:65992142cbf36a3dc181814791d6443340e0f1a853b76d92b3aac3393688809e` |
| 49 | `def` | [Result.toInt](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-toint--59a938e2738d81b5bbac43e6.md) | 342 | `declaration-track:59a938e2738d81b5bbac43e6cd59c25ab33861a2ee93ae311ba9ef5d3a1cdf39` |
| 50 | `def` | [Result.toRat'](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-torat--e5e5d67fbeff965e78bc6910.md) | 354 | `declaration-track:e5e5d67fbeff965e78bc6910f1b1deb2a8ab2dfb74e8a0b0c48328cb64680164` |
| 51 | `def` | [Result.toRawEq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-toraweq--d6a1ba84a19c59b3f84cffa9.md) | 372 | `declaration-track:d6a1ba84a19c59b3f84cffa995f2e2ab744261d6da2ad41792b9f42ece20e59a` |
| 52 | `def` | [Result.toRawIntEq](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-torawinteq--90930ebb632abaef50a8032e.md) | 389 | `declaration-track:90930ebb632abaef50a8032e79a91376934b6311523be9f693479603eb6a1e81` |
| 53 | `def` | [Result.ofRawNat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-ofrawnat--ae1fe4cde0a343b69526405f.md) | 396 | `declaration-track:ae1fe4cde0a343b69526405f3b024c7dccbc2c390a4058c97cc46a4053d3c9de` |
| 54 | `def` | [Result.ofRawInt](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-ofrawint--62aa5d587b7927bc8cece0b4.md) | 402 | `declaration-track:62aa5d587b7927bc8cece0b4066abd73328ec78da0947025ef8866bbdc1847d8` |
| 55 | `def` | [Result.ofRawRat](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-ofrawrat--57b718596671e85828112e0f.md) | 411 | `declaration-track:57b718596671e85828112e0fddb4ad54f08fdc8f779e438da8cab17524b2373a` |
| 56 | `def` | [Result.toSimpResult](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-tosimpresult--a6be738478b8d807829d8a86.md) | 421 | `declaration-track:a6be738478b8d807829d8a86780f7316be54ce279304a07b5395a27e67233c28` |
| 57 | `abbrev` | [BoolResult](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/boolresult--def2864b0dfb7b7646ebec6a.md) | 446 | `declaration-track:def2864b0dfb7b7646ebec6ad8b2eb1b7bc6339c23c5a5c1e7c6c6e374088b1a` |
| 58 | `def` | [Result.ofBoolResult](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-ofboolresult--3a3859bbaaf5b2ce19dd1a4f.md) | 450 | `declaration-track:3a3859bbaaf5b2ce19dd1a4fa5b9005cd1027ee7b20a6546a679dff7c7051c5c` |
| 59 | `def` | [Result.eqTrans](../../../../mathematics/Algebra/Result/Variantc65a0aee8bea44421154ffced94c3b9593f6986e52a5fec7cfbae91026c14a30.lean/declarations/result-eqtrans--2048468a4e4a4491e63db791.md) | 454 | `declaration-track:2048468a4e4a4491e63db791b9d7af106b54fcd152365e9e0eb31449a2f37c9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
