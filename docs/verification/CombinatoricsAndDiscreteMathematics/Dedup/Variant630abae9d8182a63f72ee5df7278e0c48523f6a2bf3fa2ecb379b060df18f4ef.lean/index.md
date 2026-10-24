# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Dedup.Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a9821c41e618e89896ad0de0107314a0139a132",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a9821c41e618e89896ad0de0107314a0139a132`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Dedup` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dedup_eq_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/dedup-eq-self--50d8a765fa358b2887782a3a.md) | 42 | `result-track:50d8a765fa358b2887782a3aeebfe4c74258d7dbbf2feddfd0a27d8713e30c5a` |
| 2 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset--732ecbdbf0160181a29ad2f3.md) | 54 | `declaration-track:732ecbdbf0160181a29ad2f3e0a4eda15938cf59d575ee5644a4dba8adcb9e16` |
| 3 | `theorem` | [toFinset_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-val--f61200d5e7a590604fd79357.md) | 58 | `result-track:f61200d5e7a590604fd79357b742e7380d9aed14c722ffa173fcb1cb27c496e7` |
| 4 | `theorem` | [toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-eq--707cdce4c4d8a7bf9b8c4d88.md) | 61 | `result-track:707cdce4c4d8a7bf9b8c4d88be87f99799541ab1e684ed15ffc33bb9233a7f76` |
| 5 | `theorem` | [Nodup.toFinset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/nodup-tofinset-inj--a7bc79d5aa832265b17a4b9e.md) | 64 | `result-track:a7bc79d5aa832265b17a4b9ec58542af140daf24938bef20d5c5f9619c02f382` |
| 6 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/mem-tofinset--7cdb005ca9545554ee4ea4a3.md) | 69 | `result-track:7cdb005ca9545554ee4ea4a329193f4307f08a8c302771195671b410e2f4cb8a` |
| 7 | `theorem` | [toFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-subset--f2de969201a0867652f28930.md) | 73 | `result-track:f2de969201a0867652f28930fb3aad3bbff34c995dfb2177faf31b23d8fe1dbe` |
| 8 | `theorem` | [toFinset_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-ssubset--235d4cd6acf53c1de15b8c20.md) | 77 | `result-track:235d4cd6acf53c1de15b8c2000062919e22f9962a43492292efefd0432c7d8f8` |
| 9 | `theorem` | [toFinset_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-dedup--57b9154ceab70c0105a224cb.md) | 82 | `result-track:57b9154ceab70c0105a224cb6700f2f863e3087351eb50961f86cd35eb0785a8` |
| 10 | `instance` | [isWellFounded_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/iswellfounded-ssubset--801b03a58d1265e55beb6971.md) | 85 | `declaration-track:801b03a58d1265e55beb69711e3de11efb8e18d08c7dd9d16b5817e0dc9bcedb` |
| 11 | `theorem` | [val_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/val-tofinset--6b5791178679e9e3064dd30f.md) | 94 | `result-track:6b5791178679e9e3064dd30f2afbecbe8700736cc1f33926ef827582c69de037` |
| 12 | `theorem` | [val_le_iff_val_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/val-le-iff-val-subset--e775d2fc9c54a40e75a4c284.md) | 98 | `result-track:e775d2fc9c54a40e75a4c284822185b750458636430aae6dcbf7f55dd7045ef0` |
| 13 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset--13dc7a7a017bde350ff6a9e1.md) | 109 | `declaration-track:13dc7a7a017bde350ff6a9e1ed18396e5e6399958535e6a2bd6a7be5f2c55502` |
| 14 | `theorem` | [toFinset_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-val--24f5b4cca78c43cc054ac5e5.md) | 113 | `result-track:24f5b4cca78c43cc054ac5e523188d777880730aaf5c9b47a51d56480f0c1f35` |
| 15 | `theorem` | [toFinset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-coe--d1f2b9983e959a837df1d595.md) | 117 | `result-track:d1f2b9983e959a837df1d59514e098dc1112090ba28372437a04720801ffe30b` |
| 16 | `theorem` | [toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-eq--8efcbe528c93985755bc6364.md) | 120 | `result-track:8efcbe528c93985755bc6364dcef46caba4074a160f688701c0e036d411f68f9` |
| 17 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/mem-tofinset--27ad916381c298485d0b146c.md) | 124 | `result-track:27ad916381c298485d0b146cd6175ca3c833f71e194a4b641f1d035d26331431` |
| 18 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/coe-tofinset--e8127c0b2dc3514d650dd708.md) | 128 | `result-track:e8127c0b2dc3514d650dd708101ab9b20c2c4ab0a2243f6643a41eab324edda0` |
| 19 | `theorem` | [toFinset_surj_on](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-surj-on--3c58576e6007d195961ee056.md) | 131 | `result-track:3c58576e6007d195961ee0567b0b8f175f3ac59ed3c7fc31e16154ba02221270` |
| 20 | `theorem` | [toFinset_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-surjective--9ee3a0d1fd4394ef9d824f63.md) | 135 | `result-track:9ee3a0d1fd4394ef9d824f6341e3701a741a52ae2cd32abdbe4225752e6aab44` |
| 21 | `theorem` | [toFinset_eq_iff_perm_dedup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-eq-iff-perm-dedup--db37bf185481baf9cd2aedca.md) | 139 | `result-track:db37bf185481baf9cd2aedca293dedb7f9dae7e11e4c325f64a64393f69a20ca` |
| 22 | `theorem` | [toFinset.ext_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-ext-iff--7b671b0cf7c7dc452726c27f.md) | 142 | `result-track:7b671b0cf7c7dc452726c27f7f83f56e3e961725871be5e8d2b55d2fbd7ff698` |
| 23 | `theorem` | [toFinset.ext](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-ext--e9d8cbd3d16209a2360ba54e.md) | 145 | `result-track:e9d8cbd3d16209a2360ba54e5310b9759d39f152f0b61da8b704ad6e16f2a645` |
| 24 | `theorem` | [toFinset_eq_of_perm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-eq-of-perm--84db545c2b6be5c01198694e.md) | 148 | `result-track:84db545c2b6be5c01198694e7d90ee551832f2b9b63d9c94e7569f45aa1eae0b` |
| 25 | `theorem` | [perm_of_nodup_nodup_toFinset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/perm-of-nodup-nodup-tofinset-eq--565d82d0cb1201816e63c5ca.md) | 151 | `result-track:565d82d0cb1201816e63c5caf11580449589f6a4124408021f1416f40a116341` |
| 26 | `theorem` | [toFinset_reverse](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tofinset-reverse--0e6d1d723b663c098c7d8b4e.md) | 157 | `result-track:0e6d1d723b663c098c7d8b4e065e070361d3fd6ad786bd38dca76a8a04d94abc` |
| 27 | `def` | [toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tolist--b5e7229740ad0400b93495f5.md) | 167 | `declaration-track:b5e7229740ad0400b93495f534233f32c578649619c8157a038615ca7c596d19` |
| 28 | `theorem` | [nodup_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/nodup-tolist--fbe989bd8a4818c5351312fd.md) | 170 | `result-track:fbe989bd8a4818c5351312fdbf4246ffcdcb798aea67f159bfcbc9a7d1dc2435` |
| 29 | `theorem` | [mem_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/mem-tolist--0d45ee40318982540d3e17d6.md) | 175 | `result-track:0d45ee40318982540d3e17d632e8ff3207632dd2466f55b05b15e3c98c6adce9` |
| 30 | `theorem` | [coe_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/coe-tolist--aa910f2d728eb7c07a58116b.md) | 179 | `result-track:aa910f2d728eb7c07a58116b8981b0cdd21f5564063edd93acf33876f2953e6b` |
| 31 | `theorem` | [toList_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/tolist-tofinset--686dc334e6c5a14a93ec671e.md) | 183 | `result-track:686dc334e6c5a14a93ec671e058c53814d988e32d769f42a30c949f680f09698` |
| 32 | `theorem` | [_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.DedupEqSelf.Variantf71f0a5d490feb3e67f2b126f8486dced79af0db39975c2ffa96cbc2cc5d119f.List.toFinset_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-dedupeqself-variantf71f0--3ebf89eb0db614033ea70e45.md) | 187 | `result-track:3ebf89eb0db614033ea70e45d0df0756517ceae98e3b3750e0cdcfa692c3d173` |
| 33 | `theorem` | [exists_list_nodup_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Dedup/Variant630abae9d8182a63f72ee5df7278e0c48523f6a2bf3fa2ecb379b060df18f4ef.lean/declarations/exists-list-nodup-eq--72d68519c54b10d22039f425.md) | 192 | `result-track:72d68519c54b10d22039f4250b7e1c72da2d4ada5f54d5a30e1899ff80e15b67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
