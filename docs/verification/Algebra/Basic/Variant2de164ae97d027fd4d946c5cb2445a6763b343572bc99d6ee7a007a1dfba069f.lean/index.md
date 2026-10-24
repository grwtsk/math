# Verification target: GRWTSK.Algebra.Basic.Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac43b3823515235d149df4e8a6f15e95d76c627d",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac43b3823515235d149df4e8a6f15e95d76c627d`.

Source path: `GRWTSK/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Commute` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ClearExclamation` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsInt.raw_refl](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isint-raw-refl--ae1ee12015504b4bcbc5daa1.md) | 35 | `result-track:ae1ee12015504b4bcbc5daa124bdedd853ee81c7267950cb607779b7bff52665` |
| 2 | `theorem` | [isNat_zero](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-zero--b493974bdd13e14a2adcff47.md) | 39 | `result-track:b493974bdd13e14a2adcff47c3aa6ae308e821167f0ad98c2b16a56315c05467` |
| 3 | `def` | [evalZero](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalzero--b8fc07346f6c4b2b29816853.md) | 43 | `declaration-track:b8fc07346f6c4b2b29816853f35fae71de86249d3c7b1b24b04dcf9ec30fa425` |
| 4 | `theorem` | [isNat_one](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-one--ba22c12e8d74d83d0c54cf02.md) | 48 | `result-track:ba22c12e8d74d83d0c54cf0266e0307109fb36da68e7b6a02b8571ce3e2397eb` |
| 5 | `def` | [evalOne](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalone--4041c1d4e74e2904d26817ae.md) | 51 | `declaration-track:4041c1d4e74e2904d26817aeeac7cbad5ea21734176fac0fa3489c92b32b5c5c` |
| 6 | `theorem` | [isNat_ofNat](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-ofnat--2424741fa59a541b31cfcd8c.md) | 56 | `result-track:2424741fa59a541b31cfcd8cb798265736007d63f4eec28b013e10cd396f3ad0` |
| 7 | `def` | [evalOfNat](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalofnat--1db4ff68d8406660d6b12f40.md) | 60 | `declaration-track:1db4ff68d8406660d6b12f40ebd95f14f1af7a7b0e00446147260eec77899d45` |
| 8 | `theorem` | [isNat_intOfNat](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-intofnat--4a761720cab78c3d2ecf41b1.md) | 70 | `result-track:4a761720cab78c3d2ecf41b1cb461c7f316b4b56dc94b5c1bdc1b763c98b988e` |
| 9 | `def` | [evalIntOfNat](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalintofnat--8a7f6a917628bc6e26334e53.md) | 75 | `declaration-track:8a7f6a917628bc6e26334e530d1af044004872eda74a6fd02092b206047394cf` |
| 10 | `theorem` | [isNat_natAbs_pos](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-natabs-pos--1017b060356ccb2f9e8a956d.md) | 84 | `result-track:1017b060356ccb2f9e8a956d3d17854226e1df726e7454083bbe0218b976154e` |
| 11 | `theorem` | [isNat_natAbs_neg](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-natabs-neg--32abc364ad10d88252dfc58f.md) | 87 | `result-track:32abc364ad10d88252dfc58fd6a81e46c4cbb08156deb72e2392956b0c584fc3` |
| 12 | `def` | [evalIntNatAbs](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalintnatabs--7e016c501c7a621c858a6f54.md) | 92 | `declaration-track:7e016c501c7a621c858a6f548250d1b6c98f3c4fc7e72866584c41eb4428f329` |
| 13 | `theorem` | [isNat_natCast](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-natcast--231b052895c988dddee1bbe9.md) | 104 | `result-track:231b052895c988dddee1bbe9f1f67499b4d404029fc66d1770d2f1935645ef78` |
| 14 | `def` | [evalNatCast](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalnatcast--5b22f2c8aee92d4657bdce2a.md) | 108 | `declaration-track:5b22f2c8aee92d4657bdce2a2bdce8a6760b0fa317bf7b67cd3f86e25bca418e` |
| 15 | `theorem` | [isNat_intCast](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-intcast--cc07ae4a819e7a1bff2cc2f3.md) | 116 | `result-track:cc07ae4a819e7a1bff2cc2f32968ed0ee389668f0ab9538711a47fd44fbb16b5` |
| 16 | `theorem` | [isintCast](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isintcast--503d91938eb2e12fc4d5d0b2.md) | 119 | `result-track:503d91938eb2e12fc4d5d0b2621afad222facd6caf458832935bbe04f10404df` |
| 17 | `def` | [evalIntCast](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalintcast--879bf1d6cedd5a39e02b44f4.md) | 123 | `declaration-track:879bf1d6cedd5a39e02b44f447b727200e03738831fd5e75a730d48259f5cbe3` |
| 18 | `theorem` | [isNat_add](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-add--635c4e4ccf6694b9620f43a8.md) | 155 | `result-track:635c4e4ccf6694b9620f43a82d70618d47088bf606c4463465fa7e008d4dff89` |
| 19 | `theorem` | [isInt_add](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isint-add--2814e1d6a260e4bc962ed543.md) | 160 | `result-track:2814e1d6a260e4bc962ed54381a26f5dcdfd81c89b92ff7841234a1403a1629c` |
| 20 | `def` | [invertibleOfMul](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/invertibleofmul--74b69aa609188ede823f7f15.md) | 165 | `declaration-track:74b69aa609188ede823f7f15c18c0fe8ea4cd45ee40cb3d78250e10618854ce9` |
| 21 | `def` | [invertibleOfMul'](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/invertibleofmul--171c5feffa8c17841be3e931.md) | 173 | `declaration-track:171c5feffa8c17841be3e931925efb3d29f6af4169a44a7ba4ed08f88dc56511` |
| 22 | `theorem` | [isRat_add](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/israt-add--a12c9c793702badc146c7530.md) | 178 | `result-track:a12c9c793702badc146c7530bfaed45e3a6c11975d43b1d4d9aa3780eda6de95` |
| 23 | `def` | [_root_.Mathlib.Meta.monadLiftOptionMetaM](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/root-mathlib-meta-monadliftoptionmetam--adfc5ff3d148321d9db03c7a.md) | 199 | `declaration-track:adfc5ff3d148321d9db03c7a3c30941a3c001c1b6ef0104a7f5c151804915299` |
| 24 | `def` | [evalAdd](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evaladd--6d04adf647bd916f130b8d42.md) | 207 | `declaration-track:6d04adf647bd916f130b8d423ff9b260530fc36f594ae761d04576c296d633e0` |
| 25 | `theorem` | [isInt_neg](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isint-neg--ea491792578c36ab355ace3e.md) | 257 | `result-track:ea491792578c36ab355ace3e2eb85236f074df07b816757c26bf31839538574c` |
| 26 | `theorem` | [isRat_neg](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/israt-neg--695cbebb82f9d3b4a65859d7.md) | 262 | `result-track:695cbebb82f9d3b4a65859d7d3201c40ac150a40bd4cf3894aa4b364783a85a3` |
| 27 | `def` | [evalNeg](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalneg--efe6093aa42df9936c8262f1.md) | 269 | `declaration-track:efe6093aa42df9936c8262f1c6f9532cb454baa0672064cbbcb80dc92c154d31` |
| 28 | `theorem` | [isInt_sub](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isint-sub--384255445e38551aa24f2c66.md) | 300 | `result-track:384255445e38551aa24f2c66d7dcd8f1a43dfa0d03f926f8620e8f20f43a6fb8` |
| 29 | `theorem` | [isRat_sub](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/israt-sub--35471fdb9de8ff8b5586e0a3.md) | 305 | `result-track:35471fdb9de8ff8b5586e0a3bfa6c2cda3a53763c30d91fa9b928cae4ab736de` |
| 30 | `def` | [evalSub](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalsub--01ba40e9c06c0716c87d1177.md) | 317 | `declaration-track:01ba40e9c06c0716c87d11773348dfd94e21d0a9ffdd427d89c30cbbd6c489ec` |
| 31 | `theorem` | [isNat_mul](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-mul--66643588ac42f0e438ec956f.md) | 356 | `result-track:66643588ac42f0e438ec956fdf41113fd3e8ded916f401c74785ffda0b718618` |
| 32 | `theorem` | [isInt_mul](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isint-mul--ca3f5a9ebdc00cac6da4422a.md) | 361 | `result-track:ca3f5a9ebdc00cac6da4422a64437ac7bd91b5c1336d2fcc242c95089bcac0bb` |
| 33 | `theorem` | [isRat_mul](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/israt-mul--1b1c000d7c3636468d42ff20.md) | 365 | `result-track:1b1c000d7c3636468d42ff2064dad174052dc1857f9679dfd2f3018cb9be85b9` |
| 34 | `def` | [evalMul](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalmul--be1b38dbe100c8f71c97f517.md) | 388 | `declaration-track:be1b38dbe100c8f71c97f5177c669e7c155e9ba4d262572f8e16652bb1966224` |
| 35 | `theorem` | [isRat_div](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/israt-div--dafc75b1fdb949e6664bcc81.md) | 431 | `result-track:dafc75b1fdb949e6664bcc81f772486f0a779ffb81aefe50e775c9d1f6aca192` |
| 36 | `def` | [inferDivisionRing](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/inferdivisionring--09e63087abff84111f1731f9.md) | 436 | `declaration-track:09e63087abff84111f1731f9974cadd4016bdb75b4d436cf10045fbcef6719c2` |
| 37 | `def` | [evalDiv](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evaldiv--50446db5a1cf213fe459cda5.md) | 442 | `declaration-track:50446db5a1cf213fe459cda5bc17a662dc2e5c28fa1b803e64fc4ba3f86b70dd` |
| 38 | `def` | [evalTrue](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evaltrue--c397bd5d283d7279295bd2ff.md) | 455 | `declaration-track:c397bd5d283d7279295bd2ff8ebfe049ec1b062141ffca1db398d1b61745b192` |
| 39 | `def` | [evalFalse](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalfalse--f1429a1923a35b966fdb299d.md) | 459 | `declaration-track:f1429a1923a35b966fdb299d071ba66c5a96f477ea4a6ad0322eda6936ffa38e` |
| 40 | `def` | [evalNot](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalnot--bde4d291251b217f37cbfb0f.md) | 464 | `declaration-track:bde4d291251b217f37cbfb0f869ad2a58cf853bfe012f32033bba1cd4abb76fd` |
| 41 | `theorem` | [isNat_eq_true](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-eq-true--3aaf4c6dcf55de3f514c623f.md) | 476 | `result-track:3aaf4c6dcf55de3f514c623fcd35c4ce99ad7b25dae05cd2ea32f3f5bba832f6` |
| 42 | `theorem` | [ble_eq_false](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/ble-eq-false--51b548f7fee8f1fba281644b.md) | 480 | `result-track:51b548f7fee8f1fba281644b06599da45cd5de31cd509543b491e91cfa1f9b61` |
| 43 | `theorem` | [isInt_eq_true](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isint-eq-true--e2ddc2b8056c6e7c82082107.md) | 483 | `result-track:e2ddc2b8056c6e7c820821072e70f9a0af2c024037c84d189ab8880f86479a21` |
| 44 | `theorem` | [isRat_eq_true](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/israt-eq-true--def78d35d8365f4a64c8a6ce.md) | 486 | `result-track:def78d35d8365f4a64c8a6ceae950d9455ebac901cce18f5245c7c261814b144` |
| 45 | `theorem` | [eq_of_true](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/eq-of-true--d86e13e61568d78644248bbb.md) | 490 | `result-track:d86e13e61568d78644248bbb9ed35516065f828e5c15dbda85d3fcf1c8e04a41` |
| 46 | `theorem` | [ne_of_false_of_true](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/ne-of-false-of-true--d80d115a50f2c49612f54c5c.md) | 491 | `result-track:d80d115a50f2c49612f54c5c309743d5fa1af7445b955f39b5db89d1b580ae62` |
| 47 | `theorem` | [ne_of_true_of_false](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/ne-of-true-of-false--06f1638a33c75fe031eceabb.md) | 492 | `result-track:06f1638a33c75fe031eceabbab45070ecf7af94bec42268e8710f92a966ddf50` |
| 48 | `theorem` | [eq_of_false](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/eq-of-false--93b85ac81d890643cc5df5fd.md) | 493 | `result-track:93b85ac81d890643cc5df5fd03274a5b59a8a8c529cb6991d46ada4262ecb95f` |
| 49 | `theorem` | [isNat_natSucc](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-natsucc--fc8cdfca27c26ecb3e8018bd.md) | 497 | `result-track:fc8cdfca27c26ecb3e8018bdbe1b1bf89dc72f39a002fbf383816f23a1e9c078` |
| 50 | `def` | [evalNatSucc](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalnatsucc--bbe969ee4fa185740ef7301e.md) | 503 | `declaration-track:bbe969ee4fa185740ef7301e26ab0f0ea9a34a071359bd709a25e99192175c95` |
| 51 | `theorem` | [isNat_natSub](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-natsub--3e47cf756ee35d6757a7d221.md) | 514 | `result-track:3e47cf756ee35d6757a7d221e691185093262837cf56af13a167216f7621565f` |
| 52 | `def` | [evalNatSub](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalnatsub--8e10dabccc7254d38dbdf6a4.md) | 520 | `declaration-track:8e10dabccc7254d38dbdf6a4c9ae28b850c5c1e1ec06161147763fb352403504` |
| 53 | `theorem` | [isNat_natMod](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-natmod--355fea73452ac59b70fb28c2.md) | 533 | `result-track:355fea73452ac59b70fb28c21b221ba57fcdc247342623b76e7e9a2f869fdfdc` |
| 54 | `def` | [evalNatMod](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalnatmod--7c0a556d5ea30dbbf1bf418e.md) | 539 | `declaration-track:7c0a556d5ea30dbbf1bf418ed010fd993f3b5dd34ce542f943fb6bfa99050e17` |
| 55 | `theorem` | [isNat_natDiv](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-natdiv--58bbde8c555583793410fbeb.md) | 552 | `result-track:58bbde8c555583793410fbebcafce4965a95019d851a5ee1ed9b6febb5a99e9d` |
| 56 | `def` | [evalNatDiv](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalnatdiv--9b91120d0bb61ed6d5fc9bfd.md) | 559 | `declaration-track:9b91120d0bb61ed6d5fc9bfd662546bcb1b5c6bd994761c599587e6cd21ef16b` |
| 57 | `theorem` | [isNat_dvd_true](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-dvd-true--34e65b17b58f6333ece85d61.md) | 571 | `result-track:34e65b17b58f6333ece85d6107c2f5564c8dde1827fac9367304ed5115909468` |
| 58 | `theorem` | [isNat_dvd_false](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/isnat-dvd-false--4bc8aee26d4eba403f3e8495.md) | 575 | `result-track:4bc8aee26d4eba403f3e8495780c7bede982ba1c57c45a3a84773089e214ad9e` |
| 59 | `def` | [evalNatDvd](../../../../mathematics/Algebra/Basic/Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.lean/declarations/evalnatdvd--0b8ebe5f2e074f2665cb9ae3.md) | 581 | `declaration-track:0b8ebe5f2e074f2665cb9ae334ef3a6a20b4da1caef3b4a940053296e9348679` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
