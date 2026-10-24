# Verification target: GRWTSK.Algebra.Basic.Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31f9a7a8cc78ab3ff24305094374c01bf85e7c1f",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31f9a7a8cc78ab3ff24305094374c01bf85e7c1f`.

Source path: `GRWTSK/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean.json)

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
| 1 | `abbrev` | [IsLocalization.AtPrime](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/islocalization-atprime--89bfbd4b15919a287eab7a72.md) | 60 | `declaration-track:89bfbd4b15919a287eab7a72b4bec857d59f201bfe3cb1a5fd262bcd4b6e71ad` |
| 2 | `abbrev` | [Localization.AtPrime](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localization-atprime--27ab1d503d5ffd7935998e66.md) | 65 | `declaration-track:27ab1d503d5ffd7935998e66743c3d9ac74d14ccb3fdd09e94f41c4591a7abf5` |
| 3 | `theorem` | [AtPrime.nontrivial](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/atprime-nontrivial--37bdeecca373d37c3cf53662.md) | 70 | `result-track:37bdeecca373d37c3cf536624119f74668cdf92bf98a5097f14e64de951d32cb` |
| 4 | `theorem` | [AtPrime.isLocalRing](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/atprime-islocalring--a3ac3391e8d7365a7939c862.md) | 77 | `result-track:a3ac3391e8d7365a7939c862b38fdd729d22bb5af9bc7f3c2a0278b679d9c3e4` |
| 5 | `instance` | [isDomain_of_local_atPrime](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/isdomain-of-local-atprime--c5c0f155f88b39ce01b10fef.md) | 106 | `declaration-track:c5c0f155f88b39ce01b10fef2300e5408e50c06801978346615e9b3720e8ad58` |
| 6 | `instance` | [AtPrime.isLocalRing](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/atprime-islocalring--daba35d19cc4f761049e64e7.md) | 115 | `declaration-track:daba35d19cc4f761049e64e7a5e0bcbd8ca8643b23727bbf0d7f27f84729bf50` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/instance--62ff0a302d397e1449377338.md) | 118 | `declaration-track:62ff0a302d397e14493773388e60c41a8ac668b82bfd9c41d8c594ee5e2cdcaf` |
| 8 | `theorem` | [_root_.GRWTSK.Algebra.IsLocalizationAtPrime.Variantf28105cd3f40bc17ed97741a953ff66bcaa97f4734aa542b59fa360728c127d1.IsLocalization.AtPrime.faithfulSMul](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/root-grwtsk-algebra-islocalizationatprime-variantf28105cd3f40bc17ed97741--23e1a8ed1fb41dbd5a4a6de6.md) | 124 | `result-track:23e1a8ed1fb41dbd5a4a6de61dac7ee6c2f8936b052136d9b2eb488106b818f1` |
| 9 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/instance--902236b14dd63ff5207db8bf.md) | 130 | `declaration-track:902236b14dd63ff5207db8bf8c5673770d39ed8024d38ace8b9e250be3dce104` |
| 10 | `theorem` | [isDomain_of_atPrime](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/isdomain-of-atprime--b7e665fdb5ef0f893e1bb3d0.md) | 142 | `result-track:b7e665fdb5ef0f893e1bb3d0655b88e72a9346df1eb7a6477d9ee0296b842d26` |
| 11 | `def` | [orderIsoOfPrime](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/orderisoofprime--4c59cee6b8010a6d3417894f.md) | 153 | `declaration-track:4c59cee6b8010a6d3417894f313ac27e0f5ccf43c40c0defdbe4bd22ae4a81b7` |
| 12 | `def` | [primeSpectrumOrderIso](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/primespectrumorderiso--b98f7c8412d980e39ab9a40b.md) | 160 | `declaration-track:b98f7c8412d980e39ab9a40b21dbdd05f50b743a824080cd7898e72ce40a9742` |
| 13 | `theorem` | [isUnit_to_map_iff](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/isunit-to-map-iff--285127e083da5144630c0fd0.md) | 164 | `result-track:285127e083da5144630c0fd08704d7416e99ecb54635cffbec846bc6d524b80c` |
| 14 | `theorem` | [to_map_mem_maximal_iff](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/to-map-mem-maximal-iff--bebd6c015f485652928c19c3.md) | 172 | `result-track:bebd6c015f485652928c19c35020a555ccbccbd8c2b126892802365fbd4e8bc0` |
| 15 | `theorem` | [under_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/under-maximalideal--f932bd70c7a9473835049bc4.md) | 178 | `result-track:f932bd70c7a9473835049bc4739261575eda43ec3bd302edaae656c4b142b18b` |
| 16 | `instance` | [liesOver_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/liesover-maximalideal--2676bd9b45a2c59531801b8f.md) | 184 | `declaration-track:2676bd9b45a2c59531801b8f9c27dfb768b1d311819b5aaeb66888ee9f739e6b` |
| 17 | `theorem` | [isUnit_mk'_iff](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/isunit-mk-iff--e09334506b4374356e89cfa6.md) | 188 | `result-track:e09334506b4374356e89cfa68692f07db76cf5d280dbea6fc263720706486006` |
| 18 | `theorem` | [mk'_mem_maximal_iff](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/mk-mem-maximal-iff--552f1b0fe6af145cecdec54a.md) | 192 | `result-track:552f1b0fe6af145cecdec54a109da3e695e909ef8b6d537f924023dd347adcc8` |
| 19 | `theorem` | [AtPrime.under_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/atprime-under-maximalideal--ef8c6bea08466565cf3fd6ce.md) | 210 | `result-track:ef8c6bea08466565cf3fd6ce67a7848215fbbaf89cbb833ce67a01b74dc164b7` |
| 20 | `theorem` | [AtPrime.map_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/atprime-map-eq-maximalideal--58a898138df816bb13683e21.md) | 218 | `result-track:58a898138df816bb13683e21cb5c9b1f8e9d118d48b9591fd5934d6c62ac3a7f` |
| 21 | `lemma` | [AtPrime.eq_maximalIdeal_iff_under_eq](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/atprime-eq-maximalideal-iff-under-eq--5c4ee9568cee6699a62eab7d.md) | 224 | `result-track:5c4ee9568cee6699a62eab7d0875e2952677a2e68abf047350e910f7e2b5352a` |
| 22 | `theorem` | [le_comap_primeCompl_iff](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/le-comap-primecompl-iff--cd1af977b9781dd0315718b0.md) | 233 | `result-track:cd1af977b9781dd0315718b0797068832da1aa445893f6dc9128748e79854f5d` |
| 23 | `def` | [localRingHom](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom--db896337ca33de62f394673f.md) | 248 | `declaration-track:db896337ca33de62f394673f0921b7924d0b39bc77f6811a0216a9b6d1c07100` |
| 24 | `theorem` | [localRingHom_to_map](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom-to-map--d101860217660c8611e7b4cd.md) | 253 | `result-track:d101860217660c8611e7b4cda5fce3877823223f61fd420ce5d76d1f972f079c` |
| 25 | `theorem` | [localRingHom_mk'](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom-mk--4d21dd913e686fc6f3313206.md) | 258 | `result-track:4d21dd913e686fc6f33132069297caf3de4b785c85bf07b6412f3705e4e83fe7` |
| 26 | `theorem` | [localRingHom_mk](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom-mk--6ec3ec5ca1eeca61af768fdb.md) | 266 | `result-track:6ec3ec5ca1eeca61af768fdb43e1cc44f78a0cbb4d51769453f540fd84c7dc31` |
| 27 | `theorem` | [isLocalHom_localRingHom](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/islocalhom-localringhom--00b90a31fd9a1e2ad50502ac.md) | 272 | `result-track:00b90a31fd9a1e2ad50502ac3554e0b163077389799a7b771c0cd88314aee761` |
| 28 | `theorem` | [localRingHom_unique](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom-unique--8d2295cef1f3a1efd93d307f.md) | 280 | `result-track:8d2295cef1f3a1efd93d307fe43d3f5872c25df959ea312319c71022e5b481d0` |
| 29 | `theorem` | [localRingHom_id](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom-id--911cbe482fb773a8ef162f4a.md) | 286 | `result-track:911cbe482fb773a8ef162f4ac84ab3d0136ddd88c866077e71d666ecfb9278df` |
| 30 | `theorem` | [localRingHom_comp](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom-comp--95ced661437f974f9b74049f.md) | 290 | `result-track:95ced661437f974f9b74049fa4b6c2bf65d83e6a47235cfc68bfbff1d092a551` |
| 31 | `def` | [localRingEquiv](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringequiv--0e25674d7de6184f2103df6d.md) | 299 | `declaration-track:0e25674d7de6184f2103df6d6381e42f4d13f1b5111628b513f397bc0b9e7b22` |
| 32 | `def` | [localAlgHom](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localalghom--80b8a94f55cef71ba9fac970.md) | 312 | `declaration-track:80b8a94f55cef71ba9fac970d870a1a7d5acde638dcfa7cf2585745853aa8724` |
| 33 | `lemma` | [localAlgHom_apply](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localalghom-apply--158cd04737120af967e1f30c.md) | 321 | `result-track:158cd04737120af967e1f30cfb2894aaef273816f43193190e27386e6d89038a` |
| 34 | `def` | [localAlgEquiv](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localalgequiv--ce4e5672668e692def7b018c.md) | 330 | `declaration-track:ce4e5672668e692def7b018c3267f63a600ee2749208bfe448d137c4b13b777f` |
| 35 | `lemma` | [localRingHom_bijective_of_saturated_inf_eq_top](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localringhom-bijective-of-saturated-inf-eq-top--8626cbe39b754bf4ea6c1a9d.md) | 336 | `result-track:8626cbe39b754bf4ea6c1a9d9943141ffee63569c0372286c931d47fe557bc2b` |
| 36 | `def` | [algebraOfLiesOver](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/algebraofliesover--a541eebd3c2ec10e22a6e16f.md) | 372 | `declaration-track:a541eebd3c2ec10e22a6e16fe5e022a1a7cacfaf2ece3a07d763543cb05a1d56` |
| 37 | `abbrev` | [IsLiesOverAlgebra](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/isliesoveralgebra--d25146e007a4d154c1af49e4.md) | 381 | `declaration-track:d25146e007a4d154c1af49e407161b94719b930343d98d7aa01642c24d386c47` |
| 38 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/instance--e397d3be155cfc1ba324e8cc.md) | 385 | `declaration-track:e397d3be155cfc1ba324e8cc60229e0632fe849647a685c5f4fcd201a6377093` |
| 39 | `theorem` | [algebraMap_eq](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/algebramap-eq--3282598963717141480a4cae.md) | 393 | `result-track:3282598963717141480a4cae42054b9e609d3c77ad562c688df89f539bf92ca0` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/instance--7e69a5a0dffd16d5052804ad.md) | 404 | `declaration-track:7e69a5a0dffd16d5052804ade25c1739fe209091966b4a326ffaa7eaec6a68d3` |
| 41 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/instance--8c3f946390d235856fa29284.md) | 410 | `declaration-track:8c3f946390d235856fa29284f0950a70ba152ea24dd421f791d81ed73e71aec6` |
| 42 | `abbrev` | [mapPiEvalRingHom](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/mappievalringhom--dec848e808070e097c90dba6.md) | 428 | `declaration-track:dec848e808070e097c90dba6888db6b0e331d94cf98f503b0a3e97ad7f6bb114` |
| 43 | `theorem` | [mapPiEvalRingHom_bijective](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/mappievalringhom-bijective--02708fdf8b9836213ee17ea1.md) | 432 | `result-track:02708fdf8b9836213ee17ea1bc5d91349687d479c7363b421013d3d2a943cae4` |
| 44 | `theorem` | [mapPiEvalRingHom_comp_algebraMap](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/mappievalringhom-comp-algebramap--fad23b01db4921b14ebf4578.md) | 435 | `result-track:fad23b01db4921b14ebf457841447102511d991c7989d69ad8fd892991e5b408` |
| 45 | `theorem` | [mapPiEvalRingHom_algebraMap_apply](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/mappievalringhom-algebramap-apply--7f7ad7c2d8d1ebe11c0ca2ae.md) | 439 | `result-track:7f7ad7c2d8d1ebe11c0ca2aefa4185ff726ac5fbcc9425ff2bddb359fc04bbe7` |
| 46 | `def` | [localAlgHom'](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localalghom--d6edfa6b04a67d15cd6f04dd.md) | 461 | `declaration-track:d6edfa6b04a67d15cd6f04dd32ad6b2cf4715dc62cc253900e75a262dec5b73e` |
| 47 | `def` | [localAlgEquiv'](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/localalgequiv--4d83c8cbba71f116cdc7f547.md) | 472 | `declaration-track:4d83c8cbba71f116cdc7f547ba8391cd6ebc59856370e48cfc1df70f025ccc11` |
| 48 | `lemma` | [Ideal.isPrime_map_of_isLocalizationAtPrime](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/ideal-isprime-map-of-islocalizationatprime--f36eed1d411064b08105bf4b.md) | 485 | `result-track:f36eed1d411064b08105bf4bc8fb953f3bf93c07f8867fef8c04f465a7056a8d` |
| 49 | `lemma` | [Ideal.under_map_of_isLocalizationAtPrime](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/ideal-under-map-of-islocalizationatprime--2cf7fb8dd071fff56b0bcdea.md) | 491 | `result-track:2cf7fb8dd071fff56b0bcdeab9107a0ca0e646eeebd7a45ae51623e0ffc69124` |
| 50 | `lemma` | [IsLocalization.subsingleton_primeSpectrum_of_mem_minimalPrimes](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/islocalization-subsingleton-primespectrum-of-mem-minimalprimes--480fb394088a0ebbb9f870eb.md) | 497 | `result-track:480fb394088a0ebbb9f870eb80d9d7db215138917e3b75ae440e0caf1e3e0ab5` |
| 51 | `lemma` | [IsLocalization.liesOver_of_isPrime_of_disjoint](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/islocalization-liesover-of-isprime-of-disjoint--2c3cd42442abcdfef370c867.md) | 510 | `result-track:2c3cd42442abcdfef370c867de1ff39f5c34711f0113e161d7162af1f84e939c` |
| 52 | `theorem` | [isPrime_map_of_liesOver](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/isprime-map-of-liesover--d5189d6ffe91874c70934dd0.md) | 537 | `result-track:d5189d6ffe91874c70934dd023dfb0d89b6c5f385e27cb5f6720e318b41413cb` |
| 53 | `theorem` | [map_eq_maximalIdeal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/map-eq-maximalideal--7d188f6101980c313b9e8d2d.md) | 540 | `result-track:7d188f6101980c313b9e8d2dbe31a37d5cdeaf62262d4af35ffaf6c10ee16784` |
| 54 | `instance` | [isMaximal_map](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/ismaximal-map--f9216d232f5f070f20e93c2e.md) | 544 | `declaration-track:f9216d232f5f070f20e93c2ededea065196b9ed9233d7633ae576fd63cc462a8` |
| 55 | `theorem` | [under_map_of_isMaximal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/under-map-of-ismaximal--8a8484129a9bd36ca5e0498f.md) | 548 | `result-track:8a8484129a9bd36ca5e0498f0450ae4e85df1b372e7aa5eef6abb6660cbf33d5` |
| 56 | `lemma` | [under_maximalIdeal_pow](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/under-maximalideal-pow--7680588c28bed81c1c13c66d.md) | 554 | `result-track:7680588c28bed81c1c13c66da4986ef01f397c8ef944f72213ed5b9b381675e6` |
| 57 | `def` | [equivQuotMaximalIdeal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/equivquotmaximalideal--0172ca00a18616eae5679ab0.md) | 576 | `declaration-track:0172ca00a18616eae5679ab0e7169a62aea529a69e22cf91616cce770aedc43a` |
| 58 | `theorem` | [equivQuotMaximalIdeal_apply_mk](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/equivquotmaximalideal-apply-mk--a9211156598ab3b81df7159c.md) | 601 | `result-track:a9211156598ab3b81df7159c51740795b6cb694b696889070850cbe0f3462dfa` |
| 59 | `theorem` | [equivQuotMaximalIdeal_symm_apply_mk](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/equivquotmaximalideal-symm-apply-mk--4a7dfe5aa1ee92401e0e2f5c.md) | 606 | `result-track:4a7dfe5aa1ee92401e0e2f5ca9ed91de376d21d33ca7e7e4b6a4cc4275499cd5` |
| 60 | `def` | [equivQuotMaximalIdealPow](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/equivquotmaximalidealpow--34d1547469d487e7ad6f1d9f.md) | 622 | `declaration-track:34d1547469d487e7ad6f1d9fc1144dd1f16339ff782103686f7bc53e57dd4115` |
| 61 | `theorem` | [equivQuotMaximalIdealPow_apply_mk](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/equivquotmaximalidealpow-apply-mk--e7f51e4b201bdcfec9d2e87e.md) | 639 | `result-track:e7f51e4b201bdcfec9d2e87e7cd1f4ad6ce709188f309d53dd71c05a1a2d8c98` |
| 62 | `theorem` | [equivQuotMaximalIdealPow_symm_apply_mk_mul](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/equivquotmaximalidealpow-symm-apply-mk-mul--45a44c47fcb0e3e08f2540bf.md) | 646 | `result-track:45a44c47fcb0e3e08f2540bfb0ed7debd45340adc7888fc99e32a1be5ff24610` |
| 63 | `lemma` | [under_map_eq_map](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/under-map-eq-map--4068052289d226a977af64d2.md) | 658 | `result-track:4068052289d226a977af64d2f3e50a3b5ae66974ed775db5bf26eefc8b792349` |
| 64 | `def` | [equivQuotientMapMaximalIdeal](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/equivquotientmapmaximalideal--96870177b932b55d7b723849.md) | 695 | `declaration-track:96870177b932b55d7b72384920f505bca31178c34d5973f32f79c508fa0bfe19` |
| 65 | `lemma` | [map_eq_top_of_not_le](../../../../mathematics/Algebra/Basic/Variant4b94ea72abc4d48fc0945f30284d43ab57a73290ae6fd061a3f371b061f33d52.lean/declarations/map-eq-top-of-not-le--16e501eb2ef46caa6ca6c0b9.md) | 731 | `result-track:16e501eb2ef46caa6ca6c0b9727295f289590e27ca7b5ac041a83c918572ccc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
