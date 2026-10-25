# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Spectrum.Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `948c9394049b2ae9d67e1fcdf2a25c878ff6c4cf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/resolventset--396ef6f7fb36aab0eb345544.md) | 60 | `declaration-track:396ef6f7fb36aab0eb3455447e73e6e7c4d9cfeb9cee15840392100efa183c60` |
| 2 | `def` | [spectrum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/spectrum--7d9384472e86365863051429.md) | 69 | `declaration-track:7d9384472e863658630514293b125540b869ea0ed4185f242bb937d7c850201c` |
| 3 | `def` | [resolvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/resolvent--6734b240d9cbf7195919ece0.md) | 78 | `declaration-track:6734b240d9cbf7195919ece05cf57d4af613eb41c0f32d25ebbf74bf786ab8c7` |
| 4 | `def` | [IsUnit.subInvSMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/isunit-subinvsmul--6c9bbecf23eb40b708ac595b.md) | 84 | `declaration-track:6c9bbecf23eb40b708ac595b19e8f4214834f846b23ac9a9ec45e03d97e6f954` |
| 5 | `theorem` | [mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/mem-iff--dd4683043aa347a4e51ba580.md) | 107 | `result-track:dd4683043aa347a4e51ba580b53633a7d77f681cce7c9f0a444cf357404b3be4` |
| 6 | `theorem` | [not_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/not-mem-iff--b3fb1d43966302ee52b2942f.md) | 111 | `result-track:b3fb1d43966302ee52b2942f890ede32e1bcd182d68b7c2bd27e112d2c27d4d2` |
| 7 | `theorem` | [zero_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/zero-mem-iff--e685bf07700ed802f810cc3d.md) | 118 | `result-track:e685bf07700ed802f810cc3dd5ab505ae773d302ea89dd7105f5de992037a873` |
| 8 | `theorem` | [zero_not_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/zero-not-mem-iff--13ae0006b8ec3eac86d2b41e.md) | 122 | `result-track:13ae0006b8ec3eac86d2b41eff66b6c454ca872eb60aed95d297bb38ba633f3c` |
| 9 | `theorem` | [mem_resolventSet_of_left_right_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/mem-resolventset-of-left-right-inverse--7167a36d03d1fc831b1412da.md) | 128 | `result-track:7167a36d03d1fc831b1412daa054905be05ba88f0847bce52d6709b95da52586` |
| 10 | `theorem` | [mem_resolventSet_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/mem-resolventset-iff--1673ff01b1827f5cc07d8ee3.md) | 133 | `result-track:1673ff01b1827f5cc07d8ee30c60294fa372cfbf1c683530bcc72583a2d1151a` |
| 11 | `theorem` | [resolventSet_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/resolventset-of-subsingleton--8aefcd8945079a03db015df8.md) | 138 | `result-track:8aefcd8945079a03db015df8f8cac8f340d77871211f4c1ed0ee1b626150f4d6` |
| 12 | `theorem` | [of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/of-subsingleton--2439b148d74014eac7fb8edf.md) | 143 | `result-track:2439b148d74014eac7fb8edf5b1eff9b834934591bd70853f8bcc3d342e282b5` |
| 13 | `theorem` | [resolvent_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/resolvent-eq--f1c6d0c5b3af7bfa2c91f7cc.md) | 147 | `result-track:f1c6d0c5b3af7bfa2c91f7cc308d327c2fb4de410473fb73fc3183674ceeac3a` |
| 14 | `theorem` | [units_smul_resolvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/units-smul-resolvent--9dba49b658f5bf5728627a62.md) | 151 | `result-track:9dba49b658f5bf5728627a6255979436f34e8110e9cc5d7e2ffddbab0ad40422` |
| 15 | `theorem` | [units_smul_resolvent_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/units-smul-resolvent-self--96f54f2bc968188b2bdb51ac.md) | 168 | `result-track:96f54f2bc968188b2bdb51ace3392180819d4f34b70915b59dd3c477d3250327` |
| 16 | `theorem` | [isUnit_resolvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/isunit-resolvent--6f8ea7c643cec0aa2581a730.md) | 175 | `result-track:6f8ea7c643cec0aa2581a730b4014de5bcb7945d783ed5255c82c2aa0d944010` |
| 17 | `theorem` | [inv_mem_resolventSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/inv-mem-resolventset--2ae6951fb255b7e966d3912f.md) | 179 | `result-track:2ae6951fb255b7e966d3912f17ecc0f7cc43e018dc075e1dc2a26f5c5d26cf74` |
| 18 | `theorem` | [inv_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/inv-mem-iff--a9509f888125ad0fb27eba93.md) | 191 | `result-track:a9509f888125ad0fb27eba939ab2ea9c44e0c36e6431fbc706978f1c6f8ec327` |
| 19 | `theorem` | [zero_mem_resolventSet_of_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/zero-mem-resolventset-of-unit--9992db12aad0d3dbb52905da.md) | 195 | `result-track:9992db12aad0d3dbb52905da0cd336d8f2fc3d564fb0ebda90277e62e5109fc7` |
| 20 | `theorem` | [ne_zero_of_mem_of_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/ne-zero-of-mem-of-unit--2ef600a806a53cf82a18f171.md) | 199 | `result-track:2ef600a806a53cf82a18f171fbeebeec3fa8fcdabe99d2bc914731672ff98ebf` |
| 21 | `theorem` | [add_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/add-mem-iff--cfd80fda0f96f01c86064224.md) | 203 | `result-track:cfd80fda0f96f01c860642249b00124fe2c3d523781fbebd180689923153ab7b` |
| 22 | `theorem` | [add_mem_add_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/add-mem-add-iff--f548e172a88d4b384015f33f.md) | 207 | `result-track:f548e172a88d4b384015f33fcb221e1231e7c7d3f1ac51edb7f8db102a3f98d8` |
| 23 | `theorem` | [smul_mem_smul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/smul-mem-smul-iff--e8f0d5be7330ad26d7fcff52.md) | 211 | `result-track:e8f0d5be7330ad26d7fcff52ffb9cf211f0e07d60a077c83c160848280df1a62` |
| 24 | `theorem` | [unit_smul_eq_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/unit-smul-eq-smul--4d774c012aee414bf877d88e.md) | 216 | `result-track:4d774c012aee414bf877d88e095d504a2914093820df1759f1dc1ffc7e5c3d04` |
| 25 | `theorem` | [unit_mem_mul_iff_mem_swap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/unit-mem-mul-iff-mem-swap-mul--0705c61ff7b7fe4d4e35a76a.md) | 228 | `result-track:0705c61ff7b7fe4d4e35a76a334a7ce5c2528f87879d1538b61271cd20784fc1` |
| 26 | `theorem` | [preimage_units_mul_eq_swap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/preimage-units-mul-eq-swap-mul--405b39e844707ad82aecda29.md) | 247 | `result-track:405b39e844707ad82aecda29ac2f5690be704533baf38fb13283daa3d2d2b0fc` |
| 27 | `theorem` | [star_mem_resolventSet_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/star-mem-resolventset-iff--ca9677499fc602211115e445.md) | 256 | `result-track:ca9677499fc602211115e445ef3101fe68ea1af7c78ab51c43c8a5ed607eb958` |
| 28 | `theorem` | [map_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/map-star--3cc5ed5f4600fba4d01f9a05.md) | 263 | `result-track:3cc5ed5f4600fba4d01f9a0514f557f9b7cc431f087373ddc98abea78e54049b` |
| 29 | `theorem` | [subset_subalgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/subset-subalgebra--1b7b21c795bf14841923c78f.md) | 283 | `result-track:1b7b21c795bf14841923c78f2a6e1030f8ce07dfb5ea937a9d00fb67f912ab87` |
| 30 | `theorem` | [subset_starSubalgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/subset-starsubalgebra--c2fcde2c737951be36ace0be.md) | 288 | `result-track:c2fcde2c737951be36ace0be157526c4c479a4c2ea52b0c732a17adb89297ae9` |
| 31 | `theorem` | [singleton_add_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/singleton-add-eq--1264df9b11e2d2954342c567.md) | 293 | `result-track:1264df9b11e2d2954342c567d81ee88a97729303b81bfd67d59074923ddbee47` |
| 32 | `theorem` | [add_singleton_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/add-singleton-eq--e0a4fc7ca397a65803b9ff8d.md) | 300 | `result-track:e0a4fc7ca397a65803b9ff8d1e9aad0f08aae47285ca91ccbeae5ba64344ecc5` |
| 33 | `theorem` | [vadd_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/vadd-eq--49e062e1d9ff6948d14f4ea6.md) | 304 | `result-track:49e062e1d9ff6948d14f4ea6ccd2be24d7602e9075253ffd0a602076c3902ea5` |
| 34 | `theorem` | [neg_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/neg-eq--82f0a18a515b32a43f2c2abc.md) | 308 | `result-track:82f0a18a515b32a43f2c2abc051a245b49b26d383b2f86c2249e5204e73293ae` |
| 35 | `theorem` | [singleton_sub_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/singleton-sub-eq--25b965351627567f0070923a.md) | 313 | `result-track:25b965351627567f0070923ae80b3d03db6b4f96425e6cbf082b759da5fd2047` |
| 36 | `theorem` | [sub_singleton_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/sub-singleton-eq--13af652d6e344d69a424785c.md) | 317 | `result-track:13af652d6e344d69a424785cd0811ca9c38910a4320d7bb9fae1e434ec4bff63` |
| 37 | `theorem` | [zero_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/zero-eq--6697f8094699b992fa4f2dc2.md) | 335 | `result-track:6697f8094699b992fa4f2dc21b814f741eb1c6fe6877175869c3995da026d6ab` |
| 38 | `theorem` | [scalar_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/scalar-eq--1bcffcae8de1a6b2fcee2505.md) | 345 | `result-track:1bcffcae8de1a6b2fcee250522e8408165014436ef269be5499630934cb6c853` |
| 39 | `theorem` | [one_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/one-eq--c93cd3f8731379b71decd510.md) | 350 | `result-track:c93cd3f8731379b71decd510a6dff4fe45f7b4497e4a5523de6779df1c39b314` |
| 40 | `theorem` | [smul_eq_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/smul-eq-smul--19e08fa2a5dcb03649eb7c45.md) | 359 | `result-track:19e08fa2a5dcb03649eb7c45809dd3cc9b6e7f8471e5a1142ddc73277cf06aef` |
| 41 | `theorem` | [nonzero_mul_eq_swap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/nonzero-mul-eq-swap-mul--c55c5007e4a35e531d2c1141.md) | 366 | `result-track:c55c5007e4a35e531d2c11418ca848d402f065f44a83a473600854bcb74dfdd4` |
| 42 | `theorem` | [map_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/map-inv--23a19d50803ed07f6fb0144a.md) | 374 | `result-track:23a19d50803ed07f6fb0144a3b77e8b21fc13022846e8ee36c6593342d3d7b2a` |
| 43 | `theorem` | [mem_resolventSet_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/mem-resolventset-apply--3f04db350230b9947cf88128.md) | 401 | `result-track:3f04db350230b9947cf88128f6adb10a1b33df2bea9e4c1868dfe82d7599de0b` |
| 44 | `theorem` | [spectrum_apply_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/spectrum-apply-subset--c7961b3679f6ce8c34409707.md) | 406 | `result-track:c7961b3679f6ce8c344097071ab87c76bc247803f60f6a124acd599e5e8fcfc8` |
| 45 | `theorem` | [apply_mem_spectrum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/apply-mem-spectrum--43311e27549e880973d6534d.md) | 422 | `result-track:43311e27549e880973d6534dbbb78f8a3bb97bcb0f2d933e89a3bb557b017afc` |
| 46 | `theorem` | [AlgEquiv.spectrum_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant6667975c2b057498ba8b1da9e8724bb511ad1a15c0cfd8eb8bf349d80abca8dc.lean/declarations/algequiv-spectrum-eq--6c9c6953cb9cfc8b34fba704.md) | 435 | `result-track:6c9c6953cb9cfc8b34fba7048c32a59ebe4f09ca70d472de83c52665692b898f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
