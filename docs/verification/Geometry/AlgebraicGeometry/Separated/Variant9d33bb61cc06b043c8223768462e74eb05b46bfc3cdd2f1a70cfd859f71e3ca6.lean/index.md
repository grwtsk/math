# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Separated.Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "726f805ed99bc70e21402f45676c9ef6e8a87381",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `726f805ed99bc70e21402f45676c9ef6e8a87381`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean.json)

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
| 1 | `class` | [IsSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated--8d9d1b66a92ee0a54396cb65.md) | 44 | `declaration-track:8d9d1b66a92ee0a54396cb65a58d37c90e7a49b2ec3bb6efa0b2f0d79024fbb6` |
| 2 | `theorem` | [isSeparated_eq_diagonal_isClosedImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated-eq-diagonal-isclosedimmersion--90be5dec79b1849ff21d1a23.md) | 52 | `result-track:90be5dec79b1849ff21d1a23e2860f2112b95fed8ed4cac24012ac84379960ff` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--830cc6af05b6c9fd793d35ba.md) | 58 | `declaration-track:830cc6af05b6c9fd793d35baae076544b2ea86633ace9d92583558c65a0afc12` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--4d0f58d2e75f1f9645d03dbb.md) | 61 | `declaration-track:4d0f58d2e75f1f9645d03dbbf8052c08b8962ba6a51d066136fb0c76c5eef67a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--a7a900a2a8974d1c06fe02d5.md) | 65 | `declaration-track:a7a900a2a8974d1c06fe02d582c837527b874e84c7d8119f592fa6e74a93ffbb` |
| 6 | `instance` | [stableUnderComposition](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/stableundercomposition--78013e38fea8afc1eae7dc01.md) | 68 | `declaration-track:78013e38fea8afc1eae7dc01b736db111429e6360036c196740721f3c3b46030` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--0f190cc57893e1a2e1689229.md) | 72 | `declaration-track:0f190cc57893e1a2e1689229371d8844eb9c7d9eff36a004ec6697f4081efbd1` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--ee1094873dcc00e1c505d6a4.md) | 75 | `declaration-track:ee1094873dcc00e1c505d6a4a3e1bb32daed319f55fb5e3e938b68fd3ccf32a9` |
| 9 | `instance` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isstableunderbasechange--686d2de26757f7dfb8e06ddc.md) | 79 | `declaration-track:686d2de26757f7dfb8e06ddc11dd39d3da25d67ce24655c365538afdceefc0cd` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--af23309a3e58a05aefc32a0e.md) | 84 | `declaration-track:af23309a3e58a05aefc32a0e01d7927d0bc48f24db675507eb1daa20be96738d` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--d58e48a168f12175ab59a127.md) | 89 | `declaration-track:d58e48a168f12175ab59a127913f1d5cd8d6f123b43f03d90b00e849a72212e5` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--ceaa17f135c67d78879d22ec.md) | 94 | `declaration-track:ceaa17f135c67d78879d22ec524cebee86b8871083595485f2cbaf5e5bd0a169` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--0b232ef2f9f54313e76e866c.md) | 98 | `declaration-track:0b232ef2f9f54313e76e866c1c560434a947bcf16bbb2eb07bbc9a0ee0505fa8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--cf300c2c4b9b66f91cd06038.md) | 101 | `declaration-track:cf300c2c4b9b66f91cd060385dfee9de027585b3c187bd81b4f7aa6476901315` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--785aa6ad95d7324e1e25252d.md) | 105 | `declaration-track:785aa6ad95d7324e1e25252dd9a9b35fdbffa1f8897df52d30489a1392b8ec76` |
| 16 | `lemma` | [of_isAffineHom](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/of-isaffinehom--74ba010edb0151ba5e78eda7.md) | 116 | `result-track:74ba010edb0151ba5e78eda732bc22f68689f86521c7d3cfbc11509451c5e1e9` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--bc555dd06ba1f0870f3fb0bf.md) | 127 | `declaration-track:bc555dd06ba1f0870f3fb0bf180f9a622747bc5069d0d5c706818507c4639082` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--13ed4ad9f653fc7208aef14b.md) | 135 | `declaration-track:13ed4ad9f653fc7208aef14b8b1b3fc17f7a0f62b3cc9f8760b7e88afa2addd0` |
| 19 | `lemma` | [Scheme.Pullback.diagonalCoverDiagonalRange_eq_top_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/scheme-pullback-diagonalcoverdiagonalrange-eq-top-of-injective--c358d09a599295cf746ea5f9.md) | 153 | `result-track:c358d09a599295cf746ea5f9756c0551ef436d4d310581a824e3aa18f93aa6df` |
| 20 | `lemma` | [Scheme.Pullback.range_diagonal_subset_diagonalCoverDiagonalRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/scheme-pullback-range-diagonal-subset-diagonalcoverdiagonalrange--6c41fcc89d3e88ce79c71ba7.md) | 181 | `result-track:6c41fcc89d3e88ce79c71ba77bd481b97239bad61ab0249b90954f7e540f8abc` |
| 21 | `lemma` | [isClosedImmersion_diagonal_restrict_diagonalCoverDiagonalRange](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isclosedimmersion-diagonal-restrict-diagonalcoverdiagonalrange--01ca3f2fb4995098a6a53a6b.md) | 205 | `result-track:01ca3f2fb4995098a6a53a6b33ea0380ec0f236fa3745da774f396a97d4cf6f5` |
| 22 | `lemma` | [isSeparated_of_injective](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated-of-injective--3534a6965f28b97aafb28f67.md) | 224 | `result-track:3534a6965f28b97aafb28f67e51807d2b904503d8a5479b1591a12fcfbfd468e` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--1485fc6547c2f8f6c865f1d8.md) | 235 | `declaration-track:1485fc6547c2f8f6c865f1d8d3c4d001937855befb7966c23ee8fbd8ff02cda9` |
| 24 | `lemma` | [IsClosedImmersion.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isclosedimmersion-of-comp--633628bce3e05d788d080fe0.md) | 239 | `result-track:633628bce3e05d788d080fe0c04847a1ccf3a0f0909ddb77c9d4bbbda9a783cc` |
| 25 | `lemma` | [IsClosedImmersion.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isclosedimmersion-comp-iff--f15ab542a315d3483be787fd.md) | 243 | `result-track:f15ab542a315d3483be787fd80d0472db76213c9d7afa19499fd332d71ceb893` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--5c418ef0c6161ca20ed34228.md) | 247 | `declaration-track:5c418ef0c6161ca20ed34228541a409474a3d2077c1a025e888b35e9d619fdd8` |
| 27 | `lemma` | [IsSeparated.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated-of-comp--ba2619df1399ea7b33448c17.md) | 253 | `result-track:ba2619df1399ea7b33448c17185e6e2378a14f8597985c0cade2f41605223f81` |
| 28 | `lemma` | [IsSeparated.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated-comp-iff--1dd695832788088a7a49ab0a.md) | 259 | `result-track:1dd695832788088a7a49ab0afc06ee892e17e92b1f85187ba0f970ae20674e1b` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--b37ff7dc40166314a9814028.md) | 262 | `declaration-track:b37ff7dc40166314a9814028d0fd7856c28e540194ec5b5f59ad59a788fc06fb` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--b1574e23763add6b38dbd506.md) | 265 | `declaration-track:b1574e23763add6b38dbd5064cd7efb105d9b13b78ac6982eb0cc4bf03d89c99` |
| 31 | `lemma` | [IsAffineHom.of_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isaffinehom-of-comp--85de277e60d10933de2bf8c4.md) | 269 | `result-track:85de277e60d10933de2bf8c4c096057dfab28a788dcd242c83dc0dee7ec54e99` |
| 32 | `lemma` | [IsAffineHom.comp_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isaffinehom-comp-iff--11d6c2465845dae2e98213d3.md) | 273 | `result-track:11d6c2465845dae2e98213d352803867bb4d80625d9cd79ca9ba299ed46a54b2` |
| 33 | `instance` | [isClosedImmersion_equalizer_ι_left](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isclosedimmersion-equalizer-left--20ba67313c49c44cd0532357.md) | 277 | `declaration-track:20ba67313c49c44cd05323570fbe8e933ec1d7e966e7d322d785e7d610909bb8` |
| 34 | `lemma` | [ext_of_isDominant_of_isSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/ext-of-isdominant-of-isseparated--fc1b9cb4ff1f5bc7c6232bbd.md) | 290 | `result-track:fc1b9cb4ff1f5bc7c6232bbd519508dc0bc2de08f31650c505a4767f2df75ce9` |
| 35 | `lemma` | [ext_of_fromSpecResidueField_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/ext-of-fromspecresiduefield-eq--870a62df8443d3e51f6ec518.md) | 310 | `result-track:870a62df8443d3e51f6ec518db0ed10b35c1b18e4e150523f96a68aa262fbf66` |
| 36 | `lemma` | [ext_of_isDominant_of_isSeparated'](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/ext-of-isdominant-of-isseparated--52ccab1cb4301fcb05ece2d1.md) | 324 | `result-track:52ccab1cb4301fcb05ece2d17e992d43432ecd9653368de037d44aa3f86aab3e` |
| 37 | `class` | [IsSeparated](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated--ba0f5389dbe93e12ea684b26.md) | 333 | `declaration-track:ba0f5389dbe93e12ea684b26b64739c97d027da7084032bf9460d2ee4b2bc6c5` |
| 38 | `lemma` | [isSeparated_iff_isClosedImmersion_prod_lift](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated-iff-isclosedimmersion-prod-lift--e7bbbc1a6697c7008ef06e8f.md) | 338 | `result-track:e7bbbc1a6697c7008ef06e8fe976badba2e99f20b1acd552b95daac180c32c1f` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--ef450cbab6df5a73fad9fe0c.md) | 345 | `declaration-track:ef450cbab6df5a73fad9fe0c4fde72be8570cac98af6238d86e5a0185133d496` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--bafb20707e25c25b5fa1e038.md) | 348 | `declaration-track:bafb20707e25c25b5fa1e0380629a6016354b31164cbb16d658dc8dcced7c21f` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--7285037d0981bf8d4269a639.md) | 350 | `declaration-track:7285037d0981bf8d4269a639282eefc013d3915732942949225fbf56fc76e84e` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--08ce07e570257f41704f4e1d.md) | 353 | `declaration-track:08ce07e570257f41704f4e1d56a1f323d520b0e33a24b1a711be951af5e44539` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/instance--7a4a780c856bcfacf471f84d.md) | 358 | `declaration-track:7a4a780c856bcfacf471f84dcc2845b7c1e4dd025488f9ddb1c8cbcbff0d7b2b` |
| 44 | `instance` | [IsSeparated.hasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/isseparated-hasaffineproperty--e462513837f3e0f8276bc35d.md) | 364 | `declaration-track:e462513837f3e0f8276bc35db45140a0310535c36d896415a83c79ed0734d7b1` |
| 45 | `lemma` | [ext_of_isDominant](../../../../../mathematics/Geometry/AlgebraicGeometry/Separated/Variant9d33bb61cc06b043c8223768462e74eb05b46bfc3cdd2f1a70cfd859f71e3ca6.lean/declarations/ext-of-isdominant--09ae994ac00a69a8916d63b4.md) | 376 | `result-track:09ae994ac00a69a8916d63b4ebc821ab6d752c5e55a116628be674c66b4a61d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
