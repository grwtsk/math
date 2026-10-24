# Verification target: GRWTSK.NumberTheory.AutomorphicForms.ModularForms.SlashInvariantForms.Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10cf5fa9422dede880bb45a3f6dd224876649ca2",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10cf5fa9422dede880bb45a3f6dd224876649ca2`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.CongruenceSubgroups` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.SlashActions` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SlashInvariantForm](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slashinvariantform--451ee88de4b80f6bc2c81e19.md) | 39 | `declaration-track:451ee88de4b80f6bc2c81e193a82ff5f0b73e63fa2e83c45f6c514133c3bf649` |
| 2 | `class` | [SlashInvariantFormClass](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slashinvariantformclass--5378fa344c1e044029322265.md) | 45 | `declaration-track:5378fa344c1e0440293222652204f0bc3a97fd3111b3aeedd0a59356e481d4df` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--cfe11c3050030d11c120319c.md) | 48 | `declaration-track:cfe11c3050030d11c120319cf5688170bf13dd87826754e0e75fd3b1f7ad1cce` |
| 4 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--8c262d6c657669006da69b1e.md) | 53 | `declaration-track:8c262d6c657669006da69b1e530b781cd424d310c03db30d393f854326f98978` |
| 5 | `theorem` | [SlashInvariantForm.toFun_eq_coe](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slashinvariantform-tofun-eq-coe--3d1c358eeb5ea802b36cfcd4.md) | 60 | `result-track:3d1c358eeb5ea802b36cfcd4f657c1ec2c0555e88892dd5f25a2f353e35a99bb` |
| 6 | `theorem` | [SlashInvariantForm.coe_mk](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slashinvariantform-coe-mk--ec1d9edffa3ab58bb584ca37.md) | 64 | `result-track:ec1d9edffa3ab58bb584ca37e8590ccbe6dc2b9105ad090de78c59b6d74fe116` |
| 7 | `theorem` | [SlashInvariantForm.ext](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slashinvariantform-ext--076a66c45e7f5038c23a3a16.md) | 67 | `result-track:076a66c45e7f5038c23a3a16fabdcf7b3a7682e923b4d6e0cda9484001841c17` |
| 8 | `def` | [SlashInvariantForm.copy](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slashinvariantform-copy--3a997d46f0b723021a72751f.md) | 72 | `declaration-track:3a997d46f0b723021a72751f2f57949efa3bb3af60722221fb23f6a34379a1a5` |
| 9 | `theorem` | [slash_action_eqn](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slash-action-eqn--3fd10b497468670276234696.md) | 87 | `result-track:3fd10b49746867027623469672273471d1e02e23ca1c24012b038a4cae625555` |
| 10 | `theorem` | [slash_action_eqn'](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slash-action-eqn--e00c059446ed2b4a8d0d4792.md) | 91 | `result-track:e00c059446ed2b4a8d0d47925b7091c8cafc1f6e18396bf09b615c9d33a30f8c` |
| 11 | `theorem` | [slash_action_eqn''](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/slash-action-eqn--efe33eb4b120ac3b5a2f7df0.md) | 97 | `result-track:efe33eb4b120ac3b5a2f7df0d8d9f9f31b822278a632aa7319188fd745021c52` |
| 12 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--3e44342931f5fdd6a42512ce.md) | 102 | `declaration-track:3e44342931f5fdd6a42512ce3577f231b2a7bc45cd137574186f0b4edfbfabf9` |
| 13 | `instance` | [instAdd](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instadd--0a2dfaf623d7a95bea2850c8.md) | 105 | `declaration-track:0a2dfaf623d7a95bea2850c89407d707583b9b52c3129d08468d89fc59609ceb` |
| 14 | `theorem` | [coe_add](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-add--0aadef580d621d5d0703f7de.md) | 112 | `result-track:0aadef580d621d5d0703f7de42bb54bdb1e9df8e377b74d07235f4fe77744c34` |
| 15 | `theorem` | [add_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/add-apply--644105029b703b969e19f0fe.md) | 116 | `result-track:644105029b703b969e19f0fe04639e84fda1542928ad2c09886beaeb6dc609a3` |
| 16 | `instance` | [instZero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instzero--1be57f813698a45e4bf6fe32.md) | 119 | `declaration-track:1be57f813698a45e4bf6fe32dbc72b7d903d219e651eac59191973a5eb30e914` |
| 17 | `theorem` | [coe_zero](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-zero--a2bcc1505c193a54764c8572.md) | 124 | `result-track:a2bcc1505c193a54764c85727303c910abdef8c12ea573de621cdef0edd660bf` |
| 18 | `instance` | [instSMul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instsmul--c73bf54caa720fed9a2eb3ce.md) | 131 | `declaration-track:c73bf54caa720fed9a2eb3ceffb9eb9e55df167e69b29136436cb9b1df992f04` |
| 19 | `theorem` | [coe_smul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-smul--cb4034b8a62a1cd5fe66a44f.md) | 137 | `result-track:cb4034b8a62a1cd5fe66a44ff39a692c427c0edcf037d88e6a6c75c6b5a0c152` |
| 20 | `theorem` | [smul_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/smul-apply--c8f8418e80685c026dac71d3.md) | 141 | `result-track:c8f8418e80685c026dac71d3c36528727f8280658c0ee6c691746fb14a981a7d` |
| 21 | `instance` | [instNeg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instneg--5f75d2cf222c34ac65fab77c.md) | 146 | `declaration-track:5f75d2cf222c34ac65fab77cdad80c19bfe09fa25a30336bc5aa2ac1d05a8087` |
| 22 | `theorem` | [coe_neg](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-neg--80b25f7bd9d553c403fa1199.md) | 152 | `result-track:80b25f7bd9d553c403fa1199773af52abba537cc01f908eda913d53c79e34cc9` |
| 23 | `theorem` | [neg_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/neg-apply--8fc013cc0f202c6509b1f301.md) | 156 | `result-track:8fc013cc0f202c6509b1f30170602cd6edd7b1dc7e2272f11ca6672abf15e194` |
| 24 | `instance` | [instSub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instsub--d1704eb91eb58acc1455814b.md) | 159 | `declaration-track:d1704eb91eb58acc1455814b8db6782b9cf3c42e569e666b285a0b1f9a191f3b` |
| 25 | `theorem` | [coe_sub](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-sub--125af52e88288352f6c59aac.md) | 163 | `result-track:125af52e88288352f6c59aac118824d947249582a85ab26711153cd3544c5891` |
| 26 | `theorem` | [sub_apply](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/sub-apply--ddf1509cbf3848797da2c1df.md) | 167 | `result-track:ddf1509cbf3848797da2c1df907864e5a8c883fc7fed92b232e8a8f12be6d2cd` |
| 27 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--31b46d5e96a8cc7c51f7d09b.md) | 170 | `declaration-track:31b46d5e96a8cc7c51f7d09b864c00a43d97dbd51dbe9967c4d579073aa7f876` |
| 28 | `def` | [coeHom](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coehom--9a2cef5f3222bbf59da5722c.md) | 174 | `declaration-track:9a2cef5f3222bbf59da5722c41461efe2521664c2973a286b81bd55aeeea7fb4` |
| 29 | `theorem` | [coeHom_injective](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coehom-injective--ac99e297b092c5c5f0629e11.md) | 179 | `result-track:ac99e297b092c5c5f0629e1166c7ff7b2bf1a06e9d1b4478f43e18c117f51c9a` |
| 30 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--6c6acbe82ec5e4f1bd092703.md) | 182 | `declaration-track:6c6acbe82ec5e4f1bd0927036b9149b56fb9caa409eab41f74d87a8e50ff9032` |
| 31 | `def` | [const](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/const--2ede7a46a53069177facdd8c.md) | 187 | `declaration-track:2ede7a46a53069177facdd8cce2bef3909d8d472ded3b1e52ed95743e2c7579f` |
| 32 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--ec9584cf8adfbf131175376e.md) | 191 | `declaration-track:ec9584cf8adfbf131175376e1c233e002eb36fcd0216f29f949c5bdbfcf50f67` |
| 33 | `theorem` | [one_coe_eq_one](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/one-coe-eq-one--b3f1d330bd711b5acef32b4f.md) | 195 | `result-track:b3f1d330bd711b5acef32b4f17e4cfb08da061fb29c1cc00f19f5663ad2d9a6f` |
| 34 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--4221c008564ce5e3aac61205.md) | 198 | `declaration-track:4221c008564ce5e3aac6120583db0f1eedd580b90304c8b0aa827f38f1e4b10a` |
| 35 | `def` | [mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/mul--1c282d2a64ca56bbb54fca27.md) | 203 | `declaration-track:1c282d2a64ca56bbb54fca27a4f1d7c7feb2a7e85834829019ec4f4076e77e51` |
| 36 | `theorem` | [coe_mul](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-mul--2d930b9bbef0f50c812c45b6.md) | 210 | `result-track:2d930b9bbef0f50c812c45b66906750a545c6256980ffa0ec4139b987cdd54ae` |
| 37 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--dd0ec17dec09c03a607ec08d.md) | 214 | `declaration-track:dd0ec17dec09c03a607ec08d758bf128f41b44dd05728e452ff77be900b66246` |
| 38 | `theorem` | [coe_natCast](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-natcast--7053e2eccced1c4af4010da1.md) | 218 | `result-track:7053e2eccced1c4af4010da1b2a1a9b3e7046573d4b1b1e434f92958c53c29e9` |
| 39 | `instance` | [(anonymous)](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/instance--31c0ecbabb3f974ac5e2765f.md) | 220 | `declaration-track:31c0ecbabb3f974ac5e2765f114410144937335783720946efc890f4faf2c544` |
| 40 | `theorem` | [coe_intCast](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-intcast--9d7a88f9cb8405b42488a07e.md) | 224 | `result-track:9d7a88f9cb8405b42488a07e8be3c7e61c2f338acd5839bae932712a5c077207` |
| 41 | `def` | [translateGL](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/translategl--57f4958955c2508ac8d3cdcd.md) | 228 | `declaration-track:57f4958955c2508ac8d3cdcd94a24b1f854ce4da1c46d2e2f4ee87e11c5e1a73` |
| 42 | `lemma` | [coe_translateGL](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-translategl--6f40d7493710b0cf720a009a.md) | 239 | `result-track:6f40d7493710b0cf720a009a03dacc30459e90bcf3259f6416f164744ccc790c` |
| 43 | `def` | [translate](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/translate--9ad432c2e902c0a4448397bb.md) | 249 | `declaration-track:9ad432c2e902c0a4448397bb694e17da2083157cb9aa45c7374eb694a0065adf` |
| 44 | `lemma` | [coe_translate](../../../../../../mathematics/NumberTheory/AutomorphicForms/ModularForms/SlashInvariantForms/Variantcdd3196b74c4be138601d2dde69e7d1690f7d1707cfc54d6a3c11379803ddcd7.lean/declarations/coe-translate--a2717a0d4d78991510e360da.md) | 255 | `result-track:a2717a0d4d78991510e360dab48dd3cb9c6f960ddeaf81580f5964250c3a609e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
