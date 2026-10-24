# Verification target: GRWTSK.Topology.GeneralTopology.Lemmas.Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb9f494a189713f6ab0b83204ca28449f597315f",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb9f494a189713f6ab0b83204ca28449f597315f`.

Source path: `GRWTSK/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.NNReal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Real` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isOpen_Ico_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/isopen-ico-zero--bc0f2936d42be5c97c2f2773.md) | 48 | `result-track:bc0f2936d42be5c97c2f277370950a0244df15ba5dd6f5d68caf9bdb0821fb77` |
| 2 | `theorem` | [_root_.continuous_real_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-continuous-real-tonnreal--d723a315656df123af59f60c.md) | 53 | `result-track:d723a315656df123af59f60cf80bbc0ef98c3cff48ac93b9b94a5f640777450c` |
| 3 | `def` | [_root_.ContinuousMap.realToNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-continuousmap-realtonnreal--fd24f33a7da46493ff9b2371.md) | 58 | `declaration-track:fd24f33a7da46493ff9b23717f61489fc7b3634be855f56a9f91539f64cd70d7` |
| 4 | `lemma` | [_root_.ContinuousOn.ofReal_map_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-continuouson-ofreal-map-tonnreal--a5851347ad6743227be293e2.md) | 61 | `result-track:a5851347ad6743227be293e2a912420730ddad0f0c9075fab75bc5dc5f0d2fb0` |
| 5 | `theorem` | [tendsto_coe](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tendsto-coe--1fc7ba4da5829da585af64f0.md) | 67 | `result-track:1fc7ba4da5829da585af64f00a49447fa86fefb9546f2d4549ae43e4994bfb33` |
| 6 | `theorem` | [tendsto_coe'](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tendsto-coe--ccca5e74a0bb84882290476f.md) | 71 | `result-track:ccca5e74a0bb84882290476f475e6237e403c95d47cc8a59b7d73498d99bce4c` |
| 7 | `theorem` | [map_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/map-coe-attop--09a5549baabf4ba5417aeef7.md) | 75 | `result-track:09a5549baabf4ba5417aeef7e2095d6991de297eb2cf17020279ee1120b0a3dd` |
| 8 | `theorem` | [comap_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/comap-coe-attop--d6c11f34ddf80bcf749d0166.md) | 78 | `result-track:d6c11f34ddf80bcf749d0166eba4d33a7dcb7cb060d9e31d3f7dc47fbc4b9677` |
| 9 | `theorem` | [tendsto_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tendsto-coe-attop--76a17c9d18895969226127cf.md) | 81 | `result-track:76a17c9d18895969226127cfbdc43e5d94e52dbb6ab8299995c56724e6c59bff` |
| 10 | `theorem` | [_root_.tendsto_real_toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-tendsto-real-tonnreal--8c986c0b4aeb13edfc2f2752.md) | 85 | `result-track:8c986c0b4aeb13edfc2f2752685fc94d409dcf8cc4ee15ea2f55c613692d2240` |
| 11 | `theorem` | [_root_.Real.map_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-real-map-tonnreal-attop--90dd5aa8b422240294d4e240.md) | 90 | `result-track:90dd5aa8b422240294d4e24066d69bb4ffafefce9e22bfb0c706ef9d7621a5bb` |
| 12 | `theorem` | [_root_.tendsto_real_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-tendsto-real-tonnreal-attop--d91aa8210d5686799a54e76c.md) | 93 | `result-track:d91aa8210d5686799a54e76c47971c5b307ea9d5b3715780efe07eff4a525a11` |
| 13 | `theorem` | [_root_.Real.comap_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-real-comap-tonnreal-attop--78d516530f2645d102a6b9cc.md) | 97 | `result-track:78d516530f2645d102a6b9ccaf4f516cc911de5524337e530b90601b6026306e` |
| 14 | `theorem` | [_root_.Real.tendsto_toNNReal_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-real-tendsto-tonnreal-attop-iff--cacc9d439c8bbe97069fd9cd.md) | 104 | `result-track:cacc9d439c8bbe97069fd9cde23842cdb30087506377f9a8e52aa27995c64d9d` |
| 15 | `theorem` | [_root_.Real.tendsto_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-real-tendsto-tonnreal-attop--302d18ca6e5b711bfb3a63e5.md) | 108 | `result-track:302d18ca6e5b711bfb3a63e571c587c7554fe815bf14bd2fd23424c8401b24e9` |
| 16 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/nhds-zero--65996b9f6f987ce50e6aa78b.md) | 111 | `result-track:65996b9f6f987ce50e6aa78b16a6dab04f5d7ff3d7246da496d83919633d62fc` |
| 17 | `theorem` | [nhds_zero_basis](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/nhds-zero-basis--b5fe928467de776aed51a71e.md) | 114 | `result-track:b5fe928467de776aed51a71eaf0d64a65e8addbcc848f470fa498dcc3e35ddd8` |
| 18 | `theorem` | [hasSum_coe](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/hassum-coe--cd8eb7ea80cbcb5d4deaa0a7.md) | 119 | `result-track:cd8eb7ea80cbcb5d4deaa0a7e7edf13d3c5e95921fe99294cd5e92b7562f4859` |
| 19 | `theorem` | [_root_.HasSum.toNNReal](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-hassum-tonnreal--72531f5815577b9d16611185.md) | 122 | `result-track:72531f5815577b9d1661118502c5e025210528737c4fcda4cd469bd435820c4f` |
| 20 | `theorem` | [hasSum_real_toNNReal_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/hassum-real-tonnreal-of-nonneg--0f60ac3fdab159e6c0d0a13f.md) | 128 | `result-track:0f60ac3fdab159e6c0d0a13fe96c03d56da21d87398dfe227e88601dbd91b10c` |
| 21 | `theorem` | [summable_coe](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/summable-coe--4e94a8a4d91284b80295f4c8.md) | 133 | `result-track:4e94a8a4d91284b80295f4c8404cb92d6782a646cfdb3c62dc8fdd7724f33dc1` |
| 22 | `theorem` | [summable_mk](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/summable-mk--52ec76f2cd51369a29b26983.md) | 138 | `result-track:52ec76f2cd51369a29b26983d412abbe60901b6c259d9cb4d87d9dded95e5f89` |
| 23 | `theorem` | [coe_tsum](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/coe-tsum--4493f22beedc762a34802032.md) | 143 | `result-track:4493f22beedc762a3480203218b8e9bf6d13f75f66bee5f66575d78afef81d11` |
| 24 | `theorem` | [coe_tsum_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/coe-tsum-of-nonneg--bfebfdab581df8faac70e216.md) | 148 | `result-track:bfebfdab581df8faac70e2161785c279656fbfa8b69a7b242cb4eb1728fbf8d8` |
| 25 | `theorem` | [tsum_mul_left](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tsum-mul-left--5eeb281e407a5d713724ba02.md) | 152 | `result-track:5eeb281e407a5d713724ba02e943bc83026aae1806b868b0ce92857633f70745` |
| 26 | `theorem` | [tsum_mul_right](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tsum-mul-right--5e1f108dda28f1d39540687a.md) | 155 | `result-track:5e1f108dda28f1d39540687a9c3407afc853ab970f10bf240f53b41f1c97bdae` |
| 27 | `theorem` | [summable_comp_injective](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/summable-comp-injective--dd2400561664c682f9b8b0a9.md) | 158 | `result-track:dd2400561664c682f9b8b0a9af87569c666436febe131c08b6b734e1e5e7fcd8` |
| 28 | `theorem` | [summable_nat_add](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/summable-nat-add--0f4e88100b730dfc65ae46a7.md) | 163 | `result-track:0f4e88100b730dfc65ae46a72216f64b0b628365bb3669f5eb8f824b8863dda8` |
| 29 | `theorem` | [summable_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/summable-nat-add-iff--b7c4d7acb508141173ac1267.md) | 166 | `result-track:b7c4d7acb508141173ac1267e3bc2595438da3d4cfc9eb08f71e6e525fedee34` |
| 30 | `theorem` | [hasSum_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/hassum-nat-add-iff--8060560416afc855e1e6a203.md) | 171 | `result-track:8060560416afc855e1e6a2039ca3165f4ba6fa1089382d52b7684c3e738cddec` |
| 31 | `theorem` | [sum_add_tsum_nat_add](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/sum-add-tsum-nat-add--8bdef8b77d2d14a319d2ca07.md) | 175 | `result-track:8bdef8b77d2d14a319d2ca07e89fe4d1a6882dd98dc9c7f8034fda9d8487ac62` |
| 32 | `theorem` | [iInf_real_pos_eq_iInf_nnreal_pos](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/iinf-real-pos-eq-iinf-nnreal-pos--49bc2db0c692491beca67a27.md) | 179 | `result-track:49bc2db0c692491beca67a27303c7def0a38ce6308088589932638b1781b1d4f` |
| 33 | `theorem` | [tendsto_cofinite_zero_of_summable](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tendsto-cofinite-zero-of-summable--c6f4ce0c6609965e0348ace8.md) | 185 | `result-track:c6f4ce0c6609965e0348ace87465bb96924c7946ac6f72d37fcc937ed0f540f7` |
| 34 | `theorem` | [tendsto_atTop_zero_of_summable](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tendsto-attop-zero-of-summable--e056cb5cd963a9d7718fff61.md) | 190 | `result-track:e056cb5cd963a9d7718fff610e0426be4b6d7464e2940c88021fdc6d5030a7cb` |
| 35 | `theorem` | [tendsto_tsum_compl_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tendsto-tsum-compl-attop-zero--ab38514d2e05fd1cc04ab9ea.md) | 196 | `result-track:ab38514d2e05fd1cc04ab9ea55f00f725ee1dbd414a8ae732c946104a8b3e6c5` |
| 36 | `def` | [powOrderIso](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/poworderiso--d9cd72a8b1b4e4788d690d07.md) | 202 | `declaration-track:d9cd72a8b1b4e4788d690d07d95ea368f4afdeea8a3a59672dd95efd1a97fa23` |
| 37 | `theorem` | [_root_.Real.tendsto_of_bddAbove_monotone](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-real-tendsto-of-bddabove-monotone--8825a91d4a2a4272351fee3b.md) | 211 | `result-track:8825a91d4a2a4272351fee3bea894842bccc066aef5ff8984439d050d395df95` |
| 38 | `theorem` | [_root_.Real.tendsto_of_bddBelow_antitone](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/root-real-tendsto-of-bddbelow-antitone--6315b3c4a4fed09e9c35140d.md) | 217 | `result-track:6315b3c4a4fed09e9c35140d0451a5f03dd751da7b4cfda2241292d7284d586d` |
| 39 | `theorem` | [tendsto_of_antitone](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/tendsto-of-antitone--87ce81d214282d4601e98cb5.md) | 223 | `result-track:87ce81d214282d4601e98cb5246ab0f105158eba501351c9af16d7544d0830eb` |
| 40 | `lemma` | [iSup_pow_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/isup-pow-of-ne-zero--1c3ac1392a29fcc4d003613f.md) | 237 | `result-track:1c3ac1392a29fcc4d003613fd5915c62d680379ab23fa69166b7a257522991b5` |
| 41 | `lemma` | [iSup_pow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/isup-pow--c7c106232d9ed5fd24137d0d.md) | 240 | `result-track:c7c106232d9ed5fd24137d0de1b13dfa512051748146ce7f2b252bfe2dfc873f` |
| 42 | `def` | [powOrderIso](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/poworderiso--fef349c2f7ae578bcb2f11b5.md) | 254 | `declaration-track:fef349c2f7ae578bcb2f11b5640ddfe2e57e4f99434f8188000cf81777ed53f9` |
| 43 | `lemma` | [iSup_pow_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/isup-pow-of-ne-zero--36c6de25fdedd8bf2ecdd695.md) | 258 | `result-track:36c6de25fdedd8bf2ecdd69595868541d341c8220d46295f844fceb48c88f49d` |
| 44 | `lemma` | [iSup_pow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/isup-pow--41efb4283bcbf3ac0501bd32.md) | 262 | `result-track:41efb4283bcbf3ac0501bd32400d6d94496badab75eb12cd20c458b21473360f` |
| 45 | `lemma` | [Real.iSup_pow](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/real-isup-pow--c8864009bedbcaa757b8a848.md) | 270 | `result-track:c8864009bedbcaa757b8a8483a3d068d9bfbf3ff9a98947b341ea2e72a325859` |
| 46 | `lemma` | [Real.iSup_pow_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Lemmas/Variant9216c9fbf7458c1706ec8ebc8e3edb166c31585ffb5291dbae32df651a65be65.lean/declarations/real-isup-pow-of-ne-zero--ec2d7411632362540da37cc8.md) | 274 | `result-track:ec2d7411632362540da37cc8b1cf71b7502ff8fe55824bd3af2bde9a6934af55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
