# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sets.Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af04803ae323d939ac3e1286bca22111158249cb",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af04803ae323d939ac3e1286bca22111158249cb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.BooleanAlgebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.SymmDiff` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset--1bb40cdd2560203227428143.md) | 39 | `declaration-track:1bb40cdd2560203227428143d859f272bba806379b791fa941a69e3666f865d1` |
| 2 | `theorem` | [toFinset_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-congr--87d0893c240f008e06afd833.md) | 43 | `result-track:87d0893c240f008e06afd8330d315a2fe7b6f4d2357c49d7522ece8e71cc23c0` |
| 3 | `theorem` | [mem_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/mem-tofinset--544b841733f9088c0327422c.md) | 47 | `result-track:544b841733f9088c0327422ce898f715568fd96b250cb1d1774bf9eca017174c` |
| 4 | `theorem` | [toFinset_ofFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-offinset--a2f8153be62f8c66d50208c1.md) | 52 | `result-track:a2f8153be62f8c66d50208c17d3c4cbfaa1bee14a4ee5985ca5af883dd420f76` |
| 5 | `def` | [decidableMemOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/decidablememoffintype--08f4d1169ba1ab20d1f2974f.md) | 60 | `declaration-track:08f4d1169ba1ab20d1f2974f3b1602593dfd63a6bbf618f90dccaea6afa51bbd` |
| 6 | `theorem` | [coe_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/coe-tofinset--e01614163286cd1f447412a2.md) | 64 | `result-track:e01614163286cd1f447412a2d595ec79efa11f75310120272c64c398651269d7` |
| 7 | `theorem` | [toFinset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-nonempty--e9452b7fc05b31726aec9a4b.md) | 68 | `result-track:e9452b7fc05b31726aec9a4b31e23d4fcf1e53d38d0a9dd3794cd251914fac59` |
| 8 | `theorem` | [toFinset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-inj--7e7ffec5de56cabedbb7853c.md) | 75 | `result-track:7e7ffec5de56cabedbb7853c315a6f516a846091dbfcc28f1f6d5f0bd8683e21` |
| 9 | `theorem` | [toFinset_subset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-subset-tofinset--fc33f254fc0943bf52c3b3f4.md) | 79 | `result-track:fc33f254fc0943bf52c3b3f4e5e36e98bfeb59742f96dafd6446057a13566363` |
| 10 | `theorem` | [toFinset_ssubset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-ssubset--7410a696ca825a9b56335668.md) | 83 | `result-track:7410a696ca825a9b56335668f5966ae8acb72d9d98013bfdad2bfb73c0ae8e4d` |
| 11 | `theorem` | [subset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/subset-tofinset--db653f4a19a5249010b3614a.md) | 87 | `result-track:db653f4a19a5249010b3614a22be1149a0a3c8b773034a6ff660829321008f43` |
| 12 | `theorem` | [ssubset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/ssubset-tofinset--aa7f7d5f2ad508da7344aa2c.md) | 91 | `result-track:aa7f7d5f2ad508da7344aa2cad07e8efec5b663e3de364a6e559344823470aca` |
| 13 | `theorem` | [toFinset_ssubset_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-ssubset-tofinset--947837918e4e70d01f22bbf3.md) | 95 | `result-track:947837918e4e70d01f22bbf3e46d4c4431bcb027e2bd407f153930f54cc98fa3` |
| 14 | `theorem` | [toFinset_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-subset--1aa06e2fa5cf3bfb3c1c224b.md) | 99 | `result-track:1aa06e2fa5cf3bfb3c1c224b9a13bef8f50aff672f8ad9879db3420c441ffeee` |
| 15 | `theorem` | [disjoint_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/disjoint-tofinset--34646262946a2fd3602b7e73.md) | 107 | `result-track:34646262946a2fd3602b7e731a67aa72df23211236297d63e0f36417fa06cb9d` |
| 16 | `theorem` | [toFinset_nontrivial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-nontrivial--3ce9ac5ce66021e42f764360.md) | 111 | `result-track:3ce9ac5ce66021e42f764360f4454e10ae4efe751fababecf70a61d18c3cf1d6` |
| 17 | `theorem` | [toFinset_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-inter--ddd01f6dc29fc209847f09a8.md) | 119 | `result-track:ddd01f6dc29fc209847f09a8657f75cb4e2622e8da8978ea6a4e659012bd6386` |
| 18 | `theorem` | [toFinset_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-union--b88904c308bf70863588b63c.md) | 124 | `result-track:b88904c308bf70863588b63c017a7aa143cae7ce6875f60678368f5e94ec0652` |
| 19 | `theorem` | [toFinset_diff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-diff--e7dc207f2f6931a23fc1621a.md) | 129 | `result-track:e7dc207f2f6931a23fc1621ad9cc8e1f6217b9f04376bc3fa0f8a1f46fadf4dc` |
| 20 | `theorem` | [toFinset_symmDiff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-symmdiff--7e8b1eea85cbb20af381a356.md) | 135 | `result-track:7e8b1eea85cbb20af381a356e73916a35ac8eb383ca3ad92492cd5127e5751ee` |
| 21 | `theorem` | [toFinset_compl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-compl--761cc317fe842a19773eb026.md) | 141 | `result-track:761cc317fe842a19773eb026c0147ad9fd94500b7e41350d1dfe12054c086590` |
| 22 | `theorem` | [toFinset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-empty--d8c5f354f2d15897bfde8ae1.md) | 149 | `result-track:d8c5f354f2d15897bfde8ae10f701d6d0b734c0c1cdb57182e24bbcb9f8b31b0` |
| 23 | `theorem` | [toFinset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-univ--55500d60e610f5e12e679a3c.md) | 157 | `result-track:55500d60e610f5e12e679a3c308c4356ff2ef0de1b541c395b9dc72a57d26f68` |
| 24 | `theorem` | [toFinset_eq_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-eq-empty--a847e79c2f57f49a1d1d5fe2.md) | 163 | `result-track:a847e79c2f57f49a1d1d5fe2b8363d0efd69ce661d06181becc796649ddc91e9` |
| 25 | `theorem` | [toFinset_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-eq-univ--190fd4a7a290e56da01dc6b7.md) | 168 | `result-track:190fd4a7a290e56da01dc6b7972c09529b4b01c43dc61668dd5273e994fc90db` |
| 26 | `theorem` | [toFinset_setOf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-setof--e3468a6313ef98837c116463.md) | 172 | `result-track:e3468a6313ef98837c1164637bd5bc98d1752f32b3e8ce32d509984905b1ef5b` |
| 27 | `theorem` | [toFinset_ssubset_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-ssubset-univ--242bbd107344e455b8a1f1f3.md) | 177 | `result-track:242bbd107344e455b8a1f1f312a3c2144202cf0c33eaf963bf20ea42443f20ea` |
| 28 | `theorem` | [toFinset_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-image--08e42a843c919867089c6e59.md) | 181 | `result-track:08e42a843c919867089c6e59fda2a43f0a983ffbef0f753a391f7432d2077d06` |
| 29 | `theorem` | [toFinset_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-range--b52e1312012f698c50dbcdd3.md) | 186 | `result-track:b52e1312012f698c50dbcdd3277aeb1f3bc39365f6e9b8301e37473b5d306b5d` |
| 30 | `theorem` | [toFinset_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-singleton--7869fefeddeecd8d8a8411d1.md) | 192 | `result-track:7869fefeddeecd8d8a8411d1bdc572ee2c6e7fee0075d8d2830f6d6ae0eec95e` |
| 31 | `theorem` | [toFinset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/tofinset-insert--8f2754f675ae22e0aef39bc6.md) | 197 | `result-track:8f2754f675ae22e0aef39bc6cbc5bec7f208b22f45a0f17e373bc1d00b9fbef4` |
| 32 | `theorem` | [filter_mem_univ_eq_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/filter-mem-univ-eq-tofinset--870b42f149c62dddeb5aefbf.md) | 202 | `result-track:870b42f149c62dddeb5aefbf1bab737702f7bce51d85fd6cc7bcef12d0a4d081` |
| 33 | `theorem` | [Finset.toFinset_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finset-tofinset-coe--4779851abbefa14cb6d37160.md) | 211 | `result-track:4779851abbefa14cb6d371604cbb485d0b5e1257438e6e9681ed6cd441995266` |
| 34 | `instance` | [Finset.fintypeCoeSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finset-fintypecoesort--c01bed3d354b3a640e6a8c1c.md) | 219 | `declaration-track:c01bed3d354b3a640e6a8c1c42f91091957c83a03e84d2b1a94ab620d365b00f` |
| 35 | `theorem` | [Finset.univ_eq_attach](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finset-univ-eq-attach--e6d2cc380e0194bc67323f2e.md) | 223 | `result-track:e6d2cc380e0194bc67323f2ef38c3f53f10ba77469d1527206798d691d21ef74` |
| 36 | `theorem` | [Fintype.coe_image_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/fintype-coe-image-univ--083cf2d9d5c9beab6ee9880e.md) | 228 | `result-track:083cf2d9d5c9beab6ee9880e332a983ee51609b99753ed48a78539a456f31563` |
| 37 | `instance` | [List.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/list-subtype-fintype--e79ea74ab6a1077dc05827a9.md) | 233 | `declaration-track:e79ea74ab6a1077dc05827a963c3e5f3bea48661abc6fee3cdfb16369335f153` |
| 38 | `instance` | [Multiset.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/multiset-subtype-fintype--3a92dc1acb3ef4ef6bf5c970.md) | 236 | `declaration-track:3a92dc1acb3ef4ef6bf5c970ad1d2cc0162167edf1d56882f911e2c7bf1ce22a` |
| 39 | `instance` | [Finset.Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finset-subtype-fintype--0f698f2c67bf47e9fc7ef889.md) | 239 | `declaration-track:0f698f2c67bf47e9fc7ef889b96e67b87a2656123e5634a969f8e89fb827d7ff` |
| 40 | `instance` | [FinsetCoe.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finsetcoe-fintype--c28436e8596b9e4b3ac09e58.md) | 242 | `declaration-track:c28436e8596b9e4b3ac09e5828c3a43c5b92cc4c81b317595c55f32dfd980b3f` |
| 41 | `theorem` | [Finset.attach_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finset-attach-eq-univ--88ad2066437a809b523d8cd7.md) | 245 | `result-track:88ad2066437a809b523d8cd7f572039afe51341af87cf1086a18e190c2ba71a7` |
| 42 | `instance` | [Prop.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/prop-fintype--2739e768df58c0aa83b68f47.md) | 248 | `declaration-track:2739e768df58c0aa83b68f472e4bcbffa09698aaece47946591d6fd560008648` |
| 43 | `theorem` | [Fintype.univ_Prop](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/fintype-univ-prop--85924d4e1d44390016bc9ec6.md) | 252 | `result-track:85924d4e1d44390016bc9ec68c5729674b2933ebb4879b684170d730b703a63f` |
| 44 | `instance` | [Subtype.fintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/subtype-fintype--9595d87ca56f9d28d1e25a19.md) | 255 | `declaration-track:9595d87ca56f9d28d1e25a19af8c321279a9f5bc6095cba15979265c1e1194ec` |
| 45 | `def` | [setFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/setfintype--138f08e3c0fccdbb525908bd.md) | 259 | `declaration-track:138f08e3c0fccdbb525908bd89e41320a56692b00d6638b50563adc487618de6` |
| 46 | `def` | [finsetEquivSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finsetequivset--80175497fa45cf90584c4c59.md) | 267 | `declaration-track:80175497fa45cf90584c4c59b21fa4dd9e6de6edd2eda6b884cf5e85eee08c6c` |
| 47 | `lemma` | [coe_finsetEquivSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/coe-finsetequivset--d22a0b67710fc5966f9fe5b2.md) | 273 | `result-track:d22a0b67710fc5966f9fe5b20f8d45ea4c5403afa305a9b0807063d6cc6c9f75` |
| 48 | `lemma` | [finsetEquivSet_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finsetequivset-apply--6d0692d8edff64e48bb4c0b3.md) | 275 | `result-track:6d0692d8edff64e48bb4c0b303855e09e7d2570fa59950451854cb4c7ff711f2` |
| 49 | `lemma` | [finsetEquivSet_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finsetequivset-symm-apply--bdef56346a7e0829b1d3c3f6.md) | 277 | `result-track:bdef56346a7e0829b1d3c3f63d31ce86d4ac79407bf7ed5d43e8f3f53f0dc425` |
| 50 | `def` | [finsetOrderIsoSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/finsetorderisoset--6d981bc433690042cddc602e.md) | 283 | `declaration-track:6d981bc433690042cddc602e3e5be5e086440606ccb0a181cdaa5df6109ad645` |
| 51 | `lemma` | [coe_finsetOrderIsoSet](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/coe-finsetorderisoset--95fa318e69a5e4ad40a4c636.md) | 288 | `result-track:95fa318e69a5e4ad40a4c636df29215fe56f1086d0d558abfc8705482fb1dd7c` |
| 52 | `lemma` | [coe_finsetOrderIsoSet_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/coe-finsetorderisoset-symm--f20eb88b09edc7ef218ee286.md) | 290 | `result-track:f20eb88b09edc7ef218ee286b4aa6298a3918520232594852cf9f92002d80565` |
| 53 | `theorem` | [mem_image_univ_iff_mem_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/mem-image-univ-iff-mem-range--3928af76e235c4aacde1211f.md) | 295 | `result-track:3928af76e235c4aacde1211f42275036c2ae67b0c0d182d52d621191c8a7326d` |
| 54 | `elab` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/elab--4e1502f5ebd5229a2b17e4d8.md) | 308 | `declaration-track:4e1502f5ebd5229a2b17e4d88f7c6c1b6dbd3247aefd04151e57e04fafb863e4` |
| 55 | `def` | [precheckFinsetStx](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sets/Variant4943eb8c8cdc6fb3d72d5fbdf51ad5d6f56b0a3d05bb977bd96931925c161afb.lean/declarations/precheckfinsetstx--d7803d17ef13d2013dcf1060.md) | 320 | `declaration-track:d7803d17ef13d2013dcf1060d5a3f3954a8349687832108976f6d0b6173cd0a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
