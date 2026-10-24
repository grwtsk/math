# Verification target: GRWTSK.Topology.GeneralTopology.Cofinite.Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f48d3b5e6745dd555b217edff09c39d02169fdbc",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f48d3b5e6745dd555b217edff09c39d02169fdbc`.

Source path: `GRWTSK/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Prod` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Pi` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountablyGenerated` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Ker` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Pi` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Prod` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Basic` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/cofinite--94ef9ae367c0c2182b314cca.md) | 45 | `declaration-track:94ef9ae367c0c2182b314ccafaf6550d52c6d96ad22328ac097a484f3f1e6730` |
| 2 | `theorem` | [mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/mem-cofinite--83f43de092ebbfa721226441.md) | 49 | `result-track:83f43de092ebbfa721226441f6527985c63a53fffa762a3402865ca61becb397` |
| 3 | `theorem` | [eventually_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/eventually-cofinite--78a35113bd86812feb9ce434.md) | 53 | `result-track:78a35113bd86812feb9ce4347c8d77b8c56dea709c5b07fd2d6522e95f0f5d22` |
| 4 | `theorem` | [hasBasis_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/hasbasis-cofinite--b0599b26c9272948d3e6e423.md) | 56 | `result-track:b0599b26c9272948d3e6e423551c7d9b08c116ee4e2a4f0824905cb881a0b95e` |
| 5 | `instance` | [cofinite_neBot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/cofinite-nebot--2d72933bb0fc468dbd47391a.md) | 61 | `declaration-track:2d72933bb0fc468dbd47391abfd0715399712e7de177519fa7183e6e07aecd9e` |
| 6 | `theorem` | [cofinite_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/cofinite-eq-bot-iff--199ad365ec28f1b207f67758.md) | 65 | `result-track:199ad365ec28f1b207f67758da9c419bd526e8cbbe8e0821986b74b5aa8edc6c` |
| 7 | `theorem` | [cofinite_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/cofinite-eq-bot--ba47e7552c126d0d22ceb0d6.md) | 69 | `result-track:ba47e7552c126d0d22ceb0d6f66c9dc880bf63c29f8ba74a248dac03b7a16da5` |
| 8 | `theorem` | [frequently_cofinite_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/frequently-cofinite-iff-infinite--38bb852b50e2e5292451022a.md) | 71 | `result-track:38bb852b50e2e5292451022ae8865685a531628640e68df648f3326cb04dbc43` |
| 9 | `lemma` | [frequently_cofinite_mem_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/frequently-cofinite-mem-iff-infinite--b41beeb72e33b697b3ef8090.md) | 75 | `result-track:b41beeb72e33b697b3ef8090be1f97fa6f61863c4e6a320f85d992dfcfb04603` |
| 10 | `lemma` | [cofinite_inf_principal_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/cofinite-inf-principal-nebot-iff--13259388a73e18383d3f97ca.md) | 81 | `result-track:13259388a73e18383d3f97ca2a85334570b5fe8fe49d4cf2dd409195e61a4c9c` |
| 11 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.Set.Finite.compl_mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variantb913b47d2db5d64c49e--60b4cdda9383f33283ded1a4.md) | 86 | `result-track:60b4cdda9383f33283ded1a4dbcd2fce0b3aed4fc7c8608afa6a4280077dff96` |
| 12 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.Set.Finite.eventually_cofinite_notMem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variantb913b47d2db5d64c49e--0ead8123a63526bd6338dce4.md) | 89 | `result-track:0ead8123a63526bd6338dce45dc5d1039c120d1bb7f58145f440a7e66479d0dc` |
| 13 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.Finset.eventually_cofinite_notMem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variantb913b47d2db5d64c49e--218c85624a36cb960004abd9.md) | 96 | `result-track:218c85624a36cb960004abd9ffa307ca766b413b10e248b6796dd494ff9dd3a3` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.Cofinite.Variantb913b47d2db5d64c49e576d00595f9c97b9ed2452f005beaffa5fdd706f64d84.Set.infinite_iff_frequently_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/root-grwtsk-topology-generaltopology-cofinite-variantb913b47d2db5d64c49e--bd54c3a27a86d7ef59049e7c.md) | 102 | `result-track:bd54c3a27a86d7ef59049e7cd3028c7b7e960ee4685113a07b635ec860dd106e` |
| 15 | `theorem` | [eventually_cofinite_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/eventually-cofinite-ne--2f7cc719693414d501af5de4.md) | 106 | `result-track:2f7cc719693414d501af5de415996c12606cd5ab2e2ca8aeb70f10d1bddf7322` |
| 16 | `theorem` | [le_cofinite_iff_compl_singleton_mem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/le-cofinite-iff-compl-singleton-mem--7bff1dfa5171eb48b628b62d.md) | 109 | `result-track:7bff1dfa5171eb48b628b62da7feb46cf30f4615ce99f06100d3351abb3b8904` |
| 17 | `theorem` | [le_cofinite_iff_eventually_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/le-cofinite-iff-eventually-ne--edbc87c2cf5e1b109182558f.md) | 114 | `result-track:edbc87c2cf5e1b109182558fe62f1668ea786914b0cd86b0e0902102b8a42c14` |
| 18 | `theorem` | [atTop_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/attop-le-cofinite--0828d6cf45739af818022780.md) | 118 | `result-track:0828d6cf45739af818022780e94ab38ead273c551ec4407f7b8acc5773f553c1` |
| 19 | `theorem` | [atBot_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/atbot-le-cofinite--94281ea3fe2d249d474b58a3.md) | 122 | `result-track:94281ea3fe2d249d474b58a32f64ae18107ebad80ba8a589a2a8edf1796fca52` |
| 20 | `theorem` | [comap_cofinite_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/comap-cofinite-le--481abc957540174f7ed39079.md) | 125 | `result-track:481abc957540174f7ed39079c763efd2120989504a65f4aeccc2dd7a08a7fd96` |
| 21 | `theorem` | [coprod_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/coprod-cofinite--905a7e0ab91aa86ee623245a.md) | 130 | `result-track:905a7e0ab91aa86ee623245ab2dbbc1ec2f5b646776ee0253e91b4a9e46f751e` |
| 22 | `theorem` | [coprodᵢ_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/coprod-cofinite--b1ded8b71de3423537d85a64.md) | 134 | `result-track:b1ded8b71de3423537d85a6427951c73a84e17ea3514675763331e2f481c9e1b` |
| 23 | `theorem` | [disjoint_cofinite_left](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/disjoint-cofinite-left--99d732c178ca1ae062fe2bde.md) | 139 | `result-track:99d732c178ca1ae062fe2bde61fa182c9049555622eb87590ba1a0f20e3bb8f9` |
| 24 | `theorem` | [disjoint_cofinite_right](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/disjoint-cofinite-right--41c42147c0217395a2600cab.md) | 142 | `result-track:41c42147c0217395a2600cab02de0eefe7a51173fcfa688ae3462644efd586bf` |
| 25 | `theorem` | [countable_compl_ker](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/countable-compl-ker--7663461d513df48650db1473.md) | 146 | `result-track:7663461d513df48650db147363eb23834a8eec0b96b112072dc0fccefc1bb5cc` |
| 26 | `theorem` | [Tendsto.countable_compl_preimage_ker](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/tendsto-countable-compl-preimage-ker--0a5bf37f54249505c3560763.md) | 153 | `result-track:0a5bf37f54249505c356076333c605c1f0adf84231093e2be23e12a9599949fc` |
| 27 | `theorem` | [univ_pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/univ-pi-mem-pi--e0ce674143cc4c40cdb02fd7.md) | 160 | `result-track:e0ce674143cc4c40cdb02fd718a145e8cd6790f50c61bcb56156887a9ba1e4fa` |
| 28 | `theorem` | [map_piMap_pi](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/map-pimap-pi--86335f39b30a6a01d7de8565.md) | 175 | `result-track:86335f39b30a6a01d7de85656fcdba11e2804bbd3affe661a59bdafb4ad2cd5b` |
| 29 | `theorem` | [map_piMap_pi_finite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/map-pimap-pi-finite--5073c4591eac87a081d339ac.md) | 196 | `result-track:5073c4591eac87a081d339ac02647a684db3c097331694ec7aa43fe00429a16f` |
| 30 | `lemma` | [Set.Finite.cofinite_inf_principal_compl](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/set-finite-cofinite-inf-principal-compl--bf03001a60148d93a3c14238.md) | 205 | `result-track:bf03001a60148d93a3c14238321cdf70efc59b0c6048294a0b7fd5854636a7f2` |
| 31 | `lemma` | [Set.Finite.cofinite_inf_principal_diff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/set-finite-cofinite-inf-principal-diff--56fc22100839802bd008187f.md) | 209 | `result-track:56fc22100839802bd008187f385216bb0b7d7e6fbce582b863022ffa42386616` |
| 32 | `theorem` | [Nat.cofinite_eq_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/nat-cofinite-eq-attop--916093557525eb7b367cc910.md) | 214 | `result-track:916093557525eb7b367cc9103da2479411ea3ec23ac8973bae74d8b10a8a08e4` |
| 33 | `theorem` | [Nat.frequently_atTop_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/nat-frequently-attop-iff-infinite--0808fdda0625115429647c12.md) | 219 | `result-track:0808fdda0625115429647c12ea024f7e023a3255c598cec7b307d11faeaa607a` |
| 34 | `lemma` | [Nat.eventually_pos](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/nat-eventually-pos--e47c954aa14782c4048c8588.md) | 223 | `result-track:e47c954aa14782c4048c858816a510689a11184ffd30a4ac4b5fb2981ebe0e4b` |
| 35 | `theorem` | [Filter.Tendsto.exists_within_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/filter-tendsto-exists-within-forall-le--8b9ed8dd15a4fe40801f5c66.md) | 226 | `result-track:8b9ed8dd15a4fe40801f5c66caeff80e6f3147ccbb56c0ff793f95f521fd85ac` |
| 36 | `theorem` | [Filter.Tendsto.exists_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/filter-tendsto-exists-forall-le--0832c90f98a963f72f13bd4a.md) | 242 | `result-track:0832c90f98a963f72f13bd4a8c13a3b8464f96255e654a334630b9137dd3136d` |
| 37 | `theorem` | [Filter.Tendsto.exists_within_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/filter-tendsto-exists-within-forall-ge--fc1eeb58adf36c8369bfe6f0.md) | 247 | `result-track:fc1eeb58adf36c8369bfe6f082761b9aeb29f02439138cc933293d6a57f4e486` |
| 38 | `theorem` | [Filter.Tendsto.exists_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/filter-tendsto-exists-forall-ge--cc22c37695dcc926ea86d2b6.md) | 252 | `result-track:cc22c37695dcc926ea86d2b6f7be7bd5e3b5dd2709015f8fdf1e01abaa67b4fe` |
| 39 | `theorem` | [Function.Surjective.le_map_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/function-surjective-le-map-cofinite--379f19a5269b1393681cc868.md) | 256 | `result-track:379f19a5269b1393681cc86839c184e8b3fad5811cc2328b0a38be1d99fe16a6` |
| 40 | `theorem` | [Function.Injective.tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/function-injective-tendsto-cofinite--39dffbde38bd47a778bc5870.md) | 261 | `result-track:39dffbde38bd47a778bc5870b4340100c2cffd9e49c1a0695411ad2c03ad2406` |
| 41 | `theorem` | [Filter.Tendsto.cofinite_of_finite_preimage_singleton](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/filter-tendsto-cofinite-of-finite-preimage-singleton--9cb0dec3624cb65981f006cf.md) | 265 | `result-track:9cb0dec3624cb65981f006cfaa745d3e770bb2a30ede3601e53ad7a44b4a0e2b` |
| 42 | `theorem` | [Function.Injective.comap_cofinite_eq](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/function-injective-comap-cofinite-eq--7e2793256daf4f49f17c774c.md) | 271 | `result-track:7e2793256daf4f49f17c774cf4a93ed1c71eb8d8f1a94ef1912b6cff6d7f87c4` |
| 43 | `theorem` | [Function.Injective.nat_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant5eabfb4e892478e049bde690c7f27a159df2e61eea812cbb038ab168749b2607.lean/declarations/function-injective-nat-tendsto-attop--7d511b7396d8a515d6ec5d3e.md) | 276 | `result-track:7d511b7396d8a515d6ec5d3e3d182db4afc600fcf6b91ed6b458da2c65b9ecd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
