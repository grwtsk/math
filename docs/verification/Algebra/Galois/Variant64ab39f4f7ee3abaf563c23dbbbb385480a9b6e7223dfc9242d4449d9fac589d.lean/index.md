# Verification target: GRWTSK.Algebra.Galois.Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "785413e9073c845e3058211914f7b568a4b81f9d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/index.md) · [Full source](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `785413e9073c845e3058211914f7b568a4b81f9d`.

Source path: `GRWTSK/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Fixed` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.NormalClosure` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.PrimitiveElement` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.FixingSubgroup` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGalois](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois--8ac88b145f917cc03c312f09.md) | 48 | `declaration-track:8ac88b145f917cc03c312f09cbe4fc6de5d7e60223e31bd6aa7e0bab2362f5c4` |
| 2 | `theorem` | [isGalois_iff](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois-iff--ea6607a16d7617fdce82c59b.md) | 55 | `result-track:ea6607a16d7617fdce82c59b60eb04feebccc9f1041804ae13786f4a30148528` |
| 3 | `instance` | [self](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/self--1da4b33c3598473ec06dbf37.md) | 68 | `declaration-track:1da4b33c3598473ec06dbf37e18c230d3298fc067e28659bc3c20fa585763395` |
| 4 | `theorem` | [integral](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/integral--adc95044ecc7e4ea1c325ed1.md) | 74 | `result-track:adc95044ecc7e4ea1c325ed18388d8e52ca19167fce1bd07b49a32a7fa8db9d0` |
| 5 | `theorem` | [separable](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/separable--10008b7730b3c1c22832c507.md) | 78 | `result-track:10008b7730b3c1c22832c5079a9131c74c33b37b4b51544a90c0045ce0bc2ee8` |
| 6 | `theorem` | [splits](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/splits--e0b7e28e297fc608f27021bd.md) | 82 | `result-track:e0b7e28e297fc608f27021bddc84e4d92ea95e3f0620f333a2d716a6807d5e0c` |
| 7 | `instance` | [of_fixed_field](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/of-fixed-field--fb48544ee0fa3b05ee2fe329.md) | 88 | `declaration-track:fb48544ee0fa3b05ee2fe329ea8e7c06c9bb5bf6db1d37bb363bb1675bd5ec68` |
| 8 | `theorem` | [IntermediateField.AdjoinSimple.card_aut_eq_finrank](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/intermediatefield-adjoinsimple-card-aut-eq-finrank--a55fa16b2d33bc90e0df82e0.md) | 93 | `result-track:a55fa16b2d33bc90e0df82e09d754a2f3d794e7b62e4434a433699d0aed85810` |
| 9 | `theorem` | [card_aut_eq_finrank](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/card-aut-eq-finrank--b39d00675bc25d0077491e12.md) | 103 | `result-track:b39d00675bc25d0077491e1238f38a00d27304f542ce54fe1a9ccbc56c9da246` |
| 10 | `theorem` | [IsGalois.tower_top_of_isGalois](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois-tower-top-of-isgalois--556a6eadf60fd7600914d5e2.md) | 138 | `result-track:556a6eadf60fd7600914d5e249e02ade74c0f36a623c8b919996a32cc5b834d0` |
| 11 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/instance--fce11af5e769e20f261a7f9c.md) | 146 | `declaration-track:fce11af5e769e20f261a7f9cda6ebc646adeb9c0caa53c42bc46a8ccc8c10612` |
| 12 | `theorem` | [isGalois_iff_isGalois_bot](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois-iff-isgalois-bot--a3591f88e569ae72137667c8.md) | 151 | `result-track:a3591f88e569ae72137667c89ae66ccc04d262cbcb30ed1a81011aec3442a794` |
| 13 | `theorem` | [IsGalois.of_algEquiv](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois-of-algequiv--a8d736f2eaf5e2b70fb8d0fe.md) | 158 | `result-track:a8d736f2eaf5e2b70fb8d0fe1031d2935c849a9cc7724a66b6a12243b163f1e9` |
| 14 | `theorem` | [AlgEquiv.transfer_galois](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/algequiv-transfer-galois--28f3298416ebe65549b36374.md) | 163 | `result-track:28f3298416ebe65549b36374568058a2f88694658b06a8394dd6e5f376611efc` |
| 15 | `theorem` | [isGalois_iff_isGalois_top](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois-iff-isgalois-top--257d8e16aca3d8e97e0ffd27.md) | 167 | `result-track:257d8e16aca3d8e97e0ffd270bd10112fb861a2cd411b6be45a51ff258cdb152` |
| 16 | `instance` | [isGalois_bot](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois-bot--68c2b2241473d8c07517af86.md) | 171 | `declaration-track:68c2b2241473d8c07517af868c4a07aee5ff2a23604c37e60ab7a1bb2ecc311b` |
| 17 | `def` | [FixedPoints.intermediateField](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixedpoints-intermediatefield--ac8998e73c89c87c24417b58.md) | 185 | `declaration-track:ac8998e73c89c87c24417b588cba0c06afb380915eaf58d6a823d378c59d0c87` |
| 18 | `def` | [fixedField](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixedfield--e805e9fb1114bbf3de247a26.md) | 195 | `declaration-track:e805e9fb1114bbf3de247a26a7983d57687f4ceb8870c7c0b16c05423f30f674` |
| 19 | `theorem` | [finrank_fixedField_eq_card](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/finrank-fixedfield-eq-card--8521e2c2c06e4dbd732c843f.md) | 199 | `result-track:8521e2c2c06e4dbd732c843f020d848562a31661135665407d0a7a8909bd2d64` |
| 20 | `def` | [fixingSubgroup](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixingsubgroup--c8ed53e3f35115dcfdca23ab.md) | 205 | `declaration-track:c8ed53e3f35115dcfdca23aba6635cea7163039b6be3a0d875888772fe23f7e6` |
| 21 | `theorem` | [le_iff_le](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/le-iff-le--07eadcf6d75277bec90003f8.md) | 209 | `result-track:07eadcf6d75277bec90003f891e7caf354201f098b6e62c7fabab9a30b0d7cb2` |
| 22 | `def` | [fixingSubgroupEquiv](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixingsubgroupequiv--1bc7f2137a6de8de137dbeab.md) | 214 | `declaration-track:1bc7f2137a6de8de137dbeab0ebac230dca219de29594eccd07a11c69584bfaf` |
| 23 | `theorem` | [fixingSubgroup_fixedField](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixingsubgroup-fixedfield--24cc1aeb6adb9d94e7cc0e2f.md) | 222 | `result-track:24cc1aeb6adb9d94e7cc0e2f2e3d7cba2bfbf77ed86475c62956d0986963c059` |
| 24 | `instance` | [fixedField.smul](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixedfield-smul--13f857bd9d91fa6598461e2f.md) | 236 | `declaration-track:13f857bd9d91fa6598461e2f515d2ac09dd86a111096e71cf7ad84d9d863e70f` |
| 25 | `instance` | [fixedField.algebra](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixedfield-algebra--dd8e6784b7d24e6d59735b00.md) | 240 | `declaration-track:dd8e6784b7d24e6d59735b00bdb7f6579e062f045c4068ab51454e172b4bb6dd` |
| 26 | `instance` | [fixedField.isScalarTower](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixedfield-isscalartower--8592b91b626b7fc67dbcacba.md) | 250 | `declaration-track:8592b91b626b7fc67dbcacbaaf5094f166d5886504df00b47722a09b9aef2b4b` |
| 27 | `theorem` | [fixedField_fixingSubgroup](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/fixedfield-fixingsubgroup--772615dd14f5b8dc6a235ee7.md) | 258 | `result-track:772615dd14f5b8dc6a235ee716d7d5baa571047b888be0bfad9601ebdbcf944a` |
| 28 | `theorem` | [card_fixingSubgroup_eq_finrank](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/card-fixingsubgroup-eq-finrank--57509fce813574a7e831f5d8.md) | 271 | `result-track:57509fce813574a7e831f5d8d3e17d832e00590929049dc70411f714df2eedc8` |
| 29 | `def` | [intermediateFieldEquivSubgroup](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/intermediatefieldequivsubgroup--bfa6167d4c79e467f9620b7c.md) | 278 | `declaration-track:bfa6167d4c79e467f9620b7cfe628a189a3adb932164cef7aa11faeb1f4909f6` |
| 30 | `def` | [galoisInsertionIntermediateFieldSubgroup](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/galoisinsertionintermediatefieldsubgroup--4e41af080800d2b61d1d530d.md) | 290 | `declaration-track:4e41af080800d2b61d1d530ddf2530ebcf8c4058acdf4fed92f8ac7f1d9652a1` |
| 31 | `def` | [galoisCoinsertionIntermediateFieldSubgroup](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/galoiscoinsertionintermediatefieldsubgroup--a2b9b3dfa814f1de8f12a9da.md) | 302 | `declaration-track:a2b9b3dfa814f1de8f12a9daeefb0ad8edcd4a8f262ac57d1ad567e3bd908f4d` |
| 32 | `theorem` | [is_separable_splitting_field](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/is-separable-splitting-field--d7d4c797b266203b9870e1fb.md) | 323 | `result-track:d7d4c797b266203b9870e1fbb91e49a5add3c28ef44f6384bba24ac31526fb60` |
| 33 | `theorem` | [of_fixedField_eq_bot](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/of-fixedfield-eq-bot--5b86d1aae6e8ec3c59bf3f51.md) | 334 | `result-track:5b86d1aae6e8ec3c59bf3f51ebcb27cf62b0b7380cecaf235fafbf96f9a55393` |
| 34 | `theorem` | [of_card_aut_eq_finrank](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/of-card-aut-eq-finrank--4f639f16a51883284e865894.md) | 340 | `result-track:4f639f16a51883284e865894b9d3929c1e8a1448406f943fe5f032c2c604b65e` |
| 35 | `theorem` | [of_separable_splitting_field_aux](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/of-separable-splitting-field-aux--2eb9b71a9a84b68bd306755d.md) | 359 | `result-track:2eb9b71a9a84b68bd306755dc8e453d5d32179fadca0d13c6f3cee10539d5ef8` |
| 36 | `theorem` | [of_separable_splitting_field](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/of-separable-splitting-field--c86452183ef5046e885f9949.md) | 395 | `result-track:c86452183ef5046e885f9949e8ef6260db4cef5f3504e2211c27a28aa7ec2847` |
| 37 | `theorem` | [tfae](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/tfae--77adb901d2680cc22f14caab.md) | 432 | `result-track:77adb901d2680cc22f14caab4717df6fb2d7c41158b93cc2cfeb58a3ff187e20` |
| 38 | `instance` | [IsGalois.normalClosure](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/isgalois-normalclosure--3cf51fcdf47912a3e11fa144.md) | 459 | `declaration-track:3cf51fcdf47912a3e11fa14411436eace0b73af05e2b3501d16283dbcacfa9ad` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Galois/Variant64ab39f4f7ee3abaf563c23dbbbb385480a9b6e7223dfc9242d4449d9fac589d.lean/declarations/instance--5251584aa1d85db1a6ae8ee6.md) | 467 | `declaration-track:5251584aa1d85db1a6ae8ee6fafe79f73c32f2dcd4a6d44ebd40e1f498a465ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
