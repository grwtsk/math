# Verification target: GRWTSK.Algebra.GroupTheory.EpiMono.Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac1d3bf6e3c5745d15b4a92de8dfbcd57c7df4e8",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac1d3bf6e3c5745d15b4a92de8dfbcd57c7df4e8`.

Source path: `GRWTSK/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.EquivalenceGroupAddGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.EpiMono` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ker_eq_bot_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/ker-eq-bot-of-cancel--6ba88d075aefa2669518896a.md) | 44 | `result-track:6ba88d075aefa2669518896aa5148294a882fed45cb3949c48f015ea17c76adb` |
| 2 | `theorem` | [range_eq_top_of_cancel](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/range-eq-top-of-cancel--c210099dcdcf1b150fe46fb4.md) | 54 | `result-track:c210099dcdcf1b150fe46fb455c3e8b028e5904a517980b083f4646074cdb777` |
| 3 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/ker-eq-bot-of-mono--ca0f27a0f98ca24854b22858.md) | 78 | `result-track:ca0f27a0f98ca24854b228585fb826b595bc312df4e919aa2736e5d20c9dee35` |
| 4 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/mono-iff-ker-eq-bot--b93d06725b0341085e31cfda.md) | 83 | `result-track:b93d06725b0341085e31cfda27da09b3bcc26f3b407bf8f34878b9e46607bf32` |
| 5 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/mono-iff-injective--e863b161d5cdd9076d579da3.md) | 88 | `result-track:e863b161d5cdd9076d579da37ede20c2a30c352c185153aca87fbf463e1b0c63` |
| 6 | `inductive` | [XWithInfinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/xwithinfinity--9253f12f1b3798aef099eb68.md) | 97 | `declaration-track:9253f12f1b3798aef099eb682e515a56bc40f6d315f916e0e37afb9583d49b95` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/instance--53642cd93a3395181d71ec8e.md) | 109 | `declaration-track:53642cd93a3395181d71ec8ee351afc1d6978d7a19c182a4cc3c46d09395d419` |
| 8 | `theorem` | [mul_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/mul-smul--df0d9ad29b6c8a0c0699f61b.md) | 118 | `result-track:df0d9ad29b6c8a0c0699f61b57abeaf320de85335bc783d25197f4e05d8aae5a` |
| 9 | `theorem` | [one_smul](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/one-smul--f9af66d5bfcaf5d7ebd08eaa.md) | 125 | `result-track:f9af66d5bfcaf5d7ebd08eaab9d04f3805a8ef7475b5b4fe095b627ab57ea96e` |
| 10 | `theorem` | [fromCoset_eq_of_mem_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/fromcoset-eq-of-mem-range--fd6afa45e80e82a658d61383.md) | 132 | `result-track:fd6afa45e80e82a658d613837b0431df40c6e6975ec1fa51832df093d1a240e7` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/example--6c40a628201b0957201d2a94.md) | 139 | `declaration-track:6c40a628201b0957201d2a94c49882bf2ce7e8d5d377c969de8e754dab86e92a` |
| 12 | `theorem` | [fromCoset_ne_of_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/fromcoset-ne-of-nin-range--30a6bbfe67fb065e62554dcb.md) | 141 | `result-track:30a6bbfe67fb065e62554dcbd3cd0d2b9e3e865d68f45febba7b52841a2edadd` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/instance--2a8c1d88e2f9028affee66b0.md) | 149 | `declaration-track:2a8c1d88e2f9028affee66b0ff0902ec4824aba21dd59f36e4ab493a41ab505e` |
| 14 | `def` | [tau](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/tau--e618cbc9a75820eef02735d5.md) | 154 | `declaration-track:e618cbc9a75820eef02735d53f9dc3bcc38d8a449b4d6e309f4407fe8fc13aed` |
| 15 | `theorem` | [τ_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/apply-infinity--990d3a33774a40cfeed02da9.md) | 159 | `result-track:990d3a33774a40cfeed02da9a36d14298ff65105bdd83664d4c26ae9129504e5` |
| 16 | `theorem` | [τ_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/apply-fromcoset--7b02541fe21e69dbe9f6a790.md) | 162 | `result-track:7b02541fe21e69dbe9f6a7908070dac566e45f4710c4898ee9ce54d4df8e9728` |
| 17 | `theorem` | [τ_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/apply-fromcoset--554a36bf563a024867db6d61.md) | 165 | `result-track:554a36bf563a024867db6d61a41d41267de0a189429498f24b505031de8f5c97` |
| 18 | `theorem` | [τ_symm_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/symm-apply-fromcoset--1e249f748cc4d739a9b4cc05.md) | 169 | `result-track:1e249f748cc4d739a9b4cc05aa8bb78f85cc88318aa62a1fd7b2ed3d37a51d2c` |
| 19 | `theorem` | [τ_symm_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/symm-apply-infinity--ff41176f5c64f4677c2faedc.md) | 173 | `result-track:ff41176f5c64f4677c2faedcafdc3f77ad9c9a6ef18ba41d2b5bea570b6b81ff` |
| 20 | `def` | [g](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/g--1c28b7c1e76d02eab205699d.md) | 180 | `declaration-track:1c28b7c1e76d02eab205699d20e7964a75dc6e41db958a78e48c487e2d10f414` |
| 21 | `def` | [h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/h--37da3b6b10e8a9d56882bd5a.md) | 201 | `declaration-track:37da3b6b10e8a9d56882bd5a1c23baba7bd422671971b7576c6a68f9893b2191` |
| 22 | `theorem` | [g_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/g-apply-fromcoset--9c2913b2580dffddbe56cb16.md) | 221 | `result-track:9c2913b2580dffddbe56cb1655eac89b70a4f3b27d7ee2ea3f1984c9dad92570` |
| 23 | `theorem` | [g_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/g-apply-infinity--f73f2bd7159f5ce046e558c8.md) | 225 | `result-track:f73f2bd7159f5ce046e558c8db5a72f15445fb318ff2267d3e16ac1e4089caee` |
| 24 | `theorem` | [h_apply_infinity](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/h-apply-infinity--feb08a547daef2f388d323e6.md) | 227 | `result-track:feb08a547daef2f388d323e6bf59fdf110fdbe207c7b653a608974ff8c4739c5` |
| 25 | `theorem` | [h_apply_fromCoset](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/h-apply-fromcoset--3798ca0bddc86e37e365dea1.md) | 233 | `result-track:3798ca0bddc86e37e365dea10091cb255be42f44ac63ca33621099ec95eab7da` |
| 26 | `theorem` | [h_apply_fromCoset'](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/h-apply-fromcoset--139910a327b5988f23d21039.md) | 239 | `result-track:139910a327b5988f23d21039eb8ea6064e9188df71023c047ae2f46dbf3bff58` |
| 27 | `theorem` | [h_apply_fromCoset_nin_range](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/h-apply-fromcoset-nin-range--9555b1130d8ac36e62701a85.md) | 243 | `result-track:9555b1130d8ac36e62701a858c1640f113b6f6e491452a1de610b6432f45dc47` |
| 28 | `theorem` | [agree](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/agree--0bbded54b524643da70c1b34.md) | 255 | `result-track:0bbded54b524643da70c1b34843ed1b6fce12231c030ed65ce84556d3c6e6770` |
| 29 | `theorem` | [comp_eq](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/comp-eq--7d25d07610ed9fdccf7c34cb.md) | 278 | `result-track:7d25d07610ed9fdccf7c34cbf78719ceffbc27b1d0140cc808478e33fc68d7cb` |
| 30 | `theorem` | [g_ne_h](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/g-ne-h--338f6be233a6d8430cc5bcfd.md) | 286 | `result-track:338f6be233a6d8430cc5bcfd44d23b86580e28c9c6143c7acb3ef176fb97f1d2` |
| 31 | `theorem` | [surjective_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/surjective-of-epi--c99518326623a896dfb5325c.md) | 295 | `result-track:c99518326623a896dfb5325c26b58028d23749dd4833c4989aa8be30e7d6155c` |
| 32 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/epi-iff-surjective--60e884e62bd8b875c1778ab4.md) | 304 | `result-track:60e884e62bd8b875c1778ab46ab6ee6dfd8fc108f3bc284554473af0b81af0fa` |
| 33 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/epi-iff-range-eq-top--17904f6c7b83a23878511f60.md) | 307 | `result-track:17904f6c7b83a23878511f60d9ae2ded3f7203d58e61084acfc1fe494dbaff37` |
| 34 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/epi-iff-surjective--1098487ddd74f8be0d49bf72.md) | 317 | `result-track:1098487ddd74f8be0d49bf72728a19e90a8e9c0366cdbb0335d7b786e40267d2` |
| 35 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/epi-iff-range-eq-top--88042e35505cfe1b55a356e2.md) | 324 | `result-track:88042e35505cfe1b55a356e20fb0f0a8aff9fb092f77780f807449f98a679056` |
| 36 | `instance` | [forget_grp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/forget-grp-preserves-mono--c3a0bb177caf71699953591e.md) | 335 | `declaration-track:c3a0bb177caf71699953591e467321513a494873cd3d1917822fc2e62615c875` |
| 37 | `instance` | [forget_grp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/forget-grp-preserves-epi--5dbce464c9d5b959fc7a7fab.md) | 339 | `declaration-track:5dbce464c9d5b959fc7a7fab0cf73d93b1df819c0a5eb0fe26f5022d3640d2c2` |
| 38 | `theorem` | [ker_eq_bot_of_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/ker-eq-bot-of-mono--58f32618fc24ce5deab77e3c.md) | 350 | `result-track:58f32618fc24ce5deab77e3cfa5bde97a7b2d279a46bf3eea85a269d68aa8a35` |
| 39 | `theorem` | [mono_iff_ker_eq_bot](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/mono-iff-ker-eq-bot--6661cf1426e31971cd9ef64a.md) | 355 | `result-track:6661cf1426e31971cd9ef64a635b3b672f83fe4037a64073ec61e2a8608d3fde` |
| 40 | `theorem` | [mono_iff_injective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/mono-iff-injective--1e43cd40ab3afde5c28eb684.md) | 360 | `result-track:1e43cd40ab3afde5c28eb684c79139be2e7ec20a8f7f77a6c0fa5efb033ef042` |
| 41 | `theorem` | [range_eq_top_of_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/range-eq-top-of-epi--c7f1f78fbbf897eaffc749d0.md) | 364 | `result-track:c7f1f78fbbf897eaffc749d045a051a76edc44f3010234a9b96a5b466e6827ec` |
| 42 | `theorem` | [epi_iff_range_eq_top](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/epi-iff-range-eq-top--1ffefb54a5d902373826f59f.md) | 369 | `result-track:1ffefb54a5d902373826f59f4b16fcd7b7efaf34afcc3ba5a8ecab419fcbfa98` |
| 43 | `theorem` | [epi_iff_surjective](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/epi-iff-surjective--920656b5be0ed700e195d1a9.md) | 375 | `result-track:920656b5be0ed700e195d1a9b8f12c59829f9664638a6e92585767afcd151caa` |
| 44 | `instance` | [forget_commGrp_preserves_mono](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/forget-commgrp-preserves-mono--77b1496796c606850806996c.md) | 379 | `declaration-track:77b1496796c606850806996cf5a5271daf7fc0e1dd19bdcfa315e02b2a4db390` |
| 45 | `instance` | [forget_commGrp_preserves_epi](../../../../../mathematics/Algebra/GroupTheory/EpiMono/Variantf63e50edee5619a76469feb849e3357624fbe83efd1f6b03b52614442594f0db.lean/declarations/forget-commgrp-preserves-epi--d6d6e9a3d1623210fa196354.md) | 383 | `declaration-track:d6d6e9a3d1623210fa19635491e707d31408d9263cb27accade7d205c04bc5c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
