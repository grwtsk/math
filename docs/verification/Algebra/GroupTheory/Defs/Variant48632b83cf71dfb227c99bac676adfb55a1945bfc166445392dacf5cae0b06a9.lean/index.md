# Verification target: GRWTSK.Algebra.GroupTheory.Defs.Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd3e38284d495d9f9c19d231f48b415cc3b3e32f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd3e38284d495d9f9c19d231f48b415cc3b3e32f`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.NeZero` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_sub_eq_zero'](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/eq-of-sub-eq-zero--7ea3173d5b18fdd5f152c059.md) | 36 | `result-track:7ea3173d5b18fdd5f152c059aff2ccfcebd02672eb74da3415247098da2c5c86` |
| 2 | `theorem` | [pow_succ''](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/pow-succ--14d5a403e047b532179fe167.md) | 42 | `result-track:14d5a403e047b532179fe16720fdb580f2a442594ae2c170d7ca60c52208f7c1` |
| 3 | `class` | [MulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mulzeroclass--a1d5bcb4932fcea422fb194a.md) | 47 | `declaration-track:a1d5bcb4932fcea422fb194a697a4ed2dfef6ea91fd1ba02b267aeda3706a921` |
| 4 | `class` | [IsLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/isleftcancelmulzero--f07eeddac353425ceb5eefb4.md) | 55 | `declaration-track:f07eeddac353425ceb5eefb4bb742f02b40404978e76fbddfe8387415796b853` |
| 5 | `theorem` | [mul_left_cancel₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-left-cancel--239ec79a677f1096cbacf056.md) | 64 | `result-track:239ec79a677f1096cbacf0564004675bc37432829435c2544b8a164a5722ad4b` |
| 6 | `theorem` | [mul_right_injective₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-right-injective--02372bc4d9943ba575a48dbb.md) | 68 | `result-track:02372bc4d9943ba575a48dbbda345667c6a4e15d61a83c8b96586378bf4b90f6` |
| 7 | `class` | [IsRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/isrightcancelmulzero--3703f0ff8c31f1ef43ad4b88.md) | 75 | `declaration-track:3703f0ff8c31f1ef43ad4b88d29d0a7b5801698400e16ad9dacd9380e36ccd9d` |
| 8 | `theorem` | [mul_right_cancel₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-right-cancel--2da4270eb5d268829b920ef7.md) | 84 | `result-track:2da4270eb5d268829b920ef771a96f9d1405305078443d8887b4bf2a21c8d643` |
| 9 | `theorem` | [mul_left_injective₀](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-left-injective--b8477df545ce68b54aa5e4ee.md) | 88 | `result-track:b8477df545ce68b54aa5e4ee80f15ef3638632ab059382f2640ffa664060e30d` |
| 10 | `class` | [IsCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/iscancelmulzero--fc00dbea2dfb7db1a7f1d4a7.md) | 95 | `declaration-track:fc00dbea2dfb7db1a7f1d4a7cfabc7668e0ec3568c1f4563983056177bd07893` |
| 11 | `class` | [NoZeroDivisors](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/nozerodivisors--1d10f19c4e95027a5ec3fabc.md) | 106 | `declaration-track:1d10f19c4e95027a5ec3fabc2370c1dc0b27cbf612a4ec691f5ad20e5afc26af` |
| 12 | `class` | [SemigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/semigroupwithzero--577437d32fa235a5c98d4520.md) | 114 | `declaration-track:577437d32fa235a5c98d4520ac07dfc09ba151e55c33f1c38dbf8c087a13642c` |
| 13 | `class` | [MulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mulzerooneclass--b917fd9e40938f34c0c0605a.md) | 118 | `declaration-track:b917fd9e40938f34c0c0605aecc9a187da6bede0a552121473ac969c2375d2be` |
| 14 | `class` | [MonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/monoidwithzero--1c6c6dbad4bec0716e5e7364.md) | 123 | `declaration-track:1c6c6dbad4bec0716e5e736424976c24f99cae379d6e7dac1326492e1371e0a0` |
| 15 | `class` | [CancelMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/cancelmonoidwithzero--8dfdff73de780b6a65469f06.md) | 128 | `declaration-track:8dfdff73de780b6a65469f06de1719fb2fe1e657e710e64addee19daf92cded1` |
| 16 | `class` | [CommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/commmonoidwithzero--df9e3493ff658b5ce4e1f84f.md) | 133 | `declaration-track:df9e3493ff658b5ce4e1f84f9dc72dbfe71340736eb4abcfb9fee9e2792961ef` |
| 17 | `lemma` | [IsLeftCancelMulZero.to_isRightCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/isleftcancelmulzero-to-isrightcancelmulzero--02fbde69292a0d393bd77b85.md) | 140 | `result-track:02fbde69292a0d393bd77b859e584ee20e6eaf23a0325a5c4a9c6d3e0d9384f1` |
| 18 | `lemma` | [IsRightCancelMulZero.to_isLeftCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/isrightcancelmulzero-to-isleftcancelmulzero--a486daf1c90dc6bb094659cd.md) | 146 | `result-track:a486daf1c90dc6bb094659cd86c06b9f821cffa6a77f6074827f7d2349b3059e` |
| 19 | `lemma` | [IsLeftCancelMulZero.to_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/isleftcancelmulzero-to-iscancelmulzero--02b04d7af388fea83cd47257.md) | 152 | `result-track:02b04d7af388fea83cd47257464b5e540a17cba158b95b87d4be9c78a4bf7c65` |
| 20 | `lemma` | [IsRightCancelMulZero.to_isCancelMulZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/isrightcancelmulzero-to-iscancelmulzero--d19d002e83cd966ba56cb45c.md) | 157 | `result-track:d19d002e83cd966ba56cb45cea9603f33b54bb732e102944997c139e5530e0b3` |
| 21 | `class` | [CancelCommMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/cancelcommmonoidwithzero--fa7d46d76dfade5872a462ce.md) | 167 | `declaration-track:fa7d46d76dfade5872a462ce025f52ac613e570402f789edb22038cebcfaf5ed` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/instance--bdce79cc4616554f9e4cd448.md) | 173 | `declaration-track:bdce79cc4616554f9e4cd448ea248cb31bb867103399c28787b3c02f073a2bcb` |
| 23 | `class` | [GroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/groupwithzero--743753e279a853b9f7555d30.md) | 183 | `declaration-track:743753e279a853b9f7555d30bc475e176fd3d4bf0c8cf0f0076901349e407f23` |
| 24 | `lemma` | [mul_inv_cancel](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-inv-cancel--595adb6bd460b351c78f3ed0.md) | 193 | `result-track:595adb6bd460b351c78f3ed06cf1a95cf56c9c5b535bbca9e4cf0cdfeecb1b04` |
| 25 | `class` | [CommGroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/commgroupwithzero--0cdbdd660ea1a01ad94f623b.md) | 201 | `declaration-track:0cdbdd660ea1a01ad94f623b0035c6f0997e7e087d78c4af7553f41aff542d3a` |
| 26 | `instance` | [NeZero.one](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/nezero-one--528715735ddd56ba98b676c4.md) | 211 | `declaration-track:528715735ddd56ba98b676c43cef31b9fd33919790aead49fd9b60aa14bd7e50` |
| 27 | `theorem` | [pullback_nonzero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/pullback-nonzero--3a641e7a5c5fe620c4f9dd8c.md) | 225 | `result-track:3a641e7a5c5fe620c4f9dd8c2b732aa5d3f7f6b77017a5c65626621061893490` |
| 28 | `theorem` | [mul_eq_zero_of_left](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-eq-zero-of-left--9ad7aa1d0d1c0a8659442a15.md) | 238 | `result-track:9ad7aa1d0d1c0a8659442a15ce3b0c20691ce4730de76e94991dda5b6fe71cc0` |
| 29 | `theorem` | [mul_eq_zero_of_right](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-eq-zero-of-right--b6ffa713b78ec7059a1edf2f.md) | 241 | `result-track:b6ffa713b78ec7059a1edf2f9278067262eae6be4557d51520ee8b289d91e593` |
| 30 | `theorem` | [mul_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-eq-zero--235f3108833fef1dc9b13b49.md) | 249 | `result-track:235f3108833fef1dc9b13b494237b62ff9a2c13dcd43a84416bbf081b10a3c72` |
| 31 | `theorem` | [zero_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/zero-eq-mul--dc70e6324c920db22514aea4.md) | 257 | `result-track:dc70e6324c920db22514aea444b418ab625fce12b648c5503ffc8ffdfff4a1b5` |
| 32 | `theorem` | [mul_ne_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-ne-zero-iff--0a56529a0547e0e6552edb21.md) | 262 | `result-track:0a56529a0547e0e6552edb21f23e9e7c4c8c9f94b394ba54da009965fa525700` |
| 33 | `theorem` | [mul_eq_zero_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-eq-zero-comm--e996f3f6ceec951404ccc351.md) | 267 | `result-track:e996f3f6ceec951404ccc351138940aee946b1bfaadbf090a04cc31bc63a5600` |
| 34 | `theorem` | [mul_ne_zero_comm](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-ne-zero-comm--dc6e25f9c19b72b37cb4a02d.md) | 273 | `result-track:dc6e25f9c19b72b37cb4a02dac7278b50c6b3e615ff5ae4b07d3c4c3d645fa92` |
| 35 | `theorem` | [mul_self_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-self-eq-zero--8096030a3566c13c48d86faf.md) | 276 | `result-track:8096030a3566c13c48d86faf1d357a7b6cb0b74b3327331f28915f77504739b4` |
| 36 | `theorem` | [zero_eq_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/zero-eq-mul-self--b5405847e844f99d06e47f04.md) | 279 | `result-track:b5405847e844f99d06e47f0447d59e45d7257cfbed0dbea40d7140483953312f` |
| 37 | `theorem` | [mul_self_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/mul-self-ne-zero--a99c03226c0eedc48d0c3a15.md) | 282 | `result-track:a99c03226c0eedc48d0c3a156fd3a566536a2c7c25988cb0c0c94024798a0545` |
| 38 | `theorem` | [zero_ne_mul_self](../../../../../mathematics/Algebra/GroupTheory/Defs/Variant48632b83cf71dfb227c99bac676adfb55a1945bfc166445392dacf5cae0b06a9.lean/declarations/zero-ne-mul-self--dceed45e8e9fa53721d2e925.md) | 285 | `result-track:dceed45e8e9fa53721d2e92517ff4030af057c30be5a82f3c410f48a4cd539cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
