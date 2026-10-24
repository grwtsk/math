# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Factors.Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c36cb520eec71bdc6e8fdb79b0c84a30183073bc",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c36cb520eec71bdc6e8fdb79b0c84a30183073bc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PNat.Prime` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factors` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Sort` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PrimeMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/primemultiset--d8ed9b7fb13a759728c43749.md) | 30 | `declaration-track:d8ed9b7fb13a759728c4374931963e2bd8e2769b429665fd75189739b206ca0f` |
| 2 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/instance--bdf3c7ef198ec3769b6b2729.md) | 35 | `declaration-track:bdf3c7ef198ec3769b6b272987ee8ed9c5e0948601bef6c67070f0439b0df24d` |
| 3 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/instance--2db26b02b8191571aa0a595a.md) | 38 | `declaration-track:2db26b02b8191571aa0a595a5019503c8049339e7bbed1502a419c141a423634` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/instance--ba52d418c546186fed66d35d.md) | 44 | `declaration-track:ba52d418c546186fed66d35ddf6fc42b095ba430db3e58bb80dcc3858640665e` |
| 5 | `def` | [ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/ofprime--8c3f89467ad81c2282a214c7.md) | 47 | `declaration-track:8c3f89467ad81c2282a214c7c5a5071914407bc4b15a437f85c311949d91600d` |
| 6 | `theorem` | [card_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/card-ofprime--e0a47fe6a2af7878d408aa64.md) | 51 | `result-track:e0a47fe6a2af7878d408aa640275fe3211cba12ddb9cd2d6aeb033fcf3b0079f` |
| 7 | `def` | [toNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/tonatmultiset--e4bd6132db0b05e3405e918b.md) | 63 | `declaration-track:e4bd6132db0b05e3405e918b59c5b842cb09fe3d0cef5d26fb59ef6b6ed0c5ad` |
| 8 | `instance` | [coeNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coenat--9f84a927339c6b3003d523d1.md) | 66 | `declaration-track:9f84a927339c6b3003d523d13507ceff45c78d22408c045c6eb7e45c47baaafd` |
| 9 | `def` | [coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coenatmonoidhom--d28d026bc3e10e2f4da3a4b9.md) | 72 | `declaration-track:d28d026bc3e10e2f4da3a4b9fbdb3dddde686ed0e54c558e26794c8d95924598` |
| 10 | `theorem` | [coe_coeNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coe-coenatmonoidhom--a5e09959c801bd90af691c7d.md) | 77 | `result-track:a5e09959c801bd90af691c7da14e0e40a32713ab3b9faef2de3376fe32974ccd` |
| 11 | `theorem` | [coeNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coenat-injective--40d36906f3b71aee1d9aef3d.md) | 81 | `result-track:40d36906f3b71aee1d9aef3d51145394b5a40a118a4cdf26e2c479af9c8e10fb` |
| 12 | `theorem` | [coeNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coenat-ofprime--4eeb462dc81bc0a5b15dccb9.md) | 85 | `result-track:4eeb462dc81bc0a5b15dccb98f334c990c5b641d13225c4392159b488f51ede5` |
| 13 | `theorem` | [coeNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coenat-prime--fae82b504ceceeb67bca3ae9.md) | 89 | `result-track:fae82b504ceceeb67bca3ae95f4b1708323c3b6b7ca6952d962e0fb2a87d5d15` |
| 14 | `def` | [toPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/topnatmultiset--eb21bad7391bf6170c9ff2b6.md) | 95 | `declaration-track:eb21bad7391bf6170c9ff2b607b323a5ac847eb319fb9a3d4542f50d2b8b5385` |
| 15 | `instance` | [coePNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coepnat--06d54fcf4c835e505a5ebd2d.md) | 98 | `declaration-track:06d54fcf4c835e505a5ebd2d1236ff5a50c1445447ab385cf311d9320346cb65` |
| 16 | `def` | [coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coepnatmonoidhom--0e4d359291eee1feb826db74.md) | 104 | `declaration-track:0e4d359291eee1feb826db74112d51e0aa35b43f14d18f1beb90b44a64cf459b` |
| 17 | `theorem` | [coe_coePNatMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coe-coepnatmonoidhom--b1a1db318586ddb197af6e2b.md) | 109 | `result-track:b1a1db318586ddb197af6e2bd131074423dc5154705f3a4b4c408b990521a46f` |
| 18 | `theorem` | [coePNat_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coepnat-injective--707e96b160afdff95dc7911f.md) | 113 | `result-track:707e96b160afdff95dc7911f0c2a02506742cb5c60ba148182daccaa035b23e0` |
| 19 | `theorem` | [coePNat_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coepnat-ofprime--4d9156a17db80c5e71df2933.md) | 117 | `result-track:4d9156a17db80c5e71df293309be1a1d9261e71e815be0d6affe6fc8de0de04a` |
| 20 | `theorem` | [coePNat_prime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coepnat-prime--753e9601ce52ea418bc120d7.md) | 121 | `result-track:753e9601ce52ea418bc120d7b826c15a5e3a26936cb422683727449644ca9a73` |
| 21 | `instance` | [coeMultisetPNatNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coemultisetpnatnat--8efc0edc30cb8a3de1fe4fd0.md) | 126 | `declaration-track:8efc0edc30cb8a3de1fe4fd031199d08f7a80699014aa3c61a864ca5765fa61a` |
| 22 | `theorem` | [coePNat_nat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coepnat-nat--e28b62fd7ffe2127f5997cf0.md) | 130 | `result-track:e28b62fd7ffe2127f5997cf017bc6de4df1d757605797677c753a395c2f2c954` |
| 23 | `def` | [prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod--7f90decbc8ebc4245e111172.md) | 137 | `declaration-track:7f90decbc8ebc4245e11117204b0fedd950a972d06d5631f002e7b54db55de7a` |
| 24 | `theorem` | [coe_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coe-prod--012cd4faf0380531520dea16.md) | 141 | `result-track:012cd4faf0380531520dea16a162d4bdb52fbf3c9ea633db7d25cde94c2ad8bb` |
| 25 | `theorem` | [prod_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-ofprime--52d3284c61cf513aed2883eb.md) | 149 | `result-track:52d3284c61cf513aed2883ebb3e29d2d9e4ac8a67c911630d678832d0748c18d` |
| 26 | `def` | [ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/ofnatmultiset--8bcf9869b7bd362590ccf298.md) | 154 | `declaration-track:8bcf9869b7bd362590ccf2984e6aabc339a2720191160c32c073b214bee498ae` |
| 27 | `theorem` | [to_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/to-ofnatmultiset--4019f739ce8e74f3cce4cd07.md) | 158 | `result-track:4019f739ce8e74f3cce4cd0791e0403acb41ffb29c2490289cea27e6f9220cb1` |
| 28 | `theorem` | [prod_ofNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-ofnatmultiset--fab0b7784abe994e9a9ca0dc.md) | 166 | `result-track:fab0b7784abe994e9a9ca0dca298100ecbbf852813abed97949b10b7105cd5b8` |
| 29 | `def` | [ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/ofpnatmultiset--bfa95837cbdd0993f998f320.md) | 171 | `declaration-track:bfa95837cbdd0993f998f3209fa01dde7e53ae9d191ab9ca88720d808a3e6ee2` |
| 30 | `theorem` | [to_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/to-ofpnatmultiset--48577011483ce7f14ec6ba8c.md) | 175 | `result-track:48577011483ce7f14ec6ba8cfa145f0369f00a75a726c166954a7b848980b8dc` |
| 31 | `theorem` | [prod_ofPNatMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-ofpnatmultiset--214fc65b2464f8e70891f657.md) | 184 | `result-track:214fc65b2464f8e70891f65796e5c2abb7fc044ce7b031f18bac905b8e198927` |
| 32 | `def` | [ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/ofnatlist--c7fc27ee3c4e930ef10820d6.md) | 191 | `declaration-track:c7fc27ee3c4e930ef10820d6d26808f0a2954091e9c27539dbfedec9992d8485` |
| 33 | `theorem` | [prod_ofNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-ofnatlist--819c6eaa36561cf6186e3fe0.md) | 195 | `result-track:819c6eaa36561cf6186e3fe025f281960135b0e8e2e96a4c9ffe8602fed3a36c` |
| 34 | `def` | [ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/ofpnatlist--ebf819992b90d81e9d3f0cd5.md) | 203 | `declaration-track:ebf819992b90d81e9d3f0cd5ae66dc4b47f6fbecb6235e32df3bd51fb789a78d` |
| 35 | `theorem` | [prod_ofPNatList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-ofpnatlist--409db90dbf6858e7f01623bf.md) | 207 | `result-track:409db90dbf6858e7f01623bfd8708d38560bd53498944eef29223a8186f1859e` |
| 36 | `theorem` | [prod_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-zero--0fc86189608d029b99cf00fa.md) | 215 | `result-track:0fc86189608d029b99cf00faa0fc148ba2f1a4e25708af5ac5b6d2ccba4dde68` |
| 37 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-add--8c39b6d3bf2bfebf640431ec.md) | 219 | `result-track:8c39b6d3bf2bfebf640431eccded0a7e435d78c5cb886581c6c0fd04129fb2c4` |
| 38 | `theorem` | [prod_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-smul--9431fbee35499dd2a153ee14.md) | 226 | `result-track:9431fbee35499dd2a153ee14a85ebeb6527686dbdf48ece1d89b4913e15d2d53` |
| 39 | `def` | [factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset--5b190e3204d7fa75e4324bca.md) | 238 | `declaration-track:5b190e3204d7fa75e4324bcaba7e9ccb76ffe392e6b501163be9a29ed6925458` |
| 40 | `theorem` | [prod_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-factormultiset--53dcafc3ff17a449bddb34cc.md) | 243 | `result-track:53dcafc3ff17a449bddb34ccf0e302041d3a68ae649aca284d314eec0c4b5255` |
| 41 | `theorem` | [coeNat_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/coenat-factormultiset--e7660ee3f99835deeecd3912.md) | 250 | `result-track:e7660ee3f99835deeecd3912ee44b82d8b3c1f76b035394a2be7c1b288b5112f` |
| 42 | `theorem` | [factorMultiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-prod--9d76b26c1035a448794c22f7.md) | 261 | `result-track:9d76b26c1035a448794c22f79bc24176cd8e2c9e87e9447371558eec400915cb` |
| 43 | `def` | [factorMultisetEquiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultisetequiv--67fe1e4e8b36c49b6a340149.md) | 281 | `declaration-track:67fe1e4e8b36c49b6a3401495cfb046467a18d24dc1efc94bee7ff92893d1bf2` |
| 44 | `theorem` | [factorMultiset_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-one--ce09013395df8f440d882a3f.md) | 291 | `result-track:ce09013395df8f440d882a3f6dadf836de28411ff17f18c45f92d47fc4d44a3c` |
| 45 | `theorem` | [factorMultiset_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-mul--c810958c0f00fa92e1ff5a4c.md) | 295 | `result-track:c810958c0f00fa92e1ff5a4cd27089296042137ef3a19fc92b9602d4ca711fd5` |
| 46 | `theorem` | [factorMultiset_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-pow--e87c7c9528b8443f53519ae0.md) | 305 | `result-track:e87c7c9528b8443f53519ae06ff678e954c30972d1918d072cab6ca56d29f50b` |
| 47 | `theorem` | [factorMultiset_ofPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-ofprime--0d132606f6b87f68045213e0.md) | 314 | `result-track:0d132606f6b87f68045213e05a331f9ecaaf560fe1aad81f516094d22394852b` |
| 48 | `theorem` | [factorMultiset_le_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-le-iff--3eb0164a8355c251dd17ba38.md) | 324 | `result-track:3eb0164a8355c251dd17ba38a2eada2e29b7eca9fcdf8dbcac4794dcb5586cf7` |
| 49 | `theorem` | [factorMultiset_le_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-le-iff--ac10d22242f2a6307f828711.md) | 336 | `result-track:ac10d22242f2a6307f82871150edaa3542f4936aa0467b0e0dc9636dd7025afd` |
| 50 | `theorem` | [prod_dvd_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-dvd-iff--830cfb95073e28aa26e32ad0.md) | 347 | `result-track:830cfb95073e28aa26e32ad0265041ab131423e164788721ae776d4562caa987` |
| 51 | `theorem` | [prod_dvd_iff'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-dvd-iff--3bfbb8db1f94e5e3e085b8b0.md) | 353 | `result-track:3bfbb8db1f94e5e3e085b8b02053f3901d2fb3cca3c746a978f09c4444f91012` |
| 52 | `theorem` | [factorMultiset_gcd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-gcd--8575498ed1557b6b9e5904fc.md) | 365 | `result-track:8575498ed1557b6b9e5904fcf05dc59adcbe38958f4d034ed94f0bc0e755d286` |
| 53 | `theorem` | [factorMultiset_lcm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/factormultiset-lcm--66fa897af049b3891087b177.md) | 377 | `result-track:66fa897af049b3891087b177587c872cac3b48cf67057a8c5ebb4ec943d28aee` |
| 54 | `theorem` | [count_factorMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/count-factormultiset--22634fea5f6a6f3055b3282d.md) | 391 | `result-track:22634fea5f6a6f3055b3282d3bc2e1c7e0f9a553445b4d24edd0a138ba51da4c` |
| 55 | `theorem` | [prod_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-inf--749df1fcf3ea8fe36122a206.md) | 409 | `result-track:749df1fcf3ea8fe36122a2060236183fe693ab40a42da28911cd3ebcbaf4362f` |
| 56 | `theorem` | [prod_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Factors/Variant7fead7a53c6f1c14418e2de3e60561911bfa614206bfd61d9f3c8b074bdb5897.lean/declarations/prod-sup--f36205802b914d8098983103.md) | 418 | `result-track:f36205802b914d80989831035ab44d0ca9ed211e30186877755f73c48ce8170f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
