# Verification target: GRWTSK.Topology.GeneralTopology.Cofinite.Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1de23b6689243edf6c6868988b553dc0e019e99d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1de23b6689243edf6c6868988b553dc0e019e99d`.

Source path: `GRWTSK/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/cofinite--ebbce52124d14fbc80b381ea.md) | 41 | `declaration-track:ebbce52124d14fbc80b381ea053a70686a11f0d712b1269d1f14afe09487a4bc` |
| 2 | `theorem` | [mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/mem-cofinite--2bca2a92b1b0eb3d4464fbf7.md) | 45 | `result-track:2bca2a92b1b0eb3d4464fbf712ed33d1f28fcb32730243a2c88a9612e9cf227a` |
| 3 | `theorem` | [eventually_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/eventually-cofinite--000c559e268756eeccba9e84.md) | 49 | `result-track:000c559e268756eeccba9e84bbb58d8dc0445db22340be6b4e3cdb5cc59fdf5c` |
| 4 | `theorem` | [hasBasis_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/hasbasis-cofinite--38281bb813f9bb9f6e8f248e.md) | 52 | `result-track:38281bb813f9bb9f6e8f248ef3b48933e2a893e46583f198e0a0bba7d3eb713b` |
| 5 | `instance` | [cofinite_neBot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/cofinite-nebot--7cfc2412f9258a823da1fc20.md) | 57 | `declaration-track:7cfc2412f9258a823da1fc20f2668d6d9e3ce8ee233705cb6115b4e3699a2f27` |
| 6 | `theorem` | [cofinite_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/cofinite-eq-bot-iff--eefed8bfcb8f3cdef8d461fc.md) | 61 | `result-track:eefed8bfcb8f3cdef8d461fc1d7c460caa60ddb10710813cc008c3acb0496a3f` |
| 7 | `theorem` | [cofinite_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/cofinite-eq-bot--b51b44fbfeb5a1094f927c72.md) | 65 | `result-track:b51b44fbfeb5a1094f927c72eb35c15d841f6bf140b4d62bd249e1f44ce3b9b8` |
| 8 | `theorem` | [frequently_cofinite_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/frequently-cofinite-iff-infinite--162a4f75397a17111f37dfc5.md) | 67 | `result-track:162a4f75397a17111f37dfc55c252177e35b33c73b9b869dfb0ae32af73eb412` |
| 9 | `lemma` | [frequently_cofinite_mem_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/frequently-cofinite-mem-iff-infinite--16f2e178ff6bf6704c5e55e0.md) | 71 | `result-track:16f2e178ff6bf6704c5e55e0df296828ea1c8c9d6240b92661878467b53622a3` |
| 10 | `lemma` | [cofinite_inf_principal_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/cofinite-inf-principal-nebot-iff--700bcbb906d6bdb2dab41e32.md) | 77 | `result-track:700bcbb906d6bdb2dab41e328c351abde3b53744a077b85f2dae675e3e97c7c5` |
| 11 | `theorem` | [_root_.Set.Finite.compl_mem_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/root-set-finite-compl-mem-cofinite--644d9a32823f29ee408112ed.md) | 82 | `result-track:644d9a32823f29ee408112ed5ef38f4f7d394dca68fede35f7bc65ba8690ddf9` |
| 12 | `theorem` | [_root_.Set.Finite.eventually_cofinite_notMem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/root-set-finite-eventually-cofinite-notmem--53e32f986e7bdae1696916a0.md) | 85 | `result-track:53e32f986e7bdae1696916a0ac3e90577b7187cf8eee342fb4831a2cb6ea9e65` |
| 13 | `theorem` | [_root_.Finset.eventually_cofinite_notMem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/root-finset-eventually-cofinite-notmem--799b4ef6144189a8f2b37b86.md) | 89 | `result-track:799b4ef6144189a8f2b37b867f11cf95af260af90d97881f2340fc82bc4f9a52` |
| 14 | `theorem` | [_root_.Set.infinite_iff_frequently_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/root-set-infinite-iff-frequently-cofinite--ab381eba4e788a93d67cf147.md) | 92 | `result-track:ab381eba4e788a93d67cf1472d632ab23644dae95308f282068dec00536a9b25` |
| 15 | `theorem` | [eventually_cofinite_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/eventually-cofinite-ne--bdfa83410c7ad5546a4babfe.md) | 96 | `result-track:bdfa83410c7ad5546a4babfe2dc296a8e1d9149356607623282673dfa58e883f` |
| 16 | `theorem` | [le_cofinite_iff_compl_singleton_mem](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/le-cofinite-iff-compl-singleton-mem--bbcdd39e29bcbe60b9185ef2.md) | 99 | `result-track:bbcdd39e29bcbe60b9185ef2c42c8272be97181da07516d33d489bbd968e7f75` |
| 17 | `theorem` | [le_cofinite_iff_eventually_ne](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/le-cofinite-iff-eventually-ne--9c537de05e32c09a5ed44f1e.md) | 104 | `result-track:9c537de05e32c09a5ed44f1e49fa4e27b432e0fc744909b0a68c9b943baa7edf` |
| 18 | `theorem` | [atTop_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/attop-le-cofinite--985deff38f501045506e90c9.md) | 108 | `result-track:985deff38f501045506e90c97fbad2b140871fae776f652896f807a3de43a67e` |
| 19 | `theorem` | [atBot_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/atbot-le-cofinite--91e65a8faf363fde14b52c9a.md) | 112 | `result-track:91e65a8faf363fde14b52c9abbc2e01b4cc9a576f831b041d69c326754a6ee11` |
| 20 | `theorem` | [comap_cofinite_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/comap-cofinite-le--417929b00c3bb4c1243563a9.md) | 115 | `result-track:417929b00c3bb4c1243563a95c0d10796ab03343cb9ec4416cac29f04586da02` |
| 21 | `theorem` | [coprod_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/coprod-cofinite--ac1b70806ec54d369caf3c1d.md) | 120 | `result-track:ac1b70806ec54d369caf3c1ddf1f8cefee2ebb20b17eb9f7cbd768387a5f5f4b` |
| 22 | `theorem` | [coprodᵢ_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/coprod-cofinite--c58e568bf8008e6d6a2dc451.md) | 124 | `result-track:c58e568bf8008e6d6a2dc451affa10172759a38efe7749ab3ffad13164be9221` |
| 23 | `theorem` | [disjoint_cofinite_left](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/disjoint-cofinite-left--3f7b65c22f41b9da9d12fda2.md) | 129 | `result-track:3f7b65c22f41b9da9d12fda2cfea42ee4c8592bf51deeaeb84fa3d9e44be3193` |
| 24 | `theorem` | [disjoint_cofinite_right](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/disjoint-cofinite-right--9de885bf05d33bafd6dbf16d.md) | 132 | `result-track:9de885bf05d33bafd6dbf16d842ad8218df4444cd96c6c68e8ed632c7e704559` |
| 25 | `theorem` | [countable_compl_ker](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/countable-compl-ker--4af914035e18042745c1de0c.md) | 136 | `result-track:4af914035e18042745c1de0cad26159d03d80b947d562c77a4e72ca9db4f2d10` |
| 26 | `theorem` | [Tendsto.countable_compl_preimage_ker](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/tendsto-countable-compl-preimage-ker--390c8543dd87cb8f5e7f93b8.md) | 143 | `result-track:390c8543dd87cb8f5e7f93b881053f30dc37c2af007a3b0e3eedd6c2b8939ff8` |
| 27 | `theorem` | [univ_pi_mem_pi](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/univ-pi-mem-pi--92e0615f1db7ae1b77459bc2.md) | 150 | `result-track:92e0615f1db7ae1b77459bc2781a716cf894f508692e9a36a4fa732c15beabee` |
| 28 | `theorem` | [map_piMap_pi](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/map-pimap-pi--a415a9467312e7932b147872.md) | 165 | `result-track:a415a9467312e7932b1478726ac7d96ca9cc6463b4bc341d3d706e6323951d80` |
| 29 | `theorem` | [map_piMap_pi_finite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/map-pimap-pi-finite--03986733df3ffc19d405e7a6.md) | 186 | `result-track:03986733df3ffc19d405e7a623126cc2877730e86578b743b6f4441233c51b07` |
| 30 | `lemma` | [Set.Finite.cofinite_inf_principal_compl](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/set-finite-cofinite-inf-principal-compl--8dd1a62d87de55ab73c2eb5c.md) | 195 | `result-track:8dd1a62d87de55ab73c2eb5c5fafcb3e81d0e82c7548a6050a6ba08218238ec8` |
| 31 | `lemma` | [Set.Finite.cofinite_inf_principal_sdiff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/set-finite-cofinite-inf-principal-sdiff--110ab31b17cfe909439c214e.md) | 199 | `result-track:110ab31b17cfe909439c214e4ccaa042505075f94ec375fbb821aaecda134faf` |
| 32 | `theorem` | [Nat.cofinite_eq_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/nat-cofinite-eq-attop--5f70faba3b9e8caa072e3338.md) | 207 | `result-track:5f70faba3b9e8caa072e333819a76e84b6d32517f4e6532efa41456f091c1bf1` |
| 33 | `theorem` | [Nat.frequently_atTop_iff_infinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/nat-frequently-attop-iff-infinite--9f291d30aba0e2cfbf2ec7ab.md) | 212 | `result-track:9f291d30aba0e2cfbf2ec7abcf5626744fa898415f4c9e99aa7a18165681ad5f` |
| 34 | `lemma` | [Nat.eventually_pos](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/nat-eventually-pos--58073d37e45d72dc59fdbe26.md) | 216 | `result-track:58073d37e45d72dc59fdbe26c4940f5217716dc01d73026e734ed36e82f4ff20` |
| 35 | `theorem` | [Filter.Tendsto.exists_within_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/filter-tendsto-exists-within-forall-le--b6f373d58167e0ecf0a39f37.md) | 219 | `result-track:b6f373d58167e0ecf0a39f37a40c9fac4f9731f8494126f93a4d5b6de882e6cc` |
| 36 | `theorem` | [Filter.Tendsto.exists_forall_le](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/filter-tendsto-exists-forall-le--8f0b6a9a43392a824df5e427.md) | 235 | `result-track:8f0b6a9a43392a824df5e427f9e79a0215ece637af6f8dcca57353d0d407e507` |
| 37 | `theorem` | [Filter.Tendsto.exists_within_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/filter-tendsto-exists-within-forall-ge--c1c8663626c1483baa6c1288.md) | 240 | `result-track:c1c8663626c1483baa6c128892f0a7c257348d1fd575bb74b4ceaa88bdbc22e8` |
| 38 | `theorem` | [Filter.Tendsto.exists_forall_ge](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/filter-tendsto-exists-forall-ge--22deea54fd18b7414739962a.md) | 245 | `result-track:22deea54fd18b7414739962ac9a3ac2fb4fce079bd381eaca6e241b747b7decf` |
| 39 | `theorem` | [Function.Surjective.le_map_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/function-surjective-le-map-cofinite--3a86e2debf6a475fb97f9a89.md) | 249 | `result-track:3a86e2debf6a475fb97f9a89e5dab6504f0bc6a5a6734001a1b15a23b374eee4` |
| 40 | `theorem` | [Function.Injective.tendsto_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/function-injective-tendsto-cofinite--848fc1f0a3b458cad2ce82a0.md) | 254 | `result-track:848fc1f0a3b458cad2ce82a047053360b0f9058b0e5fbe37c9e99d66d523a20a` |
| 41 | `theorem` | [Filter.Tendsto.cofinite_of_finite_preimage_singleton](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/filter-tendsto-cofinite-of-finite-preimage-singleton--5f457611ef4434365d385b79.md) | 258 | `result-track:5f457611ef4434365d385b79cd8d96fc303217fdf00c66fa8d6f3f8bfeb3f3b3` |
| 42 | `theorem` | [Function.Injective.comap_cofinite_eq](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/function-injective-comap-cofinite-eq--0ea8eea12f954a5797916380.md) | 264 | `result-track:0ea8eea12f954a57979163809310bf83fbfc0e7a21c607c0ce59896c64bec1d0` |
| 43 | `theorem` | [Function.Injective.nat_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/function-injective-nat-tendsto-attop--8af075672eb7f268b6b405de.md) | 269 | `result-track:8af075672eb7f268b6b405de9315c30a255bdacfe310c7228d177feaa56f42ff` |
| 44 | `lemma` | [Function.update_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/function-update-eventuallyeq--d1d0e6c18f6cd3d1c90cbc90.md) | 273 | `result-track:d1d0e6c18f6cd3d1c90cbc90bdb49df6e2794837bbb1ef1124cfac471bfeae80` |
| 45 | `lemma` | [Function.update_eventuallyEq_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/function-update-eventuallyeq-cofinite--628a03b28643b06a6ee074c4.md) | 277 | `result-track:628a03b28643b06a6ee074c4a579c50a4db26de71aea39198cc52fdd338a6b4f` |
| 46 | `lemma` | [tendsto_cofinite_pure_iff](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/tendsto-cofinite-pure-iff--49cead24b4dfed9495132eab.md) | 282 | `result-track:49cead24b4dfed9495132eab3ac49c18f96a386db77c62d20d98eda5798a06af` |
| 47 | `theorem` | [le_cofinite_iff_ker](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/le-cofinite-iff-ker--fb0415bdff2c0b55ce7a9cbc.md) | 289 | `result-track:fb0415bdff2c0b55ce7a9cbc28ca365e14937b74df510c82b23d0a0952eda8ce` |
| 48 | `theorem` | [le_cofinite_iff_boundary](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/le-cofinite-iff-boundary--0f5a7e46090ee9444583542e.md) | 294 | `result-track:0f5a7e46090ee9444583542e379784fee6c4c8a7ba44236585902f0e7294a338` |
| 49 | `theorem` | [boundary_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/boundary-le-cofinite--ea7cbcf430498fda64f98aab.md) | 307 | `result-track:ea7cbcf430498fda64f98aabca1439f79a869eeb393aa8f385d6ef8670c6c48d` |
| 50 | `theorem` | [boundary_principal](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/boundary-principal--af5760792502c42b9cc826a9.md) | 311 | `result-track:af5760792502c42b9cc826a9e27ad824a3115714bff901afbe24c99907361d48` |
| 51 | `theorem` | [existsUnique_eq_principal_sup_free](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/existsunique-eq-principal-sup-free--a3d0e29209f3bbc4c5ca2db5.md) | 316 | `result-track:a3d0e29209f3bbc4c5ca2db57f8d37dfc5db85184bbacbb845f99eb2b09e9d0e` |
| 52 | `theorem` | [exists_eq_principal_sup_free](../../../../../mathematics/Topology/GeneralTopology/Cofinite/Variant58831dd51ada5e539d605936a58a179387761d85847ba1ee9426b2fd547e746c.lean/declarations/exists-eq-principal-sup-free--0b84e2c2c39d1bf561dc0ce1.md) | 335 | `result-track:0b84e2c2c39d1bf561dc0ce1c22bc90b0a5b6b74ed5d01730b30f01a52031e05` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
