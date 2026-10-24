# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "513347a9801998659f8f17c4f575144d128f82c2",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `513347a9801998659f8f17c4f575144d128f82c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Card` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rank_le_card](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-le-card--46754b79831666875e2f4795.md) | 75 | `result-track:46754b79831666875e2f4795a6c0988373b97bab1f354c35e6f734e92bca852c` |
| 2 | `instance` | [nonempty_linearIndependent_set](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/nonempty-linearindependent-set--4dbb26b7c67f177d58722066.md) | 78 | `declaration-track:4dbb26b7c67f177d5872206604cc60fb957035f13160b45713183df67ca0dd85` |
| 3 | `theorem` | [cardinal_lift_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/cardinal-lift-le-rank--730721bc212cbaf07cf43263.md) | 88 | `result-track:730721bc212cbaf07cf43263c307d55dcf02949800236e9aa29f2e13d7957c8a` |
| 4 | `lemma` | [aleph0_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/aleph0-le-rank--9dc524f3a86b8efc179e87ff.md) | 95 | `result-track:9dc524f3a86b8efc179e87ffd67c31f71ea249e80d24cf48f238ac0166b4b827` |
| 5 | `theorem` | [cardinal_le_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/cardinal-le-rank--ecb155623b7000abf2afbf69.md) | 99 | `result-track:ecb155623b7000abf2afbf69563b4ccdfd6fe6c5a122fc5c1c1eb90d39d3d21e` |
| 6 | `theorem` | [cardinal_le_rank'](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/cardinal-le-rank--7fa4b7668f4e21a366bf1fed.md) | 103 | `result-track:7fa4b7668f4e21a366bf1feda1ee36cb113291b3af60a33f8881e7c1123c51ef` |
| 7 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.RankLeCard.Variant74f1622815cf4a7410d5d3c5b6db90d19d1f12d36457be36efad3d39d0d40266.LinearIndepOn.encard_le_toENat_rank](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/root-grwtsk-algebra-linearalgebra-ranklecard-variant74f1622815cf4a7410d5--6d944fb533b28f7217a5db6b.md) | 107 | `result-track:6d944fb533b28f7217a5db6b69ac2f69d8b208695d47e9b0bae3abf201e3246b` |
| 8 | `theorem` | [lift_rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-le-of-injective-injective--f1208e21c048d61ebed76c3d.md) | 126 | `result-track:f1208e21c048d61ebed76c3d018e482af58f2bdbdf6ad530cc819c047ae9f727` |
| 9 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-le-of-surjective-injective--b1d394210ff45c3316689279.md) | 139 | `result-track:b1d394210ff45c331668927986c86fdab7d980fcbb43540c7504f05b11a96f91` |
| 10 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-eq-of-equiv-equiv--32e30a3dbb12bfec9d8fb4bb.md) | 152 | `result-track:32e30a3dbb12bfec9d8fb4bb64d06b34ea2e73cdfa55fae19095a658e92d8cd1` |
| 11 | `theorem` | [rank_le_of_injective_injectiveₛ](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-le-of-injective-injective--76af65b78fd629b6eca098a3.md) | 164 | `result-track:76af65b78fd629b6eca098a3cd7b854164033173b0eb920c4838ce8fdc8d0002` |
| 12 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-le-of-surjective-injective--b38678fa650ea635c11b8274.md) | 171 | `result-track:b38678fa650ea635c11b8274b332144007fcb735a4dc2b32f8526df62e9d6fb3` |
| 13 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-eq-of-equiv-equiv--7c124ac0d324b67738c9e7d4.md) | 178 | `result-track:7c124ac0d324b67738c9e7d41018b6abb39fc307bca030876811de1320cce84a` |
| 14 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-le-of-injective-injective--6868ae096ab294c107638bab.md) | 194 | `result-track:6868ae096ab294c107638babd6a6376b6fb2e56d494d62904da77b905b8ee585` |
| 15 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-le-of-injective-injective--29cfee9cdd924e9bf9eddbac.md) | 205 | `result-track:29cfee9cdd924e9bf9eddbac7682d3876dbc7f170e210a1812fbc1a07ecbda32` |
| 16 | `theorem` | [lift_rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-le-of-injective-injective--189cc230227f5f1c9d305de5.md) | 221 | `result-track:189cc230227f5f1c9d305de51534fce17178d517cfc3571c44712bf884d653aa` |
| 17 | `theorem` | [lift_rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-le-of-surjective-injective--ca378321ca4cd695c353ea9a.md) | 233 | `result-track:ca378321ca4cd695c353ea9a99361378ba6e4df92fa18e0715478cd6b882f5eb` |
| 18 | `theorem` | [lift_rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-eq-of-equiv-equiv--d1509c17894eb553ecc0dfba.md) | 245 | `result-track:d1509c17894eb553ecc0dfba7062e919a1abb61893a6b13466b9ab2aa5bbaa56` |
| 19 | `theorem` | [rank_le_of_injective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-le-of-injective-injective--3eab12eb84cc449a33c4e8b4.md) | 256 | `result-track:3eab12eb84cc449a33c4e8b4b6fb9fa032e1a1d2a639a2bab4239aa9c1c1e3e3` |
| 20 | `theorem` | [rank_le_of_surjective_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-le-of-surjective-injective--60f633aa5f3234ae5088265e.md) | 263 | `result-track:60f633aa5f3234ae5088265e371bfe0274d7ef748fa0b0b61822b875280a6ba2` |
| 21 | `theorem` | [rank_eq_of_equiv_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-eq-of-equiv-equiv--dbb836f4a972d27acd2e0552.md) | 270 | `result-track:dbb836f4a972d27acd2e05523d4117cbf4861e1af3f0971fc5284a4f9d2089a6` |
| 22 | `theorem` | [LinearMap.lift_rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearmap-lift-rank-le-of-injective--02b6f6f191cbc163fbad257f.md) | 285 | `result-track:02b6f6f191cbc163fbad257f83078f694de1ce3ff82faff4415c46538b79e7b2` |
| 23 | `theorem` | [LinearMap.rank_le_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearmap-rank-le-of-injective--6b75fc8c1f0b2c99e3fc8474.md) | 289 | `result-track:6b75fc8c1f0b2c99e3fc8474ed547fc3e34087078d69ea3976974f99f20c8268` |
| 24 | `theorem` | [lift_rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-range-le--dc6826fae2ead53103130a5d.md) | 296 | `result-track:dc6826fae2ead53103130a5d784514705b478604aeea772d353be2948a90f185` |
| 25 | `theorem` | [rank_range_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-range-le--016b281baba6b3588355f124.md) | 310 | `result-track:016b281baba6b3588355f1249a275fbec9190c9d58cf57b2cb0bc4d7cd86c964` |
| 26 | `theorem` | [lift_rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-map-le--282bc65213b7050683d54886.md) | 313 | `result-track:282bc65213b7050683d54886cb2a9b5a9172d415994f51d77bfd3c3eec981142` |
| 27 | `theorem` | [rank_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-map-le--63be20f11094f48dc56c54cb.md) | 318 | `result-track:63be20f11094f48dc56c54cb17f9e1b4abfbbb50c4c27199b7e7f6766d86de02` |
| 28 | `lemma` | [Submodule.rank_mono](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/submodule-rank-mono--b30821d5d9911cf25a08f692.md) | 321 | `result-track:b30821d5d9911cf25a08f6922f842f4ba6652335b63046382611306224ee15dd` |
| 29 | `theorem` | [LinearEquiv.lift_rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearequiv-lift-rank-eq--7eab35ee4c4aa4d891d48127.md) | 327 | `result-track:7eab35ee4c4aa4d891d48127d0a3baa2bbd12fae437bbbf2ff8f42910f053957` |
| 30 | `theorem` | [LinearEquiv.rank_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearequiv-rank-eq--9145d35c788717e139219eed.md) | 334 | `result-track:9145d35c788717e139219eedec02172e999752cb7e87f9077a23cb8d7073e31c` |
| 31 | `theorem` | [lift_rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/lift-rank-range-of-injective--c585ee33998c494d0e356ce3.md) | 337 | `result-track:c585ee33998c494d0e356ce3827558708c31511a9b5b707f652441743ac63902` |
| 32 | `theorem` | [rank_range_of_injective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-range-of-injective--bb6185dcb16c476c23d88ce5.md) | 341 | `result-track:bb6185dcb16c476c23d88ce51f99ae23ddfad11a0084ad868012eee0f60aaa87` |
| 33 | `theorem` | [LinearEquiv.lift_rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearequiv-lift-rank-map-eq--f4de5aba853ee7d22655570c.md) | 345 | `result-track:f4de5aba853ee7d22655570c170645f5324ca247c52fbb04da2e153d72072754` |
| 34 | `theorem` | [LinearEquiv.rank_map_eq](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearequiv-rank-map-eq--ad4a014361ca95ce28023abf.md) | 350 | `result-track:ad4a014361ca95ce28023abf1f43f4bda17a6b82e75767359c54ff524ca329e6` |
| 35 | `theorem` | [rank_top](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-top--dc66052d81aca02c8aa18b22.md) | 357 | `result-track:dc66052d81aca02c8aa18b2286af5becfb3ba41077a66350045f9b99875ff4c0` |
| 36 | `theorem` | [rank_range_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-range-of-surjective--d4a167f9d76ac066b2ea9fbe.md) | 362 | `result-track:d4a167f9d76ac066b2ea9fbe9ffb459ce30c3c421b1a51a0f8aa165f80f11d87` |
| 37 | `theorem` | [Submodule.rank_le](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/submodule-rank-le--42aa330c34d21ed93dad8af3.md) | 366 | `result-track:42aa330c34d21ed93dad8af37e40cd78ad244fd568925f0084c931f8b48d5480` |
| 38 | `theorem` | [LinearMap.lift_rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearmap-lift-rank-le-of-surjective--f195748bacc733335c108109.md) | 370 | `result-track:f195748bacc733335c108109ac8310491b9b470e2e57a3dda1e16ba35f906f3f` |
| 39 | `theorem` | [LinearMap.rank_le_of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/linearmap-rank-le-of-surjective--693005974b1bdf8f0085d6b8.md) | 375 | `result-track:693005974b1bdf8f0085d6b84dd32300a6e0013becbe61d3b8e67c86ff97b5a4` |
| 40 | `lemma` | [rank_le_of_isSMulRegular](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/rank-le-of-issmulregular--9eebdba15d3039d866659217.md) | 380 | `result-track:9eebdba15d3039d86665921732b3a9dfd810ac28e10d847c47313f6d16ed841b` |
| 41 | `lemma` | [Module.rank_top_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/module-rank-top-le-rank-of-isscalartower--d8740f8258328a0f7597286a.md) | 391 | `result-track:d8740f8258328a0f7597286a413508317e79f1c631875a0bb7f1b92595597ac7` |
| 42 | `lemma` | [Module.lift_rank_bot_le_lift_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/module-lift-rank-bot-le-lift-rank-of-isscalartower--d54ff76901b309a335639440.md) | 399 | `result-track:d54ff76901b309a3356394406086715b7a7d3301da0f18ab12c9e5c89450c87b` |
| 43 | `lemma` | [Module.rank_bot_le_rank_of_isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant65f53bff8dbc5cd612d371519d1b9ef1dd84c7d93110c309d30d69da53b59f06.lean/declarations/module-rank-bot-le-rank-of-isscalartower--1813a48806dc024d3409a2c2.md) | 407 | `result-track:1813a48806dc024d3409a2c29d7d9a6f1594e621b09a098d190a188280a23df9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
