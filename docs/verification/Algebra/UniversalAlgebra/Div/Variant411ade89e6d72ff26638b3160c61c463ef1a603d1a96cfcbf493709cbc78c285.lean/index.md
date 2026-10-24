# Verification target: GRWTSK.Algebra.UniversalAlgebra.Div.Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e384747929dd9742f11ffb4a20043b05d89d6bb",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e384747929dd9742f11ffb4a20043b05d89d6bb`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean.json)

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
| 1 | `class` | [FloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv--4cc85530579542299023e8e0.md) | 64 | `declaration-track:4cc85530579542299023e8e04c7d33bc86c89448582c23ae3081131b9be97571` |
| 2 | `class` | [CeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv--3822ddbac6aa007e5387b6f9.md) | 76 | `declaration-track:3822ddbac6aa007e5387b6f9d478b30b64d937dacd4a50ea9ff6b2370428f81c` |
| 3 | `lemma` | [gc_floorDiv_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/gc-floordiv-smul--4b08ae1ec61f4470127e6c74.md) | 94 | `result-track:4b08ae1ec61f4470127e6c7480d2df15cb47b464ca8539fba83765983cc0561e` |
| 4 | `lemma` | [le_floorDiv_iff_smul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/le-floordiv-iff-smul-le--e7c452c36b182b344ddbfcc0.md) | 97 | `result-track:e7c452c36b182b344ddbfcc0b4e3bf7c3a09a43d1e0c0d973d3132857a691922` |
| 5 | `lemma` | [floorDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-of-nonpos--f53b686ca613c2ee350d6749.md) | 100 | `result-track:f53b686ca613c2ee350d6749563d76bb7176540957ca8b645ea48fe264c9d050` |
| 6 | `lemma` | [floorDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-zero--e4c09de89bf7fb995fa5024c.md) | 101 | `result-track:e4c09de89bf7fb995fa5024c92bdfe249b1ba483ee7cf160d39b495df7dae29b` |
| 7 | `lemma` | [zero_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/zero-floordiv--96a3a476601062b34fd2e715.md) | 102 | `result-track:96a3a476601062b34fd2e715f2913ca9873cceb9a7ecb473fd321e087c5509fb` |
| 8 | `lemma` | [smul_floorDiv_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/smul-floordiv-le--6d65d9097f5d158dc46eec09.md) | 104 | `result-track:6d65d9097f5d158dc46eec09bdffd91583605a0346eeeca16719f071710397d6` |
| 9 | `lemma` | [gc_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/gc-smul-ceildiv--999331bc58938ab9f32b3af0.md) | 111 | `result-track:999331bc58938ab9f32b3af08d91ccbf520e884ffd2db87017d1fbab4c137868` |
| 10 | `lemma` | [ceilDiv_le_iff_le_smul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-le-iff-le-smul--b04a520d586e6cba538fa6f5.md) | 115 | `result-track:b04a520d586e6cba538fa6f5cb3d2f7e646e20e7c17262073427d44b62a4cea4` |
| 11 | `lemma` | [ceilDiv_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-of-nonpos--347b1df61a8490608b561b1c.md) | 117 | `result-track:347b1df61a8490608b561b1c4ed1950a3281e56825071d2aed3e99dff499f05b` |
| 12 | `lemma` | [ceilDiv_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-zero--46c2f8a5da70f25b0392544e.md) | 118 | `result-track:46c2f8a5da70f25b0392544edea45d3d247541be39457f3927f13cfdb9bd5a94` |
| 13 | `lemma` | [zero_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/zero-ceildiv--30c25dc99461f3d9072a952e.md) | 119 | `result-track:30c25dc99461f3d9072a952ecb1f15778e01ce817cb0cf72e504c8cf62406eed` |
| 14 | `lemma` | [le_smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/le-smul-ceildiv--8191b8dd423c16291dc3a95c.md) | 121 | `result-track:8191b8dd423c16291dc3a95cf063f0de7cc7af1dfa0a97cae6119a7642434db8` |
| 15 | `lemma` | [floorDiv_le_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-le-ceildiv--f8b1c2c5e573b8d489f62a07.md) | 130 | `result-track:f8b1c2c5e573b8d489f62a07174fc74bf6f7ec62618ecb47c01f146acb9a369e` |
| 16 | `lemma` | [floorDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-one--591d983c12ab0d6ee9da0985.md) | 143 | `result-track:591d983c12ab0d6ee9da09856ad50fc6ebf6567a067473155ad2b938f5460e4a` |
| 17 | `lemma` | [smul_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/smul-floordiv--0cc7b63e8a6298e8c274d709.md) | 146 | `result-track:0cc7b63e8a6298e8c274d709a170352744dbef0e8c39eab848d3f599b9cb23f7` |
| 18 | `lemma` | [ceilDiv_one](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-one--c3106cc72e0ca66532c8fc8f.md) | 155 | `result-track:c3106cc72e0ca66532c8fc8fb9f7767c2e2e8305000280375d7d037fdc22d349` |
| 19 | `lemma` | [smul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/smul-ceildiv--78edef58309a19f5ebc62769.md) | 158 | `result-track:78edef58309a19f5ebc62769e27c3c47ca393051c6aca1be704b3b3463aebc30` |
| 20 | `lemma` | [gc_floorDiv_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/gc-floordiv-mul--666c57d3185c70d0aa06f5ec.md) | 167 | `result-track:666c57d3185c70d0aa06f5ecc3af5870cae71e4cb411281004bad897d60ee3dd` |
| 21 | `lemma` | [le_floorDiv_iff_mul_le](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/le-floordiv-iff-mul-le--5efb81a8437a06f255f9dd7a.md) | 168 | `result-track:5efb81a8437a06f255f9dd7a1e303fd2391552062deea787beff6af810f49762` |
| 22 | `lemma` | [gc_mul_ceilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/gc-mul-ceildiv--c7c260db10bb283e654312bd.md) | 175 | `result-track:c7c260db10bb283e654312bd0348587debe2449148e62497b9f6537a7d525337` |
| 23 | `lemma` | [ceilDiv_le_iff_le_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-le-iff-le-mul--40e2fc1c54bd07780555084c.md) | 176 | `result-track:40e2fc1c54bd07780555084c9d6a600156a6333d28a9f7c933479e3eb2bcb66c` |
| 24 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/instfloordiv--cfc3878d7604ea2bbe09f41e.md) | 183 | `declaration-track:cfc3878d7604ea2bbe09f41eabd0d62f691f8bb755831878fcc7c33967fbbb68` |
| 25 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/instceildiv--b660e7ea13a4ecad13dd59ab.md) | 189 | `declaration-track:b660e7ea13a4ecad13dd59ab410e15c11dfeece09179bd773d65b7278a65642f` |
| 26 | `lemma` | [floorDiv_eq_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-eq-div--2dc5e5cdc340165c60b58931.md) | 196 | `result-track:2dc5e5cdc340165c60b5893107e7abeafb82769cf095c4a0d5e63f43f9f840b1` |
| 27 | `lemma` | [ceilDiv_eq_add_pred_div](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-eq-add-pred-div--971040fa2351a64e506b29dd.md) | 197 | `result-track:971040fa2351a64e506b29ddf9f7180eb8314638f5854ce892b99f403b391996` |
| 28 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/instfloordiv--364b793eedf0d1b2bbbee44f.md) | 209 | `declaration-track:364b793eedf0d1b2bbbee44fe2fd41816ac8a259f671558efccb24dbce8b0095` |
| 29 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-def--fc4e421e637dc9e0ade1c784.md) | 216 | `result-track:fc4e421e637dc9e0ade1c784301614bc70dc46692f8e623f91f42d1cfdad1772` |
| 30 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-apply--fde577c0480cf4b70931ed28.md) | 217 | `result-track:fde577c0480cf4b70931ed28e3776714ef40f810f8775df9a4aa856216a5064c` |
| 31 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/instceildiv--d9c73ca11bc9ea0132da5916.md) | 224 | `declaration-track:d9c73ca11bc9ea0132da59168fa452610a4c91b93b7c1bba32711f7967c182fc` |
| 32 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-def--d2224b973ab6830d30c51470.md) | 230 | `result-track:d2224b973ab6830d30c5147039bf5756a391c3cf89a5ed1b57d5945612c0d3bb` |
| 33 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-apply--94066a7d614cd7a1d81ed539.md) | 231 | `result-track:94066a7d614cd7a1d81ed5394ef830fb5b9506516101e9f20c6ba671151c9968` |
| 34 | `instance` | [instFloorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/instfloordiv--3f0eec65f57ee933f76a84e0.md) | 243 | `declaration-track:3f0eec65f57ee933f76a84e0ecc76c9fc086fe8e74e0b1ce6789028161eea439` |
| 35 | `lemma` | [floorDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-def--d393dd720a3c67b14112b520.md) | 250 | `result-track:d393dd720a3c67b14112b520fff370290fd05a774bb113f477215fe4f5bca0c3` |
| 36 | `lemma` | [coe_floorDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/coe-floordiv--3fe8841b5345b077f5dc4f05.md) | 252 | `result-track:3fe8841b5345b077f5dc4f051be284d075c38f8aa76a12a54ff3d687c75a08cc` |
| 37 | `lemma` | [floorDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/floordiv-apply--dede4002310f0a8039fda140.md) | 253 | `result-track:dede4002310f0a8039fda140eb1c30c26921c93e79d2c070c1571492e3108f53` |
| 38 | `lemma` | [support_floorDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/support-floordiv-subset--e3f07eccc4082b8d2823bd18.md) | 255 | `result-track:e3f07eccc4082b8d2823bd181afbfdd9dff9ad776a13ac29bd53be163d81a3d5` |
| 39 | `instance` | [instCeilDiv](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/instceildiv--4409c95b63205255e32c2641.md) | 263 | `declaration-track:4409c95b63205255e32c2641cb1fc31c793fb8f0c5761646f5a0fe1d6cf1e80b` |
| 40 | `lemma` | [ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-def--dde6ead578900754f446b63b.md) | 270 | `result-track:dde6ead578900754f446b63b8ca831a449283465edcdaa9a4b7b11a4b3e5c276` |
| 41 | `lemma` | [coe_ceilDiv_def](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/coe-ceildiv-def--4b3af6710c38d29dc3b79a1c.md) | 272 | `result-track:4b3af6710c38d29dc3b79a1c39976d8c20392d4a5c21cad3f99be0766d269626` |
| 42 | `lemma` | [ceilDiv_apply](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/ceildiv-apply--d36b5806793156a732476658.md) | 273 | `result-track:d36b5806793156a73247665888719e0e0f3f13e8575f509a62cd0e537da07727` |
| 43 | `lemma` | [support_ceilDiv_subset](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/support-ceildiv-subset--06901487a20e898320e977c4.md) | 275 | `result-track:06901487a20e898320e977c4e9dc939a4dc6835612a12b89f701a177f85fc57d` |
| 44 | `example` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/Div/Variant411ade89e6d72ff26638b3160c61c463ef1a603d1a96cfcbf493709cbc78c285.lean/declarations/example--d17cfed0b73f795d6e240f42.md) | 282 | `declaration-track:d17cfed0b73f795d6e240f42b88e44685b1f9a2c3fd2dc44cb5c9646e94623bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
