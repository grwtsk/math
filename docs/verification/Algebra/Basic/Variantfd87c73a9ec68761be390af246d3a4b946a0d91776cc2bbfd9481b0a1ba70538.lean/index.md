# Verification target: GRWTSK.Algebra.Basic.Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7536d6a75dcc19c666c709cbd6af53b6a95e678d",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7536d6a75dcc19c666c709cbd6af53b6a95e678d`.

Source path: `GRWTSK/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Commute` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Core` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.HaveI` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ClearExclamation` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsInt.raw_refl](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isint-raw-refl--81ca8a62b280f6019b3a62cc.md) | 43 | `result-track:81ca8a62b280f6019b3a62cc6b4667110fd36a05e71cfd7e86d008c776913474` |
| 2 | `theorem` | [isNat_zero](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-zero--26e2aa5cf7cc7a08960ab217.md) | 47 | `result-track:26e2aa5cf7cc7a08960ab217ffc73ab1337dc62568748f74ce6e2fa6cc8e6457` |
| 3 | `def` | [evalZero](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalzero--decbb644f83195cf6bedf437.md) | 51 | `declaration-track:decbb644f83195cf6bedf4378e89d31ffd6bdf897f48d57d9e946a57ec34b145` |
| 4 | `theorem` | [isNat_one](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-one--8cd2e49b9291cd0bb3edda66.md) | 56 | `result-track:8cd2e49b9291cd0bb3edda6690ce1358873d6a3071c5dc20bfde1e469ceaa209` |
| 5 | `def` | [evalOne](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalone--0c19a127ecfb49e151f066e8.md) | 59 | `declaration-track:0c19a127ecfb49e151f066e899dfb8f1123643abacce1146ae0780e868160ff9` |
| 6 | `theorem` | [isNat_ofNat](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-ofnat--2a98be7ceef137d3cc526901.md) | 64 | `result-track:2a98be7ceef137d3cc5269010a801b15c534c9ef27c309dbb60e22ab9aa4c0c1` |
| 7 | `def` | [evalOfNat](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalofnat--b25f81f259589df5a0a6b1a9.md) | 68 | `declaration-track:b25f81f259589df5a0a6b1a9a53949f85ec82dcbfeab08bccb12035658288c4a` |
| 8 | `theorem` | [isNat_intOfNat](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-intofnat--cb0a928cf23a1639b7859b11.md) | 78 | `result-track:cb0a928cf23a1639b7859b11b03397daea68eae6ae2b005487413a546bbba1e0` |
| 9 | `def` | [evalIntOfNat](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalintofnat--fe16482678e81510bace258f.md) | 83 | `declaration-track:fe16482678e81510bace258f231690cd32ad9ff6479e632e4cda9de5618b8d67` |
| 10 | `theorem` | [isNat_natAbs_pos](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-natabs-pos--e672accb4f90469a869c1a0c.md) | 92 | `result-track:e672accb4f90469a869c1a0ccb54f8e3c450dac37a05cad5977ef61f1dcdebb3` |
| 11 | `theorem` | [isNat_natAbs_neg](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-natabs-neg--c3a00c18a41b5dab0a3641ec.md) | 95 | `result-track:c3a00c18a41b5dab0a3641ec46df3a6f7edab62342b76d902dba8fea5998bb68` |
| 12 | `def` | [evalIntNatAbs](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalintnatabs--a87553529d536fba656259b9.md) | 100 | `declaration-track:a87553529d536fba656259b9de6a05699501637d16dab84d25d7e9d5d6d6f6fd` |
| 13 | `theorem` | [isNat_natCast](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-natcast--7903016e656a53dae45a4fb1.md) | 112 | `result-track:7903016e656a53dae45a4fb1f105565fb152f2a166f65d0f9b2b2ccc0f222785` |
| 14 | `def` | [evalNatCast](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalnatcast--ed99187ed87478ff74c654ac.md) | 116 | `declaration-track:ed99187ed87478ff74c654acc377d00da878e3ca8cec9fee9878a40fa2f0502b` |
| 15 | `theorem` | [isNat_intCast](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-intcast--74665b093142269375e2250b.md) | 124 | `result-track:74665b093142269375e2250b62aeadca537249411d504d8642544c85de955b61` |
| 16 | `theorem` | [isintCast](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isintcast--dab7e4b29786f21858fbc0a5.md) | 127 | `result-track:dab7e4b29786f21858fbc0a5afa9859e6287a3616935315a602494e8af149e2c` |
| 17 | `def` | [evalIntCast](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalintcast--55ed5733f1f48aea7c67da0d.md) | 131 | `declaration-track:55ed5733f1f48aea7c67da0ddee1a9ea42938a097812293bd8b26540ad2b8343` |
| 18 | `theorem` | [isNat_add](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-add--c6d3ea5064edb8eaa159f09c.md) | 163 | `result-track:c6d3ea5064edb8eaa159f09c3772bbfee3a55e40f124c155249c96f1f86bb789` |
| 19 | `theorem` | [isInt_add](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isint-add--43eb5012726f5261f3cbf605.md) | 168 | `result-track:43eb5012726f5261f3cbf60542f9e0371df99b1db8061e2559c0ac72f48fb67a` |
| 20 | `def` | [invertibleOfMul](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/invertibleofmul--44f751f31fa9376a755fffd2.md) | 173 | `declaration-track:44f751f31fa9376a755fffd267f58600bb7269cd21fd83907146b7c36eacf53c` |
| 21 | `def` | [invertibleOfMul'](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/invertibleofmul--1abda78621c6db05c86d316a.md) | 181 | `declaration-track:1abda78621c6db05c86d316a6f450414771857fb31d2016d9a15fc13eadd73bf` |
| 22 | `theorem` | [isRat_add](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/israt-add--e15e2e5ead359ec0a6a2bd8e.md) | 186 | `result-track:e15e2e5ead359ec0a6a2bd8e034b03fa7d33f72ce47c92c315853457429142a5` |
| 23 | `def` | [_root_.GRWTSK.Algebra.IsIntRawRefl.Variant2de164ae97d027fd4d946c5cb2445a6763b343572bc99d6ee7a007a1dfba069f.Mathlib.Meta.monadLiftOptionMetaM](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/root-grwtsk-algebra-isintrawrefl-variant2de164ae97d027fd4d946c5cb2445a67--65483c3322b55bd13050def9.md) | 207 | `declaration-track:65483c3322b55bd13050def9b52d21e0a92f8beef138b611712d5823dc40808a` |
| 24 | `def` | [evalAdd](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evaladd--4cfeb47bb54f1691ce7c49a2.md) | 215 | `declaration-track:4cfeb47bb54f1691ce7c49a2c191354ccea597e9909cbb89cb2954d4a5b1ab9b` |
| 25 | `theorem` | [isInt_neg](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isint-neg--d65326bbd80356b558eb26d7.md) | 265 | `result-track:d65326bbd80356b558eb26d78f595dac9fcde2d7fd9d33d63c2e72d95365a6ba` |
| 26 | `theorem` | [isRat_neg](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/israt-neg--edf4f92a31220a22a7d3163c.md) | 270 | `result-track:edf4f92a31220a22a7d3163c9ecb5c4bfd6c0a4bcc6dcfb7f6f0b8b5b0122e67` |
| 27 | `def` | [evalNeg](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalneg--c8254eabe4cdbce27b31ad96.md) | 277 | `declaration-track:c8254eabe4cdbce27b31ad961c347a18cfa3575644c1aca6571de5d4ba85b5b6` |
| 28 | `theorem` | [isInt_sub](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isint-sub--587970bbb0beeb5a87bc690a.md) | 308 | `result-track:587970bbb0beeb5a87bc690a430853defbc73d93529fef94cc44c2c77bc3eb80` |
| 29 | `theorem` | [isRat_sub](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/israt-sub--a24aa373021526f8b1268940.md) | 313 | `result-track:a24aa373021526f8b1268940cf933caf81c303fa14aa829073d2cace6de94384` |
| 30 | `def` | [evalSub](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalsub--ccffc0fea59aa6c5b055c438.md) | 325 | `declaration-track:ccffc0fea59aa6c5b055c438044004bff08587ded7186cd6e1a57ca3ce5c8b0d` |
| 31 | `theorem` | [isNat_mul](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-mul--0c22538ec548f52044754ea5.md) | 364 | `result-track:0c22538ec548f52044754ea59462e294eb761b0e62876a77c72b24ffdb6c6924` |
| 32 | `theorem` | [isInt_mul](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isint-mul--740c0993ed7cb93697a866f6.md) | 369 | `result-track:740c0993ed7cb93697a866f657a43c91b6d9f03a8891fade30a6bd297f65e85a` |
| 33 | `theorem` | [isRat_mul](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/israt-mul--8734c57b1c96cf79d1d1a240.md) | 373 | `result-track:8734c57b1c96cf79d1d1a240736f6cf6be00fefb059a284f8290f8a377732c66` |
| 34 | `def` | [evalMul](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalmul--b4956c820a723b43e20206fd.md) | 396 | `declaration-track:b4956c820a723b43e20206fdec47865f0de0f4e7b14ff683968b4c1c7e2dbf99` |
| 35 | `theorem` | [isRat_div](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/israt-div--61d5ef9f0083d4edc43ccb3c.md) | 439 | `result-track:61d5ef9f0083d4edc43ccb3cdfa5ce055c2735d1856f3c8f42f4a4af9e291691` |
| 36 | `def` | [inferDivisionRing](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/inferdivisionring--8e636cba680591950408207d.md) | 444 | `declaration-track:8e636cba680591950408207dd87a3da50f0df8424a36d6ca58fa9d25732aa3b8` |
| 37 | `def` | [evalDiv](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evaldiv--4aec7cca1ce5b108750ffd9c.md) | 450 | `declaration-track:4aec7cca1ce5b108750ffd9c5a26954196e3fe08983023bbd168ffb024fce81c` |
| 38 | `def` | [evalTrue](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evaltrue--0ddaf0a9b427c7b01dbd63f5.md) | 463 | `declaration-track:0ddaf0a9b427c7b01dbd63f544e939ab4940ab940a6623370c936b0fa6fbe777` |
| 39 | `def` | [evalFalse](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalfalse--a639944b783237b2079fcacd.md) | 467 | `declaration-track:a639944b783237b2079fcacdffebe3e58aa62d47e5c8595cab52b7d355857815` |
| 40 | `def` | [evalNot](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalnot--385b3ca4022ca3b29d9464b5.md) | 472 | `declaration-track:385b3ca4022ca3b29d9464b5558b1f9d0d4edca5311e7d62e9d96600d5e88e4e` |
| 41 | `theorem` | [isNat_eq_true](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-eq-true--c4fd0f1dbfc23e744da9863a.md) | 484 | `result-track:c4fd0f1dbfc23e744da9863aab9cea32498e3ac2d2c4f1b098e88a7216c64d38` |
| 42 | `theorem` | [ble_eq_false](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/ble-eq-false--5aa48e89e880b698cc2818d2.md) | 488 | `result-track:5aa48e89e880b698cc2818d2b578249f49fc7fba33d326cf32efa8b3c9133323` |
| 43 | `theorem` | [isInt_eq_true](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isint-eq-true--6331f26558ddcf335a9c24d0.md) | 491 | `result-track:6331f26558ddcf335a9c24d02db4ccd05d86b037330d9f900f5eaa4d92e3a56c` |
| 44 | `theorem` | [isRat_eq_true](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/israt-eq-true--ff89214b6e0618cf87a0bb1d.md) | 494 | `result-track:ff89214b6e0618cf87a0bb1dc75766e66be1c32c1ad9a1e8abe328da94f33d2a` |
| 45 | `theorem` | [eq_of_true](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/eq-of-true--270049ec3938efe7da874632.md) | 498 | `result-track:270049ec3938efe7da8746326b2202d186966928aeb22f43943ee76a33f15a9d` |
| 46 | `theorem` | [ne_of_false_of_true](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/ne-of-false-of-true--99c7bb85afe03284a5224965.md) | 499 | `result-track:99c7bb85afe03284a522496507099ce1f6fac6e5cd31a47859ef61c89c1e24f7` |
| 47 | `theorem` | [ne_of_true_of_false](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/ne-of-true-of-false--4c2251c15098be0664b6edf4.md) | 500 | `result-track:4c2251c15098be0664b6edf4ace897928cb1a66ff9590d8eea3c46f4a5020721` |
| 48 | `theorem` | [eq_of_false](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/eq-of-false--c11e6efd60fd57ad522d0f2b.md) | 501 | `result-track:c11e6efd60fd57ad522d0f2b44faca63640b3d4132e1f0956e62f77b2f170aad` |
| 49 | `theorem` | [isNat_natSucc](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-natsucc--e354ee5df7d61558a126a919.md) | 505 | `result-track:e354ee5df7d61558a126a919dffd4bdc8260f827af436e72dd26d18135a7f0d9` |
| 50 | `def` | [evalNatSucc](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalnatsucc--17e0314bf64af416f96116fe.md) | 511 | `declaration-track:17e0314bf64af416f96116fe0fc00850e5c42e2aa336aa06d5e1967026a8f114` |
| 51 | `theorem` | [isNat_natSub](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-natsub--5ecc48a515cd15320474f1ce.md) | 522 | `result-track:5ecc48a515cd15320474f1ce044d8d26099ed42a15d03622159f3b932217f53b` |
| 52 | `def` | [evalNatSub](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalnatsub--3c27fd792f85ea6ab06a5ac2.md) | 528 | `declaration-track:3c27fd792f85ea6ab06a5ac2f0e4dd3e92acdff1e2764014cde01d134f7f6e34` |
| 53 | `theorem` | [isNat_natMod](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-natmod--1bb9a1a2f0456fbe023cfcff.md) | 541 | `result-track:1bb9a1a2f0456fbe023cfcff57c1fd2dd3110d50913c07179461e16cb02a2a7e` |
| 54 | `def` | [evalNatMod](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalnatmod--ad87b1a022abee3475017b0c.md) | 547 | `declaration-track:ad87b1a022abee3475017b0c3890866d502a8096efe62e93be6229f54384f5ec` |
| 55 | `theorem` | [isNat_natDiv](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-natdiv--451560a815a2d12cfc890164.md) | 560 | `result-track:451560a815a2d12cfc890164b83b475101a8ff721cd961de5ab7aa5882bde85f` |
| 56 | `def` | [evalNatDiv](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalnatdiv--1e1a183ff2e64e8f01a9b031.md) | 567 | `declaration-track:1e1a183ff2e64e8f01a9b03120d5d2018ac00202b6ff300a6c352e53b5b09add` |
| 57 | `theorem` | [isNat_dvd_true](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-dvd-true--d477ca4dcdc4d501229580fe.md) | 579 | `result-track:d477ca4dcdc4d501229580fe992ebd5b05d2487fae85d4d05b22d89aca6ae4c0` |
| 58 | `theorem` | [isNat_dvd_false](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/isnat-dvd-false--8a9db60e405039a1e8026582.md) | 583 | `result-track:8a9db60e405039a1e8026582a9d089e0954810ea899caeb7422673351163e12b` |
| 59 | `def` | [evalNatDvd](../../../../mathematics/Algebra/Basic/Variantfd87c73a9ec68761be390af246d3a4b946a0d91776cc2bbfd9481b0a1ba70538.lean/declarations/evalnatdvd--1f9a394cca0d361ba4c58f87.md) | 589 | `declaration-track:1f9a394cca0d361ba4c58f877f37061d94ef3e0426795a0a6a911a4e55802fb4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
