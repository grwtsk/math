# Verification target: GRWTSK.Algebra.CubingACube.Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e94c8362422377844d3c4c9a42d12fb477f608c2",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/index.md) · [Full source](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e94c8362422377844d3c4c9a42d12fb477f608c2`.

Source path: `GRWTSK/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Interval.Set.Group` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Disjoint` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Ico_lemma](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/ico-lemma--3280bfb892e117f430786d84.md) | 43 | `result-track:3280bfb892e117f430786d84435fdc13354008944baf5e87d2ee7bf38636e8d6` |
| 2 | `structure` | [Cube](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/cube--fb40184bb13e89b16250c800.md) | 55 | `declaration-track:fb40184bb13e89b16250c800a31c72599562078e81bc6efcae1b1726bcd36929` |
| 3 | `theorem` | [hw'](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/hw--9e1aca71d63e1eaa3ae33316.md) | 62 | `result-track:9e1aca71d63e1eaa3ae3331617276df8f929d6c7aa7b63e7b65eb5f6bf48bcab` |
| 4 | `def` | [side](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/side--cf4120147887ee72aaf6460e.md) | 66 | `declaration-track:cf4120147887ee72aaf6460e48786004492ab2a5de93ae3223782c0f8ae01f8d` |
| 5 | `theorem` | [b_mem_side](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/b-mem-side--3eeb0f9295fe36c9ca61e069.md) | 70 | `result-track:3eeb0f9295fe36c9ca61e06921390c64e36d8e7d7cb0bf469aa481d3d113383d` |
| 6 | `def` | [toSet](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/toset--402ca680bcdf4f3b75ec4f71.md) | 72 | `declaration-track:402ca680bcdf4f3b75ec4f711b29b7baf64258d112c3b13ad8bdde0bf5c80f8b` |
| 7 | `theorem` | [side_nonempty](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/side-nonempty--e8e8478f76a2d56fb8fc29b5.md) | 75 | `result-track:e8e8478f76a2d56fb8fc29b5d5d98fb1cbb6848fb5b3dc2b5b8f39fd88c0fa53` |
| 8 | `theorem` | [univ_pi_side](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/univ-pi-side--976bbf08ca66f8e9acd139ab.md) | 77 | `result-track:976bbf08ca66f8e9acd139ab95e73f209e8eb0bdd6bed002975e56d8678c98f1` |
| 9 | `theorem` | [toSet_subset](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/toset-subset--178f7ba51192396613550843.md) | 80 | `result-track:178f7ba511923966135508432c40310e81da1a9279978f795c9da493c7e95d0c` |
| 10 | `theorem` | [toSet_disjoint](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/toset-disjoint--01ad584bcb0a812232482fee.md) | 84 | `result-track:01ad584bcb0a812232482fee0eb60f8832cc365d0676413e8d33018f705632b3` |
| 11 | `theorem` | [b_mem_toSet](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/b-mem-toset--655d9cf751ca99fc28158d23.md) | 88 | `result-track:655d9cf751ca99fc28158d235a3fb312a78cffb465b4dbbc1e47d061392f5651` |
| 12 | `def` | [tail](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/tail--d038b61ec406acc355ed1a39.md) | 90 | `declaration-track:d038b61ec406acc355ed1a391ad69b80d371213172fd0c871c7827230b6794c9` |
| 13 | `theorem` | [side_tail](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/side-tail--a560a2fb1d099c770e6cc094.md) | 93 | `result-track:a560a2fb1d099c770e6cc0941ad6c8979ef7733d8dd62cbc9a2ae6d75e43eb8a` |
| 14 | `def` | [bottom](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/bottom--3dbe77fcb2a05b6658467be4.md) | 96 | `declaration-track:3dbe77fcb2a05b6658467be49eaa9321f1aa385834db5ee10bbccc1386ee31f2` |
| 15 | `theorem` | [b_mem_bottom](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/b-mem-bottom--0303ad996c84184a9f951a67.md) | 99 | `result-track:0303ad996c84184a9f951a67a765403fe9953e70900862d23def5a2f0c9ff024` |
| 16 | `def` | [xm](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/xm--1b334c63ce9db125d3a9c8c5.md) | 102 | `declaration-track:1b334c63ce9db125d3a9c8c5f2bf3d4856b88d3ac00f97b664362db6d0669a6b` |
| 17 | `theorem` | [b_lt_xm](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/b-lt-xm--489d41ee91237478ad81634b.md) | 105 | `result-track:489d41ee91237478ad81634b69b4735322b7904162aedb331644c570aac99388` |
| 18 | `theorem` | [b_ne_xm](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/b-ne-xm--0ebc7c84fa4e310ba5bc8489.md) | 107 | `result-track:0ebc7c84fa4e310ba5bc848903a0fdc03433235b48cff76b3f2ee1c6dc36e795` |
| 19 | `def` | [shiftUp](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/shiftup--23f4d6e8a2bc063a9be22568.md) | 110 | `declaration-track:23f4d6e8a2bc063a9be225684d7b99228d67d166b3b1d243fb02459ef7fc2694` |
| 20 | `theorem` | [tail_shiftUp](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/tail-shiftup--2ca64278d2d7c5f73c8d6d08.md) | 114 | `result-track:2ca64278d2d7c5f73c8d6d08fbfbcf7461fc007ebf531b10a439ad149aaaba32` |
| 21 | `theorem` | [head_shiftUp](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/head-shiftup--170f31d947d725b282c923d3.md) | 117 | `result-track:170f31d947d725b282c923d36d33b96cbcaedf47e60b4fea65fe722cacf9cf57` |
| 22 | `def` | [unitCube](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/unitcube--2e9f0e99d1558a9540723953.md) | 120 | `declaration-track:2e9f0e99d1558a954072395397009d14986871639d6d93131323ee4c0a98b2ef` |
| 23 | `theorem` | [side_unitCube](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/side-unitcube--3d0f89209397824537c2c9fc.md) | 124 | `result-track:3d0f89209397824537c2c9fc28678a3fbcd711dfc5d217370a5f1a441ddf5be2` |
| 24 | `structure` | [Correct](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/correct--00866749c36c76d3d9334ce5.md) | 134 | `declaration-track:00866749c36c76d3d9334ce52a588b71ed42eba7585b00dcefc19ce6b0d9ad5b` |
| 25 | `theorem` | [toSet_subset_unitCube](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/toset-subset-unitcube--3c212d7e9b126424f779485d.md) | 145 | `result-track:3c212d7e9b126424f779485d4078fad7d642c585418c021991b948840ebbdf0f` |
| 26 | `theorem` | [side_subset](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/side-subset--2154c0e6b4b46700292895e9.md) | 148 | `result-track:2154c0e6b4b46700292895e9c1bb78300e90b41fe54ec2fd9efed4f82f381523` |
| 27 | `theorem` | [zero_le_of_mem_side](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/zero-le-of-mem-side--d48699df035e641460d6a36f.md) | 151 | `result-track:d48699df035e641460d6a36fcf386de2eae43a6788b21fa9f203a47c5b65d4cc` |
| 28 | `theorem` | [zero_le_of_mem](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/zero-le-of-mem--72f63ce9b18fbae3c87b37b9.md) | 154 | `result-track:72f63ce9b18fbae3c87b37b9730a911f7573031bd8b443e7a5ecd587bb472a89` |
| 29 | `theorem` | [zero_le_b](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/zero-le-b--5c7ba3a74a8dc9592b456af7.md) | 157 | `result-track:5c7ba3a74a8dc9592b456af7f882a36690f3d7b89f578cfeb4e07c8103eb5e29` |
| 30 | `theorem` | [b_add_w_le_one](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/b-add-w-le-one--a984d1dd6427b8f46cd034c7.md) | 160 | `result-track:a984d1dd6427b8f46cd034c74972cde08f87be5d9a1d14c6b0086ae6f78a8608` |
| 31 | `theorem` | [nontrivial_fin](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/nontrivial-fin--e1a42ab549d07e7c3f2a9caf.md) | 166 | `result-track:e1a42ab549d07e7c3f2a9caf9addae0d4fd72abde90bd41f5ac8c2f2ec7b997a` |
| 32 | `theorem` | [w_ne_one](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/w-ne-one--6a8d9099e69799504baf83f0.md) | 170 | `result-track:6a8d9099e69799504baf83f0e833adc456b6d6e3a8078f4be51bd6c3b33631dd` |
| 33 | `theorem` | [shiftUp_bottom_subset_bottoms](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/shiftup-bottom-subset-bottoms--c86d12d9b44a99e731f8ffae.md) | 188 | `result-track:c86d12d9b44a99e731f8ffae24e76f7805fb93dd602775e04a0af1d6f5971d79` |
| 34 | `def` | [Valley](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/valley--f1e7c5b31b3e19a9a8c9e3ea.md) | 220 | `declaration-track:f1e7c5b31b3e19a9a8c9e3ea6d59df6b11089ffc032f7bc2c9a5c847dab882e0` |
| 35 | `theorem` | [valley_unitCube](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/valley-unitcube--d950dd3104f4ef8907cdde47.md) | 229 | `result-track:d950dd3104f4ef8907cdde4793b882b581937e84f1a0060f393f7ccd336d9bed` |
| 36 | `def` | [bcubes](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/bcubes--fdaf877698d51af4ce946b7c.md) | 250 | `declaration-track:fdaf877698d51af4ce946b7c4263e3c84c338cd7c80c58126460c7d115112d6f` |
| 37 | `def` | [OnBoundary](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/onboundary--357f2e0f1942bb3b8b52997c.md) | 254 | `declaration-track:357f2e0f1942bb3b8b52997c80cfa27ea8c3aa324c4e7f7f9f64fb4dc8b85e3d` |
| 38 | `theorem` | [tail_sub](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/tail-sub--65b5dffaa54d7576ece583e6.md) | 257 | `result-track:65b5dffaa54d7576ece583e6ffe43f49e0e9f67f5884c7231554a2fad554dbe3` |
| 39 | `theorem` | [bottom_mem_side](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/bottom-mem-side--27534b419eb7171104581b24.md) | 260 | `result-track:27534b419eb7171104581b24d1a8e082bf811b3fb78122f308a163fad9b0d05a` |
| 40 | `theorem` | [b_le_b](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/b-le-b--708012e55b420db470581c26.md) | 263 | `result-track:708012e55b420db470581c26a50083d2bd68bc6c3a93e9e53262bea0a0b42237` |
| 41 | `theorem` | [t_le_t](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/t-le-t--7882746310ec82ed88d338da.md) | 266 | `result-track:7882746310ec82ed88d338dabda57b59e4264d26d03ee6ede584c7365aee86ef` |
| 42 | `theorem` | [w_lt_w](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/w-lt-w--14e19f7ff86c98f0665f879b.md) | 276 | `result-track:14e19f7ff86c98f0665f879b0d52e2027ea93d4212972c23023b1567a6ca4ac7` |
| 43 | `theorem` | [nontrivial_bcubes](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/nontrivial-bcubes--2f82c9346edd8c5af5fabe17.md) | 283 | `result-track:2f82c9346edd8c5af5fabe17c2e413d9ca9e99c3a2eb6f412315b71a8f067e88` |
| 44 | `theorem` | [nonempty_bcubes](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/nonempty-bcubes--34e670f708a0266ba43acb0b.md) | 308 | `result-track:34e670f708a0266ba43acb0b9ecd283747328851b94f14cc27e880843f9260bd` |
| 45 | `theorem` | [exists_mi](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/exists-mi--9a22bd0f09b24bb0dce73f17.md) | 314 | `result-track:9a22bd0f09b24bb0dce73f171f8c425d9f3d4059cb20b4827560e6b81aa03ccd` |
| 46 | `def` | [mi](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/mi--d005df4afd2537908f1b7bcf.md) | 318 | `declaration-track:d005df4afd2537908f1b7bcf8bba65e0a68686743f51630ebdf02ecd23fa6680` |
| 47 | `theorem` | [mi_mem_bcubes](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/mi-mem-bcubes--97b9c1da93cf394ce3e2f043.md) | 323 | `result-track:97b9c1da93cf394ce3e2f043b95ee3e52af63c970bc63f5eb571031a5ad6ee1b` |
| 48 | `theorem` | [mi_minimal](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/mi-minimal--def7b2e34a6f9fbf1ef52537.md) | 326 | `result-track:def7b2e34a6f9fbf1ef5253764430b3dd71da263a03f142b6de18ab5599ab631` |
| 49 | `theorem` | [mi_strict_minimal](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/mi-strict-minimal--d5624b63948f8bdc3c6d6228.md) | 329 | `result-track:d5624b63948f8bdc3c6d622848b24eaf006ef6c010322cb55c991b3664b9d711` |
| 50 | `theorem` | [mi_xm_ne_one](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/mi-xm-ne-one--cbe4fded60fbfdef62ba3c04.md) | 334 | `result-track:cbe4fded60fbfdef62ba3c048b060d4b9b97e88fb56ecc620568cc745af7fa81` |
| 51 | `theorem` | [smallest_onBoundary](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/smallest-onboundary--97a3d6904f135e29d9d85b7c.md) | 347 | `result-track:97a3d6904f135e29d9d85b7cdfef066143d1736ffd2bb2ce11eb83918a3c8fd2` |
| 52 | `theorem` | [mi_not_onBoundary](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/mi-not-onboundary--04a411e46ab5a0b1f79d3cbd.md) | 385 | `result-track:04a411e46ab5a0b1f79d3cbdb658f01e76549147f2a2421e579ac38f6c41578f` |
| 53 | `theorem` | [mi_not_onBoundary'](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/mi-not-onboundary--de1f2c11b6936e6669f150ad.md) | 442 | `result-track:de1f2c11b6936e6669f150ad9afdcda72303793b2ab7943054cce3c56972f22d` |
| 54 | `theorem` | [valley_mi](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/valley-mi--df55093fcaf0319b6f758d6e.md) | 455 | `result-track:df55093fcaf0319b6f758d6e33eb6949b60300cfba18da3f28ef66cda5232152` |
| 55 | `def` | [sequenceOfCubes](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/sequenceofcubes--0961136d8c0c36a81d5942b7.md) | 512 | `declaration-track:0961136d8c0c36a81d5942b70f50f72a748f86a9d206dc9f08c0381dd54efa9a` |
| 56 | `def` | [decreasingSequence](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/decreasingsequence--c8bad6251cd1c57f10e9a8a3.md) | 520 | `declaration-track:c8bad6251cd1c57f10e9a8a3d0e832c7a59488ca55f36414409ddcb266120f44` |
| 57 | `theorem` | [strictAnti_sequenceOfCubes](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/strictanti-sequenceofcubes--2a526870d7ba87d3399bd036.md) | 528 | `result-track:2a526870d7ba87d3399bd0367d786715f1a177bc34cdc2a88bc46489ae4186bc` |
| 58 | `theorem` | [injective_sequenceOfCubes](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/injective-sequenceofcubes--4b8edd3f50fe163d7be6c688.md) | 533 | `result-track:4b8edd3f50fe163d7be6c688f755cad35504ace53985737d3a4ddcf2230f4ba5` |
| 59 | `theorem` | [not_correct](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/not-correct--d8b32559f0183ed5ccbf59f0.md) | 538 | `result-track:d8b32559f0183ed5ccbf59f0e1201a2b8f0d4f3c2f53ab3797c245ca00a989f8` |
| 60 | `theorem` | [cannot_cube_a_cube](../../../../mathematics/Algebra/CubingACube/Variant95526cd0cb8629adbfa352564312525a9d4d79d4b586cc67c05bf180b8053693.lean/declarations/cannot-cube-a-cube--dd84ef3ecb7728c813ce4f07.md) | 542 | `result-track:dd84ef3ecb7728c813ce4f07e37deecc466624a11a287313eedef5aa19c4699e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
