# Verification target: GRWTSK.Topology.GeneralTopology.LinearMapPiProd.Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51cb365840f352a8028b62e5da95e0cb9d84d621",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51cb365840f352a8028b62e5da95e0cb9d84d621`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMap` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/prod--1a299bc5fd72a6ce366f1758.md) | 44 | `declaration-track:1a299bc5fd72a6ce366f1758a663821626683e9ba591651eec87680ffcb60cdc` |
| 2 | `theorem` | [coe_prod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-prod--f56cb6b13000519802ad5b96.md) | 49 | `result-track:f56cb6b13000519802ad5b96b86bc0678b7953c26170a29baa4f0980ba6bc612` |
| 3 | `theorem` | [prod_apply](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/prod-apply--d3c8a6166e8c3d28599ec5d3.md) | 54 | `result-track:d3c8a6166e8c3d28599ec5d3aaa1aa217e765eb73535e962c0b79ba8a9eff33a` |
| 4 | `def` | [inl](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/inl--9048160d248c177887324a97.md) | 63 | `declaration-track:9048160d248c177887324a97cf23a9402ac350c0ef26a87f9f7b5e6ac456cae8` |
| 5 | `def` | [inr](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/inr--8bf4eac75ae930d5da96c0ba.md) | 67 | `declaration-track:8bf4eac75ae930d5da96c0ba19ce92c45a4fa4e1bcaed549d84f00dbbe6c039a` |
| 6 | `theorem` | [inl_apply](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/inl-apply--cf64ef0ce0f40fdfba5f16f3.md) | 73 | `result-track:cf64ef0ce0f40fdfba5f16f38f430970b8109dea3f7a1d0fb13f21490ff5ecde` |
| 7 | `theorem` | [inr_apply](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/inr-apply--e6d2697f396b406fc3918901.md) | 77 | `result-track:e6d2697f396b406fc3918901c38a185afcc14a4d24790aa6dea527baac7d5f6b` |
| 8 | `theorem` | [coe_inl](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-inl--be5b08e559ea4ae8e4f23318.md) | 81 | `result-track:be5b08e559ea4ae8e4f23318aa5b50203b133b47619febe4d065d2774b118633` |
| 9 | `theorem` | [coe_inr](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-inr--5cf2a5098e7392f22289abf5.md) | 85 | `result-track:5cf2a5098e7392f22289abf50d3777ade32a70995326fd190385501d150989b5` |
| 10 | `lemma` | [comp_inl_add_comp_inr](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/comp-inl-add-comp-inr--6cf88144b91d7f2130981a35.md) | 88 | `result-track:6cf88144b91d7f2130981a351be25c44a17f79394251300d780bdee7daed4b3f` |
| 11 | `theorem` | [ker_prod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/ker-prod--919fd532f5667082cef725af.md) | 92 | `result-track:919fd532f5667082cef725af599fb863b20d91e669e56c30669338eb025c65b4` |
| 12 | `def` | [fst](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/fst--b4cf1557e7d5d68bf0dcfbb8.md) | 99 | `declaration-track:b4cf1557e7d5d68bf0dcfbb8402ec813974b9773d695d4e6eb2e30f629064def` |
| 13 | `def` | [snd](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/snd--b3923881517da01db14c138c.md) | 104 | `declaration-track:b3923881517da01db14c138c08556171694e65315dc5b88232b2c30c0debc000` |
| 14 | `theorem` | [coe_fst](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-fst--a2c489b0fc8b1748fc1f48a9.md) | 111 | `result-track:a2c489b0fc8b1748fc1f48a91fcd0255da1d0d9cd0f53443408682f38b4f356c` |
| 15 | `theorem` | [coe_fst'](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-fst--0ed285c31d203f62a06168ce.md) | 115 | `result-track:0ed285c31d203f62a06168ce6ba7315e464bd38cf7f6f88e030ebbbae86c6224` |
| 16 | `theorem` | [coe_snd](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-snd--b0b68c93bcebed559a81754f.md) | 119 | `result-track:b0b68c93bcebed559a81754f32cc5a6e3f4f6d015cad652aff1ea87ab3a4be85` |
| 17 | `theorem` | [coe_snd'](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-snd--19ae9a6792f03578138d11eb.md) | 123 | `result-track:19ae9a6792f03578138d11eb1b261688febb0a616dc34efa6ad6116053d8e08a` |
| 18 | `theorem` | [fst_prod_snd](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/fst-prod-snd--deb3a2f2417f60edd77d3675.md) | 127 | `result-track:deb3a2f2417f60edd77d367574024bc40ded8101ae1d4041b828ea84b2308bae` |
| 19 | `theorem` | [fst_comp_prod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/fst-comp-prod--41ab89ef54b2f6519811f0fa.md) | 131 | `result-track:41ab89ef54b2f6519811f0fac949e8d89174f39d8c7261e94d2776b4c214387b` |
| 20 | `theorem` | [snd_comp_prod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/snd-comp-prod--ed4a440635fcaaff45693bd3.md) | 136 | `result-track:ed4a440635fcaaff45693bd3596a09203382933b030370a7f67e3c87f395daed` |
| 21 | `def` | [prodMap](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/prodmap--beb8e599bd96b8112417fde6.md) | 141 | `declaration-track:beb8e599bd96b8112417fde649db2ddc39621cadd0b5c5f9f9a516d218718a9f` |
| 22 | `theorem` | [coe_prodMap](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-prodmap--fac4b6ace3b2318879b68e0d.md) | 146 | `result-track:fac4b6ace3b2318879b68e0d3994973643a7d6fc02cf5e81559f9c01bfeb527c` |
| 23 | `theorem` | [coe_prodMap'](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-prodmap--7d50f8206b0e6fe38c53aeef.md) | 151 | `result-track:7d50f8206b0e6fe38c53aeefa5634f8a5e1baeeed2aae1c470f3b0ad8a0a243c` |
| 24 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/pi--15bcde8883f1e602451f4def.md) | 165 | `declaration-track:15bcde8883f1e602451f4def72b6d390ba3f3663131b18df79ed733f65beef9e` |
| 25 | `theorem` | [coe_pi'](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-pi--366171f12b5629f20b32bb3f.md) | 169 | `result-track:366171f12b5629f20b32bb3fd83e3faada0ab51f9021cf66e5d3be53a85efa3c` |
| 26 | `theorem` | [coe_pi](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-pi--d1d74673f4d2695a1d321a63.md) | 173 | `result-track:d1d74673f4d2695a1d321a6305eedc7c99fc365ee6022611d6421cf7654135c9` |
| 27 | `theorem` | [pi_apply](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/pi-apply--1483f0a52a95ac9dbf6a9d6b.md) | 176 | `result-track:1483f0a52a95ac9dbf6a9d6b14cb4bcc2b1a6f7a4b014d8be95c10b7a693f21f` |
| 28 | `theorem` | [pi_eq_zero](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/pi-eq-zero--d882eac9a9a11dcbfaa06a64.md) | 179 | `result-track:d882eac9a9a11dcbfaa06a6494780a06365a4411f9f12f356e09564f646067bc` |
| 29 | `theorem` | [pi_zero](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/pi-zero--1c7838bba1826f05cd9a12f6.md) | 183 | `result-track:1c7838bba1826f05cd9a12f6296e06cf379f7440cf5f1799840ad25250d413ab` |
| 30 | `theorem` | [pi_comp](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/pi-comp--318be19f8f5e015da16140b3.md) | 186 | `result-track:318be19f8f5e015da16140b38d813c5bd97e7f41db2003fa5a9be8e86fde2e38` |
| 31 | `def` | [proj](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/proj--28218a933c7cf92d3eeb6847.md) | 191 | `declaration-track:28218a933c7cf92d3eeb6847f3ff7e2e7c9798fe2f9453d20fad088b49bc5ada` |
| 32 | `theorem` | [proj_apply](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/proj-apply--716ffffe403cc8fe9afc9cc7.md) | 195 | `result-track:716ffffe403cc8fe9afc9cc7d491d12ebfaef9dc86d2f4d97897726b56b14da0` |
| 33 | `theorem` | [proj_pi](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/proj-pi--c1be9633ebaf1551ff34cb18.md) | 199 | `result-track:c1be9633ebaf1551ff34cb1803c6f246502ec79aeac1b7f71d7c509b414a738f` |
| 34 | `theorem` | [coe_proj](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coe-proj--22d5b649c8352d5c632c3f09.md) | 202 | `result-track:22d5b649c8352d5c632c3f09d998230eff4eac8821bf851f4e8a3bf038f22b3d` |
| 35 | `theorem` | [pi_proj](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/pi-proj--bf10d6e446ec8833b7137e74.md) | 206 | `result-track:bf10d6e446ec8833b7137e7465f9127263b28564e5147a5c68fc3dff6250d719` |
| 36 | `theorem` | [pi_proj_comp](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/pi-proj-comp--950c9e40ad8c20b46db77763.md) | 209 | `result-track:950c9e40ad8c20b46db77763f33e75526affb235060c20ebd90fca35a77cbd86` |
| 37 | `theorem` | [iInf_ker_proj](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/iinf-ker-proj--e1fc812396804b91fde60f56.md) | 211 | `result-track:e1fc812396804b91fde60f5669c43b41aeacf3ecbf3f48a819806987a595b5b3` |
| 38 | `def` | [_root_.GRWTSK.Topology.GeneralTopology.Prod.Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.Pi.compRightL](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/root-grwtsk-topology-generaltopology-prod-variant3177f53a0567409c0bcfc52--64affb2a196de420767bb826.md) | 218 | `declaration-track:64affb2a196de420767bb8267661fa379b5c78a34d1f76869dce7edebd1646bc` |
| 39 | `lemma` | [_root_.GRWTSK.Topology.GeneralTopology.Prod.Variant3177f53a0567409c0bcfc5263bf1b180117b00a1a2eab20cd0202afe817e5a68.Pi.compRightL_apply](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/root-grwtsk-topology-generaltopology-prod-variant3177f53a0567409c0bcfc52--5a074d9105ba6aa9d43ce19d.md) | 224 | `result-track:5a074d9105ba6aa9d43ce19dbbe946bc75ba4a54998e6038fa803620eda02b2e` |
| 40 | `def` | [single](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/single--8687859eb2dfccb26cf6747f.md) | 229 | `declaration-track:8687859eb2dfccb26cf6747f86e0ab0e72530d0216b04fe3941c37e916b0663c` |
| 41 | `theorem` | [range_prod_eq](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/range-prod-eq--f07cf7a48f8416d69b721ae0.md) | 242 | `result-track:f07cf7a48f8416d69b721ae0bd0dc46f6aa0b90a160528994b4ba3438e195b80` |
| 42 | `theorem` | [ker_prod_ker_le_ker_coprod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/ker-prod-ker-le-ker-coprod--f70cf00b4064ecb35474fdd2.md) | 246 | `result-track:f70cf00b4064ecb35474fdd29b5154c0df980e8744fe4b878b895e866528f1ee` |
| 43 | `def` | [prodEquiv](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/prodequiv--70453af471e9dd780fe95572.md) | 262 | `declaration-track:70453af471e9dd780fe955724286359a750c980598bf6c97318a5819e6b79513` |
| 44 | `theorem` | [prod_ext_iff](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/prod-ext-iff--d501b422cac12dcf0501e023.md) | 268 | `result-track:d501b422cac12dcf0501e02312bd60714183266d1b8bb85d70ef542aadfdb3dd` |
| 45 | `theorem` | [prod_ext](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/prod-ext--660ae2935ac18586d099c78b.md) | 274 | `result-track:660ae2935ac18586d099c78bcf486cde2795833971e85c81f49dcfa2ad0bf60a` |
| 46 | `def` | [prodₗ](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/prod--013fa71dc5515c6e33b650ac.md) | 284 | `declaration-track:013fa71dc5515c6e33b650ac536ae9904f88882f7568ed655d842ac7dca9fbad` |
| 47 | `def` | [coprod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coprod--60574fb5bbfa5819655547a2.md) | 303 | `declaration-track:60574fb5bbfa5819655547a22886feb462d39d7e19cd20efaf813b8effd33bb4` |
| 48 | `lemma` | [coprod_add](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coprod-add--6d095f0e7d0160cff67b38f2.md) | 306 | `result-track:6d095f0e7d0160cff67b38f211e48924e057e8919b40eb4e6e6c7fddaf5e1917` |
| 49 | `lemma` | [range_coprod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/range-coprod--c55f77d8c9e711a99916774d.md) | 309 | `result-track:c55f77d8c9e711a99916774ddde702232c9028fdf3facd7ae683ee9f88b181fc` |
| 50 | `lemma` | [comp_fst_add_comp_snd](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/comp-fst-add-comp-snd--574b139c859bab5d9e79e505.md) | 312 | `result-track:574b139c859bab5d9e79e505b327ffacc177a6ee900758cff8382123b4adf4ef` |
| 51 | `lemma` | [comp_coprod](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/comp-coprod--6c93c4c4ffaf8ca4cb6b743c.md) | 315 | `result-track:6c93c4c4ffaf8ca4cb6b743ca19964fda1456ab01435b74c0f1dd3b2a816de4a` |
| 52 | `lemma` | [coprod_comp_inl](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coprod-comp-inl--ee09662c98783bcdc676665e.md) | 319 | `result-track:ee09662c98783bcdc676665e6441fec164f7dfc97e2afad4c1a9a6b6f2400fb2` |
| 53 | `lemma` | [coprod_comp_inr](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coprod-comp-inr--2ef978d5caca9b9aa6f213c8.md) | 322 | `result-track:2ef978d5caca9b9aa6f213c848cc6b593e8c03b2a0427f3bddc76c1c1ec61fae` |
| 54 | `lemma` | [coprod_inl_inr](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coprod-inl-inr--f70b3558d47f0c5fb8ae6daa.md) | 326 | `result-track:f70b3558d47f0c5fb8ae6daa3e76a3fdb25ad1f9af5ddcc2da198912c498ecb4` |
| 55 | `def` | [coprodEquiv](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/coprodequiv--20300343b32573b196001fe4.md) | 337 | `declaration-track:20300343b32573b196001fe482ec209add873f1502179b4f7a471b26fcbc6100` |
| 56 | `lemma` | [ker_coprod_of_disjoint_range](../../../../../mathematics/Topology/GeneralTopology/LinearMapPiProd/Variant8717d056c4a0bf0bbcf087b80b3cefae4e7da5db981a098cdd0e9000fc321146.lean/declarations/ker-coprod-of-disjoint-range--9e5bf073ed43e150d6a91520.md) | 356 | `result-track:9e5bf073ed43e150d6a91520a39aeca7e55bfb70d7b668648e55ee00c3efd164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
