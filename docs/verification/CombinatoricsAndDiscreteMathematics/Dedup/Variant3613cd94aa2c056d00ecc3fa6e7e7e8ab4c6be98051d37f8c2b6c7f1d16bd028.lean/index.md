# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dedup.Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12e6376ce8cda0d9747717751f2bde1f670023b2",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12e6376ce8cda0d9747717751f2bde1f670023b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean.json)

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
| 1 | `theorem` | [dedup_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/dedup-eq-self--a69b1776a06993a1b3f5cdb4.md) | 38 | `result-track:a69b1776a06993a1b3f5cdb42ce518a9fb36c8f7dca69a74def786d96c42f69b` |
| 2 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset--ea8bc01e65e14d6666d088c4.md) | 50 | `declaration-track:ea8bc01e65e14d6666d088c49cd2e1b91a5f40eeb81421529150dabbf8ccb831` |
| 3 | `theorem` | [toFinset_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-val--f9687c79f8b5dcb5550e6b49.md) | 54 | `result-track:f9687c79f8b5dcb5550e6b492e73755c60085551103aea3834c491fb0ee9bc1c` |
| 4 | `theorem` | [toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-eq--af99d67176d11265042b6746.md) | 57 | `result-track:af99d67176d11265042b6746e513185c6dff72a05b728a79735895a55cdaa6ff` |
| 5 | `theorem` | [Nodup.toFinset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/nodup-tofinset-inj--e79e3d4bbefe421d50b4ff27.md) | 60 | `result-track:e79e3d4bbefe421d50b4ff2735c32962489145cc60bcdd0793721e0c1d1fbd8a` |
| 6 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/mem-tofinset--b1098ab63dbf40f6e752e185.md) | 65 | `result-track:b1098ab63dbf40f6e752e185002c9e6bf92eb928ed6fb7c4fb0019b17cbf1ef1` |
| 7 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/coe-tofinset--4bb988c6c2d550a4fd252084.md) | 68 | `result-track:4bb988c6c2d550a4fd2520844a988e9d5538081ce59b44b21d5c8344890d67e0` |
| 8 | `theorem` | [toFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-subset--eeef37571a0b4a7029b60089.md) | 73 | `result-track:eeef37571a0b4a7029b600897cf4dcd2646d3b7e1e84db9e2f523d94faeb4821` |
| 9 | `theorem` | [toFinset_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-ssubset--6abb64bc73f092bf61a2b022.md) | 77 | `result-track:6abb64bc73f092bf61a2b022dee443927096683badcd8f6969a602aeeaa16dd3` |
| 10 | `theorem` | [toFinset_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-dedup--02963d73d13fb676e1aaf70b.md) | 82 | `result-track:02963d73d13fb676e1aaf70b2e5cf415de433b4438d496db4f403bcf5c8eb632` |
| 11 | `instance` | [isWellFounded_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/iswellfounded-ssubset--b04cae4c3f3542d0dabe0e9d.md) | 85 | `declaration-track:b04cae4c3f3542d0dabe0e9dcc424b2dce227b7ce4bb8a7f49122d246819c158` |
| 12 | `theorem` | [val_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/val-tofinset--8d2a37294ffd98af42d8de1c.md) | 94 | `result-track:8d2a37294ffd98af42d8de1ced34e25e26268a2aac6934721a473fa901a5b733` |
| 13 | `theorem` | [val_le_iff_val_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/val-le-iff-val-subset--09bc4b4ae538ac7260023e4d.md) | 98 | `result-track:09bc4b4ae538ac7260023e4db5ca7bce48bc18ea29e754440bd834fa9985f1fc` |
| 14 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset--58af3cd082a2bab09e1e3435.md) | 108 | `declaration-track:58af3cd082a2bab09e1e343502e6b65873d86236e6e594ec64be859e805351f1` |
| 15 | `theorem` | [toFinset_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-val--294dc8d59d39a6908db58e5b.md) | 112 | `result-track:294dc8d59d39a6908db58e5bda081a09f4e90b7b9ebcb8cb11866e688e90ef77` |
| 16 | `theorem` | [toFinset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-coe--068ff05cd7831065b9a2ecb9.md) | 116 | `result-track:068ff05cd7831065b9a2ecb9390b1077b6b78a0c687fd7c26c6d119aa9d1e51f` |
| 17 | `theorem` | [toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-eq--ab6bfeefb78532c73310d18e.md) | 119 | `result-track:ab6bfeefb78532c73310d18e4c12f2d9161f41975715f94efa0f7eb03271ee12` |
| 18 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/mem-tofinset--44ab159241d30d6b8c58ce7d.md) | 123 | `result-track:44ab159241d30d6b8c58ce7d550981dbc96bbddc97c77f0406e11bab362cbef6` |
| 19 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/coe-tofinset--3b4d1e2e9e0bd9273e182f01.md) | 127 | `result-track:3b4d1e2e9e0bd9273e182f012813435025f7bf1235cb13956debd9d53f89d953` |
| 20 | `theorem` | [toFinset_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-dedup--0a1cd07ee5c9a68b260da779.md) | 131 | `result-track:0a1cd07ee5c9a68b260da779ac2714b5a748ecc9da02f3befadb5b447121e1cb` |
| 21 | `theorem` | [toFinset_surj_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-surj-on--661fbe7bc7eb251bb19dd0a1.md) | 134 | `result-track:661fbe7bc7eb251bb19dd0a19e8ad28fc519ffe29e70c7253b1366d29f05b6b0` |
| 22 | `theorem` | [toFinset_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-surjective--ff713096cacb13e7983ddec6.md) | 138 | `result-track:ff713096cacb13e7983ddec6c4246a18bb5c90d12a2405e2b43765c960ebd0e3` |
| 23 | `theorem` | [toFinset_eq_iff_perm_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-eq-iff-perm-dedup--8b10ab879bf73b45c2565290.md) | 142 | `result-track:8b10ab879bf73b45c25652900241767c13207ab93830cabc7446a1a816dbc78e` |
| 24 | `theorem` | [toFinset.ext_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-ext-iff--787c8f939815fc367c0c6553.md) | 145 | `result-track:787c8f939815fc367c0c6553b7ea58ae4aa3bda1cbdb570d7b13d917535c4a1b` |
| 25 | `theorem` | [toFinset.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-ext--e33584a5e88ee21543169cc5.md) | 148 | `result-track:e33584a5e88ee21543169cc5a926577bfccd90f4b4629f5d155ed2ade49460ec` |
| 26 | `theorem` | [toFinset_eq_of_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-eq-of-perm--8605d5d183c638a2add17d25.md) | 151 | `result-track:8605d5d183c638a2add17d255e9e67d929f058a59bd3f752a1175b50a8dbce48` |
| 27 | `theorem` | [perm_of_nodup_nodup_toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/perm-of-nodup-nodup-tofinset-eq--d4ccd31d519eed07a759ef60.md) | 154 | `result-track:d4ccd31d519eed07a759ef608f32c2df202db9fe7e042ddc03532e9a9f3440aa` |
| 28 | `theorem` | [toFinset_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tofinset-reverse--8a19486a7ae46f9d3a90f1a3.md) | 160 | `result-track:8a19486a7ae46f9d3a90f1a32cffb1cd9a6797f8a4d7badf1de17f13421ed4a6` |
| 29 | `def` | [toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tolist--5fdae84e3795105053f735e9.md) | 170 | `declaration-track:5fdae84e3795105053f735e907dde980d560a6d9322f72ba62abffd88ce167b1` |
| 30 | `theorem` | [nodup_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/nodup-tolist--df1af13a2158ffb79a2b1fe4.md) | 173 | `result-track:df1af13a2158ffb79a2b1fe4aaf37a410b6c50c377a5dc20b3649630097d5b2a` |
| 31 | `theorem` | [mem_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/mem-tolist--eda7a24effa4f812c8ed052f.md) | 178 | `result-track:eda7a24effa4f812c8ed052f0c910efce1c635a3abdf2568322fb14f2e075321` |
| 32 | `theorem` | [coe_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/coe-tolist--80ad3c3e26e371ff10bb8ccb.md) | 182 | `result-track:80ad3c3e26e371ff10bb8ccba4bae8e8b19fee233d5576d7c93b58ffb5bac641` |
| 33 | `theorem` | [toList_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/tolist-tofinset--70b52ebf6745e54994dbb790.md) | 186 | `result-track:70b52ebf6745e54994dbb790f08698d4d868f617ca178e6a9f25cc6b1dca8b67` |
| 34 | `theorem` | [_root_.List.toFinset_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/root-list-tofinset-tolist--e5ad93f1509f1e18cd3abe6c.md) | 190 | `result-track:e5ad93f1509f1e18cd3abe6c67540b4299d9441a7b6cb167ef761408b8e92585` |
| 35 | `theorem` | [exists_list_nodup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/exists-list-nodup-eq--92ee44af1952f24b5dc7596d.md) | 195 | `result-track:92ee44af1952f24b5dc7596d07f5bfdb6fba53bde920a62fe1a94a7a7535c911` |
| 36 | `theorem` | [perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant3613cd94aa2c056d00ecc3fa6e7e7e8ab4c6be98051d37f8c2b6c7f1d16bd028.lean/declarations/perm-tolist--826308672fb026b705b65ded.md) | 200 | `result-track:826308672fb026b705b65ded0a7d93886e172ca0b810cccabc18658e77b184ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
