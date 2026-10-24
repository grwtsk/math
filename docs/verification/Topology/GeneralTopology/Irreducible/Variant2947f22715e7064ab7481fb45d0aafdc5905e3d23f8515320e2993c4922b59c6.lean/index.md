# Verification target: GRWTSK.Topology.GeneralTopology.Irreducible.Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a04a9d2ee81a1b2496e17675a035a0ec021b2f8c",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a04a9d2ee81a1b2496e17675a035a0ec021b2f8c`.

Source path: `GRWTSK/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Minimal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPreirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible--2bf8490915da4ea8964d69c3.md) | 40 | `declaration-track:2bf8490915da4ea8964d69c3a04bd7ae4b0c6dfecc82762a1bf3bbe84521f037` |
| 2 | `def` | [IsIrreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible--2ec49604dcb2503c3860bbf8.md) | 46 | `declaration-track:2ec49604dcb2503c3860bbf8e109b028f2b53377f2534f72c9c91fff12f67f26` |
| 3 | `theorem` | [IsIrreducible.nonempty](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-nonempty--c12466db06bfc3f1b4ee4de0.md) | 49 | `result-track:c12466db06bfc3f1b4ee4de0e51206af856cc220b634e573620638d77423265c` |
| 4 | `theorem` | [IsIrreducible.isPreirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-ispreirreducible--1f0345299d24f1262bb93d33.md) | 52 | `result-track:1f0345299d24f1262bb93d331db998269059de0871207ee8af5edbf278fc17cb` |
| 5 | `theorem` | [isPreirreducible_empty](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-empty--ccd142edd9d49e6aebed5ffd.md) | 55 | `result-track:ccd142edd9d49e6aebed5ffd06aefd06a8540b7fd3d93a85af29336bac21edfc` |
| 6 | `theorem` | [Set.Subsingleton.isPreirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/set-subsingleton-ispreirreducible--b5c862547d1fb25295b3d568.md) | 58 | `result-track:b5c862547d1fb25295b3d568f414d6f15081b492cc705a6c26eb9d506f23556f` |
| 7 | `theorem` | [isPreirreducible_singleton](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-singleton--314eec494452a70f94b97b84.md) | 61 | `result-track:314eec494452a70f94b97b84b0d85e3272ce43cacc1eb32de258dc797778eb89` |
| 8 | `theorem` | [isIrreducible_singleton](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-singleton--bad34b232a6beefe8512a6d0.md) | 64 | `result-track:bad34b232a6beefe8512a6d0b2cdd4a1ab80156adcff86e3f131b29ac7810b53` |
| 9 | `theorem` | [isPreirreducible_iff_closure](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-iff-closure--53af9018ca882bd83de7536f.md) | 67 | `result-track:53af9018ca882bd83de7536f41b6c0ee84295e7fbff01622883386e492162b3a` |
| 10 | `theorem` | [isIrreducible_iff_closure](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-iff-closure--85b257ff605783dffd49d5a6.md) | 73 | `result-track:85b257ff605783dffd49d5a6a8f77bdcf859b6e37d1097b6532e8c095acdc60e` |
| 11 | `theorem` | [exists_preirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/exists-preirreducible--4cf08c9435b05e13f1b8cf90.md) | 80 | `result-track:4cf08c9435b05e13f1b8cf90ce9fb278a8488fbea7f35aedce269a444d23217a` |
| 12 | `def` | [irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblecomponents--5f923eb2716f7d24182c9d99.md) | 101 | `declaration-track:5f923eb2716f7d24182c9d99f65104cd19105f013894f694a59094fcba288165` |
| 13 | `theorem` | [isClosed_of_mem_irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isclosed-of-mem-irreduciblecomponents--4d09a1d0906f6570b01c6342.md) | 105 | `result-track:4d09a1d0906f6570b01c634253d7542e5ca74263e9c74fb4048098719abf70ab` |
| 14 | `theorem` | [irreducibleComponents_eq_maximals_closed](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblecomponents-eq-maximals-closed--63ef689ad2e34ff2e8318385.md) | 110 | `result-track:63ef689ad2e34ff2e831838569f1c02a7ea8dc5ddbbdd446e5135dd0c32ecc16` |
| 15 | `lemma` | [exists_mem_irreducibleComponents_subset_of_isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/exists-mem-irreduciblecomponents-subset-of-isirreducible--b1383a018ea0c09312ba9e9c.md) | 122 | `result-track:b1383a018ea0c09312ba9e9caf911c4a9806166d8744c33b57f7464a9a0e00c2` |
| 16 | `def` | [irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblecomponent--d4537fd83ba4eb9c30d37d4c.md) | 130 | `declaration-track:d4537fd83ba4eb9c30d37d4c38eaf75f6a27eca50e861921a45b91efa98173c9` |
| 17 | `theorem` | [irreducibleComponent_property](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblecomponent-property--5795c7129cb922a99b5f7b11.md) | 133 | `result-track:5795c7129cb922a99b5f7b11d85a24cd51fea3372ada4aaa9598e32e8cd8bbf1` |
| 18 | `theorem` | [mem_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/mem-irreduciblecomponent--d5cfea27a4a6a35db699993d.md) | 140 | `result-track:d5cfea27a4a6a35db699993d125510f03faf0b6112faeeaba0b2bfda6af2cb5c` |
| 19 | `theorem` | [isIrreducible_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-irreduciblecomponent--00fbbd2c1e1c6390ca13b014.md) | 143 | `result-track:00fbbd2c1e1c6390ca13b0147661639d4757fb9d5a14810bb8e7b8ebfb8184b4` |
| 20 | `theorem` | [eq_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/eq-irreduciblecomponent--f57ccd2474684e32fa1a23dd.md) | 146 | `result-track:f57ccd2474684e32fa1a23dd3b2fe4ac6551dfcfb3d4a086357a034ae3997d3a` |
| 21 | `theorem` | [irreducibleComponent_mem_irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblecomponent-mem-irreduciblecomponents--121b79286dc6c96084160d4b.md) | 150 | `result-track:121b79286dc6c96084160d4bd9697f088e39626f56b32e9e6a27b02d175ec515` |
| 22 | `theorem` | [isClosed_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isclosed-irreduciblecomponent--2a668a9768e9a40886d17784.md) | 154 | `result-track:2a668a9768e9a40886d17784e1bd0409af0b1c7af55072c3b425e6c50412d0ff` |
| 23 | `class` | [PreirreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/preirreduciblespace--fe9c77d3df07b6bef780e957.md) | 158 | `declaration-track:fe9c77d3df07b6bef780e957d1245853ed9284e062d3eb070803a1eca3f98914` |
| 24 | `class` | [IrreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblespace--65bcd1ff8776da2c459a7979.md) | 165 | `declaration-track:65bcd1ff8776da2c459a7979f6a55a451399b6f5ceba88cc008a77c69c1cea05` |
| 25 | `theorem` | [IrreducibleSpace.isIrreducible_univ](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblespace-isirreducible-univ--d8edc99905a3a6d2644c61d4.md) | 171 | `result-track:d8edc99905a3a6d2644c61d42f4af6dce47f135ebac773b9e93def9c26b366be` |
| 26 | `theorem` | [irreducibleSpace_def](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblespace-def--54ae32718b40bf51fb23ad94.md) | 175 | `result-track:54ae32718b40bf51fb23ad940d4a5748189028947d9c3ef43aec4756da41b87b` |
| 27 | `theorem` | [nonempty_preirreducible_inter](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/nonempty-preirreducible-inter--1fe1b99b64d93e60a65af0c8.md) | 181 | `result-track:1fe1b99b64d93e60a65af0c8c4bb2d14042d36ce17684e902f4790b701ef38b2` |
| 28 | `theorem` | [IsOpen.dense](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isopen-dense--bcb14cb6e59aca7c0629d210.md) | 187 | `result-track:bcb14cb6e59aca7c0629d2102ced3db03cd6657b9fc71277084ab78361247d0e` |
| 29 | `theorem` | [IsPreirreducible.image](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-image--b71d878a052163660670f4fd.md) | 191 | `result-track:b71d878a052163660670f4fd205a0c08d0148dba7296a3a48fa1d83f49595797` |
| 30 | `theorem` | [IsIrreducible.image](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-image--52c13ba963d6413bddf57730.md) | 209 | `result-track:52c13ba963d6413bddf57730e3aaf084672def1de9f03f72eb941ce88fe8ddab` |
| 31 | `theorem` | [Subtype.preirreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/subtype-preirreduciblespace--6a10ca83d008ffd89a9c740e.md) | 213 | `result-track:6a10ca83d008ffd89a9c740ecaceab5002b8f8b301374917158dcd63051f75a4` |
| 32 | `theorem` | [Subtype.irreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/subtype-irreduciblespace--5813fe2c75c9d0ad1518098d.md) | 219 | `result-track:5813fe2c75c9d0ad1518098d2c0e5736c17f589e2876d0fb6d2490b0287a4ac0` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/instance--ed4f581e81ec1681c447c322.md) | 224 | `declaration-track:ed4f581e81ec1681c447c3224c128b815189c2051169b5f9c96659b4f532ead2` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/instance--9a38bdcb4e7321ccef818e36.md) | 228 | `declaration-track:9a38bdcb4e7321ccef818e36fd3c7b1235b1e441bf577c73714b48e3dc3db53c` |
| 35 | `theorem` | [irreducibleComponents_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblecomponents-eq-singleton--09df08552de3c28a97defd29.md) | 236 | `result-track:09df08552de3c28a97defd299a23968eea63ff3978d0afc9c0b6a970bc0fbdfd` |
| 36 | `theorem` | [isIrreducible_iff_sInter](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-iff-sinter--565f6f99a7b6ea285abdcb8d.md) | 245 | `result-track:565f6f99a7b6ea285abdcb8da45bb03d75f79ce49bba0c031317f9a5900000e5` |
| 37 | `theorem` | [isPreirreducible_iff_isClosed_union_isClosed](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-iff-isclosed-union-isclosed--b2369875d6d276064cc55274.md) | 263 | `result-track:b2369875d6d276064cc552743853a14e32c6eb2984e21b427fd60debdb84a45f` |
| 38 | `theorem` | [isIrreducible_iff_sUnion_isClosed](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/isirreducible-iff-sunion-isclosed--a482c49fbd636b43bacdbcf9.md) | 276 | `result-track:a482c49fbd636b43bacdbcf941d1b7ecb52902ae882383524a4d551129cac4c6` |
| 39 | `theorem` | [subset_closure_inter_of_isPreirreducible_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/subset-closure-inter-of-ispreirreducible-of-isopen--e4e3c323ae6d533d06070490.md) | 292 | `result-track:e4e3c323ae6d533d06070490567f4b61625e3be8d2ca65b155bb1d45c14d306f` |
| 40 | `theorem` | [IsPreirreducible.subset_irreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-subset-irreducible--a41fdcef588a98163f74e348.md) | 300 | `result-track:a41fdcef588a98163f74e348fcbfaa36e28b47d3cbf353bb9c2fc0c0366f7738` |
| 41 | `theorem` | [IsPreirreducible.open_subset](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-open-subset--a70a8ff181bd6ce0d5d95baa.md) | 317 | `result-track:a70a8ff181bd6ce0d5d95baa0d642cd01db7df95b29837fab2cec692b8ff1663` |
| 42 | `theorem` | [IsPreirreducible.interior](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-interior--a325c9adcf2fbb3f7fb9fc96.md) | 322 | `result-track:a325c9adcf2fbb3f7fb9fc963ed2fe2ccf679d91d8fbaae1e2594b02a6403034` |
| 43 | `theorem` | [IsPreirreducible.preimage](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-preimage--adf067d57b4788b5bb97667c.md) | 325 | `result-track:adf067d57b4788b5bb97667c870c4c17a16bf5e9a2c1217965e608795f9aad07` |
| 44 | `lemma` | [IsPreirreducible.preimage_of_dense_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-preimage-of-dense-ispreirreducible-fiber--3ffa9a02c8e734807dcd5b74.md) | 339 | `result-track:3ffa9a02c8e734807dcd5b74c530b7b5227c1e7aa3059567f4aa1200b3f5d4ce` |
| 45 | `lemma` | [IsPreirreducible.preimage_of_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/ispreirreducible-preimage-of-ispreirreducible-fiber--f685cd9a95286507daf98cf7.md) | 351 | `result-track:f685cd9a95286507daf98cf75fa9c10a9eefc97d7ccaa478bbcd2cf24a437df8` |
| 46 | `lemma` | [preimage_mem_irreducibleComponents_of_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/preimage-mem-irreduciblecomponents-of-ispreirreducible-fiber--edb164301acd1ca83383c6c8.md) | 363 | `result-track:edb164301acd1ca83383c6c895042afb6b1a2be47fb45e4418bd0934b9afa420` |
| 47 | `lemma` | [image_mem_irreducibleComponents_of_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/image-mem-irreduciblecomponents-of-ispreirreducible-fiber--67a1e5147db3ff3b8ee273a5.md) | 379 | `result-track:67a1e5147db3ff3b8ee273a5282ee212a6fa3cf95f40a9630d593c5b33cae9e7` |
| 48 | `def` | [irreducibleComponentsEquivOfIsPreirreducibleFiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant2947f22715e7064ab7481fb45d0aafdc5905e3d23f8515320e2993c4922b59c6.lean/declarations/irreduciblecomponentsequivofispreirreduciblefiber--7df1efb5d59e27d030a6f045.md) | 391 | `declaration-track:7df1efb5d59e27d030a6f045415ed819ec345525b58655315f6448e238cda63c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
