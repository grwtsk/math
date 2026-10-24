# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.MulCharacter.Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44c24736cb73bfb179e93247f6f130dd15bf26ff",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44c24736cb73bfb179e93247f6f130dd15bf26ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.EuclideanDomain.Instances` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/mulchar--15a4d38d847a2ec47e3d9e61.md) | 78 | `declaration-track:15a4d38d847a2ec47e3d9e61fde4ad65e03659e2bc9cabb94be0511fb5425048` |
| 2 | `instance` | [funLike](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/funlike--0d7f3de53f07e84e35ef3510.md) | 82 | `declaration-track:0d7f3de53f07e84e35ef35108a95d126a6de79ffe1707ed499ceda34e9a7261a` |
| 3 | `class` | [MulCharClass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/mulcharclass--4c2e0aec0e2375498dd2bb46.md) | 87 | `declaration-track:4c2e0aec0e2375498dd2bb463995c231465a6fe5de7d7fa91166ce96d432679b` |
| 4 | `def` | [trivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/trivial--324d6844d00e77765ec173d2.md) | 115 | `declaration-track:324d6844d00e77765ec173d2410465c270752ebf325f6d9c7dac33e7fafb7e59` |
| 5 | `theorem` | [coe_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/coe-mk--7ffb85c6fbb61161fde9fa6e.md) | 131 | `result-track:7ffb85c6fbb61161fde9fa6e7edec645a0fa59144bd51561f7af70f4e5ff1bae` |
| 6 | `theorem` | [ext'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/ext--47d783495eb68e6c9377a5c2.md) | 136 | `result-track:47d783495eb68e6c9377a5c213a1fdb833025dce758eb36417c165896139bd73` |
| 7 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/instance--fe7593f20c698ffedb186096.md) | 143 | `declaration-track:fe7593f20c698ffedb18609646a84e5cb83c3cb1c5507807caff421d9daa06b6` |
| 8 | `theorem` | [map_nonunit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/map-nonunit--bbaf73eb35a268af7b05b644.md) | 150 | `result-track:bbaf73eb35a268af7b05b6446e97c0c3c24c5487f5d5b0d7ddc4472c90aa43cf` |
| 9 | `theorem` | [ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/ext--098b49859f286f7bd273251a.md) | 157 | `result-track:098b49859f286f7bd273251a9fc0de730fa6770b536cf6e73949f734e64b9bd2` |
| 10 | `theorem` | [ext_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/ext-iff--0388ae65b1499a0ac2d1c960.md) | 165 | `result-track:0388ae65b1499a0ac2d1c9605ff492dc7d76b326ad53ba186b533e1bcfdfd653` |
| 11 | `def` | [toUnitHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/tounithom--ea3be29e9906f3d34e88d903.md) | 180 | `declaration-track:ea3be29e9906f3d34e88d9031db2858b2e3b0b63d4dd5cab8a658f96c3164e25` |
| 12 | `theorem` | [coe_toUnitHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/coe-tounithom--23567166b77a767605e650f9.md) | 184 | `result-track:23567166b77a767605e650f95d4c6f6bddd40d569f75b538c11203fd8f778c17` |
| 13 | `def` | [ofUnitHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/ofunithom--00b6d2b31c6369ae8f04b68c.md) | 189 | `declaration-track:00b6d2b31c6369ae8f04b68ca5743daf41474620b5907e331d800d3e31b59b5b` |
| 14 | `theorem` | [ofUnitHom_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/ofunithom-coe--556aa650c7e3b71e0777bd53.md) | 211 | `result-track:556aa650c7e3b71e0777bd531f2f9b9fc3e86c866bc647eda3bb1785d1e68c77` |
| 15 | `def` | [equivToUnitHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/equivtounithom--2b482e572f5a0ae3f3e0c88b.md) | 215 | `declaration-track:2b482e572f5a0ae3f3e0c88b52353f3741a96bb488c46a5e820f9f0b775319fd` |
| 16 | `theorem` | [toUnitHom_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/tounithom-eq--7a52064206c51a83cc39237d.md) | 229 | `result-track:7a52064206c51a83cc39237dfd2e64c8a72fb3652bfae389c63844b07c46888a` |
| 17 | `theorem` | [ofUnitHom_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/ofunithom-eq--72dad8d411167dd31f0f02d6.md) | 234 | `result-track:72dad8d411167dd31f0f02d6235e9b19e5f5615a5b4fdf39799a201a6b11840c` |
| 18 | `theorem` | [coe_equivToUnitHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/coe-equivtounithom--3c75f01f8c3863532ed88d98.md) | 239 | `result-track:3c75f01f8c3863532ed88d986856a85eae3161065fb3c759b3a189a29e3cb7af` |
| 19 | `theorem` | [equivToUnitHom_symm_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/equivtounithom-symm-coe--2ddfee55d6bc4d26eff245dd.md) | 244 | `result-track:2ddfee55d6bc4d26eff245dd56f25caeb986771fa4f6b0ff2791e41acf153137` |
| 20 | `theorem` | [map_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/map-one--bacbae1b61a383ad5d93ef83.md) | 255 | `result-track:bacbae1b61a383ad5d93ef83f5da4bd3f29a3978d7b3d533df160f67b1f1a257` |
| 21 | `theorem` | [map_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/map-zero--1fdc69f0bb87382397ece91f.md) | 260 | `result-track:1fdc69f0bb87382397ece91f33703ad384340aa11b91bf9715d213c039df5a7c` |
| 22 | `theorem` | [map_ringChar](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/map-ringchar--cdd460dc218c253cfd6441a7.md) | 265 | `result-track:cdd460dc218c253cfd6441a767247ade93fc419b5119e99c61a66ef7a872fd0c` |
| 23 | `instance` | [hasOne](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/hasone--3bcf51ee3d93611399520676.md) | 269 | `declaration-track:3bcf51ee3d93611399520676b1c5d62f4d3020cd227e9cdb42e08c1e880b0536` |
| 24 | `instance` | [inhabited](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/inhabited--cf9788f158dd9d8b90b4cc02.md) | 273 | `declaration-track:cf9788f158dd9d8b90b4cc020e52195353ad73ec7bbb236b843d33b72e95ca66` |
| 25 | `theorem` | [one_apply_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/one-apply-coe--465bd6625ad5029eab4325ed.md) | 279 | `result-track:465bd6625ad5029eab4325ed04cbe67175aaeefb16cc9f2038424ecf5b67b3be` |
| 26 | `def` | [mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/mul--ed04c87f02262ceb6ab00d9b.md) | 283 | `declaration-track:ed04c87f02262ceb6ab00d9b08d809394e195da9776f46448e324aaebea93204` |
| 27 | `instance` | [hasMul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/hasmul--910db33a0815f394fd66db5c.md) | 289 | `declaration-track:910db33a0815f394fd66db5c3db456a7aeb63010c31f949a2723b0db23cfe3fa` |
| 28 | `theorem` | [mul_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/mul-apply--7cb5d38d2e8a2be9c616c52d.md) | 293 | `result-track:7cb5d38d2e8a2be9c616c52dafeed4d0f217d97190a46ca557144f5f640cd7de` |
| 29 | `theorem` | [coeToFun_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/coetofun-mul--aeb13826f4e381f75c811a22.md) | 298 | `result-track:aeb13826f4e381f75c811a22454f14ae212084cfb964bb285af34271c2f9c443` |
| 30 | `theorem` | [one_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/one-mul--2374aee6fc65fd29702f594a.md) | 302 | `result-track:2374aee6fc65fd29702f594a357cd1438b5df1ae8bfa94da842d1332f85e23b2` |
| 31 | `theorem` | [mul_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/mul-one--1ddb440b9fc7c23302579624.md) | 307 | `result-track:1ddb440b9fc7c2330257962499970c77932a293b309659a003501d29f299ca69` |
| 32 | `def` | [inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/inv--b20e0522bf0d4a94a18f9aeb.md) | 313 | `declaration-track:b20e0522bf0d4a94a18f9aeb529e30243e8251551697629d5d852ee70dfec13d` |
| 33 | `instance` | [hasInv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/hasinv--293fed20bbc66fba33016ef9.md) | 319 | `declaration-track:293fed20bbc66fba33016ef9b4401d0d40650e1000a99f2a7ea1115245fb6d75` |
| 34 | `theorem` | [inv_apply_eq_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/inv-apply-eq-inv--790fac4b6c205562054ccf0d.md) | 324 | `result-track:790fac4b6c205562054ccf0dd468213b9a147f786f8bfb3ee465824fc657cda6` |
| 35 | `theorem` | [inv_apply_eq_inv'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/inv-apply-eq-inv--777b31ca6621d3ff90fda999.md) | 330 | `result-track:777b31ca6621d3ff90fda999a1862f519a9da12323e2247c3dac26d1194d48f0` |
| 36 | `theorem` | [inv_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/inv-apply--e231f9744e58a1cca00714bf.md) | 336 | `result-track:e231f9744e58a1cca00714bfb7ac66cb24612e685a8e582d74a0ad1195469a90` |
| 37 | `theorem` | [inv_apply'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/inv-apply--7f3378d6de285b40c7faf649.md) | 356 | `result-track:7f3378d6de285b40c7faf6496b36c1b9836e61a723ef54c97fd6b575be4573cb` |
| 38 | `theorem` | [inv_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/inv-mul--4a07baac08bd8a651285ce22.md) | 362 | `result-track:4a07baac08bd8a651285ce226c5fbf7bc63f1b4b369d21d298528621d8e38b36` |
| 39 | `instance` | [commGroup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/commgroup--fb9089e3829e135bbe062247.md) | 372 | `declaration-track:fb9089e3829e135bbe062247fedc303120d2645c0558856641d85b2d8a11744d` |
| 40 | `theorem` | [pow_apply_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/pow-apply-coe--2ecef02c17845cfed018b05b.md) | 390 | `result-track:2ecef02c17845cfed018b05b3f4259e54b740d7ee633cd44c5ca251ad661731e` |
| 41 | `theorem` | [pow_apply'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/pow-apply--8ae499b6f4f082d6f40645b3.md) | 397 | `result-track:8ae499b6f4f082d6f40645b3a355e02440985548fd90b34d9244ae1500e2f504` |
| 42 | `def` | [IsNontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isnontrivial--0c883e83c1ac48b3a23c1a23.md) | 428 | `declaration-track:0c883e83c1ac48b3a23c1a238bf50725c7c8288f981451af74bdb53ecf3e7577` |
| 43 | `theorem` | [isNontrivial_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isnontrivial-iff--d6a273cf9f16b6cbb8070b50.md) | 433 | `result-track:d6a273cf9f16b6cbb8070b5019575b93ca80cf4057733679862474e114ce6549` |
| 44 | `def` | [IsQuadratic](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic--08ffaa19d28b69eac06ce6a0.md) | 438 | `declaration-track:08ffaa19d28b69eac06ce6a0920ad80a181b5d33a14ec1d1ca7961a389ad12d0` |
| 45 | `theorem` | [IsQuadratic.eq_of_eq_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic-eq-of-eq-coe--196b1b3922e6a7af11b583d6.md) | 444 | `result-track:196b1b3922e6a7af11b583d6c914112e54b2e305a995d05e32c34ceaa350a1c7` |
| 46 | `def` | [ringHomComp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/ringhomcomp--fc8e2904b20016d9d99b0d7f.md) | 452 | `declaration-track:fc8e2904b20016d9d99b0d7f530441b7664bcb054395cdbf8b7ef8316c174253` |
| 47 | `theorem` | [IsNontrivial.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isnontrivial-comp--a28271a8a8854e4065761369.md) | 459 | `result-track:a28271a8a8854e40657613692934183c98ddc27e299dcee2b0ba1c8a75607e67` |
| 48 | `theorem` | [IsQuadratic.comp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic-comp--e102fdb68c0b5e98e5115a26.md) | 468 | `result-track:e102fdb68c0b5e98e5115a26c0874ecd0d20690d1995d358d6ad6857f7113502` |
| 49 | `theorem` | [IsQuadratic.inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic-inv--86fc2dee0f47243437ed0d9a.md) | 475 | `result-track:86fc2dee0f47243437ed0d9af0bf227bc84a229f34d7f385eb49bd7e6bdce8c3` |
| 50 | `theorem` | [IsQuadratic.sq_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic-sq-eq-one--bb77514eea058d40c8446e26.md) | 488 | `result-track:bb77514eea058d40c8446e26409d43a864b81bef745b455c8bda0a239224fb96` |
| 51 | `theorem` | [IsQuadratic.pow_char](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic-pow-char--2074595d2f3b2c2c8d60661d.md) | 494 | `result-track:2074595d2f3b2c2c8d60661d7b8ad332eb8da36eb09af35da68d5f1e4eff40e9` |
| 52 | `theorem` | [IsQuadratic.pow_even](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic-pow-even--d4acb21bcb56297061ba92c1.md) | 505 | `result-track:d4acb21bcb56297061ba92c1d0321e5d40e5f3c4b0ecd6bfb2af8463fe0c2c76` |
| 53 | `theorem` | [IsQuadratic.pow_odd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isquadratic-pow-odd--f9ba4eb231377f1bcf36d4c9.md) | 512 | `result-track:f9ba4eb231377f1bcf36d4c9a4f9050b3bd8c76dcd3758f52ea4fa3a51ede46c` |
| 54 | `theorem` | [IsNontrivial.sum_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/isnontrivial-sum-eq-zero--96971d3af5b4fab1c798863c.md) | 522 | `result-track:96971d3af5b4fab1c798863c3651707277fc52f4b3014cf2ceb3b83ab3a38451` |
| 55 | `theorem` | [sum_one_eq_card_units](../../../../mathematics/CombinatoricsAndDiscreteMathematics/MulCharacter/Variantdcdf034fb0be4d4dfe3bf6f272b9e1c3c2bfe7a8130f9d837dc3ea55b4e26481.lean/declarations/sum-one-eq-card-units--848bed227c634650c22cd7ba.md) | 533 | `result-track:848bed227c634650c22cd7ba3a0a59ffcaae0d7107fab40ba40ad3a2f591e1aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
