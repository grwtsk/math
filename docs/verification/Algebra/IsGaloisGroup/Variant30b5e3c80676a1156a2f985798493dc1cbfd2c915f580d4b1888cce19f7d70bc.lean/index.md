# Verification target: GRWTSK.Algebra.IsGaloisGroup.Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9c0bad6a4da7cefc171b83847692d418d6865bc",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/index.md) · [Full source](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9c0bad6a4da7cefc171b83847692d418d6865bc`.

Source path: `GRWTSK/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/instance--e4e8a8595041f6d951b472d0.md) | 47 | `declaration-track:e4e8a8595041f6d951b472d02a28a7fbbb2a810f464f94abb12535b35414145c` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/instance--19dc66f3e0125fba9120bac4.md) | 52 | `declaration-track:19dc66f3e0125fba9120bac461cd252766ca3eea91e871956b0382e5f1bbee1a` |
| 3 | `theorem` | [fixedPoints_eq_bot](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints-eq-bot--ee95a03254c6956d125ffdc9.md) | 66 | `result-track:ee95a03254c6956d125ffdc9c5ca15f61104e04f4a491ed791fe3884640fda4e` |
| 4 | `theorem` | [isGalois](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/isgalois--1619f8eb1c84dcee062bdd86.md) | 72 | `result-track:1619f8eb1c84dcee062bdd862ec514ca38a4f7002014d14aa134c232b2a61734` |
| 5 | `instance` | [of_isGalois](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/of-isgalois--ec8b66271e62eb16673294c3.md) | 77 | `declaration-track:ec8b66271e62eb16673294c35e42bcc6d5dda5d478c15224d09c368c06dd71ad` |
| 6 | `theorem` | [card_eq_finrank](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/card-eq-finrank--9f04c4b80e30df8e11e24949.md) | 85 | `result-track:9f04c4b80e30df8e11e24949c9266ceb8f5ccd386cb9cd4f148db80a11f1c43b` |
| 7 | `theorem` | [finiteDimensional](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/finitedimensional--d9fcf6d859eeb31a6f82a008.md) | 96 | `result-track:d9fcf6d859eeb31a6f82a0080b568cb276af4423a88fabd2f5146208998d87c2` |
| 8 | `theorem` | [finite](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/finite--b036c9a7c7a0b59d81ed459c.md) | 99 | `result-track:b036c9a7c7a0b59d81ed459c5b0faf6707d9600bb56f524b5bb985610e1eb0ab` |
| 9 | `theorem` | [card_eq_finrank'](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/card-eq-finrank--e04d3fd6bd66db9df5679fbf.md) | 121 | `result-track:e04d3fd6bd66db9df5679fbf75813a7ccc06267f25ac403a9bba47f8b12cd58a` |
| 10 | `theorem` | [map_mulEquivAlgEquiv_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/map-mulequivalgequiv-fixingsubgroup--08f15ec1c60f46147801cb32.md) | 129 | `result-track:08f15ec1c60f46147801cb3289d32a41685ce39e29b415f7b325ac09594b5e64` |
| 11 | `def` | [mulEquivCongr](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/mulequivcongr--9f22b5c882bf4142b0da03c5.md) | 136 | `declaration-track:9f22b5c882bf4142b0da03c5aa3bb1f910529c74e7a57fd8f75eba45dc689540` |
| 12 | `theorem` | [mulEquivCongr_apply_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/mulequivcongr-apply-smul--2d96cf3e8c3145f54eb694b6.md) | 140 | `result-track:2d96cf3e8c3145f54eb694b670cdbb09c2fd885cf83fc90fc15725e8a35196fe` |
| 13 | `theorem` | [mulEquivCongr_symm_apply_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/mulequivcongr-symm-apply-smul--e34cf9ecdb1773bcdb94c901.md) | 144 | `result-track:e34cf9ecdb1773bcdb94c90179e4f2862d1f556796b5e99ea1e944d316eb6319` |
| 14 | `theorem` | [mulEquivCongr_mapSubgroup_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/mulequivcongr-mapsubgroup-fixingsubgroup--2b6a16efcd78d5c9b4377998.md) | 151 | `result-track:2b6a16efcd78d5c9b43779986bc4785dccaed25db2f929e79061fc76c219bfea` |
| 15 | `instance` | [subgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/subgroup--fc096f1ca15e036c281ad86c.md) | 160 | `declaration-track:fc096f1ca15e036c281ad86cc3ada2be41c843e9f2a3b56cc1823730d35ab67a` |
| 16 | `theorem` | [fixedPoints_of_isGaloisGroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints-of-isgaloisgroup--5340155dbcc434cf0202d42b.md) | 165 | `result-track:5340155dbcc434cf0202d42bbf85943b143f42d91282d76f2c4736f09b3b66c5` |
| 17 | `theorem` | [of_fixedPoints_eq](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/of-fixedpoints-eq--7cd53378ea4f0fe81462089f.md) | 174 | `result-track:7cd53378ea4f0fe81462089fb81b94432d5acacbc1c390265d3ab70f899adf76` |
| 18 | `theorem` | [subgroup_iff](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/subgroup-iff--1c015b61880f244bf853b0ba.md) | 180 | `result-track:1c015b61880f244bf853b0ba6233df6c0ddb9433e9da1be2c6961eacee66cc9f` |
| 19 | `theorem` | [finrank_fixedPoints_eq_card_subgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/finrank-fixedpoints-eq-card-subgroup--2654373aaef549d64e5d10e2.md) | 185 | `result-track:2654373aaef549d64e5d10e20e8b2a1123df67719b572e4f203fadfb473dabfc` |
| 20 | `theorem` | [of_mulEquiv_algEquiv](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/of-mulequiv-algequiv--d18df6fa090b20c623bda972.md) | 190 | `result-track:d18df6fa090b20c623bda972f8008a8a42acfc6c871e3b952873da00a413eb09` |
| 21 | `instance` | [fixedPoints](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints--e7b15278f541ecff4bf1ae6d.md) | 193 | `declaration-track:e7b15278f541ecff4bf1ae6dca7d7ae150ad75b5de11c81023219d4973bf3f41` |
| 22 | `instance` | [intermediateField](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/intermediatefield--06727e8548f17ff8248c955d.md) | 197 | `declaration-track:06727e8548f17ff8248c955d61fe665d3b2fe690c113bf5eb5402179e846ae12` |
| 23 | `theorem` | [of_isScalarTower](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/of-isscalartower--0c2bbc1f1ac164f48c93292f.md) | 209 | `result-track:0c2bbc1f1ac164f48c93292fa1f002af4d118d118b34edebb2deb081f98c0d69` |
| 24 | `theorem` | [card_fixingSubgroup_eq_finrank](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/card-fixingsubgroup-eq-finrank--a96985db908e1ffd2d0c413b.md) | 230 | `result-track:a96985db908e1ffd2d0c413b47d6cf1964a9fbcc151d7e6b82b49dcba427d39f` |
| 25 | `theorem` | [fixingSubgroup_le_of_le](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixingsubgroup-le-of-le--0c929bc8a8dcaee0def94104.md) | 236 | `result-track:0c929bc8a8dcaee0def94104f3b74eb37cf8df2e445abaf774364879e6c3a8af` |
| 26 | `theorem` | [fixingSubgroup_bot](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixingsubgroup-bot--084ae0845c899291c36d7c23.md) | 245 | `result-track:084ae0845c899291c36d7c234ad1fededff4e4fb7bc2e25be8dd773f61fb6574` |
| 27 | `theorem` | [fixedPoints_bot](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints-bot--f88e4571a731247855fd95eb.md) | 249 | `result-track:f88e4571a731247855fd95eba404c4c35d94b286aade49ee9b9b9cb94670580d` |
| 28 | `theorem` | [le_fixedPoints_iff_le_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/le-fixedpoints-iff-le-fixingsubgroup--46bcfc277fc7ec4a01db0a5d.md) | 253 | `result-track:46bcfc277fc7ec4a01db0a5db9e3cf4ad719b0e2e74f952b5065513e0d6d5790` |
| 29 | `theorem` | [fixedPoints_le_of_le](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints-le-of-le--c26d17345957051ffcb1d5ca.md) | 257 | `result-track:c26d17345957051ffcb1d5ca09488043071fc9627387ebe104ac1499af7f4ad2` |
| 30 | `theorem` | [fixingSubgroup_top](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixingsubgroup-top--2478b9084f773354d513f2e3.md) | 269 | `result-track:2478b9084f773354d513f2e3c3402314cc701255a40e9f359b70fbe7091917aa` |
| 31 | `theorem` | [fixedPoints_top](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints-top--51a1664c8f7e3c0c882fb428.md) | 274 | `result-track:51a1664c8f7e3c0c882fb4289724aeae0c8e5e8881dcf3ca842f6a36d90cc98c` |
| 32 | `def` | [intermediateFieldEquivSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/intermediatefieldequivsubgroup--e4f7208481e24878b153d1cc.md) | 280 | `declaration-track:e4f7208481e24878b153d1cc789affb259f270c10fe525d377a6910d96aeb330` |
| 33 | `theorem` | [intermediateFieldEquivSubgroup_apply](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/intermediatefieldequivsubgroup-apply--bc592e216133dfaa53e99428.md) | 286 | `result-track:bc592e216133dfaa53e99428a682d0211d3f8375cbeda4c5134229d0274c9649` |
| 34 | `theorem` | [ofDual_intermediateFieldEquivSubgroup_apply](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/ofdual-intermediatefieldequivsubgroup-apply--8b2d9d8650e80247cf6d6a5a.md) | 289 | `result-track:8b2d9d8650e80247cf6d6a5af732f2a3d9dc9717a7f9b2ffa9bfa84f0fe1b357` |
| 35 | `theorem` | [intermediateFieldEquivSubgroup_symm_apply](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/intermediatefieldequivsubgroup-symm-apply--2f8ea7060b88a8de647694cf.md) | 293 | `result-track:2f8ea7060b88a8de647694cf0307a5ea2d4acef95d8897a4cd3df832f5faf886` |
| 36 | `theorem` | [intermediateFieldEquivSubgroup_symm_apply_toDual](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/intermediatefieldequivsubgroup-symm-apply-todual--83d1afd6f321a73bb237beaa.md) | 299 | `result-track:83d1afd6f321a73bb237beaa429189eafb38d5507fa1038b0d827b432c85abbe` |
| 37 | `theorem` | [fixingSubgroup_fixedPoints](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixingsubgroup-fixedpoints--136bc84b43e199bc81281711.md) | 304 | `result-track:136bc84b43e199bc8128171130f7e376983fdb631c1e8fbc13b6df82762aa000` |
| 38 | `theorem` | [fixedPoints_fixingSubgroup](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints-fixingsubgroup--469a1069fe4e089e0bd6ce3a.md) | 311 | `result-track:469a1069fe4e089e0bd6ce3a63f9649b641d0b468e56f3404bc8027d3068f748` |
| 39 | `theorem` | [fixedPoints_eq_range_algebraMap](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixedpoints-eq-range-algebramap--3c2d6c499cfc662126e02c12.md) | 318 | `result-track:3c2d6c499cfc662126e02c125601497bcfc77351b52d3a25daab5a81c07628ec` |
| 40 | `theorem` | [fixingSubgroup_range_algebraMap'](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixingsubgroup-range-algebramap--ee789488b1d5d007a45c4ebc.md) | 331 | `result-track:ee789488b1d5d007a45c4ebc8ee2ec84fcf8120b9fa1a62932b8ccf990d644a1` |
| 41 | `theorem` | [fixingSubgroup_range_algebraMap](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/fixingsubgroup-range-algebramap--7e7265a55a5850f1286d855e.md) | 339 | `result-track:7e7265a55a5850f1286d855ef6299ac9fa4f9f4a7884949b7180e730766791ba` |
| 42 | `theorem` | [normal_of_isGalois](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/normal-of-isgalois--c2bd71bc2d56e99ba89604a5.md) | 357 | `result-track:c2bd71bc2d56e99ba89604a581b1ad07998f46b150e26ad34430587d1abac951` |
| 43 | `theorem` | [quotient](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/quotient--6176120b7560388391a654eb.md) | 381 | `result-track:6176120b7560388391a654eb6c7a3036b30c8a405d687d23139cfd7e37da85b2` |
| 44 | `def` | [quotientMulEquiv](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/quotientmulequiv--797242c204490ed57661a062.md) | 405 | `declaration-track:797242c204490ed57661a0629e54be2428640009464a8b2dd400bd2bdc3d8e0c` |
| 45 | `theorem` | [algebraMap_quotientMulEquiv_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/algebramap-quotientmulequiv-smul--16e237da04039b100a7a4533.md) | 417 | `result-track:16e237da04039b100a7a4533e3d0e43b886b8672f6216830cbdabc2d0956c597` |
| 46 | `def` | [restrictHom](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/restricthom--aec25bdc56afbed126ab90d4.md) | 433 | `declaration-track:aec25bdc56afbed126ab90d4e10ef6d6e7fbae2830ad2cc8d6fc427f5ce6cb96` |
| 47 | `theorem` | [algebraMap_restrictHom_smul](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/algebramap-restricthom-smul--64486557ba06190e8771fe5b.md) | 452 | `result-track:64486557ba06190e8771fe5bcd2b41b4f3e7a77c31460d5d2dec05bcbb6968d4` |
| 48 | `theorem` | [restrictHom_surjective](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/restricthom-surjective--9a97f5f3bf6f1384612b5da9.md) | 470 | `result-track:9a97f5f3bf6f1384612b5da9e14d51f5e18bb01fe7c215f97eef93f8078d3495` |
| 49 | `theorem` | [restrictHom_smul_under](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/restricthom-smul-under--b40a80c4f2b83ac8cd975d0d.md) | 476 | `result-track:b40a80c4f2b83ac8cd975d0d46e3f098918b5b7c925ca957b2f6e23957beda5d` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/instance--6383479b6f119f6d4a62ce5d.md) | 489 | `declaration-track:6383479b6f119f6d4a62ce5df5287b6edb77a12068f95c06192df157a7560e66` |
| 51 | `theorem` | [map_quotientMk'](../../../../mathematics/Algebra/IsGaloisGroup/Variant30b5e3c80676a1156a2f985798493dc1cbfd2c915f580d4b1888cce19f7d70bc.lean/declarations/map-quotientmk--9830e6cfdc149bb22a756e40.md) | 500 | `result-track:9830e6cfdc149bb22a756e40dab64004ff57d02305207e8b8f6145548550ea1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
