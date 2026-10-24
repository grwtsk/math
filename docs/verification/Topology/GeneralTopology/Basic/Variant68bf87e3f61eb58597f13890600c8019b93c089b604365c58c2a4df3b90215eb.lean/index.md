# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86f0668614bf3998e11acabc4076a804bac26223",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86f0668614bf3998e11acabc4076a804bac26223`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean.json)

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
| 1 | `theorem` | [tangentConeAt_mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-mono--cf8a839418524336992b1b7f.md) | 31 | `result-track:cf8a839418524336992b1b7fce9f849501059e104524945f935bc8c4cd7f9365` |
| 2 | `theorem` | [tangentConeAt_mono_field](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-mono-field--3d16764c56b8fb5cd11bfe84.md) | 40 | `result-track:3d16764c56b8fb5cd11bfe846968167374ebeeb128e429c92a85ecd1890c35e8` |
| 3 | `theorem` | [Filter.HasBasis.tangentConeAt_eq_biInter_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/filter-hasbasis-tangentconeat-eq-biinter-closure--f3dae793b5eb643fd2535263.md) | 48 | `result-track:f3dae793b5eb643fd253526304659af886df50759280a44d18a9ece83dcab5dd` |
| 4 | `theorem` | [tangentConeAt_eq_biInter_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-eq-biinter-closure--0f86f81223771ddf3ff66e5d.md) | 56 | `result-track:0f86f81223771ddf3ff66e5dfa7dc668a5731829217ec5c4a48853f2167805e3` |
| 5 | `theorem` | [tangentConeAt_mono_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-mono-nhds--fe1d5e5652003567619f0eb0.md) | 62 | `result-track:fe1d5e5652003567619f0eb07c1e3d144db0a6c468f70932fe1ec2f40b38e00c` |
| 6 | `theorem` | [tangentConeAt_congr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-congr--979eef0821b6ea10d8a618f4.md) | 74 | `result-track:979eef0821b6ea10d8a618f49b27503e30fa44ac7047bdd2dcac84407c9fad11` |
| 7 | `theorem` | [tangentConeAt_inter_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-inter-nhds--68828e1738d358dd5ebe7056.md) | 78 | `result-track:68828e1738d358dd5ebe70565858f5efbbb174a294b978fa5bdeaa29198939b7` |
| 8 | `theorem` | [mem_closure_of_nonempty_tangentConeAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/mem-closure-of-nonempty-tangentconeat--7d00ec6dc274f6a947883222.md) | 81 | `result-track:7d00ec6dc274f6a947883222e192e668f355eec1e17d02e7f4017d4844c58561` |
| 9 | `theorem` | [tangentConeAt_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-closure--bc0027dc2c466d41afc1dbb0.md) | 91 | `result-track:bc0027dc2c466d41afc1dbb02e9e96b6f7bbc65de7beb95a1e749674a940b99d` |
| 10 | `theorem` | [UniqueDiffWithinAt.mono](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-mono--69fef899317143f1ad053ef4.md) | 106 | `result-track:69fef899317143f1ad053ef4e79b5e8abacae5753c46ae254e92d3e58ad421e9` |
| 11 | `theorem` | [UniqueDiffWithinAt.closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-closure--da50ab33e486514396713177.md) | 113 | `result-track:da50ab33e486514396713177728dedcf98ef69f916c94505ce8976e5749f9a1f` |
| 12 | `theorem` | [UniqueDiffWithinAt.mono_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-mono-nhds--af77d7d182b14c5d85c677fb.md) | 117 | `result-track:af77d7d182b14c5d85c677fb30d378611c900e3301976363dffff574a11593be` |
| 13 | `theorem` | [uniqueDiffWithinAt_congr](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-congr--962ffbcf6e752386527f9638.md) | 123 | `result-track:962ffbcf6e752386527f963801051195d5016552ae32e240ba523b1b3412dbef` |
| 14 | `theorem` | [uniqueDiffWithinAt_inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-inter--3039fc317abc4fbaea69066c.md) | 127 | `result-track:3039fc317abc4fbaea69066c1c1c601daec9f41b70eedc48e48d66d682187a69` |
| 15 | `theorem` | [UniqueDiffWithinAt.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-inter--e4d89529a3bd33a0ac2c3644.md) | 131 | `result-track:e4d89529a3bd33a0ac2c36440f06ebb5e3d4c4967bfe1074e50594242d07f2fa` |
| 16 | `theorem` | [UniqueDiffOn.inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffon-inter--5a480a236cc1c8de23ce3a74.md) | 135 | `result-track:5a480a236cc1c8de23ce3a7459af77a25d1fab7c7c0592f1a2bdcbb3785b6b39` |
| 17 | `theorem` | [uniqueDiffWithinAt_inter'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-inter--c18cb9b9a6f6b24af025b832.md) | 138 | `result-track:c18cb9b9a6f6b24af025b832212741a93f2e640af01df4757e4df456b8442e85` |
| 18 | `theorem` | [UniqueDiffWithinAt.inter'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-inter--ef5e008bfb8d92dfa98581df.md) | 142 | `result-track:ef5e008bfb8d92dfa98581df8722a06dbc4f047e27c7c641c1139bc3547341f3` |
| 19 | `theorem` | [zero_mem_tangentConeAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/zero-mem-tangentconeat--8d2a344e879ef6e3525ffd16.md) | 147 | `result-track:8d2a344e879ef6e3525ffd16a2b79b0b4cd5cb6a5b13b892d5bd95de9662aa63` |
| 20 | `theorem` | [zero_mem_tangentConeAt_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/zero-mem-tangentconeat-iff--f9b94e7ef94720413cd3212d.md) | 157 | `result-track:f9b94e7ef94720413cd3212d425f4e0a6a44a1adeb969e460070db84076c9c82` |
| 21 | `theorem` | [tangentConeAt_subset_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-subset-zero--69f959dd1502c6ce5173ee3e.md) | 162 | `result-track:69f959dd1502c6ce5173ee3e7317d9a643d438229a086e2d08e3c767d5d8ecf6` |
| 22 | `theorem` | [AccPt.of_mem_tangentConeAt_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/accpt-of-mem-tangentconeat-ne-zero--724b985cf0b8153e645bc281.md) | 173 | `result-track:724b985cf0b8153e645bc28131fc3cdc66cb2b682dea0e5bd037b0805ac586b5` |
| 23 | `theorem` | [UniqueDiffWithinAt.accPt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-accpt--58b83e68b63d432c4475c92c.md) | 178 | `result-track:58b83e68b63d432c4475c92cfea59affd24b6ede43f0675f1017d16f5c25b6fb` |
| 24 | `theorem` | [mem_tangentConeAt_of_add_smul_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/mem-tangentconeat-of-add-smul-mem--4f4efb35f7704c38fca6042f.md) | 192 | `result-track:4f4efb35f7704c38fca6042f4a019178c838c31f19f0e86e2ff0d7732bd34cf2` |
| 25 | `theorem` | [tangentConeAt_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-univ--c85761a6451f6a9612776c45.md) | 204 | `result-track:c85761a6451f6a9612776c456946a2f665ccc4c6afe07165c22d29abf0c089ab` |
| 26 | `theorem` | [tangentConeAt_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/tangentconeat-of-mem-nhds--a0550a28a55c8bf183f0e5bd.md) | 207 | `result-track:a0550a28a55c8bf183f0e5bd05d2ab5eb482a2a506206c0e437b12d0f82f3987` |
| 27 | `theorem` | [uniqueDiffOn_empty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffon-empty--6723480db25e6d59d43df6f7.md) | 223 | `result-track:6723480db25e6d59d43df6f72f170d150d45ef40a28817178d62e1621268c689` |
| 28 | `theorem` | [UniqueDiffWithinAt.congr_pt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-congr-pt--481621d17d1c026d96861551.md) | 226 | `result-track:481621d17d1c026d968615515fcdf41e801fac29807c54e46b1f4635568eeeb0` |
| 29 | `theorem` | [UniqueDiffWithinAt.mono_field](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-mono-field--2876354c3f9dc2ba4e1894d0.md) | 237 | `result-track:2876354c3f9dc2ba4e1894d085916abaadb18c8a065d2037f83662da22f9a982` |
| 30 | `theorem` | [UniqueDiffOn.mono_field](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffon-mono-field--7a972852675e508af6fff4e1.md) | 250 | `result-track:7a972852675e508af6fff4e19c0b21f985aa43ad4d71b8fd15aa50e563acedc9` |
| 31 | `theorem` | [uniqueDiffWithinAt_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-closure--892fc4e4dd236d8245705a96.md) | 256 | `result-track:892fc4e4dd236d8245705a9634190f4ca74758ea782d4b271d20c85eb908e19c` |
| 32 | `theorem` | [UniqueDiffWithinAt.mono_closure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-mono-closure--f997f399c1e3954f461321b4.md) | 262 | `result-track:f997f399c1e3954f461321b4d17d6e41073417af3f429e4633e0574abfa2f78f` |
| 33 | `theorem` | [uniqueDiffWithinAt_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-univ--b99cee5bd0e54847c38b5ba8.md) | 275 | `result-track:b99cee5bd0e54847c38b5ba8cea3207d621c3eb182cb875f9fb1475b5947c515` |
| 34 | `theorem` | [uniqueDiffOn_univ](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffon-univ--9ce7e01be76722d4b85f606a.md) | 280 | `result-track:9ce7e01be76722d4b85f606a7ec87e10ebff2f1dcd19d9fcfdbdfe987e6c3b62` |
| 35 | `theorem` | [uniqueDiffWithinAt_of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/uniquediffwithinat-of-mem-nhds--bb0dbd8d8c79c8ce823d508a.md) | 285 | `result-track:bb0dbd8d8c79c8ce823d508a7fde3e864f0ea51cfbaf5b0f6903b9bb50a75400` |
| 36 | `theorem` | [IsOpen.uniqueDiffWithinAt](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/isopen-uniquediffwithinat--fa2b50ccaf986d3fd14af943.md) | 288 | `result-track:fa2b50ccaf986d3fd14af9439b59a8e022c7bc307471cedcd9c3c5cdb72096e9` |
| 37 | `theorem` | [IsOpen.uniqueDiffOn](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant68bf87e3f61eb58597f13890600c8019b93c089b604365c58c2a4df3b90215eb.lean/declarations/isopen-uniquediffon--8f5b8b5c1183f022624d8092.md) | 291 | `result-track:8f5b8b5c1183f022624d8092d15d1f32369b65fe4a7825aa4c8e9394ba39345e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
