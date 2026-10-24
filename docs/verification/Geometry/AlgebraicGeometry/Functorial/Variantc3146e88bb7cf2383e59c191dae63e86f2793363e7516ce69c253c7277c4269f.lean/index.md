# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Functorial.Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7acb171ee8520b8a12e4eb909be138fcff632f42",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7acb171ee8520b8a12e4eb909be138fcff632f42`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.PullbackCarrier` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [comap](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap--00b38d0e01aef51da665b719.md) | 43 | `declaration-track:00b38d0e01aef51da665b7193d879c72a459a2c1e980427cdb4a57c59aa77b28` |
| 2 | `def` | [comapIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comapiso--528d4c79fde525f149e62edf.md) | 47 | `declaration-track:528d4c79fde525f149e62edfb1c3470dd4880a50645225b32e046cc03295d5a2` |
| 3 | `lemma` | [comapIso_inv_subschemeι](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comapiso-inv-subscheme--5ecb9d351434397d657d71b8.md) | 52 | `result-track:5ecb9d351434397d657d71b8346ee2b1012bd70ab29899a93eda223cb54872e0` |
| 4 | `lemma` | [comapIso_hom_fst](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comapiso-hom-fst--cdf53f613b1b9bb289b86f7e.md) | 57 | `result-track:cdf53f613b1b9bb289b86f7e810134590d85f4ef662c9954c7fa12e33d0860c3` |
| 5 | `lemma` | [comap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap-comp--0338a3e227959a06e255641f.md) | 62 | `result-track:0338a3e227959a06e255641fd9670fff033b561bfff2cd455eba3d06aaeec795` |
| 6 | `lemma` | [comap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap-id--c1b911fe1c209c8b278127a6.md) | 71 | `result-track:c1b911fe1c209c8b278127a673ed7be3a9ee5479f9780d12a7a629df3d316f13` |
| 7 | `lemma` | [support_comap](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/support-comap--fe0fe0e964ddf218f3b8307c.md) | 77 | `result-track:fe0fe0e964ddf218f3b8307c6d0dbe18654b216c082f5eebc923ab0c3bc5782c` |
| 8 | `def` | [map](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map--653b74d0bb1b2d3623f1298b.md) | 84 | `declaration-track:653b74d0bb1b2d3623f1298b1c3150c1cc269ea59947406dcfd61123d4462466` |
| 9 | `lemma` | [le_map_iff_comap_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/le-map-iff-comap-le--927d75d4c1cb733103018bf8.md) | 87 | `result-track:927d75d4c1cb733103018bf829cd74b9143b758455847f9b5304c5d1cb7c0f5a` |
| 10 | `lemma` | [map_gc](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-gc--b27e7c06157c735c23c23c30.md) | 105 | `result-track:b27e7c06157c735c23c23c30461b3afec93af17ff0c3afe143588916c22eae0a` |
| 11 | `lemma` | [map_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-mono--f57fa35921cdddb82b53ff3c.md) | 107 | `result-track:f57fa35921cdddb82b53ff3ce7421bef06d5a1e880d3bc21e1947ac5ed38c401` |
| 12 | `lemma` | [comap_mono](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap-mono--608947e29c71d17e7634e4eb.md) | 108 | `result-track:608947e29c71d17e7634e4eb9839b321b005834cc4516eed0aa7f09714348741` |
| 13 | `lemma` | [le_map_comap](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/le-map-comap--c60e7eaf6348b29fa45cac15.md) | 109 | `result-track:c60e7eaf6348b29fa45cac15a5273614a0bc44c92e25329d836c52a03b875032` |
| 14 | `lemma` | [comap_map_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap-map-le--06cf0a65844681dd00022f3f.md) | 110 | `result-track:06cf0a65844681dd00022f3fa506bb0b74c35f2b9cbdf06afa41db0abebf9eb5` |
| 15 | `lemma` | [map_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-top--3e228bf9407a4ddd53e6daba.md) | 111 | `result-track:3e228bf9407a4ddd53e6daba1ca9ba2028bcfc2e8ae9d53e531edf6c350a2234` |
| 16 | `lemma` | [comap_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap-bot--f21731bb33488f7e3286a13b.md) | 112 | `result-track:f21731bb33488f7e3286a13b31b292d169de916deee4a6b8d1b123c95864512b` |
| 17 | `lemma` | [map_inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-inf--2839c71fcf9c567d1c398dd1.md) | 113 | `result-track:2839c71fcf9c567d1c398dd1b833813497b84e598b5ca10e13a5238f5694220f` |
| 18 | `lemma` | [comap_sup](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap-sup--1a2be498201536468134925a.md) | 114 | `result-track:1a2be498201536468134925a277503af1564cae1ae43be4162f57b3868782adf` |
| 19 | `lemma` | [map_bot](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-bot--2795f96d8524e030a1bb3c78.md) | 119 | `result-track:2795f96d8524e030a1bb3c781ffaac90918e0775cf2aefa205fa51db34c6461a` |
| 20 | `lemma` | [comap_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comap-top--1f940385c3f0ea96d137d895.md) | 123 | `result-track:1f940385c3f0ea96d137d89523ae73e55bd6f930d192db12246b5545a845457e` |
| 21 | `lemma` | [map_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-comp--dd9902bdfc6447d2d0901949.md) | 128 | `result-track:dd9902bdfc6447d2d0901949182f04374e33e80d88aa56974e9d760eb9028b16` |
| 22 | `lemma` | [map_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-id--288b8aa0fc5adbcdfe85a582.md) | 136 | `result-track:288b8aa0fc5adbcdfe85a5821588e917d525ee8546f3f7e3af54507b8822a689` |
| 23 | `lemma` | [map_ker](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-ker--82e31ed57e767fab8fadb5a2.md) | 140 | `result-track:82e31ed57e767fab8fadb5a2db93590883dc9fbc026a9a6c41aa9c4b968a6ee9` |
| 24 | `lemma` | [_root_.GRWTSK.Geometry.AlgebraicGeometry.Comap.Variant7a724af006a3c7afd4f6b162ec177924b08e78fbfecadec19f11f345e6f4a520.AlgebraicGeometry.Scheme.Hom.ker_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/root-grwtsk-geometry-algebraicgeometry-comap-variant7a724af006a3c7afd4f6--ba13751f31f4bcc17a78cfd6.md) | 143 | `result-track:ba13751f31f4bcc17a78cfd6efc3a47cd75b329d668140a544336c86f618b016` |
| 25 | `lemma` | [map_vanishingIdeal](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/map-vanishingideal--b2540ddb417c3e1dded63318.md) | 146 | `result-track:b2540ddb417c3e1dded633183bec3baadbd8434fe777a0d63b1fd08c2d91919a` |
| 26 | `lemma` | [support_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/support-map--d00f585d810457aac88cf564.md) | 157 | `result-track:d00f585d810457aac88cf56453ebcebf81fb3ad6c29bac82f3c86d0c4dc61096` |
| 27 | `lemma` | [ideal_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/ideal-map--d7db9f297fa5a1167d80f4d0.md) | 163 | `result-track:d7db9f297fa5a1167d80f4d033161804fb7c4c5fd69f545956e8c54339ad96f2` |
| 28 | `lemma` | [ideal_map_of_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/ideal-map-of-isaffinehom--aee35e85ce2995f038276283.md) | 171 | `result-track:aee35e85ce2995f0382762834e54a1fb30beba3e630e95419c0848252424e133` |
| 29 | `lemma` | [ideal_comap_of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/ideal-comap-of-isopenimmersion--456a4f4ac679aeffc0487994.md) | 176 | `result-track:456a4f4ac679aeffc0487994e358fbad0f91cfe52e13ec4cd9a313cdc078b1d4` |
| 30 | `def` | [subschemeMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/subschememap--ab824e995fc33585d540f7b7.md) | 185 | `declaration-track:ab824e995fc33585d540f7b74aa42bb77e05ef95b66e7f4b85a95300e143e5da` |
| 31 | `lemma` | [subschemeMap_subschemeι](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/subschememap-subscheme--f6e10b7f48db58f38f1da585.md) | 190 | `result-track:f6e10b7f48db58f38f1da58577f6061e61241203625701a4e881295d021e8984` |
| 32 | `lemma` | [comapIso_hom_snd](../../../../../mathematics/Geometry/AlgebraicGeometry/Functorial/Variantc3146e88bb7cf2383e59c191dae63e86f2793363e7516ce69c253c7277c4269f.lean/declarations/comapiso-hom-snd--7cd288b964d22f681ac5c2fe.md) | 195 | `result-track:7cd288b964d22f681ac5c2fef5cf470cab4e02c3783b89d67e94574d0531d7cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
