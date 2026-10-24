# Verification target: GRWTSK.NumberTheory.ZModChar.Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "892f9b1db966c85191a4dbf6b65a5cd7cb8c89fa",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `892f9b1db966c85191a4dbf6b65a5cd7cb8c89fa`.

Source path: `GRWTSK/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.MulCharacter` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/anonymous--2961915a19e0d40d7b40d274.md) | 48 | `declaration-track:2961915a19e0d40d7b40d27481571fbcf04c71fda499eecdd0c62a11bc0e5da2` |
| 2 | `theorem` | [isQuadratic_χ₄](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/isquadratic--5f214fcf8315b3c2788a0a8b.md) | 56 | `result-track:5f214fcf8315b3c2788a0a8bb261aba485599cd09e3958abeeeae1410a6e4b45` |
| 3 | `theorem` | [χ₄_nat_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/nat-mod-four--1731db1d72c8b6ebdacef274.md) | 64 | `result-track:1731db1d72c8b6ebdacef2748f2743dbaed7233487bc1ebdcb2203febb14db22` |
| 4 | `theorem` | [χ₄_int_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-mod-four--418adb26e9bcbfd35255f986.md) | 68 | `result-track:418adb26e9bcbfd35255f986e4792671698c0c57a5fa291c481422b6ba105c25` |
| 5 | `theorem` | [χ₄_int_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-eq-if-mod-four--091e0e8e2cbf12982b0912f3.md) | 74 | `result-track:091e0e8e2cbf12982b0912f342a426163e6b3da80d8a2f7a9b927d7f9fa6bcb4` |
| 6 | `theorem` | [χ₄_nat_eq_if_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/nat-eq-if-mod-four--96e8330037167bbad7dd6e46.md) | 82 | `result-track:96e8330037167bbad7dd6e4698c863c1b3955432caa1943e2d53611e9b861dbc` |
| 7 | `theorem` | [χ₄_eq_neg_one_pow](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/eq-neg-one-pow--0f761b56f9a00ea38d794b86.md) | 88 | `result-track:0f761b56f9a00ea38d794b86f32f65dc20af523bb73e3820bf9bf3cadce24427` |
| 8 | `theorem` | [χ₄_nat_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/nat-one-mod-four--75f20ea593d2d9d55aca2ef1.md) | 103 | `result-track:75f20ea593d2d9d55aca2ef1a5f5ce1f3878e0a4c56537d3d580921909acfa7b` |
| 9 | `theorem` | [χ₄_nat_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/nat-three-mod-four--b8a17214893f5da6874d9983.md) | 109 | `result-track:b8a17214893f5da6874d99833aa0692013777d9719c96f443449d0c4f2630e25` |
| 10 | `theorem` | [χ₄_int_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-one-mod-four--c10897aadc6e2d03a62ad109.md) | 115 | `result-track:c10897aadc6e2d03a62ad1094e38166e138733291bf85e910aab14d36e36d658` |
| 11 | `theorem` | [χ₄_int_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-three-mod-four--4efee16f60fa4a60332a5533.md) | 121 | `result-track:4efee16f60fa4a60332a55330a0463cd61600ec505dc3885a98a2ebcee9cbbe0` |
| 12 | `theorem` | [neg_one_pow_div_two_of_one_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/neg-one-pow-div-two-of-one-mod-four--10ebb63ecb9d4d820b438c9e.md) | 127 | `result-track:10ebb63ecb9d4d820b438c9e4f748b2db249b09669d0fdd18873268e40a73111` |
| 13 | `theorem` | [neg_one_pow_div_two_of_three_mod_four](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/neg-one-pow-div-two-of-three-mod-four--4a64fc803c87f6abf4cf8d2a.md) | 133 | `result-track:4a64fc803c87f6abf4cf8d2ab00497e3c447f96e273590461ed3567a39349dd0` |
| 14 | `def` | [χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/anonymous--c45ecea664838b6c8ce1351b.md) | 143 | `declaration-track:c45ecea664838b6c8ce1351bfbdffa3d7a779a05611431b9f8fba4bc4ae99769` |
| 15 | `theorem` | [isQuadratic_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/isquadratic--b46eb8a784669ec453ff3b6f.md) | 151 | `result-track:b46eb8a784669ec453ff3b6fd62cc0f3dbc1c411fa046ba20518089868596065` |
| 16 | `theorem` | [χ₈_nat_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/nat-mod-eight--6771cab3068818ca8f45bce1.md) | 159 | `result-track:6771cab3068818ca8f45bce1073088c0fd675a16048827f29fdfa95a24011319` |
| 17 | `theorem` | [χ₈_int_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-mod-eight--ed2e4772cc5d2dac93075214.md) | 163 | `result-track:ed2e4772cc5d2dac9307521425a540d180f8bc192a4c87950b9e0f3dc4953e94` |
| 18 | `theorem` | [χ₈_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-eq-if-mod-eight--fbd3001dde41a4efe88679b0.md) | 169 | `result-track:fbd3001dde41a4efe88679b02bd372e5c17ae25bfe44e0a48f0558c879aaafbf` |
| 19 | `theorem` | [χ₈_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/nat-eq-if-mod-eight--c721d0b92549699f446bd08f.md) | 178 | `result-track:c721d0b92549699f446bd08facea634f61a85c38e8141b0375ebac02a649dbf6` |
| 20 | `def` | [χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/anonymous--ec1989c42564ea22cccfcf26.md) | 187 | `declaration-track:ec1989c42564ea22cccfcf268e207bc1764b6828f4870d37271e2266e78be441` |
| 21 | `theorem` | [isQuadratic_χ₈'](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/isquadratic--646eae13d9f82bc4165526ec.md) | 195 | `result-track:646eae13d9f82bc4165526ecbf55050f06184d556d4ccd8409917de387d1cf22` |
| 22 | `theorem` | [χ₈'_int_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-eq-if-mod-eight--3f6ba6ff54cef8dc5de4213f.md) | 203 | `result-track:3f6ba6ff54cef8dc5de4213f0025c957c870d49c8d6b1abb7a4ed68b147dacf8` |
| 23 | `theorem` | [χ₈'_nat_eq_if_mod_eight](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/nat-eq-if-mod-eight--2985c785c2f51fbc166d6888.md) | 212 | `result-track:2985c785c2f51fbc166d68882ed062847fc63a301f076c8afcf08d870bc2ca97` |
| 24 | `theorem` | [χ₈'_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/eq-mul--c6db6df51f421d3a28caaf64.md) | 218 | `result-track:c6db6df51f421d3a28caaf646d573c25c6fc6f0e5a78de0008eb6de696bd648a` |
| 25 | `theorem` | [χ₈'_int_eq_χ₄_mul_χ₈](../../../../mathematics/NumberTheory/ZModChar/Variant74bbf969e36a420ae7ef248991e4f88f1600f32b4f22dc33cd53241c7ca4db72.lean/declarations/int-eq-mul--82da180d1dde8020383d8b4d.md) | 224 | `result-track:82da180d1dde8020383d8b4dc68d73c7586b2dc4c2bd68c2bf0512449a76c85a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
