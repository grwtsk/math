# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Nat.Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca717d8ba4e7dca9939748c367dc2211321f6b19",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca717d8ba4e7dca9939748c367dc2211321f6b19`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/instlocallyfiniteorder--65f352f28787a7cb8e35097a.md) | 34 | `declaration-track:65f352f28787a7cb8e35097ad6c5e9371cc5ccb607598da4a86a73e87a41ebac` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/instance--84c7b693206d44e0029adc34.md) | 44 | `declaration-track:84c7b693206d44e0029adc344d8ada3d444de2f700d5f294dfb14aebf74c03ba` |
| 3 | `theorem` | [Icc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/icc-eq-range--e2b786dfc01650324630155c.md) | 48 | `result-track:e2b786dfc01650324630155cedebb786f32a9396cb60c0f2acee3b284614618e` |
| 4 | `theorem` | [Ico_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ico-eq-range--0a37978295f4eaef0fe11f16.md) | 51 | `result-track:0a37978295f4eaef0fe11f166bba8f09d204a43f33b917984fb866873fd3cb65` |
| 5 | `theorem` | [Ioc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ioc-eq-range--834010cecd60539a265e8755.md) | 54 | `result-track:834010cecd60539a265e8755042fee2511ea0958b7e4a1a66231f56ff8b04719` |
| 6 | `theorem` | [Ioo_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ioo-eq-range--80a0ba981037c4174617e60b.md) | 57 | `result-track:80a0ba981037c4174617e60b076e983abc727d00a80ade977861ffd5195ef899` |
| 7 | `theorem` | [uIcc_eq_range'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/uicc-eq-range--889e780b024ba3499715f933.md) | 60 | `result-track:889e780b024ba3499715f933694aee63c016d63330e3e2000136387ec6234fce` |
| 8 | `theorem` | [Iio_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/iio-eq-range--36f4898b9b5ba95e13239d80.md) | 63 | `result-track:36f4898b9b5ba95e13239d802442f3ed076bc6325d229f1cd7423d3e46f036a5` |
| 9 | `theorem` | [Ico_zero_eq_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ico-zero-eq-range--b78bb801e22d61375d03a6e7.md) | 67 | `result-track:b78bb801e22d61375d03a6e75f46caf7d86bb065f3536612673e7ea0d3d5ff95` |
| 10 | `lemma` | [range_eq_Icc_zero_sub_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/range-eq-icc-zero-sub-one--47a4398889840c79b745289c.md) | 70 | `result-track:47a4398889840c79b745289c2d5e6e95aa1f3863c19c0ec9db13f2569f425752` |
| 11 | `theorem` | [_root_.Finset.range_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/root-finset-range-eq-ico--b0a915b61392179fabcc72c4.md) | 73 | `result-track:b0a915b61392179fabcc72c4dad3522c0cbb4dc82ef60702bbda814c6fcc15da` |
| 12 | `theorem` | [range_succ_eq_Icc_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/range-succ-eq-icc-zero--d258ae19073354495204ac7c.md) | 76 | `result-track:d258ae19073354495204ac7c20e4492807358a0f6c6b0c0061bd5dc3e1f3181d` |
| 13 | `theorem` | [range_succ_eq_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/range-succ-eq-iic--66553e0268fb77c6d9ce1be1.md) | 79 | `result-track:66553e0268fb77c6d9ce1be14b854ea9f0d7bbe24fc86fcfdc6786f44bb5feda` |
| 14 | `lemma` | [card_Icc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/card-icc--9be80147c154215b374a253c.md) | 83 | `result-track:9be80147c154215b374a253cd0445ba1769690737a385706835a98f91f0c963f` |
| 15 | `lemma` | [card_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/card-ico--809ab0477e4e12043049e582.md) | 84 | `result-track:809ab0477e4e12043049e582ab9218241c7d2443b3c1fd4fd0f2f0b586686278` |
| 16 | `lemma` | [card_Ioc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/card-ioc--86a27e013027a7b32844d7f0.md) | 85 | `result-track:86a27e013027a7b32844d7f092c5764db7f67f42ea2e70d3cdd3f78bc7afc490` |
| 17 | `lemma` | [card_Ioo](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/card-ioo--9868115d74a76bf8a937be50.md) | 86 | `result-track:9868115d74a76bf8a937be50bbfc644a0352f419a5593ed73f91c71a4fddb640` |
| 18 | `theorem` | [card_uIcc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/card-uicc--4d27da95feaa70cc3c3b7ff5.md) | 89 | `result-track:4d27da95feaa70cc3c3b7ff534100689d313ce8bc75bb7e6edd67da9b0331f15` |
| 19 | `lemma` | [card_Iic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/card-iic--aea93e3e5b8161a6e2f99312.md) | 93 | `result-track:aea93e3e5b8161a6e2f99312b88877cb94ac7a3d06828585898c1a6d4dc7285a` |
| 20 | `theorem` | [card_Iio](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/card-iio--fb04d6ac5128e2a42dc81811.md) | 96 | `result-track:fb04d6ac5128e2a42dc81811f01a6a5a2ea3bb2614ab11a8323e60d4d0114b3c` |
| 21 | `theorem` | [Ico_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ico-succ-singleton--fd0d3a5e1fedeeb9bcaed572.md) | 101 | `result-track:fd0d3a5e1fedeeb9bcaed572bc860229fe942fec039f4a20d65273ee875b8438` |
| 22 | `theorem` | [Ico_pred_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ico-pred-singleton--c1528b631f013be992407d54.md) | 104 | `result-track:c1528b631f013be992407d54ce370f5c64836715c6abb9070fd07e20509ee796` |
| 23 | `theorem` | [Ioc_succ_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ioc-succ-singleton--56eeca7d7b31ad3d069a0bb6.md) | 110 | `result-track:56eeca7d7b31ad3d069a0bb66914b0274cd60bbcf927a5c8e91e88454f742c98` |
| 24 | `lemma` | [mem_Ioc_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/mem-ioc-succ--33f9de96f11b8ca6e209c27b.md) | 114 | `result-track:33f9de96f11b8ca6e209c27ba3293ec6251183920bda77ee570dbb2d783a3bb9` |
| 25 | `lemma` | [mem_Ioc_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/mem-ioc-succ--4aca7bf0c436ea1aae161331.md) | 116 | `result-track:4aca7bf0c436ea1aae1613310942b0d823eb7b7dd0a8b04b71658ef38749d2f4` |
| 26 | `theorem` | [image_sub_const_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/image-sub-const-ico--1368296ee7eb69c8ac97d8d0.md) | 119 | `result-track:1368296ee7eb69c8ac97d8d0afe07248f865b47aa79a3f5dc9cdf9fcf95eef84` |
| 27 | `theorem` | [Ico_image_const_sub_eq_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ico-image-const-sub-eq-ico--7f457d2d69c533772668da52.md) | 127 | `result-track:7f457d2d69c533772668da5228af3c9003a71d2c60782e5a0a0ab78464ae42f5` |
| 28 | `theorem` | [Ico_succ_left_eq_erase_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ico-succ-left-eq-erase-ico--03176ab072f0d1e0d24d58dc.md) | 135 | `result-track:03176ab072f0d1e0d24d58dc5143de8b53cd6ebeefb9be7f1487ca59500a324d` |
| 29 | `theorem` | [Ico_succ_right_eq_insert_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/ico-succ-right-eq-insert-ico--8c93b6f72e176ac94b195e5a.md) | 140 | `result-track:8c93b6f72e176ac94b195e5a9a2fe505af2308a5a5254bfff0da8668b0bb975b` |
| 30 | `theorem` | [mod_injOn_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/mod-injon-ico--e95ada42695727480e024b1d.md) | 145 | `result-track:e95ada42695727480e024b1d5cb36153fee7678235724f0852db628e12a10a1e` |
| 31 | `theorem` | [image_Ico_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/image-ico-mod--f9a261b91b989079e0bd563e.md) | 171 | `result-track:f9a261b91b989079e0bd563e57831475193cb0206718890c1e75e89c5c2f883b` |
| 32 | `theorem` | [multiset_Ico_map_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/multiset-ico-map-mod--983dd76100eacee600b53f40.md) | 198 | `result-track:983dd76100eacee600b53f40c386f176e19b7c4b826127f595b19490a0a49fbc` |
| 33 | `lemma` | [toFinset_range'_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/tofinset-range-1--d9a08aec7d84f9b54b6fa5ec.md) | 210 | `result-track:d9a08aec7d84f9b54b6fa5ec51c819f9b53fc33db2cd6af27109859bd5c1f6ba` |
| 34 | `lemma` | [toFinset_range'_1_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/tofinset-range-1-1--f50052b0b687b64b4c658c03.md) | 214 | `result-track:f50052b0b687b64b4c658c03b103daa005f68817c5d15a2315370b02a45d49f9` |
| 35 | `lemma` | [toFinset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/tofinset-range--e040975430a9eff5466894bd.md) | 218 | `result-track:e040975430a9eff5466894bdb8794bcef40e63515b8bfaa4264638b754caf738` |
| 36 | `theorem` | [range_image_pred_top_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/range-image-pred-top-sub--e9d6a5ddb3485db2ec46688f.md) | 226 | `result-track:e9d6a5ddb3485db2ec46688f347333a81ac02e7612fc92bdb62f889b0a1ecc91` |
| 37 | `theorem` | [range_add_eq_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/range-add-eq-union--539a023f037811354df6a1f7.md) | 233 | `result-track:539a023f037811354df6a1f709d899c035d28dc39c967f6da5b470ea87ee9050` |
| 38 | `theorem` | [Nat.decreasing_induction_of_not_bddAbove](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-decreasing-induction-of-not-bddabove--7e2512a4c04ab85da6eb7d30.md) | 249 | `result-track:7e2512a4c04ab85da6eb7d303db4f3cd133a63eb30ab88a8cdb3e229a011ce5b` |
| 39 | `lemma` | [Nat.strong_decreasing_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-strong-decreasing-induction--b553ff87b9e4d7acd2ed158d.md) | 255 | `result-track:b553ff87b9e4d7acd2ed158d7e64a83e1065ee6e5ee1a2339c33cabac577efcc` |
| 40 | `theorem` | [Nat.decreasing_induction_of_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-decreasing-induction-of-infinite--9064a45379ca92a1fcd2f8d0.md) | 267 | `result-track:9064a45379ca92a1fcd2f8d0436e04ce4b2d3759df756e3a1552d9e62be6133d` |
| 41 | `theorem` | [Nat.cauchy_induction'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-cauchy-induction--bcee17ea41851cead7181f1d.md) | 271 | `result-track:bcee17ea41851cead7181f1d96e8c5e3cfdec9ff32bb73f7e2541820cab4d10e` |
| 42 | `theorem` | [Nat.cauchy_induction](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-cauchy-induction--19694936e4b677e73ed3e191.md) | 279 | `result-track:19694936e4b677e73ed3e1919f758a8b6959184fed7b4e9e220657a6b498d4bb` |
| 43 | `theorem` | [Nat.cauchy_induction_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-cauchy-induction-mul--14abed3d710ba817ea2b1c53.md) | 283 | `result-track:14abed3d710ba817ea2b1c532d8e240ec5d2cd2222da8f877f2447e1b6e4f931` |
| 44 | `theorem` | [Nat.cauchy_induction_two_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-cauchy-induction-two-mul--27833deba3c6cf8ebc5b748f.md) | 290 | `result-track:27833deba3c6cf8ebc5b748fca5bf98a160c8cf329254b66b9f0630220a91ea4` |
| 45 | `theorem` | [Nat.pow_imp_self_of_one_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Nat/Variant0cae5c31159996f93b03cee5293aa7d935d013a46eb38c1065be8e3f9f261b17.lean/declarations/nat-pow-imp-self-of-one-lt--81c008b9e4fc9bb2f947f33a.md) | 294 | `result-track:81c008b9e4fc9bb2f947f33a0bf8f94a7a35299a61baa04e2425b44b408dc44a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
