# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Interval.Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d59e6072c7bef192acd6989efc41b0090bcbfa2",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d59e6072c7bef192acd6989efc41b0090bcbfa2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.LocallyFinite` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/instance--3687e6cd1c57087d7be5f348.md) | 33 | `declaration-track:3687e6cd1c57087d7be5f348748bbfb62e2cc054cf9b1e3fe48aebca765a3b6d` |
| 2 | `theorem` | [Icc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/icc-eq-range--549e7c879bcfd012fae69c6c.md) | 72 | `result-track:549e7c879bcfd012fae69c6cffe87de5cfa08481806c786a3cd7810e4786b9e3` |
| 3 | `theorem` | [Ico_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-eq-range--4d61f6476cb7dc606cbcb2f4.md) | 76 | `result-track:4d61f6476cb7dc606cbcb2f4ce4dcb23757d735ae4930364593cc115f0fff93e` |
| 4 | `theorem` | [Ioc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ioc-eq-range--0678f9dc1196e906fb2e594e.md) | 80 | `result-track:0678f9dc1196e906fb2e594e3e616690556c480fc350bda9cb897cde35509422` |
| 5 | `theorem` | [Ioo_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ioo-eq-range--4a458e65c71b24b727da0955.md) | 84 | `result-track:4a458e65c71b24b727da095571360fd6423ce9d22797284638defd2d3db405d6` |
| 6 | `theorem` | [uIcc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/uicc-eq-range--4ff53eafb0103d79e298a49e.md) | 88 | `result-track:4ff53eafb0103d79e298a49eefef35cdfb4b47b075868bd5cc26c2d3a810ec80` |
| 7 | `theorem` | [Iio_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/iio-eq-range--213173da1b317e8df38f5752.md) | 92 | `result-track:213173da1b317e8df38f57527397d3a904fe07ea1f70831571543190d055ea7c` |
| 8 | `theorem` | [Ico_zero_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-zero-eq-range--986a4292a672a1275daf4026.md) | 98 | `result-track:986a4292a672a1275daf40261fef83f12b881e789682bd4878b1d17ae46e3ae4` |
| 9 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.IccEqRangePrime.Variant8a8744a76b841e53e50336c655be6e278bddc3bb2440a2b8bdb2373b0823ac32.Finset.range_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-icceqrangeprime-variant8--3b9e43484b94312a06d10f5e.md) | 101 | `result-track:3b9e43484b94312a06d10f5e6ffb48d8b60e0f1dc3bc7b3412b8fb24660879b0` |
| 10 | `theorem` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-icc--210f5a50447f95e8fe15efd8.md) | 106 | `result-track:210f5a50447f95e8fe15efd8290ee107e5ed348019960262a75f2c1f693c0114` |
| 11 | `theorem` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-ico--2472956ad4d9652643c530bd.md) | 111 | `result-track:2472956ad4d9652643c530bdebcb73abf917a1481b20ce635f26d23f754475b3` |
| 12 | `theorem` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-ioc--4009600d3d67e673f1179de6.md) | 116 | `result-track:4009600d3d67e673f1179de6e64c61e0c01626bf8b837478835851758c3451ef` |
| 13 | `theorem` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-ioo--8b627ed7fb2b8ea764e858d5.md) | 121 | `result-track:8b627ed7fb2b8ea764e858d593cd744df6214d6782b8b113bb67aadd6a6fae67` |
| 14 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-uicc--0820b20ef4d6cf8954b13f69.md) | 126 | `result-track:0820b20ef4d6cf8954b13f69696a6dfe43b6fe6716cf95275a21c445bfdeb0c4` |
| 15 | `theorem` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-iic--62be5cc3d2560cd25ff046ac.md) | 140 | `result-track:62be5cc3d2560cd25ff046ac97c7ca734d0c5d1c73ee3880dd59708e8d31fc1e` |
| 16 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-iio--48c4511f04e201da3bb4aece.md) | 144 | `result-track:48c4511f04e201da3bb4aecea15d1abc021ea0caa8db34c8cfb5b568894bb4ab` |
| 17 | `theorem` | [card_fintypeIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-fintypeicc--74fec751e940f3555ea294c1.md) | 149 | `result-track:74fec751e940f3555ea294c1545141dcbf850f92738a6cd4ab043fd6ea1ef09f` |
| 18 | `theorem` | [card_fintypeIco](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-fintypeico--3c3dc599ad83f720155318a5.md) | 155 | `result-track:3c3dc599ad83f720155318a596901b23b996d2b15f7303b96dad43c89b9cc920` |
| 19 | `theorem` | [card_fintypeIoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-fintypeioc--b77b95e7ec8a2981c157e0fd.md) | 161 | `result-track:b77b95e7ec8a2981c157e0fd75b31e8a4a1e255cbc3a393b48962edf66cf4930` |
| 20 | `theorem` | [card_fintypeIoo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-fintypeioo--889096403925f7c9718f8d09.md) | 167 | `result-track:889096403925f7c9718f8d09fb06ba0ada4c2ad39f6716d45bee7bc0e7209345` |
| 21 | `theorem` | [card_fintypeIic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-fintypeiic--53ba1598c8b3905f665f7ed7.md) | 173 | `result-track:53ba1598c8b3905f665f7ed70af5e82a5a683645f82730f321d21bf45f772f34` |
| 22 | `theorem` | [card_fintypeIio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/card-fintypeiio--d8bf64aa4eb04b095f8f7881.md) | 179 | `result-track:d8bf64aa4eb04b095f8f7881c6694cd55caabaf2cb364c537a1f74c4dc8c9c10` |
| 23 | `theorem` | [Icc_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/icc-succ-left--155e7b4ae2a24e28dfb727ea.md) | 183 | `result-track:155e7b4ae2a24e28dfb727ea26d662ecfbfc8522b2f5ae7e95d5496ceb22582f` |
| 24 | `theorem` | [Ico_succ_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-succ-right--33d4330dad2f4c823aa7a867.md) | 188 | `result-track:33d4330dad2f4c823aa7a86720ac46e3629acac0ec57d766489b7b64562fd030` |
| 25 | `theorem` | [Ico_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-succ-left--a74d274dece8771c10cb4c14.md) | 193 | `result-track:a74d274dece8771c10cb4c145c3bdf48a2e3daad8a8724a071862d4214da1c84` |
| 26 | `theorem` | [Icc_pred_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/icc-pred-right--80117f3e481278719f15d533.md) | 198 | `result-track:80117f3e481278719f15d533bd051118a75dc3448c9de7f4a409c6d77260093a` |
| 27 | `theorem` | [Ico_succ_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-succ-succ--d8d098b95e5bb12740f0dce7.md) | 203 | `result-track:d8d098b95e5bb12740f0dce77f5a6044a601546a1c794a7a0c546f3a2f57c399` |
| 28 | `theorem` | [Ico_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-succ-singleton--8a82451d89c5c56d96d7f767.md) | 209 | `result-track:8a82451d89c5c56d96d7f7675343ad8af553d5914156328c7756a5ab3029a9b0` |
| 29 | `theorem` | [Ico_pred_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-pred-singleton--c55342939db7e311a0c69b1f.md) | 213 | `result-track:c55342939db7e311a0c69b1f8aceea2699b106b0bfb03353d9e1d48a2245762e` |
| 30 | `theorem` | [Ioc_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ioc-succ-singleton--728aa0a26e1ce3da269b44a3.md) | 218 | `result-track:728aa0a26e1ce3da269b44a3dda3c42b6c091b801f2f62584c4b5e4c8e78ceb0` |
| 31 | `theorem` | [Ico_succ_right_eq_insert_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-succ-right-eq-insert-ico--8b986c3bba4f62a8d4d19dce.md) | 223 | `result-track:8b986c3bba4f62a8d4d19dcee862bd2e969a8aa0021e9a876f5b5c2315f47243` |
| 32 | `theorem` | [Ico_insert_succ_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-insert-succ-left--094f5098b57331afc789cd0f.md) | 227 | `result-track:094f5098b57331afc789cd0faec721e308aaa4263018b59782c78275ce044773` |
| 33 | `theorem` | [image_sub_const_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/image-sub-const-ico--243f8b7ba37c3c405ab53c3b.md) | 231 | `result-track:243f8b7ba37c3c405ab53c3b5d652d800d1d9734e1c2b90759bb3b8f05f2551c` |
| 34 | `theorem` | [Ico_image_const_sub_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-image-const-sub-eq-ico--f8befb6635aa9acc66db59a9.md) | 245 | `result-track:f8befb6635aa9acc66db59a955d1219aa4a7e6163935977d7d02f8e1cc6d86a0` |
| 35 | `theorem` | [Ico_succ_left_eq_erase_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/ico-succ-left-eq-erase-ico--f67a321f7b5cb903662ad7f7.md) | 273 | `result-track:f67a321f7b5cb903662ad7f7b776658b3fb9c1a3bc3fb029418867492e262bc3` |
| 36 | `theorem` | [mod_injOn_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/mod-injon-ico--b042775082690116e0b84d4f.md) | 279 | `result-track:b042775082690116e0b84d4f4bb95c71b4d77d67ac09aa769359aeefa9bae4f5` |
| 37 | `theorem` | [image_Ico_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/image-ico-mod--8b8a86d972563e258333f602.md) | 307 | `result-track:8b8a86d972563e258333f6026251b9c0b26414721defd8ce17d16e38fed67927` |
| 38 | `theorem` | [multiset_Ico_map_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/multiset-ico-map-mod--b1d89efb3b1e4efbdf28b1d7.md) | 337 | `result-track:b1d89efb3b1e4efbdf28b1d72a79f5888d0ca1c46118437fbe12fd58e298d934` |
| 39 | `theorem` | [range_image_pred_top_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/range-image-pred-top-sub--e3ca75b25ae958f62d5fd15b.md) | 350 | `result-track:e3ca75b25ae958f62d5fd15be067657a2e3ef28198f9da7e2fea42dd7a4270b9` |
| 40 | `theorem` | [range_add_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/range-add-eq-union--3282f9f95973602936229f40.md) | 359 | `result-track:3282f9f95973602936229f40fe775c16f1e202644ebc014bcdf41c6a84cdcb37` |
| 41 | `theorem` | [Nat.decreasing_induction_of_not_bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/nat-decreasing-induction-of-not-bddabove--2269e954fae699d060bac8e8.md) | 371 | `result-track:2269e954fae699d060bac8e80ee6a254318ca7dd60ff5b383f51232a3319403f` |
| 42 | `theorem` | [Nat.decreasing_induction_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/nat-decreasing-induction-of-infinite--47991125a900c54669677912.md) | 376 | `result-track:47991125a900c546696779128183225a7d9cdcc0f9655b694ef0e4e4d836793d` |
| 43 | `theorem` | [Nat.cauchy_induction'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/nat-cauchy-induction--4a43a168a755b49274053c85.md) | 380 | `result-track:4a43a168a755b49274053c8580da3211d52933519a89184975c787aa1340691c` |
| 44 | `theorem` | [Nat.cauchy_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/nat-cauchy-induction--5196f83dc113fa0e1105cb29.md) | 389 | `result-track:5196f83dc113fa0e1105cb29cf01dd01003559287dd2983c5d297915979a16f7` |
| 45 | `theorem` | [Nat.cauchy_induction_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/nat-cauchy-induction-mul--d7c94eba05d80cdb5d6401bc.md) | 394 | `result-track:d7c94eba05d80cdb5d6401bcaea5ec8fb540d57880e517e5d6df999cc9f3eeeb` |
| 46 | `theorem` | [Nat.cauchy_induction_two_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Interval/Variant1fa20682a3741f670e4d80850dbe1d61e46ccb2a8130cffb9f80c7ad92cb99a4.lean/declarations/nat-cauchy-induction-two-mul--e2d383a71b56ae6ede85490f.md) | 402 | `result-track:e2d383a71b56ae6ede85490ff007018a9c651fb1e0b183013a369c1bf82c3a47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
