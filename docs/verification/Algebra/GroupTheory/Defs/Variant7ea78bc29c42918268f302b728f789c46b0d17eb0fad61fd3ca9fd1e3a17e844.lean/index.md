# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33cabb758d20fb16a2a3d3a399a1c035e390d0a4",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33cabb758d20fb16a2a3d3a399a1c035e390d0a4`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mulzeroclass--b0f8d71733f4190e4c6d7d2d.md) | 45 | `declaration-track:b0f8d71733f4190e4c6d7d2db73167fee012f2ae89e81228020d86c853171e9a` |
| 2 | `class` | [IsLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/isleftcancelmulzero--53d23cef34173a10603e510d.md) | 55 | `declaration-track:53d23cef34173a10603e510df782348358accac229dc5d9193e677c62a425668` |
| 3 | `theorem` | [mul_left_cancel₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-left-cancel--e54c1e85f40c467aeb7ac9ea.md) | 63 | `result-track:e54c1e85f40c467aeb7ac9ea895e0edd574bb453559b2b5b76e8ef0831b33f3c` |
| 4 | `theorem` | [mul_right_injective₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-right-injective--a447ef906ef06612408974ae.md) | 66 | `result-track:a447ef906ef06612408974ae4804e508c4ae27ce7016fa83624d4a76a7c6a943` |
| 5 | `lemma` | [mul_right_inj'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-right-inj--3dda9359f30a35df3c90761d.md) | 69 | `result-track:3dda9359f30a35df3c90761dc615253d4aa7376f24ab905598cb04a658df6c48` |
| 6 | `lemma` | [mul_eq_mul_left_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-mul-left-iff--65170765be5df7fc909e5c55.md) | 75 | `result-track:65170765be5df7fc909e5c55566eef137c71f373ad86e3ba177d0966876821e2` |
| 7 | `class` | [IsRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/isrightcancelmulzero--af47b754f862f6794a5081e7.md) | 81 | `declaration-track:af47b754f862f6794a5081e7355b50997dc37833d06eb113d82346b85c4e02d6` |
| 8 | `theorem` | [mul_right_cancel₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-right-cancel--01259d5f9894455c880b8453.md) | 89 | `result-track:01259d5f9894455c880b8453f02c87db372a4ec340200a031ea43ecd20e8fc11` |
| 9 | `theorem` | [mul_left_injective₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-left-injective--7a0ed38c9ef36267dbc83042.md) | 92 | `result-track:7a0ed38c9ef36267dbc8304211cd0c3783ad8b3f1ca92542887d57e1ca2a25b4` |
| 10 | `lemma` | [mul_left_inj'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-left-inj--2abd93613f83a4a89605f262.md) | 95 | `result-track:2abd93613f83a4a89605f262958b7fb53306d888845374e0bf66e815dcc37062` |
| 11 | `lemma` | [mul_eq_mul_right_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-mul-right-iff--e6cb43495107ca12608315b9.md) | 101 | `result-track:e6cb43495107ca12608315b979486e111844fd785f975bf9746195ab006bad50` |
| 12 | `class` | [IsCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/iscancelmulzero--d82982595526652efba00e9b.md) | 107 | `declaration-track:d82982595526652efba00e9ba7de9bc1af36be505db334999adb54f04cbbc275` |
| 13 | `theorem` | [isCancelMulZero_iff_forall_isRegular](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/iscancelmulzero-iff-forall-isregular--5e262a6f05ccac24617a41bf.md) | 110 | `result-track:5e262a6f05ccac24617a41bfd595ab4883d805bc17a6001c9c2f04e9f1d2d1d6` |
| 14 | `class` | [NoZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/nozerodivisors--a8ea58df62a2a5863b0f041b.md) | 118 | `declaration-track:a8ea58df62a2a5863b0f041b899ea72ad158bc9ddf80af3265b52c2c6527b5c1` |
| 15 | `class` | [SemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/semigroupwithzero--67764cf5c12e1d23646547e4.md) | 125 | `declaration-track:67764cf5c12e1d23646547e48c8407e0c920a8ae13c6cb923353b7c38144d5ab` |
| 16 | `class` | [MulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mulzerooneclass--08e85cec4bfeba08968acc44.md) | 128 | `declaration-track:08e85cec4bfeba08968acc44f635da3a9e161d76a60ba41e64c1b2ad627eddd1` |
| 17 | `class` | [MonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/monoidwithzero--2de4d583edceeb2fd0915169.md) | 132 | `declaration-track:2de4d583edceeb2fd09151699bf17488eff8e75496aa1af9768e4dafba6b4c38` |
| 18 | `theorem` | [pow_mul_apply_eq_pow_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/pow-mul-apply-eq-pow-mul--6b720578d94b29c5cd2dcb5a.md) | 139 | `result-track:6b720578d94b29c5cd2dcb5aa3b394f0e8ebf9e1ac5222536d3d491211e4e056` |
| 19 | `class` | [CommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/commmonoidwithzero--446ddba8bc01ca8503b17e0f.md) | 150 | `declaration-track:446ddba8bc01ca8503b17e0fb0d1d967b860d4fe2867cf2aee75676c3aed9b60` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/instance--92baf2f31cdaa385db03e284.md) | 157 | `declaration-track:92baf2f31cdaa385db03e284b013a3c93465ce6b460cd7cf7999f4a14f897daa` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/instance--738a0daad125cc74a4fbc314.md) | 163 | `declaration-track:738a0daad125cc74a4fbc3141c197613b0f3eb68e7ddca104862836b0c16b5dd` |
| 22 | `lemma` | [IsLeftCancelMulZero.to_isRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/isleftcancelmulzero-to-isrightcancelmulzero--e54c1accc40a33081303678b.md) | 174 | `result-track:e54c1accc40a33081303678b6edef7f71ef8d7945a35d1d17bee1e34c7cf8a2a` |
| 23 | `lemma` | [IsRightCancelMulZero.to_isLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/isrightcancelmulzero-to-isleftcancelmulzero--5435a06a7cb581c2f16992db.md) | 179 | `result-track:5435a06a7cb581c2f16992db0aae1d5d0304ff2a3a40227bd8e7b46c675c662c` |
| 24 | `lemma` | [IsLeftCancelMulZero.to_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/isleftcancelmulzero-to-iscancelmulzero--ba0e494645c432e0f30994c7.md) | 184 | `result-track:ba0e494645c432e0f30994c72508ff69aee158dde40aba8bc010767fce7666fe` |
| 25 | `lemma` | [IsRightCancelMulZero.to_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/isrightcancelmulzero-to-iscancelmulzero--7d14f9d0c30d87de13393e90.md) | 188 | `result-track:7d14f9d0c30d87de13393e9066e1f0d545ba79658c307051a8d5807cb9a9fc78` |
| 26 | `class` | [MulDivCancelClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/muldivcancelclass--6984adc54b877571dcf2e426.md) | 198 | `declaration-track:6984adc54b877571dcf2e42613f477927b6ebb07b8986eb71da63f2ec3466293` |
| 27 | `lemma` | [mul_div_cancel_right₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-div-cancel-right--e3283e341b7a92200a75f479.md) | 204 | `result-track:e3283e341b7a92200a75f4793591953e76f778b8b52080e30f97e999f86f5604` |
| 28 | `lemma` | [mul_div_cancel_left₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-div-cancel-left--86e975161ecb877f4605f6c0.md) | 212 | `result-track:86e975161ecb877f4605f6c0d0af15161d97a885f30f5b511c9da98fa845dcec` |
| 29 | `class` | [GroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/groupwithzero--78f06d8eb5f045418939ab0c.md) | 223 | `declaration-track:78f06d8eb5f045418939ab0c5f300c4f1d30c0d3c2bd86940fe8c9ebaa3b84c5` |
| 30 | `lemma` | [inv_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/inv-zero--082282c40ad58edbdff68375.md) | 232 | `result-track:082282c40ad58edbdff6837553d64d87475e5fa0473dff2464441a9fbaaeab9f` |
| 31 | `lemma` | [mul_inv_cancel₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-inv-cancel--fd86470cec80b1a2bd8f1080.md) | 235 | `result-track:fd86470cec80b1a2bd8f1080c27e8f37efa2331d868ee9cb4ec6725bdf52fc82` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/instance--b0e65d3077b654f960609d1d.md) | 238 | `declaration-track:b0e65d3077b654f960609d1dcd819392845fac9e72a873009ed3d4c4a54c5119` |
| 33 | `class` | [CommGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/commgroupwithzero--eeecfaaeb906853ffa5935ce.md) | 247 | `declaration-track:eeecfaaeb906853ffa5935cec7e25a741f33a45b83d618d1030a168e680945e4` |
| 34 | `lemma` | [eq_zero_or_one_of_sq_eq_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/eq-zero-or-one-of-sq-eq-self--768cee1a3870ff031578e17c.md) | 249 | `result-track:768cee1a3870ff031578e17cfb6897dc636c72d20de3e6c4e6d360a87d6fae48` |
| 35 | `theorem` | [mul_inv_cancel_right₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-inv-cancel-right--745d3f6198db73ec6cfbc447.md) | 259 | `result-track:745d3f6198db73ec6cfbc447b184ca214bd1fce3c28d6762e53b8bbcbcbfbb9a` |
| 36 | `theorem` | [mul_inv_cancel_left₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-inv-cancel-left--71892f446a35b6b309460ea2.md) | 265 | `result-track:71892f446a35b6b309460ea2a127d6365719f77e20c32ab91fd29c303b410ec7` |
| 37 | `theorem` | [mul_eq_zero_of_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-zero-of-left--38f37431260693e445794f0a.md) | 276 | `result-track:38f37431260693e445794f0a579a2e50ef9b7bb2264ecbbd82cc33f7446790aa` |
| 38 | `theorem` | [mul_eq_zero_of_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-zero-of-right--4e98bd7713084ab93171c64d.md) | 278 | `result-track:4e98bd7713084ab93171c64dc3e1a0a20df7385bc3a18e994e14411b19b1110e` |
| 39 | `lemma` | [noZeroDivisors_iff_right_eq_zero_of_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/nozerodivisors-iff-right-eq-zero-of-mul--1b9fe7d8e75437dc0e708385.md) | 280 | `result-track:1b9fe7d8e75437dc0e708385a5378eb1fd05ed573243985f32b5a48abbadf3cb` |
| 40 | `lemma` | [noZeroDivisors_iff_left_eq_zero_of_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/nozerodivisors-iff-left-eq-zero-of-mul--39b8e75bb6b6cac24fcfc24b.md) | 285 | `result-track:39b8e75bb6b6cac24fcfc24b6499a6b0720784bffb5429d1cde763ba8daf7657` |
| 41 | `lemma` | [noZeroDivisors_iff_eq_zero_of_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/nozerodivisors-iff-eq-zero-of-mul--23a1c0a3d61350c1f1c440f3.md) | 290 | `result-track:23a1c0a3d61350c1f1c440f322b51133dd1c0bfc38faf2e8ce1dfbff5b865e71` |
| 42 | `theorem` | [mul_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-zero--8359285dbe20bf14237eea63.md) | 300 | `result-track:8359285dbe20bf14237eea63ebc159385bbf8c0a60a218da51652bed24c7e087` |
| 43 | `theorem` | [zero_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/zero-eq-mul--cce15f6a86cf5f5396550669.md) | 307 | `result-track:cce15f6a86cf5f5396550669d37926e051fc1dafbe5c51113f2ce1d8f009f8df` |
| 44 | `theorem` | [mul_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-ne-zero-iff--0e4caacf2155d421a3e09a56.md) | 311 | `result-track:0e4caacf2155d421a3e09a56f3bbc1b5bdbc691f33fcb5f86d9a638482923740` |
| 45 | `theorem` | [mul_eq_zero_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-zero-comm--15c596350ec8f1da008ac3b5.md) | 315 | `result-track:15c596350ec8f1da008ac3b5d77e925be1c8b980f69a90dced4adc86ac97272c` |
| 46 | `theorem` | [mul_ne_zero_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-ne-zero-comm--825b390f8d7d6155e2823862.md) | 320 | `result-track:825b390f8d7d6155e2823862613354815582345b24f4a1721ab7510459780770` |
| 47 | `theorem` | [mul_self_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-self-eq-zero--04eef9c31a59f2133d635ce3.md) | 322 | `result-track:04eef9c31a59f2133d635ce376ba159f23a4251c2a4edb81951facde175e8bd5` |
| 48 | `theorem` | [zero_eq_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/zero-eq-mul-self--494a399294b885c437afb352.md) | 324 | `result-track:494a399294b885c437afb352d13c6b1db31881fee4c3062b8d35d4454cea43ef` |
| 49 | `theorem` | [mul_self_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-self-ne-zero--d825529f05132b067696a70e.md) | 326 | `result-track:d825529f05132b067696a70e9c2393d155d05d82b4c27f454920e9d63422dd1e` |
| 50 | `theorem` | [zero_ne_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/zero-ne-mul-self--32bf3ead014c41a466a29711.md) | 328 | `result-track:32bf3ead014c41a466a29711330b7c390c55f9effacb3071b5e96122210d0157` |
| 51 | `theorem` | [mul_eq_zero_iff_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-zero-iff-left--fc0b0c02155dfde58c240422.md) | 330 | `result-track:fc0b0c02155dfde58c240422f8a7ed7732d7470c29856fa9ae83436ce5e1c431` |
| 52 | `theorem` | [mul_eq_zero_iff_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-eq-zero-iff-right--460d6bbf51cf3bd1a021382f.md) | 332 | `result-track:460d6bbf51cf3bd1a021382f5dbebdb2b2aa765de3b0f8cb916650c76c7543f1` |
| 53 | `theorem` | [mul_ne_zero_iff_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-ne-zero-iff-left--5ec8a798aecfbee42899f14c.md) | 334 | `result-track:5ec8a798aecfbee42899f14c73e2596571e61f8c9de410ad1d3b5dbea5591cc4` |
| 54 | `theorem` | [mul_ne_zero_iff_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant7ea78bc29c42918268f302b728f789c46b0d17eb0fad61fd3ca9fd1e3a17e844.lean/declarations/mul-ne-zero-iff-right--06100a90f8af411575ad8a94.md) | 336 | `result-track:06100a90f8af411575ad8a942b9d4163a79d3f041cc3f459cd0c5144bde80200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
