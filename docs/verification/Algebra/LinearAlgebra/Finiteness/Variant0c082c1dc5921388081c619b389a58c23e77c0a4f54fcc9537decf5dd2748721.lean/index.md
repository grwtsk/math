# Verification target: GRWTSK.Algebra.LinearAlgebra.Finiteness.Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb35424c63bf81464502e4a9645bf70ab95dee8f",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb35424c63bf81464502e4a9645bf70ab95dee8f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.RestrictScalars` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Finiteness` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg--f99fb6cbc8bde7d76bdc6be5.md) | 54 | `declaration-track:f99fb6cbc8bde7d76bdc6be5736f6c90495cde7adb1496cd1872e95b3b000cfd` |
| 2 | `theorem` | [fg_def](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-def--cb21648cb90e7184dfa38420.md) | 58 | `result-track:cb21648cb90e7184dfa3842053e7d5b2bd80fb8d615d3d8297f6f7e520987b7d` |
| 3 | `theorem` | [fg_iff_addSubmonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-iff-addsubmonoid-fg--7d7bb0c1caab8b33e695627b.md) | 65 | `result-track:7d7bb0c1caab8b33e695627bb8e3678bd85fe5ef20cf1aef74ced505810930f8` |
| 4 | `theorem` | [fg_iff_add_subgroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-iff-add-subgroup-fg--86bc190e08cf5f5a97d2c6ae.md) | 70 | `result-track:86bc190e08cf5f5a97d2c6ae931431e8f71c4b24705a721020ba6cd221405958` |
| 5 | `theorem` | [fg_iff_exists_fin_generating_family](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-iff-exists-fin-generating-family--945c028933065eecdb5f97a8.md) | 76 | `result-track:945c028933065eecdb5f97a8985740c3435399554492715774e9d4236adceaa9` |
| 6 | `theorem` | [exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/exists-sub-one-mem-and-smul-eq-zero-of-fg-of-le-smul--4121fbd71887d8d5a3cf6a89.md) | 89 | `result-track:4121fbd71887d8d5a3cf6a8947b5e3ea60a65894578c1e66f65ac8407e752f9b` |
| 7 | `theorem` | [exists_mem_and_smul_eq_self_of_fg_of_le_smul](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/exists-mem-and-smul-eq-self-of-fg-of-le-smul--9a3670bbe2218cd120df21b4.md) | 144 | `result-track:9a3670bbe2218cd120df21b41acc69cf40c47febd0bc40acb74115f95057b3f5` |
| 8 | `theorem` | [fg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-bot--9041a1d0683748b4eae066a2.md) | 151 | `result-track:9041a1d0683748b4eae066a2f7d228e0970e1b39722819fc583342e00ee09943` |
| 9 | `theorem` | [_root_.GRWTSK.Algebra.LinearAlgebra.ModuleFinite.Variant32ee82f68a7c5d9a26f41554ec6ae1211325fb58cc8c0fdabf47e3943a442bea.Subalgebra.fg_bot_toSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/root-grwtsk-algebra-linearalgebra-modulefinite-variant32ee82f68a7c5d9a26--8c047b7f83ed3930141cd21d.md) | 155 | `result-track:8c047b7f83ed3930141cd21d1d55edecf56853f49e13d065a0967eab82f13419` |
| 10 | `theorem` | [fg_unit](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-unit--eb8fa3c351e2aafde311ccb3.md) | 160 | `result-track:eb8fa3c351e2aafde311ccb3837cca9dbb67001c62f47b80f7e26edd8d763a2c` |
| 11 | `theorem` | [fg_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-of-isunit--90b9ce1a10b83aedc608f4fe.md) | 174 | `result-track:90b9ce1a10b83aedc608f4feddb7e619db435d0cac07339993e0341985e73a3c` |
| 12 | `theorem` | [fg_span](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-span--0ff291180232c8d2a42c2bd5.md) | 179 | `result-track:0ff291180232c8d2a42c2bd52b18eaf38658e88e08f05fabea22e10d16caa037` |
| 13 | `theorem` | [fg_span_singleton](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-span-singleton--75e000a429c5233efd6d90c9.md) | 183 | `result-track:75e000a429c5233efd6d90c90154f5fc44e3dbcbe2a73f7c77dbbf4d8ccebf32` |
| 14 | `theorem` | [FG.sup](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-sup--33f1303831481d623a1aacb4.md) | 187 | `result-track:33f1303831481d623a1aacb4b5a4f04ee46ae25f09737a72b245d1e1aa320f27` |
| 15 | `theorem` | [fg_finset_sup](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-finset-sup--06180b3a77d5b006a70ded2e.md) | 193 | `result-track:06180b3a77d5b006a70ded2e16def2409ee1d949d8ae28df83caaa35d64190df` |
| 16 | `theorem` | [fg_biSup](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-bisup--4be86591c1698672588d7add.md) | 198 | `result-track:4be86591c1698672588d7add01e1987235589692893437d7e0e1bddfc06aa13c` |
| 17 | `theorem` | [fg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-isup--b6d4df2b2abfdb24c584950e.md) | 202 | `result-track:b6d4df2b2abfdb24c584950e40ffe6e8c31106683d465aa0221b15081c9016eb` |
| 18 | `theorem` | [FG.map](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-map--edc1c94016db3be96f5657d7.md) | 212 | `result-track:edc1c94016db3be96f5657d7540e4aa8bd9362a21a95195f4bb8deb1b289369e` |
| 19 | `theorem` | [fg_of_fg_map_injective](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-of-fg-map-injective--0ffa77eb4eb9b303c2c639e5.md) | 219 | `result-track:0ffa77eb4eb9b303c2c639e50aff9b1fe0e0ae6bc8443b354f44311616dd4d17` |
| 20 | `theorem` | [fg_of_fg_map](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-of-fg-map--ef8fe90c2b986af6bbbfa420.md) | 230 | `result-track:ef8fe90c2b986af6bbbfa42098acdaf7fdb110789798f88654c68ac7eda85dd3` |
| 21 | `theorem` | [fg_top](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-top--b48c2144ad740050063573b3.md) | 237 | `result-track:b48c2144ad740050063573b33bebcb7dade7c4bc24900048036a2eb3e0b1dfe8` |
| 22 | `theorem` | [fg_of_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-of-linearequiv--a2392b811623343b6cf929f8.md) | 242 | `result-track:a2392b811623343b6cf929f8dd2890cd05ae89409e3f1e1aa0afa8edb673c064` |
| 23 | `theorem` | [FG.prod](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-prod--1177cd178a4819b64fc43a0a.md) | 246 | `result-track:1177cd178a4819b64fc43a0a3cf0b19810f7a5d4cabae508eec56a9514d348f8` |
| 24 | `theorem` | [fg_pi](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-pi--3e5852ddead047831a443b0b.md) | 255 | `result-track:3e5852ddead047831a443b0ba3a08cae77957284bd86e8dc38f5bfffeb7bdbbb` |
| 25 | `theorem` | [fg_of_fg_map_of_fg_inf_ker](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-of-fg-map-of-fg-inf-ker--4988494ce7d90b3e4bd0b223.md) | 269 | `result-track:4988494ce7d90b3e4bd0b223c4e5e62d4aff747d20623b67bdf6dd9535587e0f` |
| 26 | `theorem` | [fg_induction](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-induction--7b1bdeea3d3c5d974a9712b7.md) | 343 | `result-track:7b1bdeea3d3c5d974a9712b7de48b28525db82c625d1643ca0697db0a36fb3f4` |
| 27 | `theorem` | [fg_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-ker-comp--bebb713f29db0c2a49ecfe2f.md) | 357 | `result-track:bebb713f29db0c2a49ecfe2f6b201d308f9f80683d9d070f87f1e788d5f7dbdc` |
| 28 | `theorem` | [fg_restrictScalars](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-restrictscalars--e649cd1abed83974054a17ed.md) | 368 | `result-track:e649cd1abed83974054a17edfb88acef6c5653a226f0fb9af78eeabd76af92bd` |
| 29 | `theorem` | [FG.stablizes_of_iSup_eq](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-stablizes-of-isup-eq--3c539cf52e19199d2d215882.md) | 377 | `result-track:3c539cf52e19199d2d215882c250a9f49bb0aacf8aace8d4f01523cb82d93e2d` |
| 30 | `theorem` | [fg_iff_compact](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-iff-compact--e83dc6e00828296d3876ed59.md) | 397 | `result-track:e83dc6e00828296d3876ed59be3f214a2ddc11820cc3aa216bc0e398f99a3de3` |
| 31 | `theorem` | [FG.map₂](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-map--b5b516ba9b40cd2fecf67724.md) | 439 | `result-track:b5b516ba9b40cd2fecf67724ee1aa9b22335c3447464c5ef641e18b5f0e1f404` |
| 32 | `theorem` | [FG.mul](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-mul--c04b65c93d585195bb3d02da.md) | 456 | `result-track:c04b65c93d585195bb3d02dae1238a57dc7d4b6fd2d8c78a6ac09d9e96f63ba3` |
| 33 | `theorem` | [FG.pow](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-pow--e60f2dabafafe008e80e012c.md) | 460 | `result-track:e60f2dabafafe008e80e012cd2f2a5ead46d618f7fc3c32d47e05244912a8204` |
| 34 | `def` | [FG](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg--94457be58b57f339842b7d6f.md) | 475 | `declaration-track:94457be58b57f339842b7d6fe854f08539450419bcf869ad7f522c5d9acd63ab` |
| 35 | `theorem` | [FG.map](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-map--75133d935c3db728111ee228.md) | 482 | `result-track:75133d935c3db728111ee2284b6a3d08f6e275984838d472b555d08db179e915` |
| 36 | `theorem` | [fg_ker_comp](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/fg-ker-comp--606a74228162f1cdc98a5fda.md) | 490 | `result-track:606a74228162f1cdc98a5fda854666596377f531d1280fe7592f0f2818424da0` |
| 37 | `theorem` | [exists_radical_pow_le_of_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/exists-radical-pow-le-of-fg--35c8a0562f997febf59c3e82.md) | 502 | `result-track:35c8a0562f997febf59c3e82fff8614ca1c0d39e75940e98482a15381fc63af9` |
| 38 | `class` | [Module.Finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/module-finite--324b106e2a7f3d9707b2e9e3.md) | 530 | `declaration-track:324b106e2a7f3d9707b2e9e3cd4f87dfb347b2d87c27f3c08cd45337a065db26` |
| 39 | `theorem` | [finite_def](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/finite-def--3309f77c631e23d1d9589fd6.md) | 540 | `result-track:3309f77c631e23d1d9589fd603ea5125155c62298646e09c151bc5122dfabef7` |
| 40 | `theorem` | [iff_addMonoid_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/iff-addmonoid-fg--7806536666c116ad7bb4b3bb.md) | 549 | `result-track:7806536666c116ad7bb4b3bb90138fe568f5e9f39afa438813c8cff7f0c66e73` |
| 41 | `theorem` | [iff_addGroup_fg](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/iff-addgroup-fg--161bee50b3fe1a528e5d9c7d.md) | 554 | `result-track:161bee50b3fe1a528e5d9c7dc56899a85fd0616260c0ecf03743c735f6b3e352` |
| 42 | `theorem` | [exists_fin](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/exists-fin--9b361568d599b3e3c59486b0.md) | 561 | `result-track:9b361568d599b3e3c59486b08f75e7c76fd8054a9f35b4ac16759154f2adbfb3` |
| 43 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/of-surjective--018895061855ee7f48c51c3c.md) | 565 | `result-track:018895061855ee7f48c51c3c40ae096fe57cdd4283d870d1dcd3495b86ecb93b` |
| 44 | `instance` | [range](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/range--523e521e89d1e756119da948.md) | 572 | `declaration-track:523e521e89d1e756119da948eacd59b588f8cf6b62014097bddf35aade88561f` |
| 45 | `instance` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/map--20792c1b76f590e68e922ad8.md) | 577 | `declaration-track:20792c1b76f590e68e922ad88b651de33a5bf4a4f60a2fff8d435e72c10debd9` |
| 46 | `instance` | [self](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/self--2f8e8b2820ec1052cab95a2a.md) | 584 | `declaration-track:2f8e8b2820ec1052cab95a2a92e739872165f9bc565b98c29ce3a46ac18705ce` |
| 47 | `theorem` | [of_restrictScalars_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/of-restrictscalars-finite--548363b9632e078c5968b8e5.md) | 590 | `result-track:548363b9632e078c5968b8e5770b786f30b9b81c631e85704ec3303e700dba26` |
| 48 | `instance` | [prod](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/prod--4b9c2dad37131ff48f97b81f.md) | 603 | `declaration-track:4b9c2dad37131ff48f97b81ff44a56ca1891fa5a20bc2cb18fbc27d504fa81cb` |
| 49 | `instance` | [pi](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/pi--550274e7fe515b37a418e995.md) | 609 | `declaration-track:550274e7fe515b37a418e995a6f5723a0d6ab18fd4fd818c85bd29f9bbc487a0` |
| 50 | `theorem` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/equiv--1c40dc8def14ac2fb0ad5de2.md) | 616 | `result-track:1c40dc8def14ac2fb0ad5de22d3dd5c9b47d7b36e5339023611dfc487147919f` |
| 51 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/trans--eb64282f9d21346ae7f9c2be.md) | 622 | `result-track:eb64282f9d21346ae7f9c2be2c6ab04f5865329b710d07060e90eb5a58458925` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/instance--8c9504eaccb4ef0a2212619d.md) | 640 | `declaration-track:8c9504eaccb4ef0a2212619db8c9e23408729777168868fef5ada35e225b91c2` |
| 53 | `instance` | [Module.Finite.base_change](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/module-finite-base-change--b055a0ad4b336db410a4607c.md) | 645 | `declaration-track:b055a0ad4b336db410a4607cb4c84491526c21f5d680f80ecda8ee7ff5a8e764` |
| 54 | `instance` | [Module.Finite.tensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/module-finite-tensorproduct--95fc1ee9174b40abe5988fcf.md) | 663 | `declaration-track:95fc1ee9174b40abe5988fcfafe0afe236b7d26ca2e64b7e5531c6527a6cc126` |
| 55 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/finite--7b1841a4c2c59da18f9a05da.md) | 676 | `declaration-track:7b1841a4c2c59da18f9a05da9e5c4f06c056746e7032c768bb5db21f80c27f7e` |
| 56 | `theorem` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/id--1746d8efb253172e4273bb75.md) | 685 | `result-track:1746d8efb253172e4273bb759d40397b476555e9bf7db26f647c42119cbec115` |
| 57 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/of-surjective--4fd22118108b4975370016a9.md) | 691 | `result-track:4fd22118108b4975370016a95a31f399f980cb53c49ae1c685d465c9ae61bba1` |
| 58 | `theorem` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/comp--3eedbad3db78b3cbe184b7ed.md) | 696 | `result-track:3eedbad3db78b3cbe184b7edaf7b0a1af1ae57f3cb1e20330d798116998481e0` |
| 59 | `theorem` | [of_comp_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/of-comp-finite--802a5681ba6a156a0576ed63.md) | 706 | `result-track:802a5681ba6a156a0576ed6357ca6a999340a6efb328d08545c77e875cb65e9c` |
| 60 | `def` | [Finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/finite--52e5dc74abf425e3fad4dc7c.md) | 729 | `declaration-track:52e5dc74abf425e3fad4dc7cc3fa536436ead062aa5391810949f5b1558b2334` |
| 61 | `theorem` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/id--cf8728bce33b854e47ee54d5.md) | 737 | `result-track:cf8728bce33b854e47ee54d5034e571d5baff0413d3ddc63b293ffe1fe17c5ce` |
| 62 | `theorem` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/comp--4d289293e1171ac942b90819.md) | 743 | `result-track:4d289293e1171ac942b908190604df4adbedf2e3a7cfea912a56008b70a51507` |
| 63 | `theorem` | [of_surjective](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/of-surjective--9585703b6cc6624b8903b3f3.md) | 747 | `result-track:9585703b6cc6624b8903b3f30fa6b5c54db15c3b94f108bc94efdfde4da672a3` |
| 64 | `theorem` | [of_comp_finite](../../../../../mathematics/Algebra/LinearAlgebra/Finiteness/Variant0c082c1dc5921388081c619b389a58c23e77c0a4f54fcc9537decf5dd2748721.lean/declarations/of-comp-finite--629fa8d513b2ddc900283ca2.md) | 751 | `result-track:629fa8d513b2ddc900283ca2e72796346dd1bc511ad1077f4f8867e4df035f93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
