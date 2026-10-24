# Verification target: GRWTSK.Algebra.GroupTheory.Centralizer.Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "123c19bd6d59d1980cce00e9af92bbc43633c077",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `123c19bd6d59d1980cce00e9af92bbc43633c077`.

Source path: `GRWTSK/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.BigOperators.GroupWithZero.Multiset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Ring.Finset` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.NoncommCoprod` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.ConjAct` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.PossibleTypes` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.DomMulAct` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Rank` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Subgroup.Centralizer.toConjAct_smul_mem_cycleFactorsFinset](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/subgroup-centralizer-toconjact-smul-mem-cyclefactorsfinset--07b7650946d23c83968fb798.md) | 120 | `result-track:07b7650946d23c83968fb79831f0ced9d0918fed67259012412cecb32c27f8bb` |
| 2 | `def` | [Subgroup.Centralizer.cycleFactorsFinset_mulAction](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/subgroup-centralizer-cyclefactorsfinset-mulaction--5954d56b8d4247a2d568ae70.md) | 135 | `declaration-track:5954d56b8d4247a2d568ae709a98da379513c06d8f0389087ff7107ab68b9709` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/instance--8616934da6fcf177c7e5f311.md) | 150 | `declaration-track:8616934da6fcf177c7e5f311b2dfb57611a6cbc738bf43d8d33b8e9d7b9a4583` |
| 4 | `def` | [toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/topermhom--1d106ee09a9a811c4d5b9b15.md) | 155 | `declaration-track:1d106ee09a9a811c4d5b9b15dcc6e58f04a1a1d8cbb62234357349b2059c0317` |
| 5 | `theorem` | [centralizer_smul_def](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/centralizer-smul-def--064355405b1390500afea5f3.md) | 157 | `result-track:064355405b1390500afea5f3227c4ea40f6e47680b27f70f4824ad0bf53fa0f5` |
| 6 | `theorem` | [val_centralizer_smul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/val-centralizer-smul--a6f533ec3773cc2d3ba3e431.md) | 163 | `result-track:a6f533ec3773cc2d3ba3e431693ce3a9b2cd137fc432ba2a0d14d4b5bc65cec8` |
| 7 | `theorem` | [toPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/topermhom-apply--8cf80aadf5c99fa823340f14.md) | 167 | `result-track:8cf80aadf5c99fa823340f14b279841d9cbfdae623bc0f2c64c1ae20959d5ada` |
| 8 | `theorem` | [coe_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/coe-topermhom--10457b984dbc3c5ac98039df.md) | 170 | `result-track:10457b984dbc3c5ac98039df25e258767a5ccff73cb4df52e9c9e6dd6c1944cf` |
| 9 | `def` | [range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/range-topermhom--4147b90609a0248ed6b7a39d.md) | 176 | `declaration-track:4147b90609a0248ed6b7a39d8444d79d31505d4abbaa7d2310d8ac66c570db74` |
| 10 | `theorem` | [mem_range_toPermHom'_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/mem-range-topermhom-iff--dec66cbb1aa190e8293529d0.md) | 193 | `result-track:dec66cbb1aa190e8293529d05e0eaaffec68ddc54b032c21cb80aa0799a092c4` |
| 11 | `theorem` | [mem_ker_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/mem-ker-topermhom-iff--e3c808e8fe8def301b7b8324.md) | 201 | `result-track:e3c808e8fe8def301b7b832408a0890466b46b4da61b015bb92923ba281ce8b9` |
| 12 | `structure` | [Basis](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/basis--d32e3a0717200d925efb76dc.md) | 212 | `declaration-track:d32e3a0717200d925efb76dc33c3f37f9523dec583036e3fdae4cf8cee913356` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/instance--17cf6eec3dda47138a708943.md) | 218 | `declaration-track:17cf6eec3dda47138a7089436a37a5d65e4b5114831e5271377b7d23558b47a4` |
| 14 | `theorem` | [nonempty](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/nonempty--316fdbe8360241b6cb6eab11.md) | 225 | `result-track:316fdbe8360241b6cb6eab1152a5b25d92918c9a8d81c6099751062748ffb92c` |
| 15 | `theorem` | [mem_support_self](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/mem-support-self--4a348d40476af18b3612f9ea.md) | 232 | `result-track:4a348d40476af18b3612f9eab26dc669f02803e15716b5957fae5bfc7c601e0a` |
| 16 | `theorem` | [injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/injective--60687336d16a3a009cfbd52f.md) | 235 | `result-track:60687336d16a3a009cfbd52f8ff560342208777600dbdd90e5681db29875e562` |
| 17 | `theorem` | [cycleOf_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/cycleof-eq--2baa7906190adfcbd41f99ec.md) | 244 | `result-track:2baa7906190adfcbd41f99ecbc1ef6faff81f04ee475c05794541a2ef514a33c` |
| 18 | `theorem` | [sameCycle](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/samecycle--52573d92277b7b287ab02f07.md) | 247 | `result-track:52573d92277b7b287ab02f0754858802e35ce791f888c02bcf5a2e6afa1db486` |
| 19 | `def` | [ofPermHomFun](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhomfun--e932b8a5bee50af6e33a3830.md) | 254 | `declaration-track:e932b8a5bee50af6e33a38301e1b96ff19ccf76e05387a18e92ea2b5adcf42bd` |
| 20 | `theorem` | [mem_fixedPoints_or_exists_zpow_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/mem-fixedpoints-or-exists-zpow-eq--cb79f4b9b1a31e4041cea02b.md) | 261 | `result-track:cb79f4b9b1a31e4041cea02b177f4d1c1629cff4969b72567418e6d2ffa68089` |
| 21 | `theorem` | [ofPermHomFun_apply_of_cycleOf_mem](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhomfun-apply-of-cycleof-mem--1eca47c998fcb4f79d8414e0.md) | 272 | `result-track:1eca47c998fcb4f79d8414e034d51f5f5ab76196b98ce3887c1ae744dc9c4941` |
| 22 | `theorem` | [ofPermHomFun_apply_of_mem_fixedPoints](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhomfun-apply-of-mem-fixedpoints--ad47cf313c338731634005e6.md) | 294 | `result-track:ad47cf313c338731634005e6114b012b88d529f1bdfdb18c2c65380e313b6438` |
| 23 | `theorem` | [ofPermHomFun_apply_mem_support_cycle_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhomfun-apply-mem-support-cycle-iff--ac1dfbcc99be04d75ac29943.md) | 300 | `result-track:ac1dfbcc99be04d75ac29943da377ec0443f22ad15a7192debbca453221d5aed` |
| 24 | `theorem` | [ofPermHomFun_commute_zpow_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhomfun-commute-zpow-apply--871b8cc7352c08cd381a53ef.md) | 326 | `result-track:871b8cc7352c08cd381a53ef170ecfdd9ad7177e744af31f05f2d04695cf191e` |
| 25 | `theorem` | [ofPermHomFun_mul](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhomfun-mul--7ea9f59b1fb1ebaa5d09cf74.md) | 339 | `result-track:7ea9f59b1fb1ebaa5d09cf74f142f2cc72de3e49780b636360d2060ddd5be570` |
| 26 | `theorem` | [ofPermHomFun_one](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhomfun-one--8127817819ec772058eaae2b.md) | 349 | `result-track:8127817819ec772058eaae2b003e05ba63be4d5c3b55e2d227b43cc08c87d8a6` |
| 27 | `def` | [ofPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhom--39c91cb0490f1c2b4bf80fec.md) | 357 | `declaration-track:39c91cb0490f1c2b4bf80fec1ae2fb9e9aa4c1d7c4851cc06efbf748e67127f6` |
| 28 | `theorem` | [ofPermHom_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhom-apply--ae882fa645ef3538abe6b2f9.md) | 366 | `result-track:ae882fa645ef3538abe6b2f97962242940edbb08b6a07f1e0af96f81198dbdcc` |
| 29 | `theorem` | [ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhom-support--b93d386d6e563bad181c3bca.md) | 368 | `result-track:b93d386d6e563bad181c3bca684cb22faa46d33b7bf452f47b4f5bef38558630` |
| 30 | `theorem` | [card_ofPermHom_support](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/card-ofpermhom-support--12aa325569e0a12d3511496b.md) | 392 | `result-track:12aa325569e0a12d3511496ba68ad45a291ff55fa7d7716dd388ad72d41f083c` |
| 31 | `theorem` | [ofPermHom_mem_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/ofpermhom-mem-centralizer--2db09e9fd042feef2801bf3e.md) | 399 | `result-track:2db09e9fd042feef2801bf3e7924d149616347a95c639be51f9b6c4ac8709521` |
| 32 | `def` | [toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/tocentralizer--ddb0a8d68b3f83cd1cf8a832.md) | 409 | `declaration-track:ddb0a8d68b3f83cd1cf8a832be7f224ca7428f2bf0bcd9f94f1f51468baac567` |
| 33 | `theorem` | [toCentralizer_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/tocentralizer-apply--d8d02e5f5bb2dad3377acb6f.md) | 415 | `result-track:d8d02e5f5bb2dad3377acb6f26b86d89f11bf05eaa1f0b9e46470ab41495caf8` |
| 34 | `theorem` | [toCentralizer_equivariant](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/tocentralizer-equivariant--ea7a284ea5cae44aea7322ae.md) | 417 | `result-track:ea7a284ea5cae44aea7322ae1f801379b1f409d975c9052acd2eb0cd16ea6b4e` |
| 35 | `theorem` | [toPermHom_apply_toCentralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/topermhom-apply-tocentralizer--77d5ffc5eb47d17694fedd82.md) | 433 | `result-track:77d5ffc5eb47d17694fedd8283028559e92ad65a58ccdddeaba649c6260d5a3c` |
| 36 | `theorem` | [mem_range_toPermHom_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/mem-range-topermhom-iff--55c6b51c8f0b5f3d457ac882.md) | 445 | `result-track:55c6b51c8f0b5f3d457ac882d8205c15edc1bddb052731ed2e6699db01f02ce9` |
| 37 | `theorem` | [mem_range_toPermHom_iff'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/mem-range-topermhom-iff--d640b049d27dfe5345baf099.md) | 455 | `result-track:d640b049d27dfe5345baf099cc3f44e081044e9209a78a80fc16dd990d12855d` |
| 38 | `theorem` | [range_toPermHom_eq_range_toPermHom'](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/range-topermhom-eq-range-topermhom--e74b825e106d9fc5011b40a5.md) | 462 | `result-track:e74b825e106d9fc5011b40a5341eabeda27e408c6083bce4656dc60f349a5a9f` |
| 39 | `theorem` | [nat_card_range_toPermHom](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/nat-card-range-topermhom--596bac421ae652d735367d93.md) | 467 | `result-track:596bac421ae652d735367d93992ce59cb4434dc5416834d8587a957a3f907d9d` |
| 40 | `def` | [kerParam](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/kerparam--83754b74fece2d01e264c04b.md) | 494 | `declaration-track:83754b74fece2d01e264c04be8830acd9c11e4a7a134e699cf12d215c8b89a85` |
| 41 | `theorem` | [kerParam_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/kerparam-apply--a022ca224f08333c4058f9ac.md) | 499 | `result-track:a022ca224f08333c4058f9acc3e0492f7786181bcb4869c022cbe659a3d0e712` |
| 42 | `theorem` | [kerParam_injective](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/kerparam-injective--88d1aa819453cd1152b3090e.md) | 528 | `result-track:88d1aa819453cd1152b3090e13467f32b20bcf25de5b2891ab414980c807ccd6` |
| 43 | `theorem` | [kerParam_range_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/kerparam-range-eq--81dad2c036dc707d8213dddd.md) | 548 | `result-track:81dad2c036dc707d8213dddd1a3bfc7813083dce7c083902e7f8dba5ddd15a01` |
| 44 | `theorem` | [kerParam_range_le_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/kerparam-range-le-centralizer--1620852ec26c42ae3ae46997.md) | 583 | `result-track:1620852ec26c42ae3ae4699706fadfd723394739798e83c6a854c851e50f233a` |
| 45 | `theorem` | [kerParam_range_card](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/kerparam-range-card--193e8eae7c41bbfaee058f4a.md) | 588 | `result-track:193e8eae7c41bbfaee058f4a33a1de3a7b54875b6d48e5c442bb3099db7a7720` |
| 46 | `theorem` | [sign_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/sign-kerparam-apply-apply--048cb5d9c79958a2c3f18ce2.md) | 607 | `result-track:048cb5d9c79958a2c3f18ce22b23a3844c4cc9309c99c9a290cd2ee397185e0c` |
| 47 | `theorem` | [cycleType_kerParam_apply_apply](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/cycletype-kerparam-apply-apply--1f8c974a889e76c360455957.md) | 615 | `result-track:1f8c974a889e76c360455957cac4cca496416aebe8d1a7830de78a67b8b87608` |
| 48 | `theorem` | [nat_card_centralizer](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/nat-card-centralizer--f0069e343a399bc57068afdc.md) | 640 | `result-track:f0069e343a399bc57068afdc0204b1391379f19761847c5284273bccbf052f8a` |
| 49 | `theorem` | [card_isConj_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/card-isconj-mul-eq--0719514b566a826832149306.md) | 647 | `result-track:0719514b566a82683214930671d4c2a9ace365f54da493ef6577e5291f1c1ff5` |
| 50 | `theorem` | [card_isConj_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/card-isconj-eq--a32ca537cc2c11934ac40e08.md) | 662 | `result-track:a32ca537cc2c11934ac40e08dfd267c928a1e784d588f7441550c7afdc2a1e11` |
| 51 | `theorem` | [card_of_cycleType_eq_zero_iff](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/card-of-cycletype-eq-zero-iff--940ac2caf9ab0c78fa6251ef.md) | 676 | `result-track:940ac2caf9ab0c78fa6251ef183c27f32c7c1c47b918a9e98d3201403e71e4ee` |
| 52 | `theorem` | [card_of_cycleType_mul_eq](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/card-of-cycletype-mul-eq--6f92151803453df0b25aa038.md) | 683 | `result-track:6f92151803453df0b25aa0386e723005945cf8025e924745d20e7f494ab771ec` |
| 53 | `theorem` | [card_of_cycleType](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/card-of-cycletype--9ca3e74a53d221aa1915236c.md) | 699 | `result-track:9ca3e74a53d221aa1915236c024c80f9d0e9d4657041a5c1abb8007cc2ec5172` |
| 54 | `lemma` | [card_of_cycleType_singleton](../../../../../mathematics/Algebra/GroupTheory/Centralizer/Variant78bb57ea1f510a9b68c27089b72cf84e8ab51465c9d4cc9123da202ed8657813.lean/declarations/card-of-cycletype-singleton--c19496d2c4b6a712bc2f79bf.md) | 718 | `result-track:c19496d2c4b6a712bc2f79bfd2b854e2925d10fba2d844e1581b64bbd73a81ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
