# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Factors.Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "747602f04098ab86237467f1a3966af27f87249d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `747602f04098ab86237467f1a3966af27f87249d`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.List` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.GCD.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Prime` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Sort` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Subperm` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist--500fb92a94e6802850094e20.md) | 42 | `declaration-track:500fb92a94e6802850094e20c2ec054a16a705f22facbe3e63dd8a435b687120` |
| 2 | `theorem` | [primeFactorsList_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-zero--223683a29cc1d7f63dacb3a3.md) | 51 | `result-track:223683a29cc1d7f63dacb3a361fe68c826d118b11f6e59ddeed0bd6c1289165d` |
| 3 | `theorem` | [primeFactorsList_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-one--b7a8d56a53484cfd725ba6af.md) | 54 | `result-track:b7a8d56a53484cfd725ba6af5b429e8865e07cd4b84098709da2c3761ec64656` |
| 4 | `theorem` | [primeFactorsList_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-two--0687fbcc100dcc6b5642d4e4.md) | 57 | `result-track:0687fbcc100dcc6b5642d4e41cbedda511b554c345729c70b45fc2b3914cb65b` |
| 5 | `theorem` | [prime_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/prime-of-mem-primefactorslist--3d0feca3245d798858a987f2.md) | 59 | `result-track:3d0feca3245d798858a987f2a6c3f44534066aa270f5469b1310ff6fe0e335c3` |
| 6 | `theorem` | [pos_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/pos-of-mem-primefactorslist--16dcc5ab7135db8463febf10.md) | 71 | `result-track:16dcc5ab7135db8463febf104fceed2806dd54e9aa7ef3f9fa610c4b26db520b` |
| 7 | `theorem` | [prod_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/prod-primefactorslist--d66c31c461b0187b665b7a91.md) | 74 | `result-track:d66c31c461b0187b665b7a9108bc5d4fc8c523c467558fe96fe2bf00569ce9a9` |
| 8 | `theorem` | [primeFactorsList_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-prime--155070c5bde08ab1f1ea75a6.md) | 87 | `result-track:155070c5bde08ab1f1ea75a6901a408a176a65cbb58806af19d9c8762c680061` |
| 9 | `theorem` | [primeFactorsList_chain](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-chain--069309331500274822917344.md) | 94 | `result-track:069309331500274822917344867a871b35a5e5f6387ac03f227d833f6b227ce2` |
| 10 | `theorem` | [primeFactorsList_chain_2](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-chain-2--d8489ff7300e9e5a523b167a.md) | 107 | `result-track:d8489ff7300e9e5a523b167a20b38ad9a6a742de9b23ff7ac4dddb8e6d5378a0` |
| 11 | `theorem` | [primeFactorsList_chain'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-chain--30845627703380bbdadcdd76.md) | 110 | `result-track:30845627703380bbdadcdd7613b479c0f0c0c9ff917c0e9e20a2b2f67dc52545` |
| 12 | `theorem` | [primeFactorsList_sorted](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-sorted--c7291a6fa276630d4fb300e6.md) | 113 | `result-track:c7291a6fa276630d4fb300e6cd9956364d6609141ba9e4d29f0181e220c1148f` |
| 13 | `theorem` | [primeFactorsList_add_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-add-two--6376e3946613b4e0d2766def.md) | 118 | `result-track:6376e3946613b4e0d2766def5c91322e069f6a19e46689f5c566929d43da00a5` |
| 14 | `theorem` | [primeFactorsList_eq_nil](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-eq-nil--827119f8f583b1312911e7d7.md) | 123 | `result-track:827119f8f583b1312911e7d70a5f0a58bf241bfa6a4072d176d21d58b9e17105` |
| 15 | `theorem` | [eq_of_perm_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/eq-of-perm-primefactorslist--98d912445c8adfac31c0c63b.md) | 135 | `result-track:98d912445c8adfac31c0c63b66252f4bcbdd757ea31967097ceb50980cc94337` |
| 16 | `theorem` | [mem_primeFactorsList_iff_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/mem-primefactorslist-iff-dvd--c3aa5b1594da7c5aaf4e406a.md) | 143 | `result-track:c3aa5b1594da7c5aaf4e406a15e01d54adcf7eb5e10b877fd38d65b43120863e` |
| 17 | `theorem` | [dvd_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/dvd-of-mem-primefactorslist--70d8bc232f4a706144a3540e.md) | 149 | `result-track:70d8bc232f4a706144a3540ee62342a97e899ed70469cbd0be72f0834e65bb69` |
| 18 | `theorem` | [mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/mem-primefactorslist--919309db6add4a6d77954513.md) | 154 | `result-track:919309db6add4a6d7795451388784de784bbd9326a5e7272ba49445f99b34642` |
| 19 | `lemma` | [mem_primeFactorsList'](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/mem-primefactorslist--983a0d72d0bcda615e44fda6.md) | 158 | `result-track:983a0d72d0bcda615e44fda6ee7db0ed665936ffd3122d18a8cff637f4cb30c5` |
| 20 | `theorem` | [le_of_mem_primeFactorsList](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/le-of-mem-primefactorslist--064bca300b2e3cc3f0a79ad2.md) | 161 | `result-track:064bca300b2e3cc3f0a79ad2b99a406d8078a77853bd0df530c1872886470f70` |
| 21 | `theorem` | [primeFactorsList_unique](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-unique--e94d77bb8b5cd2ad8b371610.md) | 168 | `result-track:e94d77bb8b5cd2ad8b371610e83f8010214ccde2896960d872bd1efe24c8cc77` |
| 22 | `theorem` | [Prime.primeFactorsList_pow](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/prime-primefactorslist-pow--68a4ac80ae83d1a6993fa6be.md) | 181 | `result-track:68a4ac80ae83d1a6993fa6bebf2a3ae92f158b23fbacec5e34e9eff88f71647b` |
| 23 | `theorem` | [eq_prime_pow_of_unique_prime_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/eq-prime-pow-of-unique-prime-dvd--65ba840ef1d8b951fb8d5062.md) | 189 | `result-track:65ba840ef1d8b951fb8d5062869580e5d825c0df3e60603fc548dce5b01267ca` |
| 24 | `theorem` | [perm_primeFactorsList_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/perm-primefactorslist-mul--7af3e7f46e64fa213816f2be.md) | 196 | `result-track:7af3e7f46e64fa213816f2becb7954bd805c87fd412716f08f8b8af0d4c66cc3` |
| 25 | `theorem` | [perm_primeFactorsList_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/perm-primefactorslist-mul-of-coprime--0ba253bb0a8e3d83bced0a20.md) | 205 | `result-track:0ba253bb0a8e3d83bced0a20709aecdd276c6f39965559c39a7c8578bdcf2fff` |
| 26 | `theorem` | [primeFactorsList_sublist_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-sublist-right--b471a9f7e170a36d95ec4000.md) | 213 | `result-track:b471a9f7e170a36d95ec4000189d88f78a7acfa7dc5126b3d50d6051b156c99a` |
| 27 | `theorem` | [primeFactorsList_sublist_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-sublist-of-dvd--a3985705c6ecab61f71a6f35.md) | 221 | `result-track:a3985705c6ecab61f71a6f355e7e388a1c569ba00c25e0cf689a3a358129b464` |
| 28 | `theorem` | [primeFactorsList_subset_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-subset-right--46fb40a37a47b012b69198ff.md) | 226 | `result-track:46fb40a37a47b012b69198ff02ec85b498509a27dc021c903501985758c6fc4c` |
| 29 | `theorem` | [primeFactorsList_subset_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/primefactorslist-subset-of-dvd--58e515df7b5cf23c36715692.md) | 230 | `result-track:58e515df7b5cf23c36715692146621d88015dafaceb5dc36e1bed06d09a82ebe` |
| 30 | `theorem` | [dvd_of_primeFactorsList_subperm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/dvd-of-primefactorslist-subperm--fa28cce4505ac99dc8430c85.md) | 234 | `result-track:fa28cce4505ac99dc8430c85ce31588a936f1d5c79a5a61ab29c64a83518344a` |
| 31 | `theorem` | [replicate_subperm_primeFactorsList_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/replicate-subperm-primefactorslist-iff--b8cdab717e46b9293b014e02.md) | 247 | `result-track:b8cdab717e46b9293b014e02658b1abd5972f35f02afb0d06bb915393b85ea37` |
| 32 | `theorem` | [mem_primeFactorsList_mul](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/mem-primefactorslist-mul--8cfafba4b96d6237b5e55972.md) | 266 | `result-track:8cfafba4b96d6237b5e55972329c63f3c1fecc5bd1686b1043c0bb7914e6de73` |
| 33 | `theorem` | [coprime_primeFactorsList_disjoint](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/coprime-primefactorslist-disjoint--89ef4cee6e53e3e17bac3504.md) | 273 | `result-track:89ef4cee6e53e3e17bac350438615b39ab72c8d666cac5f357b581b4d858d681` |
| 34 | `theorem` | [mem_primeFactorsList_mul_of_coprime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/mem-primefactorslist-mul-of-coprime--fcd9e8b1b37b0954e1994ae9.md) | 281 | `result-track:fcd9e8b1b37b0954e1994ae9f0c922b6c8aa3c3bbd27c78be154247fec6d906c` |
| 35 | `theorem` | [mem_primeFactorsList_mul_left](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/mem-primefactorslist-mul-left--92773f2580636168d532f32d.md) | 292 | `result-track:92773f2580636168d532f32debd4ec8adf548b2906386aad283b23aa265e3857` |
| 36 | `theorem` | [mem_primeFactorsList_mul_right](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/mem-primefactorslist-mul-right--7047919a00bf445b5237ed7f.md) | 299 | `result-track:7047919a00bf445b5237ed7fc516063b3a893cc2e834cdd28923db99f322caa9` |
| 37 | `theorem` | [eq_two_pow_or_exists_odd_prime_and_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/eq-two-pow-or-exists-odd-prime-and-dvd--31febfd72161978b0cf20402.md) | 304 | `result-track:31febfd72161978b0cf20402d90fe931f67c048f07f86c4004a5acdab8939884` |
| 38 | `theorem` | [four_dvd_or_exists_odd_prime_and_dvd_of_two_lt](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/declarations/four-dvd-or-exists-odd-prime-and-dvd-of-two-lt--0cdaa57ea0dd0e259684d429.md) | 312 | `result-track:0cdaa57ea0dd0e259684d4299b63101d905fd7f186fc4c010455d43a4d82c1a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
