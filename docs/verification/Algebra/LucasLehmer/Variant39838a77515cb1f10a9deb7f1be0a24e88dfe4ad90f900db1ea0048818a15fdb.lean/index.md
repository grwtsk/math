# Verification target: GRWTSK.Algebra.LucasLehmer.Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29714364f98fc2f7218391db3068cee0d33b26a2",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/index.md) · [Full source](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29714364f98fc2f7218391db3068cee0d33b26a2`.

Source path: `GRWTSK/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Interval` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Fintype` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mersenne--287d4417f7afc462f8a0f1a3.md) | 50 | `declaration-track:287d4417f7afc462f8a0f1a39bcad00a21e8b734eb4ae51d1230954bf5f3bc78` |
| 2 | `theorem` | [mersenne_pos](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mersenne-pos--23dc88be49919be9c4b1a0a6.md) | 54 | `result-track:23dc88be49919be9c4b1a0a695ddaa761fe825be91a0b7930b6a0ad35861ea4c` |
| 3 | `theorem` | [one_lt_mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/one-lt-mersenne--15fc709d134787a4e757a77f.md) | 61 | `result-track:15fc709d134787a4e757a77f99ee7c02b39698bcaa7017594037b98927be9d4b` |
| 4 | `theorem` | [succ_mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/succ-mersenne--7ce257d455923c185ffbe77b.md) | 67 | `result-track:7ce257d455923c185ffbe77b4c3fee3de9ddc834d170c2627cb5dc4d7aa85a3a` |
| 5 | `def` | [s](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/s--4443c9e97234670eec3ef2c1.md) | 88 | `declaration-track:4443c9e97234670eec3ef2c1fce7be5cfb7232112a392c46c5ed0f3411f63f94` |
| 6 | `def` | [sZMod](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/szmod--c608b6aa1dccbd137cd35667.md) | 94 | `declaration-track:c608b6aa1dccbd137cd35667a4fb5eaeff406529e9dadb997279b05ce5020f21` |
| 7 | `def` | [sMod](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/smod--b573ef4904b38d1661f252af.md) | 100 | `declaration-track:b573ef4904b38d1661f252af073933662baf16480ca6e60c650c701016761434` |
| 8 | `theorem` | [mersenne_int_pos](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mersenne-int-pos--21551fe607b4732732ce766c.md) | 105 | `result-track:21551fe607b4732732ce766c08dba22dfc1f165882dc97ace6adba2423d2dc66` |
| 9 | `theorem` | [mersenne_int_ne_zero](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mersenne-int-ne-zero--e5b3217ef861508afd6cbee6.md) | 108 | `result-track:e5b3217ef861508afd6cbee609a4a592b38d215d5b47a1ed102e3bd88718b28e` |
| 10 | `theorem` | [sMod_nonneg](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/smod-nonneg--3162a7cf31153619aefa9e8e.md) | 112 | `result-track:3162a7cf31153619aefa9e8e8074a33fada892002bd71bd276167c0f08a4dbd9` |
| 11 | `theorem` | [sMod_mod](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/smod-mod--7277d30ba70b41692cee64b1.md) | 119 | `result-track:7277d30ba70b41692cee64b11b706d1e34a9fd0e39d222c0f9f6555f57d4c23d` |
| 12 | `theorem` | [sMod_lt](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/smod-lt--e383735d2c29abd2d24af51c.md) | 122 | `result-track:e383735d2c29abd2d24af51c47284bd8857d6aef7523cb2b183d869b4fdbc817` |
| 13 | `theorem` | [sZMod_eq_s](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/szmod-eq-s--d9d782f5b07a07f7d5f2ed62.md) | 128 | `result-track:d9d782f5b07a07f7d5f2ed6203bf26640d70843fb22f439b48626b36418baae5` |
| 14 | `theorem` | [Int.coe_nat_pow_pred](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/int-coe-nat-pow-pred--5ef01769b8578cad30a3fda5.md) | 136 | `result-track:5ef01769b8578cad30a3fda5e726c8e0f75649575985047bcfd4a08eee38a10d` |
| 15 | `theorem` | [Int.coe_nat_two_pow_pred](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/int-coe-nat-two-pow-pred--5babd2cf179d153fe33f1388.md) | 141 | `result-track:5babd2cf179d153fe33f1388439f37330683b0807676c67c7a3e4a5768d95b45` |
| 16 | `theorem` | [sZMod_eq_sMod](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/szmod-eq-smod--f3d5662d7b5306b0ac079731.md) | 145 | `result-track:f3d5662d7b5306b0ac0797315b82921877aeece5ceac3033fea7e3b2c88adf6b` |
| 17 | `def` | [lucasLehmerResidue](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/lucaslehmerresidue--40a9664919b0c8d39412e2de.md) | 150 | `declaration-track:40a9664919b0c8d39412e2de5d49180032ffc44ab38a4b67b36181e59112c9c3` |
| 18 | `theorem` | [residue_eq_zero_iff_sMod_eq_zero](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/residue-eq-zero-iff-smod-eq-zero--3a5340cfe85bcbf0b9cd9c49.md) | 154 | `result-track:3a5340cfe85bcbf0b9cd9c4993ecad87503ec455f20cf3c176bbc4415eab3ce5` |
| 19 | `def` | [LucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/lucaslehmertest--1812e432e1d467ada0671359.md) | 174 | `declaration-track:1812e432e1d467ada0671359af08dd1d062a211dbbff91ea65008fb48099cd0c` |
| 20 | `def` | [q](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/q--409d66e22a9741724d466b1b.md) | 186 | `declaration-track:409d66e22a9741724d466b1bf541f2de697751e04351ecbcfac23b137a1ad2eb` |
| 21 | `def` | [X](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/x--e7ed90f6ca4702bc7c5f90c2.md) | 196 | `declaration-track:e7ed90f6ca4702bc7c5f90c255b1e3b0e3bd2fbe1d665dd7a0193dc3adcbeaf7` |
| 22 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--8fe0bc129f40a1918d8ff0a6.md) | 205 | `declaration-track:8fe0bc129f40a1918d8ff0a6c08fda7c243e0a73214dffa45b5b767f1a22ffd6` |
| 23 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--84d855a298d6a486180724c5.md) | 206 | `declaration-track:84d855a298d6a486180724c5320e921e67972bb7932dc09b677d12a64e758908` |
| 24 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--6a9d02d32e879bd4c05d45a6.md) | 207 | `declaration-track:6a9d02d32e879bd4c05d45a6bb137b47a8ba580c388a6a4e0d556527b571db5b` |
| 25 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--a1cf908a2b7cc71942fda4df.md) | 208 | `declaration-track:a1cf908a2b7cc71942fda4df2a3a1b7bd7f672b723a3aa756a6f792e9c63d8c8` |
| 26 | `theorem` | [ext](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/ext--784ae43aa24d192bcb9e4385.md) | 211 | `result-track:784ae43aa24d192bcb9e43850076209ce1e6082cdd1249cc9d814f716b0813b5` |
| 27 | `theorem` | [zero_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/zero-fst--7846fa56d6c48894c493267f.md) | 216 | `result-track:7846fa56d6c48894c493267f3c8a9099d62907f4b10d1b2b5d6d31ba0bc22812` |
| 28 | `theorem` | [zero_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/zero-snd--a538b361f654336039ddd258.md) | 217 | `result-track:a538b361f654336039ddd25892c93367c5ce10d4f7650a7c1c1a14d6ad4376a5` |
| 29 | `theorem` | [add_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/add-fst--b93177b1d8d12b3d19cb85b9.md) | 220 | `result-track:b93177b1d8d12b3d19cb85b9aa1bec79cd714deca4367c079590ffcf412e2ca4` |
| 30 | `theorem` | [add_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/add-snd--6f2863a802ae29713b4885b9.md) | 226 | `result-track:6f2863a802ae29713b4885b9e2474d818edd8e4bf512fc4bec75efb412690d01` |
| 31 | `theorem` | [neg_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/neg-fst--3f67761924223e143ec29e00.md) | 232 | `result-track:3f67761924223e143ec29e00b1884e95fc4d45b64f65508d1acf60f729d0b330` |
| 32 | `theorem` | [neg_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/neg-snd--eb3d8dc4c91fb2c16dc59bd0.md) | 238 | `result-track:eb3d8dc4c91fb2c16dc59bd0a46712754dc895b9f807af68843814bee5480f84` |
| 33 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--cfff2bb9c7eb50c4397ef109.md) | 243 | `declaration-track:cfff2bb9c7eb50c4397ef10938857473962c3f7cbf772083ddb70283297fe1b6` |
| 34 | `theorem` | [mul_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mul-fst--0b6cfcfe54b9a02085b5fd1d.md) | 246 | `result-track:0b6cfcfe54b9a02085b5fd1dc9e0e7cc62d5d8c2b73d70b50183746580c8cbf9` |
| 35 | `theorem` | [mul_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mul-snd--eb4243cfd07e2babf06e52d2.md) | 252 | `result-track:eb4243cfd07e2babf06e52d29ad54553821be36a65c597bd0b15fd13e53278bb` |
| 36 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--d42efc7822a35462b5b27e40.md) | 257 | `declaration-track:d42efc7822a35462b5b27e40cc6e1cdfa04a413ab1b3459403803076af669a1d` |
| 37 | `theorem` | [one_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/one-fst--09c68ec8d01b771a2023cf78.md) | 260 | `result-track:09c68ec8d01b771a2023cf78db1570bc3775028f18fb19229a84b59e6edf559e` |
| 38 | `theorem` | [one_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/one-snd--a4fc0cfd7468c2e6fc982030.md) | 266 | `result-track:a4fc0cfd7468c2e6fc982030c978f98798eeffcbd5adffea730e903f4f407401` |
| 39 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--2cfe0fdec04eb359714d5f04.md) | 276 | `declaration-track:2cfe0fdec04eb359714d5f04f622cd1ad0d1566d5941abd048255b65e781a17c` |
| 40 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--d70a75bf9f009ad9d0e23aae.md) | 282 | `declaration-track:d70a75bf9f009ad9d0e23aae0f8561ea0becedf9eab8b5b09033a4fda69e4c34` |
| 41 | `theorem` | [nat_coe_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/nat-coe-fst--3e23884a6833e04f15ed862d.md) | 285 | `result-track:3e23884a6833e04f15ed862de2cdee41c0aa2063e411e734f0a153d937ac8f2b` |
| 42 | `theorem` | [nat_coe_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/nat-coe-snd--e2e29d9a6bfb308707d6054e.md) | 289 | `result-track:e2e29d9a6bfb308707d6054ee14a05e56cce64783edb365f04a06850acced749` |
| 43 | `theorem` | [ofNat_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/ofnat-fst--b5dd2fdcc049df0cbbfbc81e.md) | 293 | `result-track:b5dd2fdcc049df0cbbfbc81e597f93e901053ee13bb38c96d4da2c1a68d09a4a` |
| 44 | `theorem` | [ofNat_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/ofnat-snd--55715843c8d53f0e52b5f45f.md) | 297 | `result-track:55715843c8d53f0e52b5f45ff94a0eb6edb6ce059f24d1296da1748af27b07eb` |
| 45 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--4f77c80c0d574487bdbd9b60.md) | 301 | `declaration-track:4f77c80c0d574487bdbd9b60f9d583ae2ce6d78fefbaa1cec083fafadb9a962e` |
| 46 | `theorem` | [left_distrib](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/left-distrib--4eae076670fce68dae58fa6b.md) | 310 | `result-track:4eae076670fce68dae58fa6b38eeaee90dc26e871332e2a404cbe9c76b8d52ca` |
| 47 | `theorem` | [right_distrib](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/right-distrib--ebfabe6bcf3f8c1fc84c0a75.md) | 315 | `result-track:ebfabe6bcf3f8c1fc84c0a7514f86e0ea0a31df24cfb49e873bec3280219e0be` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--0d47323abceb2e76bd14b810.md) | 320 | `declaration-track:0d47323abceb2e76bd14b810cfb6038502902ac2139264853720fe30f2462430` |
| 49 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--1d7308589f572a7353cf2d41.md) | 328 | `declaration-track:1d7308589f572a7353cf2d41c1ab40788e16d8eef1c2facc9cc24c1ffbdbe6d7` |
| 50 | `instance` | [(anonymous)](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/instance--0f9cea1ccc13c186993eb2a7.md) | 332 | `declaration-track:0f9cea1ccc13c186993eb2a77cdea4f1ea3401692d683c1076271287c709aaa0` |
| 51 | `theorem` | [int_coe_fst](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/int-coe-fst--2e9befde6144df84a9aa1447.md) | 336 | `result-track:2e9befde6144df84a9aa1447464b6f29ce09a1a0d33bae14e1a290ac5c07cf8f` |
| 52 | `theorem` | [int_coe_snd](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/int-coe-snd--85866b8f5e5fef139c0c94a9.md) | 342 | `result-track:85866b8f5e5fef139c0c94a929a3a65162b807dd644ff56d6fe5e646380fc100` |
| 53 | `theorem` | [coe_mul](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/coe-mul--f01746c6479918efb879616c.md) | 348 | `result-track:f01746c6479918efb879616ce9e0da74737ba2df9f6cbbfcf249a2192d11477b` |
| 54 | `theorem` | [coe_nat](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/coe-nat--4e207b0035de7dc3c869b171.md) | 353 | `result-track:4e207b0035de7dc3c869b1715a723a9744ef3c1862160a4a2b60b7a3830d7941` |
| 55 | `theorem` | [card_eq](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/card-eq--683aa5e390925d560d4bbd92.md) | 358 | `result-track:683aa5e390925d560d4bbd9218ce60615cb7855962d7496b2b9f2f0e65c9786c` |
| 56 | `theorem` | [card_units_lt](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/card-units-lt--8d84eb4975d6fc330b8a68fd.md) | 365 | `result-track:8d84eb4975d6fc330b8a68fd24ab8d5267423988e0da6c32ed10ea4364e969a2` |
| 57 | `def` | [ω](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/anonymous--1303df2f30b8fc38ae0d7837.md) | 373 | `declaration-track:1303df2f30b8fc38ae0d7837db9ec4446b84c0d9bf22df8dec46ae14b37d5fb2` |
| 58 | `def` | [ωb](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/b--5bd0bc1cbdc328f41e4b30a9.md) | 378 | `declaration-track:5bd0bc1cbdc328f41e4b30a9bdfac9b2dd6ac6189a1358720b090797a02186e0` |
| 59 | `theorem` | [ω_mul_ωb](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mul-b--08c3bddc2a7972bd6eee4da0.md) | 382 | `result-track:08c3bddc2a7972bd6eee4da0e82018944c0e00f0a46c5743756b6a0ed6125d87` |
| 60 | `theorem` | [ωb_mul_ω](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/b-mul--c55a52e77a3b8cacaa0567ab.md) | 388 | `result-track:c55a52e77a3b8cacaa0567abb021bc25f2b81257ebc7d8a0c4d768541a65527f` |
| 61 | `theorem` | [closed_form](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/closed-form--8063ee34448b571403f96c5b.md) | 394 | `result-track:8063ee34448b571403f96c5b2b617b90e8d1bfffb6b93ab72e248d3abfc0d960` |
| 62 | `theorem` | [two_lt_q](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/two-lt-q--0a6f324d19dc6948299b961e.md) | 418 | `result-track:0a6f324d19dc6948299b961e97c0769061cd757d2382cbcf0a9508980eb85128` |
| 63 | `theorem` | [ω_pow_formula](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/pow-formula--8eada0298b41f5beaff910db.md) | 425 | `result-track:8eada0298b41f5beaff910dbc540a52b0c2beea2694afef655608b3ab4b64c3b` |
| 64 | `theorem` | [mersenne_coe_X](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/mersenne-coe-x--0dbe2623a126885d8d019313.md) | 450 | `result-track:0dbe2623a126885d8d01931398f36f10b3b89bec03c41582bb97fb08d757dedb` |
| 65 | `theorem` | [ω_pow_eq_neg_one](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/pow-eq-neg-one--798b9073d2d4f0a22634a100.md) | 456 | `result-track:798b9073d2d4f0a22634a100f7040615955bbe9b740f1f287bcd306c0a8468d8` |
| 66 | `theorem` | [ω_pow_eq_one](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/pow-eq-one--fd431c3225540a4e27ba2dbf.md) | 463 | `result-track:fd431c3225540a4e27ba2dbf21897b1b40276754f8e9e5826220fa46bfc5a929` |
| 67 | `def` | [ωUnit](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/unit--e70a1b46f201903380fdbe95.md) | 473 | `declaration-track:e70a1b46f201903380fdbe95e069a76447dee1d4ff24aba6a814596b615ca61f` |
| 68 | `theorem` | [ωUnit_coe](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/unit-coe--b50dee62bd7e1a9a42aba804.md) | 481 | `result-track:b50dee62bd7e1a9a42aba804cc92af546209d301a68597bf9f68c2a92bb75667` |
| 69 | `theorem` | [order_ω](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/order--48d58dd0715ebdd0d272a0d3.md) | 486 | `result-track:48d58dd0715ebdd0d272a0d32668bf71c93fef57a4cb89d7a5695d5ea0c0585a` |
| 70 | `theorem` | [order_ineq](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/order-ineq--66f97bd6c69cdb2a7f023177.md) | 506 | `result-track:66f97bd6c69cdb2a7f0231778327515ac379f26ac9287797090e6eb1d1e88612` |
| 71 | `theorem` | [lucas_lehmer_sufficiency](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/lucas-lehmer-sufficiency--7a1d243871b60e4a7beb5032.md) | 520 | `result-track:7a1d243871b60e4a7beb5032c76da8cf31a450413f3951012c01c3c4e5efb9ee` |
| 72 | `def` | [sMod'](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/smod--313c276dff65b257e620a857.md) | 554 | `declaration-track:313c276dff65b257e620a85753fa41037ad4bd399b1d3f9d6882525091fb2972` |
| 73 | `theorem` | [sMod'_eq_sMod](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/smod-eq-smod--db5766e0c6dc8c5bcd3723d0.md) | 558 | `result-track:db5766e0c6dc8c5bcd3723d035725743bdc3a70a02abe459d1b51e7a6a3e31a3` |
| 74 | `lemma` | [testTrueHelper](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/testtruehelper--cabd638e4c342351a46194bd.md) | 578 | `result-track:cabd638e4c342351a46194bd61f4d95f90ebfe5f114fbb1286b53f1857934d5b` |
| 75 | `lemma` | [testFalseHelper](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/testfalsehelper--a01207c774afa7a9e68b25ff.md) | 584 | `result-track:a01207c774afa7a9e68b25ffd15a1b3e376133c9c26a4adace76e02d31086a68` |
| 76 | `theorem` | [isNat_lucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/isnat-lucaslehmertest--a6fad651bd9c562cfad33da5.md) | 591 | `result-track:a6fad651bd9c562cfad33da567a64a9aafd7babfd331c5cbf3ec866dbe48ac5a` |
| 77 | `theorem` | [isNat_not_lucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/isnat-not-lucaslehmertest--b41e954806eb92bf06656371.md) | 595 | `result-track:b41e954806eb92bf0665637107080aafbc0c412194c66dc9c7804a37eb615ed6` |
| 78 | `def` | [evalLucasLehmerTest](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/evallucaslehmertest--6224f1a45ce4003d950278e2.md) | 602 | `declaration-track:6224f1a45ce4003d950278e21fb674f5a94f1f08aae75d6a9eb4ccd98efb5d50` |
| 79 | `theorem` | [modEq_mersenne](../../../../mathematics/Algebra/LucasLehmer/Variant39838a77515cb1f10a9deb7f1be0a24e88dfe4ad90f900db1ea0048818a15fdb.lean/declarations/modeq-mersenne--ad731f59e4e1057c1cb59152.md) | 642 | `result-track:ad731f59e4e1057c1cb59152d4644f8a7e62978d28382a6d7f2cfc736dd558aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
