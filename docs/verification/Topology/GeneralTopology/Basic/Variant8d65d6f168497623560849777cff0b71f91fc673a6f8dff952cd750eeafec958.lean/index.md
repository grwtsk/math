# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efd9ff5274f66ea8a5ec2e755f95835393ddba10",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efd9ff5274f66ea8a5ec2e755f95835393ddba10`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.FiniteGrp` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.ClosedSubgroup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.ContinuousMonoidHom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Connected` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProfiniteGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profinitegrp--8cd65e0ce22fda702ea3fa4e.md) | 40 | `declaration-track:8cd65e0ce22fda702ea3fa4e07c707e719282ca83069f367b4cd56343c899470` |
| 2 | `structure` | [ProfiniteAddGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profiniteaddgrp--c0bbf445dcd5f6b580001bfd.md) | 53 | `declaration-track:c0bbf445dcd5f6b580001bfd5b3aad815252c5e7ab8dfc9b001c58c8e3ddebdc` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--cb0339b1160c32ad0f434ca9.md) | 64 | `declaration-track:cb0339b1160c32ad0f434ca9449ac612d1cc9c16f8f9b26e137a14b82b60b675` |
| 4 | `abbrev` | [ProfiniteGrp.of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profinitegrp-of--ad1d230291dbce6fd82856f5.md) | 78 | `declaration-track:ad1d230291dbce6fd82856f54b2a64b076d9d06823289b00c8c070e8a43f3a89` |
| 5 | `lemma` | [ProfiniteGrp.coe_of](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profinitegrp-coe-of--cadbb9880390e9159a4540cc.md) | 85 | `result-track:cadbb9880390e9159a4540cc4c0e2250cb9a7ab0f3d8f16f9ad263d16c4b1026` |
| 6 | `structure` | [ProfiniteAddGrp.Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profiniteaddgrp-hom--aaca82ada3b68fda24516d52.md) | 91 | `declaration-track:aaca82ada3b68fda24516d52ccb7c042b0cadd8b0e04de01847bf00a7e07e4ff` |
| 7 | `structure` | [ProfiniteGrp.Hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profinitegrp-hom--fe9c5457ae9c25403fc86365.md) | 98 | `declaration-track:fe9c5457ae9c25403fc86365070c42d49549395d506e2ff93dda53e0b76719e3` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--6ba049ee44eca8432e536a14.md) | 106 | `declaration-track:6ba049ee44eca8432e536a1410e0dc260aad8acde1ba3a1fe531bd8f197ceec5` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--26b5655de4340c49d1a98e3d.md) | 112 | `declaration-track:26b5655de4340c49d1a98e3da18895fcc4b452f40289aa75f4ca205bc5f3c50d` |
| 10 | `abbrev` | [ProfiniteGrp.Hom.hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profinitegrp-hom-hom--7e9e9b6ed93a1b6b96bfa10e.md) | 118 | `declaration-track:7e9e9b6ed93a1b6b96bfa10e2eebd345fb5dcb99723f1a94bc189f03f9dd9427` |
| 11 | `abbrev` | [ProfiniteGrp.ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/profinitegrp-ofhom--37a74e8684f239813a421e1f.md) | 124 | `declaration-track:37a74e8684f239813a421e1f66716e4bf2d9a5b956d64b79e458a1127aafce14` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--115b6ce0950b33bc20ed84c9.md) | 133 | `declaration-track:115b6ce0950b33bc20ed84c9b506f8745fe84b79f94d33087e5cfe5e6897be26` |
| 13 | `lemma` | [hom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/hom-id--05fa09f8cb3019b818eb0e16.md) | 137 | `result-track:05fa09f8cb3019b818eb0e1615fed91ea8be7d57630e9ebcf89675bb14ab86e2` |
| 14 | `lemma` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/id-apply--8f2447ef24427afeba76b556.md) | 141 | `result-track:8f2447ef24427afeba76b5564f15966b4b8983102c16e4f97fa0d297065e2a06` |
| 15 | `lemma` | [hom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/hom-comp--0a03b77cde96005bf80798f8.md) | 145 | `result-track:0a03b77cde96005bf80798f81d4f881f13f5e122afe28a2da062bd37e78f7c39` |
| 16 | `lemma` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/comp-apply--0aebb6da2a2d5a4ef3288eba.md) | 150 | `result-track:0aebb6da2a2d5a4ef3288eba9b88e14005a2b629b8b2bf0f0fcbef4567b3e197` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/hom-ext--9937a8bbfbb81b0506cf1fe7.md) | 155 | `result-track:9937a8bbfbb81b0506cf1fe7eb99e98dac803ae1186cf642d748d0cc67f65c12` |
| 18 | `lemma` | [hom_ofHom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/hom-ofhom--647ce3fae176114eaa79a4fe.md) | 164 | `result-track:647ce3fae176114eaa79a4fee6137be6f9c911efa7111b01b499cb4d3966166d` |
| 19 | `lemma` | [ofHom_hom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/ofhom-hom--68cb9c909ec934a82c4627cf.md) | 167 | `result-track:68cb9c909ec934a82c4627cf605e90d0d1ab148fcbe5c34a18d0f02ff41db209` |
| 20 | `lemma` | [ofHom_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/ofhom-id--145378d346a97af4e16b4aa9.md) | 171 | `result-track:145378d346a97af4e16b4aa939c54e498614449f108f5b5cd12054fb4d393e3f` |
| 21 | `lemma` | [ofHom_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/ofhom-comp--5a681ed7276a4dbd8179114f.md) | 174 | `result-track:5a681ed7276a4dbd8179114f79fde884d6f502ffe8ec2429018f89bf2bddf830` |
| 22 | `lemma` | [ofHom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/ofhom-apply--5576cb6e2c8cd54bb5e76456.md) | 179 | `result-track:5576cb6e2c8cd54bb5e76456303d1411ad9b10df432a8b2bc972aa4e6a50d873` |
| 23 | `lemma` | [inv_hom_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/inv-hom-apply--47d22ab840f983ac302bdbca.md) | 182 | `result-track:47d22ab840f983ac302bdbcab668c5cf3a00621df127177d479627de3721b0f7` |
| 24 | `lemma` | [hom_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/hom-inv-apply--028c011c07b8529fe8f33def.md) | 186 | `result-track:028c011c07b8529fe8f33def04fa6318e7785ae2ec9ff1f5ab7f8cc57b1e5708` |
| 25 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/coe-id--5bef18f9196711ace42d2b3c.md) | 190 | `result-track:5bef18f9196711ace42d2b3cba6212a1719c26195e1fdb7c6b7f3a526ebcc903` |
| 26 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/coe-comp--f35bc40d68ff1a529275a78e.md) | 194 | `result-track:f35bc40d68ff1a529275a78e9186e96042c5f1782e0eb565831c2b62bcd94615` |
| 27 | `abbrev` | [ofProfinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/ofprofinite--71011b6313648415b248cd0d.md) | 202 | `declaration-track:71011b6313648415b248cd0d442bdcd1c9bd255508d44a0676eaa5c6f9e2f310` |
| 28 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/pi--5cf2e8bc2ac8f0dafd8c3393.md) | 208 | `declaration-track:5cf2e8bc2ac8f0dafd8c3393b1fc9dfe9c09dc1b4263cc2c18c651f031d47fbf` |
| 29 | `def` | [ofFiniteGrp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/offinitegrp--2a345b7af4f1ea925deec580.md) | 218 | `declaration-track:2a345b7af4f1ea925deec580ddcf6b303f9abd999871254019708ad4e0a3c583` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--dc685ca382619217a9980571.md) | 225 | `declaration-track:dc685ca382619217a99805714a3b022796f66964df5eced4378314a3b296a851` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--ae18453755a6782ef636bbd1.md) | 231 | `declaration-track:ae18453755a6782ef636bbd18df42cbff81ddf8742fccf42c5b5fa6bf2d4fd2b` |
| 32 | `def` | [ofClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/ofclosedsubgroup--f6e4936dbab9dbe103e4b6b4.md) | 237 | `declaration-track:f6e4936dbab9dbe103e4b6b402851021cf978e31a471e40c764306cb20070501` |
| 33 | `def` | [ofContinuousMulEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/ofcontinuousmulequiv--27dc8eb2fbe210b26ef09359.md) | 244 | `declaration-track:27dc8eb2fbe210b26ef093599cd3f062421f7756f5bddee389c4a0f2420ba1de` |
| 34 | `def` | [ContinuousMulEquiv.toProfiniteGrpIso](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/continuousmulequiv-toprofinitegrpiso--5002229e0148714fe24c6613.md) | 252 | `declaration-track:5002229e0148714fe24c6613beb783a018ef027d6be784b411e2327fffe2bc69` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--21d3078859ae4db90f64c909.md) | 258 | `declaration-track:21d3078859ae4db90f64c909364e762f2443b1dc653dd5025661520cbcb3ed61` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--5854a04d3c4fea6b6eb3b450.md) | 264 | `declaration-track:5854a04d3c4fea6b6eb3b4509a54edc2e0a70d80cb22c67149a535db164ddd5f` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--2d04e94a1cc7a7b0d2e73e85.md) | 268 | `declaration-track:2d04e94a1cc7a7b0d2e73e856dad40d6f68f02f30ca54dd88b7047bfce0d8fc8` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--1a439e7ab10cfb24bd3acec7.md) | 276 | `declaration-track:1a439e7ab10cfb24bd3acec7f851077ac78d38f5b0f95d6d213e131bf2b9f7b0` |
| 39 | `def` | [limitConePtAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/limitconeptaux--981fcc0d0a56bc1c73ac5351.md) | 306 | `declaration-track:981fcc0d0a56bc1c73ac5351c02743b86fb385838ad2d45d53f1cf4ec0bfb8a6` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--8fcf2693e60bfac182c458ba.md) | 312 | `declaration-track:8fcf2693e60bfac182c458ba4795b7a8ec6fcb2f9f33329d676dec0936eb97d9` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--1c6cdc5bc83d0fa2fcdc1ef9.md) | 315 | `declaration-track:1c6cdc5bc83d0fa2fcdc1ef99cd8c84067e44edb4f858cb8956e6799f6afe344` |
| 42 | `abbrev` | [limitCone](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/limitcone--70a40c4964bd1dc757a030c5.md) | 319 | `declaration-track:70a40c4964bd1dc757a030c5ba31220b77c62760af3708ceb3487367b8feb8b9` |
| 43 | `def` | [limitConeIsLimit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/limitconeislimit--863ab86079b5e72c2f468ce8.md) | 335 | `declaration-track:863ab86079b5e72c2f468ce869a66c529c93d4312bd623f42236276d0cd7f410` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--bf8867bfdae2f606f2da6253.md) | 349 | `declaration-track:bf8867bfdae2f606f2da62536a0eb9ce469540a588a6a98241c90d215718dbad` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--c57437b3017a321c62ea1c99.md) | 354 | `declaration-track:c57437b3017a321c62ea1c99f31d3e50f0aede6bddac61eeda06929e75f13822` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/instance--bfc458947fffe1fdf910d82f.md) | 359 | `declaration-track:bfc458947fffe1fdf910d82f834fcdc2996ef79672cb28430f9530bc53b6c204` |
| 47 | `abbrev` | [limit](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/limit--15723f6d527e8262854e5b2a.md) | 363 | `declaration-track:15723f6d527e8262854e5b2a897548a6732c2a50b5bee9facc3dd4fda588d266` |
| 48 | `lemma` | [limit_ext](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/limit-ext--d1a3ed7c519e43bbd0b1b2c4.md) | 366 | `result-track:d1a3ed7c519e43bbd0b1b2c4568530f22a39c535c9780bf6907d424cdb4de87d` |
| 49 | `lemma` | [limit_one_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/limit-one-val--a11e977f0afd3ae4b8a7d174.md) | 370 | `result-track:a11e977f0afd3ae4b8a7d1741651e3fce2cd553b9611f3ab53eee7ee0c9976ac` |
| 50 | `lemma` | [limit_mul_val](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8d65d6f168497623560849777cff0b71f91fc673a6f8dff952cd750eeafec958.lean/declarations/limit-mul-val--00b85ed674230d0b157b9537.md) | 374 | `result-track:00b85ed674230d0b157b9537211f9704dd38d498d51c9ec41fd3572a64e1e3f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
