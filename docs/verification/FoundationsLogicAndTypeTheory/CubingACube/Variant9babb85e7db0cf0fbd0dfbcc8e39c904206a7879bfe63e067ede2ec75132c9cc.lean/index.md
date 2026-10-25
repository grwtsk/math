# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.CubingACube.Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03113afd3a5aa9db01a9ed0588461d97d06d9e47",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03113afd3a5aa9db01a9ed0588461d97d06d9e47`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Intervals.Disjoint` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ico_lemma](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/ico-lemma--670887febb016747230fda0e.md) | 36 | `result-track:670887febb016747230fda0e710c7a76adb416c1b105afd4519c19efd614b0f3` |
| 2 | `structure` | [Cube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/cube--8295196ccbae90515972959a.md) | 49 | `declaration-track:8295196ccbae90515972959a375b49b3478425c6501f5da1654b062b30acbf67` |
| 3 | `theorem` | [hw'](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/hw--f83741cc87ba5ade7723c0f6.md) | 57 | `result-track:f83741cc87ba5ade7723c0f699ae231b600e8f7d34ec70eda8924c806907bd7a` |
| 4 | `def` | [side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/side--e9f45608548ed2cd1f934cd1.md) | 62 | `declaration-track:e9f45608548ed2cd1f934cd1f583f2889fb46d64263b54395d3dca300a0ff085` |
| 5 | `theorem` | [b_mem_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/b-mem-side--9f250a77857b4f92a8440ba3.md) | 67 | `result-track:9f250a77857b4f92a8440ba368b2ea8de12c718644883d421ab66cc15cbf14ac` |
| 6 | `def` | [toSet](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/toset--da785dcd1bfd3937bb15479e.md) | 70 | `declaration-track:da785dcd1bfd3937bb15479e8dad69ce01199244de8f8e73180ffb28a98936ce` |
| 7 | `theorem` | [side_nonempty](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/side-nonempty--34f30be76f8547193e097dcd.md) | 74 | `result-track:34f30be76f8547193e097dcd482f7773619c1d1b3d8a3614f3c932f560aa995d` |
| 8 | `theorem` | [univ_pi_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/univ-pi-side--59e2827113c0c2998772ff65.md) | 77 | `result-track:59e2827113c0c2998772ff6520656c9706a896ab0d17d6939b77ebc2de5cd66b` |
| 9 | `theorem` | [toSet_subset](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/toset-subset--b6dc1106f32fb3a7a4671515.md) | 81 | `result-track:b6dc1106f32fb3a7a4671515d44c5e6b9c145c6436f5cce2310fa4c011bcfd50` |
| 10 | `theorem` | [toSet_disjoint](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/toset-disjoint--b5896207cc96adb78ebddeda.md) | 86 | `result-track:b5896207cc96adb78ebddedaa41410c4fff50dbb4b1a6c8d339dd59fdabffd50` |
| 11 | `theorem` | [b_mem_toSet](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/b-mem-toset--88fa3e77902ac00882c9b63b.md) | 91 | `result-track:88fa3e77902ac00882c9b63b9b5786ac74945da353462c9ad37465cc57a5fcc5` |
| 12 | `def` | [tail](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/tail--9b6b5dfdf4f2ed0605aa85ac.md) | 94 | `declaration-track:9b6b5dfdf4f2ed0605aa85ac396e7c33a2b100ecb304605fbefeddb035b80784` |
| 13 | `theorem` | [side_tail](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/side-tail--e3b6a0ca89290a4cd652677e.md) | 98 | `result-track:e3b6a0ca89290a4cd652677ea3a4bec3723fa7f979d629eb50e7309cd9bca966` |
| 14 | `def` | [bottom](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/bottom--2486ac7255b99e94f0bb53c4.md) | 102 | `declaration-track:2486ac7255b99e94f0bb53c49031cfb4cbbdc94cff57a59c2cd17e9d1c2b9a81` |
| 15 | `theorem` | [b_mem_bottom](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/b-mem-bottom--4c879447863981e9d7dbe94a.md) | 106 | `result-track:4c879447863981e9d7dbe94a310a94be705cbe72efcb1d96aff6fb4083cd6f53` |
| 16 | `def` | [xm](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/xm--4600edb54ac6b0fd47dc4b7a.md) | 110 | `declaration-track:4600edb54ac6b0fd47dc4b7ab375f791e19abe594ac20011d94b07cd291852e1` |
| 17 | `theorem` | [b_lt_xm](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/b-lt-xm--c896ff188a1b163179fff808.md) | 114 | `result-track:c896ff188a1b163179fff80837b782a35938b0b524786e646e5b5641cb341790` |
| 18 | `theorem` | [b_ne_xm](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/b-ne-xm--5c653467a14a5facd878db5c.md) | 117 | `result-track:5c653467a14a5facd878db5ce4b63cc105ed4711e5e855e6d1eb8ff8b904ca3f` |
| 19 | `def` | [shiftUp](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/shiftup--97e3b1cbb28f01aeb56ff357.md) | 121 | `declaration-track:97e3b1cbb28f01aeb56ff357c90e2caa8336b25d0c4ee4e0c4addccef0e422c9` |
| 20 | `theorem` | [tail_shiftUp](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/tail-shiftup--ddb8f94d5ab0502360370a77.md) | 126 | `result-track:ddb8f94d5ab0502360370a778c850bd1a17c029c7ef7addc561d47c620f31fe5` |
| 21 | `theorem` | [head_shiftUp](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/head-shiftup--643f1a54547c47f5a661f232.md) | 130 | `result-track:643f1a54547c47f5a661f232f32fc98eb43d725c1994c8990de02821e0ff9991` |
| 22 | `def` | [unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/unitcube--88cd1e97841952164b3e2398.md) | 134 | `declaration-track:88cd1e97841952164b3e239843783ca1280286e2c62bc3d185d5f75444293546` |
| 23 | `theorem` | [side_unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/side-unitcube--6575d7b3dd517a46e46d8c84.md) | 139 | `result-track:6575d7b3dd517a46e46d8c84a5bfb30cdcb6e7190808b61927f6556f9212bffd` |
| 24 | `structure` | [Correct](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/correct--0e15bd21fbf3ed82bab2bbc5.md) | 150 | `declaration-track:0e15bd21fbf3ed82bab2bbc54f66aa39e61aaf8959f80f32d4cfb4d0e02b0027` |
| 25 | `theorem` | [toSet_subset_unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/toset-subset-unitcube--b3cd8f6e6a89151aee8a099e.md) | 161 | `result-track:b3cd8f6e6a89151aee8a099e72c69eb58ab269c118a0ac1b4df081614cbbb914` |
| 26 | `theorem` | [side_subset](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/side-subset--c7fced40f99f0347674b2f2a.md) | 165 | `result-track:c7fced40f99f0347674b2f2acecce3882b54730087d22df488836f4f61f82b40` |
| 27 | `theorem` | [zero_le_of_mem_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/zero-le-of-mem-side--bbde44405c5485d7e75b0389.md) | 169 | `result-track:bbde44405c5485d7e75b0389ade1bdaab45994605f0584494766b23656b8cae2` |
| 28 | `theorem` | [zero_le_of_mem](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/zero-le-of-mem--7d1af7ba150faefb9c1ffd3c.md) | 173 | `result-track:7d1af7ba150faefb9c1ffd3cc99ad44e8da2c8b7198b39312778d2aca000579f` |
| 29 | `theorem` | [zero_le_b](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/zero-le-b--70ee2ff36c51644544184008.md) | 177 | `result-track:70ee2ff36c516445441840085d044ba550c5704dcbfad9111df638f130e658ae` |
| 30 | `theorem` | [b_add_w_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/b-add-w-le-one--b0823e0598dc722ea600be5b.md) | 181 | `result-track:b0823e0598dc722ea600be5b4ddf15a18eeefa22f853ae79c950c16e1b5628ae` |
| 31 | `theorem` | [nontrivial_fin](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/nontrivial-fin--9421a4c1864c14dc2e879ecf.md) | 188 | `result-track:9421a4c1864c14dc2e879ecfbc86643daa71883ea0b8849c4eb33dfe0d3c19fb` |
| 32 | `theorem` | [w_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/w-ne-one--533fe39ec9be01d8cf07a316.md) | 193 | `result-track:533fe39ec9be01d8cf07a316e64822c257727665c2aae548959bb4a5ba16a74a` |
| 33 | `theorem` | [shiftUp_bottom_subset_bottoms](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/shiftup-bottom-subset-bottoms--bbe3235331c1c30df5a82f77.md) | 209 | `result-track:bbe3235331c1c30df5a82f7799a19bc72e1d1066dc3c97f9696be964749f6d4e` |
| 34 | `def` | [Valley](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/valley--63bb2c18bb20ab4a7fe55918.md) | 240 | `declaration-track:63bb2c18bb20ab4a7fe55918cb6e1be07d3d0976add26fcb8a73e15352c8aeb9` |
| 35 | `theorem` | [valley_unitCube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/valley-unitcube--b987b1af935793e36ecf282c.md) | 250 | `result-track:b987b1af935793e36ecf282c0ea747fbee0c7fb5cf92fa418dbe2bc6b673e85c` |
| 36 | `def` | [bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/bcubes--f3abe427b0c62b7a36352e71.md) | 268 | `declaration-track:f3abe427b0c62b7a36352e71db4b738c588d77d552c3e7e93aa02fd9929bc966` |
| 37 | `def` | [OnBoundary](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/onboundary--93f2dcc6e1ef92456adcaa8f.md) | 273 | `declaration-track:93f2dcc6e1ef92456adcaa8f46427590ffa33e5772cf09b6193a4f1c295995aa` |
| 38 | `theorem` | [tail_sub](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/tail-sub--9c4f2a36679c3465dbfa37f5.md) | 277 | `result-track:9c4f2a36679c3465dbfa37f55b77168ac9d141171b86285fd725f1292f412b99` |
| 39 | `theorem` | [bottom_mem_side](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/bottom-mem-side--0541df05cbc99a8c8266d227.md) | 281 | `result-track:0541df05cbc99a8c8266d227920f6d56740bcadd9d3b62beeae83e52fec682b4` |
| 40 | `theorem` | [b_le_b](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/b-le-b--e7ae04c4a0c18f30f1f01307.md) | 285 | `result-track:e7ae04c4a0c18f30f1f01307b173fd9dd3c72aac35cc4e9e2819bea8b8a397e4` |
| 41 | `theorem` | [t_le_t](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/t-le-t--c355d049437181d9aab8e7e4.md) | 289 | `result-track:c355d049437181d9aab8e7e4e9ba75739cea555337df68dc1a365b4cf2b566ac` |
| 42 | `theorem` | [w_lt_w](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/w-lt-w--45116a3a74cbf0fc0fc2755b.md) | 296 | `result-track:45116a3a74cbf0fc0fc2755bd995cf35fbba11f94581f4da56afd1860a5f94ab` |
| 43 | `theorem` | [nontrivial_bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/nontrivial-bcubes--f9fdfba0337a99eb3d4090c6.md) | 304 | `result-track:f9fdfba0337a99eb3d4090c69ce63f16b0782b96c903b8658b8100d6defcab1b` |
| 44 | `theorem` | [nonempty_bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/nonempty-bcubes--19209b79b765c815c726a70c.md) | 330 | `result-track:19209b79b765c815c726a70cb650cb8e161fe1ab3a18c6122501f18f2db596ca` |
| 45 | `theorem` | [exists_mi](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/exists-mi--2386290381b1a8815504ba29.md) | 337 | `result-track:2386290381b1a8815504ba29d1210124bc62a6dd3edb3b371a3ca07e1b09c9df` |
| 46 | `def` | [mi](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/mi--c82bda3799b046041b3c5385.md) | 342 | `declaration-track:c82bda3799b046041b3c538570b5249b50e16a720d160dbad0d4e5aaac784500` |
| 47 | `theorem` | [mi_mem_bcubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/mi-mem-bcubes--8e53433133156a4725d2aa3e.md) | 348 | `result-track:8e53433133156a4725d2aa3ef2357367dc770cacbdec3c7e0710b819ecb2de86` |
| 48 | `theorem` | [mi_minimal](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/mi-minimal--a80886de07052346633d51ff.md) | 352 | `result-track:a80886de07052346633d51ffae6edce345bea77f93709ecc0f924c4cf68e82b9` |
| 49 | `theorem` | [mi_strict_minimal](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/mi-strict-minimal--8041b86d1d247927fc6bb4bd.md) | 356 | `result-track:8041b86d1d247927fc6bb4bd4ea378bb9217d4de2efcd688f29fe900b181c6d9` |
| 50 | `theorem` | [mi_xm_ne_one](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/mi-xm-ne-one--911f33688fd22dc00464e1d4.md) | 362 | `result-track:911f33688fd22dc00464e1d4290388e3b21bb0536b86f29a33efaceb1c405184` |
| 51 | `theorem` | [smallest_onBoundary](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/smallest-onboundary--89a23609eaabf0cd6c80636c.md) | 374 | `result-track:89a23609eaabf0cd6c80636c5a4416039b9d8d96d268eb8b32214d0d6d81e5f2` |
| 52 | `theorem` | [mi_not_onBoundary](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/mi-not-onboundary--89f9c5bc1083a0700a0bfd7c.md) | 413 | `result-track:89f9c5bc1083a0700a0bfd7c88f1d1333628f824140d6b5c28376a9ba4c86a1b` |
| 53 | `theorem` | [mi_not_onBoundary'](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/mi-not-onboundary--112e9c1d93fd1ccfd3b37859.md) | 470 | `result-track:112e9c1d93fd1ccfd3b37859c5ea0686edf7835e9ad544b2b0399c0fcebbd71f` |
| 54 | `theorem` | [valley_mi](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/valley-mi--d4e90b6a03fe41aad0357f77.md) | 484 | `result-track:d4e90b6a03fe41aad0357f779abc396a09229b4d2a41719ad6abacec9b6ffe7f` |
| 55 | `def` | [sequenceOfCubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/sequenceofcubes--7e4a9dee844d88f355cdb039.md) | 540 | `declaration-track:7e4a9dee844d88f355cdb039a8f444a06468c0ea0d354ec82bdefcc51baee72c` |
| 56 | `def` | [decreasingSequence](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/decreasingsequence--fdb722784065ff852e6c639c.md) | 549 | `declaration-track:fdb722784065ff852e6c639c60ae5295812af7caad9091509f935e0f4d2066e7` |
| 57 | `theorem` | [strictAnti_sequenceOfCubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/strictanti-sequenceofcubes--4f1e023cb5fa1676613b8032.md) | 553 | `result-track:4f1e023cb5fa1676613b80329ea7465e1354c77e1ff4c3aa3a8aaf3e11674378` |
| 58 | `theorem` | [injective_sequenceOfCubes](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/injective-sequenceofcubes--9c315ff23b1a4ea3a6925723.md) | 559 | `result-track:9c315ff23b1a4ea3a692572397ae4aa6745c8c16d65987fdb1a42299f4d13c06` |
| 59 | `theorem` | [not_correct](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/not-correct--b50c221a9ca178603a5195a9.md) | 565 | `result-track:b50c221a9ca178603a5195a9df67831566f5bb6188b3660314ce0a1b1cf69536` |
| 60 | `theorem` | [cannot_cube_a_cube](../../../../mathematics/FoundationsLogicAndTypeTheory/CubingACube/Variant9babb85e7db0cf0fbd0dfbcc8e39c904206a7879bfe63e067ede2ec75132c9cc.lean/declarations/cannot-cube-a-cube--9b0e64f0cee14918ca5f59eb.md) | 570 | `result-track:9b0e64f0cee14918ca5f59ebfafe00c4dc24ae7225d48e122ac86633a1028e1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
