# Verification target: GRWTSK.Topology.GeneralTopology.HasGroupoid.Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6501cdb014cd733473f22b64d4e147f04ba12ea7",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6501cdb014cd733473f22b64d4e147f04ba12ea7`.

Source path: `GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean.json)

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
| 1 | `class` | [HasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/hasgroupoid--48957acc769c5c6955b3b73b.md) | 42 | `declaration-track:48957acc769c5c6955b3b73b090fc5604269350bb36a0bfb93e641198e028220` |
| 2 | `theorem` | [StructureGroupoid.compatible](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-compatible--503c465158ebb679164038fd.md) | 50 | `result-track:503c465158ebb679164038fd5c8d0a8f6d6995a25c799672940aaf302c534541` |
| 3 | `theorem` | [hasGroupoid_of_le](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/hasgroupoid-of-le--e6e260097ffba510fd80f75d.md) | 56 | `result-track:e6e260097ffba510fd80f75d07ff68b2edffe71d1cd9be769761cd21805ce18c` |
| 4 | `theorem` | [hasGroupoid_inf_iff](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/hasgroupoid-inf-iff--9eac204742b6cf86a4d2ff7b.md) | 60 | `result-track:9eac204742b6cf86a4d2ff7bbb8015b68b59a9b7361f62ea4e3e0f6d289faafa` |
| 5 | `theorem` | [hasGroupoid_of_pregroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/hasgroupoid-of-pregroupoid--bbe5155daf7f7b12aa207e63.md) | 65 | `result-track:bbe5155daf7f7b12aa207e63e04acd438deca5b7806351e6e9518cb0b1cbcaf6` |
| 6 | `instance` | [hasGroupoid_model_space](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/hasgroupoid-model-space--510b608122ed95f0a6bad4ef.md) | 71 | `declaration-track:510b608122ed95f0a6bad4ef1199142d897e4e93dfa1c43115ab698a58bd8933` |
| 7 | `instance` | [hasGroupoid_continuousGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/hasgroupoid-continuousgroupoid--782ac6f32bedf212ca6e68c3.md) | 79 | `declaration-track:782ac6f32bedf212ca6e68c3fed504359de3669c4baf80cad75bb076fad05917` |
| 8 | `theorem` | [StructureGroupoid.trans_restricted](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-trans-restricted--ff4a07a5e06bd187a6d52b14.md) | 86 | `result-track:ff4a07a5e06bd187a6d52b1461ed5b349002dbce89a3c2955bf77e0e837e01de` |
| 9 | `def` | [StructureGroupoid.maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-maximalatlas--40e6945b8b539ff421cfccea.md) | 101 | `declaration-track:40e6945b8b539ff421cfcceab258360e9cc77ba4f07d3402ade74e1588c134a8` |
| 10 | `theorem` | [StructureGroupoid.subset_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-subset-maximalatlas--2dc4c3f50f7869030f59fef9.md) | 105 | `result-track:2dc4c3f50f7869030f59fef9219a2bdf0c3ece4fb81d2cb96d6fe2c0255a34a9` |
| 11 | `theorem` | [StructureGroupoid.chart_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-chart-mem-maximalatlas--435fd1fabff3ccc3a6f80c85.md) | 108 | `result-track:435fd1fabff3ccc3a6f80c85bea3128238e99f2c53bb147c6165e2fe41abb83c` |
| 12 | `theorem` | [mem_maximalAtlas_iff](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/mem-maximalatlas-iff--1f885474b12b112c7dbbc4fc.md) | 114 | `result-track:1f885474b12b112c7dbbc4fc991af48d60b46d07b87bfe199c3434fb8e601022` |
| 13 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas_right](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas-right--52f37740d9312e62746c387d.md) | 118 | `result-track:52f37740d9312e62746c387d891056dda4cb6de5aeec0eb99077a100a53b67e0` |
| 14 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas_left](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas-left--3e8d27a726dd1faa16e9b53d.md) | 123 | `result-track:3e8d27a726dd1faa16e9b53d262707aa15d9f4c14972c36f737ff016ba9ab493` |
| 15 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas--b786d9bbec28798912e6ca58.md) | 130 | `result-track:b786d9bbec28798912e6ca58e40641b6b87e76bdce975770f15600962034d810` |
| 16 | `lemma` | [StructureGroupoid.mem_maximalAtlas_of_eqOnSource](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-mem-maximalatlas-of-eqonsource--b965c390d8330ee6fb5068f3.md) | 155 | `result-track:b965c390d8330ee6fb5068f3d4e7c8f75dbe0dd91a9749467fa6b78bc2b5ec1a` |
| 17 | `theorem` | [StructureGroupoid.id_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-id-mem-maximalatlas--1eb414ea6dd4509f059a06a3.md) | 165 | `result-track:1eb414ea6dd4509f059a06a3d67a45fa5bf4063c43186dbd75d11278274b59c9` |
| 18 | `theorem` | [StructureGroupoid.mem_maximalAtlas_of_mem_groupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-mem-maximalatlas-of-mem-groupoid--6fde323341ee46b57ff8f79d.md) | 169 | `result-track:6fde323341ee46b57ff8f79d549d2ec0e1d8621cdd91425c608ab56e871fed11` |
| 19 | `theorem` | [StructureGroupoid.maximalAtlas_mono](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-maximalatlas-mono--c651705e3c87e15dcb25c719.md) | 174 | `result-track:c651705e3c87e15dcb25c719a9e52b6994e545334b7e7fb3af3ea78e1760e516` |
| 20 | `theorem` | [restr_mem_maximalAtlas_aux1](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/restr-mem-maximalatlas-aux1--847a487e62895e13624f107a.md) | 178 | `result-track:847a487e62895e13624f107a9e9c9ef97714ecca0c4176f6a1d354aed18153a2` |
| 21 | `theorem` | [restr_mem_maximalAtlas_aux2](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/restr-mem-maximalatlas-aux2--4196f5830969d83207c827d7.md) | 191 | `result-track:4196f5830969d83207c827d7b90b06c9b08715d6e4dc4b51b82df5f3382627ec` |
| 22 | `theorem` | [restr_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/restr-mem-maximalatlas--1ac3800319b4e8671f81efeb.md) | 205 | `result-track:1ac3800319b4e8671f81efeb54dc91d36b0fb7599f6c85aa3c7fa1715cb6a499` |
| 23 | `def` | [singletonChartedSpace](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singletonchartedspace--0b5770a256eff7a13479df68.md) | 225 | `declaration-track:0b5770a256eff7a13479df68cc01dd88a423758580c0abea77285df500e487be` |
| 24 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singletonchartedspace-chartat-eq--dc959efda44ebbc2a7d6a60f.md) | 232 | `result-track:dc959efda44ebbc2a7d6a60f4267bc22fd008779bcca73a090c15ba98b1bf897` |
| 25 | `theorem` | [singletonChartedSpace_chartAt_source](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singletonchartedspace-chartat-source--2bfacc55031622f90904ebc3.md) | 236 | `result-track:2bfacc55031622f90904ebc3452b8cc190f6d0b1d06c38bf95802e854d9f41ba` |
| 26 | `theorem` | [singletonChartedSpace_mem_atlas_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singletonchartedspace-mem-atlas-eq--74dcf793b7a69027679bbcb7.md) | 240 | `result-track:74dcf793b7a69027679bbcb757a847f2fc6ca3795eb5c3b9fa133b5e672f7911` |
| 27 | `theorem` | [singleton_hasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singleton-hasgroupoid--9bf1489a9f123ce6046471b0.md) | 247 | `result-track:9bf1489a9f123ce6046471b037a6a2e42d842b0adef66d2d0495c4f2bf9c1f54` |
| 28 | `def` | [singletonChartedSpace](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singletonchartedspace--a453acf887f5b5ff84ed3ede.md) | 269 | `declaration-track:a453acf887f5b5ff84ed3ede9be1659beaa7afa8bec34edff9a78abccd827b77` |
| 29 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singletonchartedspace-chartat-eq--d1642addeb8c2f93f03812cc.md) | 272 | `result-track:d1642addeb8c2f93f03812cca4e3a03fb932252d665d0e49c207d69d37593278` |
| 30 | `theorem` | [singleton_hasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/singleton-hasgroupoid--30847f24c2c5280e113884a3.md) | 276 | `result-track:30847f24c2c5280e113884a3b940f5a3270aea127676e3d06b9e75873a7c1b76` |
| 31 | `instance` | [instChartedSpace](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/instchartedspace--9888b85a2692548dd22904a6.md) | 292 | `declaration-track:9888b85a2692548dd22904a6f5a69a76c748af2330ba4e674fd1bd97c0d0a70e` |
| 32 | `lemma` | [chartAt_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/chartat-eq--b533d2f69c8f61d263c7efc5.md) | 300 | `result-track:b533d2f69c8f61d263c7efc57274c02750c8bb8a44c28c93e617c0a2d0efae47` |
| 33 | `lemma` | [chart_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/chart-eq--7afce2d107ba35bc6f8fa4dc.md) | 304 | `result-track:7afce2d107ba35bc6f8fa4dc9d3df85af355dd53f90003fed6e8a4d112872e87` |
| 34 | `lemma` | [chart_eq'](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/chart-eq--f5ad97468ade3a09ae77783c.md) | 312 | `result-track:f5ad97468ade3a09ae77783cf43bb8118349de676c71189e38be2549478bc20a` |
| 35 | `instance` | [instHasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/insthasgroupoid--08cdd155c86c37d7bedc62ab.md) | 318 | `declaration-track:08cdd155c86c37d7bedc62ab91dfa4a1046d53d09537017b5b22607cd805bb22` |
| 36 | `theorem` | [chartAt_subtype_val_symm_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/chartat-subtype-val-symm-eventuallyeq--f0f56898b7a93bd164321624.md) | 330 | `result-track:f0f56898b7a93bd16432162444c9d758e4836d7c55f465ffc070f87d2cf315fe` |
| 37 | `theorem` | [chartAt_inclusion_symm_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/chartat-inclusion-symm-eventuallyeq--ac2a01c918e005ea9a9bc4ec.md) | 338 | `result-track:ac2a01c918e005ea9a9bc4ecbc92c38edc18cce30ac23ed78d48afdee0551306` |
| 38 | `lemma` | [StructureGroupoid.subtypeRestr_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-subtyperestr-mem-maximalatlas--846dc2c0e3a8c67e5f006a66.md) | 355 | `result-track:846dc2c0e3a8c67e5f006a6614ca128bbe53ada94e7418dc8330eda803e41c4b` |
| 39 | `structure` | [Structomorph](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structomorph--1ab7e48c790cfd7e66df7d08.md) | 372 | `declaration-track:1ab7e48c790cfd7e66df7d088d8b0fb9509912fdc0f6052b6dd94694ff62863e` |
| 40 | `def` | [Structomorph.refl](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structomorph-refl--3fce264c6aec3f700df0bb74.md) | 381 | `declaration-track:3fce264c6aec3f700df0bb747b684be10d1ecac707019b320fd0f6f00ba54727` |
| 41 | `def` | [Structomorph.symm](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structomorph-symm--d736509fc1d4b0386510d7df.md) | 390 | `declaration-track:d736509fc1d4b0386510d7dff911e30d8b8f34bc2001a5ef2fbe979af1863bdf` |
| 42 | `def` | [Structomorph.trans](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structomorph-trans--29d1da5fdea3b5639c2ec7fc.md) | 400 | `declaration-track:29d1da5fdea3b5639c2ec7fc1cf719fd99554757d3bb85c4462ae7cc06448fd5` |
| 43 | `theorem` | [StructureGroupoid.restriction_mem_maximalAtlas_subtype](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/structuregroupoid-restriction-mem-maximalatlas-subtype--4e1d8f35fb197b6f22a208bc.md) | 450 | `result-track:4e1d8f35fb197b6f22a208bc6d833b4bcf91ab0043d96d178ad3996fee7744d0` |
| 44 | `def` | [OpenPartialHomeomorph.toStructomorph](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant933806279a7b9d8dae4ddfe1564740895a7ffbc478a52338e20039184912a4a4.lean/declarations/openpartialhomeomorph-tostructomorph--ca0c950a53933ae39c32c21b.md) | 477 | `declaration-track:ca0c950a53933ae39c32c21bdfdfb3c9a652e5a1d6ee436027e74887790b068e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
