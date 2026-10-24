# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "41ec7247fa240899b3b80055caad9b8761432e1c",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `41ec7247fa240899b3b80055caad9b8761432e1c`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.TypeTags.Hom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Parity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/ofnathom--1aa1dab8e2c627d6aeb065d4.md) | 34 | `declaration-track:1aa1dab8e2c627d6aeb065d43ff5c660a107609c1330b192f81040cb675e76e5` |
| 2 | `theorem` | [cast_ite](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-ite--29f1a43b548f2d7daa1eeaa6.md) | 40 | `result-track:29f1a43b548f2d7daa1eeaa6fdfd2537e73571a980665466dc5a0f4cc56ccd20` |
| 3 | `def` | [castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/castaddhom--f21715aff4069011988c682b.md) | 45 | `declaration-track:f21715aff4069011988c682b06ba78ea9b16d201454f4a981effd57ebe8d89e1` |
| 4 | `lemma` | [coe_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/coe-castaddhom--f695c270bcf7c28f6f3c1d6d.md) | 53 | `result-track:f695c270bcf7c28f6f3c1d6d9cad48c3611012aa1b1ce021bebc532e3db16580` |
| 5 | `lemma` | [_root_.Even.intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/root-even-intcast--dff1450b9507253cbdd72da4.md) | 55 | `result-track:dff1450b9507253cbdd72da40fe03a11ecb76e8f762770de00244229485d9555` |
| 6 | `lemma` | [cast_eq_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-eq-zero--4f0055d3c8768109a7f4e84c.md) | 59 | `result-track:4f0055d3c8768109a7f4e84ce708b07719461dd0657730fcced52de4af71df63` |
| 7 | `lemma` | [cast_inj](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-inj--32e3715270e9ab11abf0bcfb.md) | 69 | `result-track:32e3715270e9ab11abf0bcfbe240ace5591a4dadc352c9ec81f5a774a68d32ae` |
| 8 | `lemma` | [cast_injective](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-injective--c1aaa884d036150ed48fb76f.md) | 71 | `result-track:c1aaa884d036150ed48fb76f4e8aa36d8c63d172b614de4384213c38ead4ee49` |
| 9 | `lemma` | [cast_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-ne-zero--b5c02b2cba2ddf2a8282325c.md) | 73 | `result-track:b5c02b2cba2ddf2a8282325cc62a5b0dd333770770c7d233ed2a8f20a1ff0b96` |
| 10 | `lemma` | [cast_eq_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-eq-one--3d24c89b07c710ec07b873f9.md) | 75 | `result-track:3d24c89b07c710ec07b873f95dcb29c44061ec44a87f4219fe6739586aec398c` |
| 11 | `lemma` | [cast_ne_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-ne-one--f0253e9ba60babddd8ad9527.md) | 77 | `result-track:f0253e9ba60babddd8ad95271641e3f5a998eec8d857c326bb151a1e01f91bf4` |
| 12 | `def` | [castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/castringhom--1818c5ac5d215234d51956b3.md) | 86 | `declaration-track:1818c5ac5d215234d51956b3014a424fe4305d50197e24d47fe25be86ade8774` |
| 13 | `lemma` | [coe_castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/coe-castringhom--ff945a7e5c2e95da2ace8337.md) | 93 | `result-track:ff945a7e5c2e95da2ace8337e7220d827c66cc2bd9522f4622edcc1be9d82a7b` |
| 14 | `lemma` | [cast_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-commute--e886704d545a036bbb9920f6.md) | 95 | `result-track:e886704d545a036bbb9920f63218e47600e5f89b1757affad10f49054cc61c4d` |
| 15 | `lemma` | [cast_comm](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-comm--2150578b21697dea7c45a670.md) | 101 | `result-track:2150578b21697dea7c45a670bd918a80e0cb099e7264bfdb03261aa7e35ac02c` |
| 16 | `lemma` | [commute_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/commute-cast--7cf4afcbc0c0396b1658d5cb.md) | 103 | `result-track:7cf4afcbc0c0396b1658d5cb91bd4fb09e8844b1bbe696e8e7c75302331eddd6` |
| 17 | `lemma` | [_root_.zsmul_eq_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/root-zsmul-eq-mul--91a7b2a0601aabb7bb5f1f00.md) | 105 | `result-track:91a7b2a0601aabb7bb5f1f002366f2ec8b3fc27c02112fc166bd753b3d5a37b4` |
| 18 | `lemma` | [_root_.zsmul_eq_mul'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/root-zsmul-eq-mul--ed796baf4692529d651e9431.md) | 109 | `result-track:ed796baf4692529d651e9431bc9a3ad234df13d11d6b674d95849a6785e04782` |
| 19 | `lemma` | [_root_.Odd.intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/root-odd-intcast--1c218d298d20696929fc3edb.md) | 117 | `result-track:1c218d298d20696929fc3edb9424dd07b5e1570e6eebb0cd5ef0ca6edeb0781c` |
| 20 | `theorem` | [cast_dvd_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/cast-dvd-cast--0be134fad33af117bf968f63.md) | 121 | `result-track:0be134fad33af117bf968f63f533b19fc92f2d9218165bf674752192437104bb` |
| 21 | `lemma` | [intCast_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-mul-right--eeefbff237594ab172cff10a.md) | 133 | `result-track:eeefbff237594ab172cff10aa0992bc05d6f2302a08b05cc40db98d4b693d7f5` |
| 22 | `lemma` | [intCast_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-mul-left--199319266d726c9567be1c69.md) | 136 | `result-track:199319266d726c9567be1c69bc7ff19f2db5858a104343fee35f1bc7774b688f` |
| 23 | `lemma` | [intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-mul-intcast-mul--47d55da810dee0277c9f60b0.md) | 139 | `result-track:47d55da810dee0277c9f60b067ad5eaac4e396552f159bcb842933c31203bf52` |
| 24 | `lemma` | [intCast_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-left--6b2a3202a42a04e1e806f74d.md) | 148 | `result-track:6b2a3202a42a04e1e806f74d7c2f91c60e7214163ee3e8d7debac565c7c41df6` |
| 25 | `lemma` | [intCast_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-right--52fdc2e6cc19f52cd6c3e663.md) | 150 | `result-track:52fdc2e6cc19f52cd6c3e6636b52393aee6e3a7613fd4b76af3a20b45c744be3` |
| 26 | `lemma` | [intCast_mul_right](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-mul-right--8094dad7c2b538f23794f1ec.md) | 157 | `result-track:8094dad7c2b538f23794f1ec242022031e1f1d473ae22fbe9eb52e26c1d25271` |
| 27 | `lemma` | [intCast_mul_left](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-mul-left--1cb93ae37a1a770c36bf0d3c.md) | 160 | `result-track:1cb93ae37a1a770c36bf0d3cbd54727101a1562d1742b0c6764b444a5ea77056` |
| 28 | `lemma` | [intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-mul-intcast-mul--0f1688dd594a696e5e71dad1.md) | 163 | `result-track:0f1688dd594a696e5e71dad1604146a40b7fa8141f7dede360f662622e72a928` |
| 29 | `lemma` | [self_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/self-intcast-mul--12b38146d9065fc83b7f7939.md) | 168 | `result-track:12b38146d9065fc83b7f7939fa33b1bdf22e761691bfeddfc528e44b67dcfd33` |
| 30 | `lemma` | [intCast_mul_self](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/intcast-mul-self--92b8163fe7f5f90406d219b9.md) | 170 | `result-track:92b8163fe7f5f90406d219b93e9483540be59d3324a9e4f95f19b930443cca56` |
| 31 | `lemma` | [self_intCast_mul_intCast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/self-intcast-mul-intcast-mul--69f7cf83b264c5ea7b2fb378.md) | 172 | `result-track:69f7cf83b264c5ea7b2fb37824ebfc1ed38103cbd551acabff51d448d28dec93` |
| 32 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/ext-int--84453d5ad90ef70fa54cb932.md) | 185 | `result-track:84453d5ad90ef70fa54cb932439d247f8220ec01f133d6149acfb5f78a1489d9` |
| 33 | `theorem` | [eq_intCastAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/eq-intcastaddhom--4e9b4733e114a33b02f6b461.md) | 194 | `result-track:4e9b4733e114a33b02f6b4611ac5434bb511106a65144f651159b8ce6dd06c6e` |
| 34 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/eq-intcast--a5532358318cb018c11c2447.md) | 199 | `result-track:a5532358318cb018c11c2447f280491fa7aa2146c0f0712f16c75e0ed363fd29` |
| 35 | `theorem` | [map_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/map-intcast--e4fb1fa8d6cbb818ca2eb62b.md) | 205 | `result-track:e4fb1fa8d6cbb818ca2eb62bb087761f76114e20ccdf2b37c14e799f8f083b62` |
| 36 | `theorem` | [Int.castAddHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/int-castaddhom-int--d00fb8c6b73a49176da9919a.md) | 210 | `result-track:d00fb8c6b73a49176da9919a83bbf1078a26f7d1d3a7db825f948c79f3d55634` |
| 37 | `theorem` | [ext_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/ext-mint--7b5d78547faa1d2e017f3564.md) | 220 | `result-track:7b5d78547faa1d2e017f35644cfcfce01f2cd8a6c86325be06f16c8105fc6fc3` |
| 38 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/ext-int--2539a189df0371ef697310ba.md) | 225 | `result-track:2539a189df0371ef697310ba08c1b51850514289c72c51b776ec389dc5da5c16` |
| 39 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/ext-int--cd264d5a3c3c0444c5b322e3.md) | 241 | `result-track:cd264d5a3c3c0444c5b322e335ac7efe284d38252fa99e303445b58bd7766da7` |
| 40 | `theorem` | [ext_int'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/ext-int--7936da3a0be2728ffa7fb460.md) | 250 | `result-track:7936da3a0be2728ffa7fb460c305078c5e0b81897dd324293fee3309d8a87a3f` |
| 41 | `def` | [zmultiplesHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zmultipleshom--a14f87eb0ca28577730b30f1.md) | 264 | `declaration-track:a14f87eb0ca28577730b30f144ebe64703c1a62132cb8e081c609ffc56c02353` |
| 42 | `def` | [zpowersHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zpowershom--d80aec625fcb542014543969.md) | 275 | `declaration-track:d80aec625fcb542014543969b322f6d02bdd74b97b8371786f150a98ab21a757` |
| 43 | `lemma` | [zmultiplesHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zmultipleshom-apply--d8b2b375eee02dd60d40fddc.md) | 278 | `result-track:d8b2b375eee02dd60d40fddc28d2de4459276b28b55e2e6105d33a88d374cc6e` |
| 44 | `lemma` | [zmultiplesHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zmultipleshom-symm-apply--3f025d7bb60f4566d57870f1.md) | 280 | `result-track:3f025d7bb60f4566d57870f1c53bf1855208e81b603a2460920176ebe2b27139` |
| 45 | `lemma` | [zpowersHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zpowershom-apply--0ab5f9e4f115f4d3016b8a17.md) | 282 | `result-track:0ab5f9e4f115f4d3016b8a17933c34a2703aeb354ff78e4d37d498f52d122e3b` |
| 46 | `lemma` | [zpowersHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zpowershom-symm-apply--a7b0ca6be81f23479a9fb929.md) | 285 | `result-track:a7b0ca6be81f23479a9fb929136a18c81fbd4dcd7c984795cb1854f6dc5080d7` |
| 47 | `lemma` | [MonoidHom.apply_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/monoidhom-apply-mint--1f5f842c8a73b5df6ac3c444.md) | 288 | `result-track:1f5f842c8a73b5df6ac3c444b1c3fc0d2516852aca9ee794924fdb4227aa3bff` |
| 48 | `lemma` | [AddMonoidHom.apply_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/addmonoidhom-apply-int--f351c26ce49912ea98593e27.md) | 292 | `result-track:f351c26ce49912ea98593e27e70c1d64dcee137f6ec24214c97daa80081548c5` |
| 49 | `def` | [zmultiplesAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zmultiplesaddhom--cc9454e6cff5dad3dd7749c5.md) | 301 | `declaration-track:cc9454e6cff5dad3dd7749c5a25a45f8bf798afbfa879b676577c8973c210a03` |
| 50 | `def` | [zpowersMulHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zpowersmulhom--e38b870ea0c349dec5b5bf36.md) | 305 | `declaration-track:e38b870ea0c349dec5b5bf36a8324937e76bf7564c8455aba5725e02de0d3587` |
| 51 | `lemma` | [zpowersMulHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zpowersmulhom-apply--267825b2217e938c9dce5f36.md) | 311 | `result-track:267825b2217e938c9dce5f3630426c1409627ec1603f192ff38c4b67fefddf85` |
| 52 | `lemma` | [zpowersMulHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zpowersmulhom-symm-apply--16b4be869833b03dcc78e64a.md) | 314 | `result-track:16b4be869833b03dcc78e64a8f825a342674f37a3569d1e450f49dc619b09b99` |
| 53 | `lemma` | [zmultiplesAddHom_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zmultiplesaddhom-apply--f280e0caeb7cbd6e67e0eeeb.md) | 317 | `result-track:f280e0caeb7cbd6e67e0eeeb61a12379b2bbfd84289adc6801ab911bf6b565ed` |
| 54 | `lemma` | [zmultiplesAddHom_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/zmultiplesaddhom-symm-apply--750dec44008e99be9a0f4f59.md) | 319 | `result-track:750dec44008e99be9a0f4f5938afc78c6aa551a1f08d0e2c2559927aebd6787d` |
| 55 | `theorem` | [eq_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/eq-intcast--23102293960b2620a9d8e96b.md) | 328 | `result-track:23102293960b2620a9d8e96be06b2177ef8d7cd7ed91df9e2877daab696ff6b0` |
| 56 | `theorem` | [map_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/map-intcast--d804d98031e4b327c689af21.md) | 332 | `result-track:d804d98031e4b327c689af21d7d394b376ae101b9b13ab22f74b5db93b264428` |
| 57 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/eq-intcast--787dca4cba9822006bbee540.md) | 337 | `result-track:787dca4cba9822006bbee54061291031a86a81dd7670f7d44d37516cc54cb641` |
| 58 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/ext-int--6f51827f0b6080e5444c6bd9.md) | 340 | `result-track:6f51827f0b6080e5444c6bd94a25cba9fc37c3a200703870a7171510d7a04ed5` |
| 59 | `instance` | [Int.subsingleton_ringHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/int-subsingleton-ringhom--9e485f3deae847b241e8a268.md) | 343 | `declaration-track:9e485f3deae847b241e8a2683166c74246e7d4cdc3a55e87e4d99bfd42b5707c` |
| 60 | `theorem` | [Int.castRingHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variant3b527052d7e2c6983a45f1cee42146aedd9023caba6ae4cc58ab713d8005e07d.lean/declarations/int-castringhom-int--5c3853fd333731a62b634165.md) | 351 | `result-track:5c3853fd333731a62b634165233cb055544b7a2c869c8b2afaccda03b9876509` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
