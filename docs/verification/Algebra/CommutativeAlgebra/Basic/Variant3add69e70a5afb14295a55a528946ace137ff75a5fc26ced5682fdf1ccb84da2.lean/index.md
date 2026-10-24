# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "05e9b05e825cf98ee7ea572b5770a505a39c6b6a",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `05e9b05e825cf98ee7ea572b5770a505a39c6b6a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Separable` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_image_polynomial_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/card-image-polynomial-eval--d56532c6896a4f2e4f3a347b.md) | 65 | `result-track:d56532c6896a4f2e4f3a347b19a9c5b35aa7cb840deb5bb27b4f99ccda54b277` |
| 2 | `theorem` | [exists_root_sum_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/exists-root-sum-quadratic--8f054b7050ecdedd05c1f9af.md) | 76 | `result-track:8f054b7050ecdedd05c1f9afc7afc8c8d9525f2bca5fc0566261107129de1a2d` |
| 3 | `theorem` | [prod_univ_units_id_eq_neg_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/prod-univ-units-id-eq-neg-one--0b63c1b9283870d689339962.md) | 104 | `result-track:0b63c1b9283870d6893399623f6ad87ad96641128bba55651f79ca193f40d13b` |
| 4 | `theorem` | [pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/pow-card-sub-one-eq-one--0a7fb614f4796b7cc3e55e62.md) | 118 | `result-track:0a7fb614f4796b7cc3e55e624b2504865a0691be87aff0b9222c81f1f9bd79b1` |
| 5 | `theorem` | [pow_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/pow-card--b77647b30107a21ebfa1749b.md) | 128 | `result-track:b77647b30107a21ebfa1749b1a85d7173002c2c5b51606bb46aaf8f653f18c91` |
| 6 | `theorem` | [pow_card_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/pow-card-pow--68ab92c5cc0525b134d27fd7.md) | 135 | `result-track:68ab92c5cc0525b134d27fd7b5bcf62d8daeda4e607469a26e87e63513575503` |
| 7 | `theorem` | [card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/card--e5149056fc109b32111d81fe.md) | 145 | `result-track:e5149056fc109b32111d81fe6c776e1ce30009c8937c216964276747dfd0304c` |
| 8 | `theorem` | [card'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/card--f12ad97b81e4b1b8513f00e8.md) | 159 | `result-track:f12ad97b81e4b1b8513f00e80e7fe36ec7c5e21e07b7cbb2bf128c2d7b4e7747` |
| 9 | `theorem` | [cast_card_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/cast-card-eq-zero--4f07e7fd702339c52e5840d5.md) | 165 | `result-track:4f07e7fd702339c52e5840d5e219b3f05bf52828489b2fd0c2a143cd6616bb7f` |
| 10 | `theorem` | [forall_pow_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/forall-pow-eq-one-iff--570f75bf0de6e97ab4664e33.md) | 169 | `result-track:570f75bf0de6e97ab4664e33f01ee837b1bd9920a672ad3a7938bbfb2d6ea05b` |
| 11 | `theorem` | [sum_pow_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/sum-pow-units--ef93afc4712d73f4b7c6647f.md) | 184 | `result-track:ef93afc4712d73f4b7c6647f5c52dc5ce631035480a6dfc84eb6032ab5b55f07` |
| 12 | `theorem` | [sum_pow_lt_card_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/sum-pow-lt-card-sub-one--8b2528e8f6395c5f7951c71d.md) | 206 | `result-track:8b2528e8f6395c5f7951c71df89256c8d17c7636584037d8cfd1a7752e61c6b9` |
| 13 | `theorem` | [X_pow_card_sub_X_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/x-pow-card-sub-x-natdegree-eq--753fcc8c4873de2a17d5ca5f.md) | 230 | `result-track:753fcc8c4873de2a17d5ca5fba2da43bb831d6cd84873c02ec4f1deabf92159b` |
| 14 | `theorem` | [X_pow_card_pow_sub_X_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/x-pow-card-pow-sub-x-natdegree-eq--01a0a9d744455873be45c6a6.md) | 239 | `result-track:01a0a9d744455873be45c6a628ce391ea490c01c358000ebc4cc04df01b0bea8` |
| 15 | `theorem` | [X_pow_card_sub_X_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/x-pow-card-sub-x-ne-zero--cb3ace28420b4b3e7bd91da9.md) | 245 | `result-track:cb3ace28420b4b3e7bd91da9d3eb377d8fcc32418df0612314d38f0d2f21518b` |
| 16 | `theorem` | [X_pow_card_pow_sub_X_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/x-pow-card-pow-sub-x-ne-zero--319c8368c4e35a692e936027.md) | 253 | `result-track:319c8368c4e35a692e936027630d5901facf6fc92d516b1cb7f7e0ee7d38c5d6` |
| 17 | `theorem` | [roots_X_pow_card_sub_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/roots-x-pow-card-sub-x--f97d957247fd267f7d272097.md) | 262 | `result-track:f97d957247fd267f7d27209709cb2b89789f96672a732146809acf989b7d5452` |
| 18 | `theorem` | [frobenius_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/frobenius-pow--deb1851a00f79b900c70ab60.md) | 281 | `result-track:deb1851a00f79b900c70ab60bc46aa14d9184cb2a605fbcb90ae9a2c1ae9ec7f` |
| 19 | `theorem` | [expand_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/expand-card--070a79027cb7600b31ec127b.md) | 292 | `result-track:070a79027cb7600b31ec127bb375f484de63265fd266247c23e25353dc1b3460` |
| 20 | `theorem` | [sq_add_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/sq-add-sq--2657ccdb9c65c881d15b03bc.md) | 307 | `result-track:2657ccdb9c65c881d15b03bcae30e36986a02201b1f0059ed7de240d704547b7` |
| 21 | `theorem` | [Nat.sq_add_sq_zmodEq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/nat-sq-add-sq-zmodeq--39c4e2a3d02ffe2d9f8b4e71.md) | 329 | `result-track:39c4e2a3d02ffe2d9f8b4e71eddd3e325c25843c6a396168b51ab86883567ba9` |
| 22 | `theorem` | [Nat.sq_add_sq_modEq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/nat-sq-add-sq-modeq--24adb1e2b8dcb83e664dce92.md) | 342 | `result-track:24adb1e2b8dcb83e664dce92dda60392e03e65df02c00916f8d0998915be6faa` |
| 23 | `theorem` | [sq_add_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/sq-add-sq--918bac6b522233ac096afebc.md) | 348 | `result-track:918bac6b522233ac096afebccb025e30c42572a638f31f266c2bd54f1a3d4a17` |
| 24 | `theorem` | [ZMod.pow_totient](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/zmod-pow-totient--450974f34639ded9d6a5d0df.md) | 365 | `result-track:450974f34639ded9d6a5d0dfe94a91e9528e43237be4d70daaa1094d117a4733` |
| 25 | `theorem` | [Nat.ModEq.pow_totient](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/nat-modeq-pow-totient--3bd3867dae5cf03ebee7f4a3.md) | 373 | `result-track:3bd3867dae5cf03ebee7f4a3eb7c971188512f563a6fd4c8a9735bea9d80b936` |
| 26 | `theorem` | [card_eq_pow_finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/card-eq-pow-finrank--db9986ec1dcd671cafc00337.md) | 389 | `result-track:db9986ec1dcd671cafc00337b5123e3794868fc1ad0ae0a174782cb59300a478` |
| 27 | `theorem` | [pow_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/pow-card--8137dd67b742c0f13950f28e.md) | 402 | `result-track:8137dd67b742c0f13950f28ecd5f00f7c672f4f1c240cb558ffe11ddf6d13dc3` |
| 28 | `theorem` | [pow_card_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/pow-card-pow--ec3968011434411fdc3d78f6.md) | 407 | `result-track:ec3968011434411fdc3d78f6bba12d905a9cea486b7502c18e300ff321621af6` |
| 29 | `theorem` | [frobenius_zmod](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/frobenius-zmod--eb4563f899bf0f7d81487e38.md) | 414 | `result-track:eb4563f899bf0f7d81487e38551b52d71881c5497783b22f0ab76e4194629547` |
| 30 | `theorem` | [card_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/card-units--c9da4a39fe9fbdd6ea76cef8.md) | 420 | `result-track:c9da4a39fe9fbdd6ea76cef8fc3842022e5742d00465a002b6c43de9db69f47b` |
| 31 | `theorem` | [units_pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/units-pow-card-sub-one-eq-one--0e576f86d7c0e1646b2e6be4.md) | 425 | `result-track:0e576f86d7c0e1646b2e6be4e9b1aac16f2cc318be235e5c67e4554407c69f7c` |
| 32 | `theorem` | [pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/pow-card-sub-one-eq-one--a7e188012db81230c4dd8eac.md) | 430 | `result-track:a7e188012db81230c4dd8eac8dafa64ec64356eb746c8d8e721f2c19af0aa41c` |
| 33 | `theorem` | [orderOf_units_dvd_card_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/orderof-units-dvd-card-sub-one--6c7cd6f4b3d268f4a60b753a.md) | 436 | `result-track:6c7cd6f4b3d268f4a60b753a614754b528e3f9211d5ea15e3a7f039c7bbaafa5` |
| 34 | `theorem` | [orderOf_dvd_card_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/orderof-dvd-card-sub-one--3e5be03e1e93e13891a89cf4.md) | 440 | `result-track:3e5be03e1e93e13891a89cf4acd74519c033d8f1460b75654dbf0945e694b7ab` |
| 35 | `theorem` | [expand_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/expand-card--57134a9856692c4926d1bfa0.md) | 447 | `result-track:57134a9856692c4926d1bfa0bbcee316e9e3d7aa8f225e93ea0314fe74708917` |
| 36 | `theorem` | [Int.ModEq.pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/int-modeq-pow-card-sub-one-eq-one--92b3d420171b65f7c97e0c87.md) | 455 | `result-track:92b3d420171b65f7c97e0c87483e6b7e2b4d8b829625e6fa7be612590c12b6c2` |
| 37 | `theorem` | [isSquare_of_char_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/issquare-of-char-two--3fee51ec3c38a0a0ea343dba.md) | 475 | `result-track:3fee51ec3c38a0a0ea343dba5dc916948ef34ed08c7218f9ca3097945c35036e` |
| 38 | `theorem` | [exists_nonsquare](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/exists-nonsquare--76dc5b4e70fa4ed3fcfa9492.md) | 481 | `result-track:76dc5b4e70fa4ed3fcfa9492b43b1e69b800994269e07aa2a20a0c64dde9ef07` |
| 39 | `theorem` | [even_card_iff_char_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/even-card-iff-char-two--93089b20c1a4b49832612643.md) | 501 | `result-track:93089b20c1a4b49832612643101fe55cc1999fc7bf4b28081f6745d5e2b786c8` |
| 40 | `theorem` | [even_card_of_char_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/even-card-of-char-two--22c59447255925b8bb9c895f.md) | 513 | `result-track:22c59447255925b8bb9c895f12ad6f01680cb85f9d594ecffd785ea5d058c580` |
| 41 | `theorem` | [odd_card_of_char_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/odd-card-of-char-ne-two--d2347f87d44d6bf35a8bb802.md) | 517 | `result-track:d2347f87d44d6bf35a8bb8021f371933a350fbc0b6563a4ffdcd1b2ee039b887` |
| 42 | `theorem` | [pow_dichotomy](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/pow-dichotomy--1e82d0704bb5020587affd9c.md) | 522 | `result-track:1e82d0704bb5020587affd9c0a4162faaa5620a2f752662cfb6f69bac5a57a57` |
| 43 | `theorem` | [unit_isSquare_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/unit-issquare-iff--4d6db43956dc9313eb66664d.md) | 532 | `result-track:4d6db43956dc9313eb66664d0e1ac2f1a44c8922eebcf3e2802c655115c3c05e` |
| 44 | `theorem` | [isSquare_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant3add69e70a5afb14295a55a528946ace137ff75a5fc26ced5682fdf1ccb84da2.lean/declarations/issquare-iff--8ff120d6d8e04d63df460f28.md) | 557 | `result-track:8ff120d6d8e04d63df460f28d8c868fe5eadd3eb10d41dea88c7ad2276bb7341` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
