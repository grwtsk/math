# Verification target: GRWTSK.Topology.GeneralTopology.HasGroupoid.Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de76bc478d9e7b57cbba8b0e1bce1f6b18631986",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de76bc478d9e7b57cbba8b0e1bce1f6b18631986`.

Source path: `GRWTSK/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean.json)

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
| 1 | `class` | [HasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/hasgroupoid--d61044eb503184a27b20ae3b.md) | 34 | `declaration-track:d61044eb503184a27b20ae3bb2862b8885a1de937325fe280aa96ef2be2d6a0b` |
| 2 | `theorem` | [StructureGroupoid.compatible](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-compatible--60af9993ea29e93302ecfa9b.md) | 42 | `result-track:60af9993ea29e93302ecfa9be72afb6cd04c5b083d54a92d20a205cc1da7c987` |
| 3 | `theorem` | [hasGroupoid_of_le](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/hasgroupoid-of-le--5d9a59fa60576da388a40f24.md) | 48 | `result-track:5d9a59fa60576da388a40f2470bc6b2972d82dca3c1bb3480359b1033ebaef38` |
| 4 | `theorem` | [hasGroupoid_inf_iff](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/hasgroupoid-inf-iff--cd7450bd242d2656b763024d.md) | 52 | `result-track:cd7450bd242d2656b763024ddc88c8a8bc2b5c1f2fa75103587792f9241598ba` |
| 5 | `theorem` | [hasGroupoid_of_pregroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/hasgroupoid-of-pregroupoid--67200a8292ea7849033abcd0.md) | 57 | `result-track:67200a8292ea7849033abcd0507dd4614159f35c449f1d4154fbd8781280ade1` |
| 6 | `instance` | [hasGroupoid_model_space](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/hasgroupoid-model-space--99f986544b58c00d52f15f08.md) | 63 | `declaration-track:99f986544b58c00d52f15f081ecb94d2c88241adf057cef4d4f0ac6531fa88ce` |
| 7 | `instance` | [hasGroupoid_continuousGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/hasgroupoid-continuousgroupoid--e742ea95facf1fb8bcaca551.md) | 71 | `declaration-track:e742ea95facf1fb8bcaca5517c5d98f6273705fec97b2ac3e019eaf010e10818` |
| 8 | `theorem` | [StructureGroupoid.trans_restricted](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-trans-restricted--400eff1b70038a851b7d0de8.md) | 78 | `result-track:400eff1b70038a851b7d0de891f1eab7021b5bfe5f2720f922d53462166aace4` |
| 9 | `def` | [StructureGroupoid.maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-maximalatlas--495e08cf5bfc08ab9edae807.md) | 93 | `declaration-track:495e08cf5bfc08ab9edae807626993b689d106cc1453808bcec79cc13217e53c` |
| 10 | `theorem` | [StructureGroupoid.subset_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-subset-maximalatlas--a35cc1957ac2f6022767300d.md) | 97 | `result-track:a35cc1957ac2f6022767300dac32ab279323fd6c688675e4887ebfb95302dc23` |
| 11 | `theorem` | [StructureGroupoid.chart_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-chart-mem-maximalatlas--95ccf8cc5f70c811bbe2a5c0.md) | 100 | `result-track:95ccf8cc5f70c811bbe2a5c03544a4c0029007282f3034bc24b159f069efc886` |
| 12 | `theorem` | [mem_maximalAtlas_iff](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/mem-maximalatlas-iff--44ce08b313c35dcc23c8b844.md) | 106 | `result-track:44ce08b313c35dcc23c8b84417b87ff2ead45a4ad1f446c87d56841019fd6fd8` |
| 13 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas_right](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas-right--3161a5adcaf2ed7209d71081.md) | 110 | `result-track:3161a5adcaf2ed7209d71081f83083afcc87ae9bfc2e70d6989970690f699ab2` |
| 14 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas_left](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas-left--b94aa3c8f20ce6b4a128f199.md) | 115 | `result-track:b94aa3c8f20ce6b4a128f199bc90956822f38b289da2f7e86d32b7cb9f9d1cce` |
| 15 | `theorem` | [StructureGroupoid.compatible_of_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-compatible-of-mem-maximalatlas--03dd704d4a9179bbae48abd9.md) | 122 | `result-track:03dd704d4a9179bbae48abd97975d8ed46da39b9a69b619f847fe88cf6803aa5` |
| 16 | `lemma` | [StructureGroupoid.mem_maximalAtlas_of_eqOnSource](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-mem-maximalatlas-of-eqonsource--d0876e4d9c9b11c847070d4b.md) | 147 | `result-track:d0876e4d9c9b11c847070d4beaeef9d962f97d1a904df6e5abeb41c9baa6a0ef` |
| 17 | `theorem` | [StructureGroupoid.id_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-id-mem-maximalatlas--8584001f624d034cf492fef9.md) | 157 | `result-track:8584001f624d034cf492fef9bc54c815edb39d21ad2158fc0e3b205903009221` |
| 18 | `theorem` | [StructureGroupoid.mem_maximalAtlas_of_mem_groupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-mem-maximalatlas-of-mem-groupoid--4a788567060d15fc0ba876a0.md) | 161 | `result-track:4a788567060d15fc0ba876a0d6b892077e9281636c2d76ad5464364adccd4e1e` |
| 19 | `theorem` | [StructureGroupoid.maximalAtlas_mono](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-maximalatlas-mono--e1365465be58a95ebb2af756.md) | 166 | `result-track:e1365465be58a95ebb2af75632d2bf8ca17099d86a470dc61b065e061db06ba5` |
| 20 | `theorem` | [restr_mem_maximalAtlas_aux1](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/restr-mem-maximalatlas-aux1--c0b81be0597a13228571ab47.md) | 170 | `result-track:c0b81be0597a13228571ab479f3cc618f0bb8a835f2dcb407fec64caa7fd0543` |
| 21 | `theorem` | [restr_mem_maximalAtlas_aux2](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/restr-mem-maximalatlas-aux2--836a5dbc19721334f4e5ee9f.md) | 183 | `result-track:836a5dbc19721334f4e5ee9fe1e77ec05ebda10c8adffe4c2b279cceae39900e` |
| 22 | `theorem` | [restr_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/restr-mem-maximalatlas--ad9bd47a8b66e2433f48fa33.md) | 197 | `result-track:ad9bd47a8b66e2433f48fa335d70b63314a1d3d8eabd10966d96e3b2b89fd32b` |
| 23 | `def` | [singletonChartedSpace](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singletonchartedspace--ce1c029570a5160c652b6052.md) | 217 | `declaration-track:ce1c029570a5160c652b60529d7ca6b87d1d2d3ded75f4039018c6eaee11b008` |
| 24 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singletonchartedspace-chartat-eq--f9c28e2eeea2145e03bd88ac.md) | 224 | `result-track:f9c28e2eeea2145e03bd88ac4f394f8f35778848089905038fd7b2a3c3f1f9aa` |
| 25 | `theorem` | [singletonChartedSpace_chartAt_source](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singletonchartedspace-chartat-source--5a743c2fee3156a2129ccd5f.md) | 228 | `result-track:5a743c2fee3156a2129ccd5fd0a222a898fbffeadbc80d080c57ebd17c42fba1` |
| 26 | `theorem` | [singletonChartedSpace_mem_atlas_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singletonchartedspace-mem-atlas-eq--c6606c5556a3af35869487d1.md) | 232 | `result-track:c6606c5556a3af35869487d1a18132f2839e448f87a4730c235adfd0ae6087b8` |
| 27 | `theorem` | [singleton_hasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singleton-hasgroupoid--0b591c12cf8642c20ea063e8.md) | 239 | `result-track:0b591c12cf8642c20ea063e835a5b4ffb53be7d011a5d461996d41c3b441832b` |
| 28 | `def` | [singletonChartedSpace](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singletonchartedspace--7ff68aef5ac352e578d10006.md) | 261 | `declaration-track:7ff68aef5ac352e578d100066fea0b38b0f7949e45f0d4658fd5a24cb2d6bae4` |
| 29 | `theorem` | [singletonChartedSpace_chartAt_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singletonchartedspace-chartat-eq--14f8fd944cf0b1a0ff45fb2e.md) | 264 | `result-track:14f8fd944cf0b1a0ff45fb2edaa031a2d6d3a874ae1a613646498c6b95fe8933` |
| 30 | `theorem` | [singleton_hasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/singleton-hasgroupoid--07c54559d540e2647c3487b1.md) | 268 | `result-track:07c54559d540e2647c3487b186e92613cec1fb1197583cf92bb540eb9c892b7f` |
| 31 | `instance` | [instChartedSpace](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/instchartedspace--47dec5dc9ea79134f713bd9c.md) | 284 | `declaration-track:47dec5dc9ea79134f713bd9c0d71ead7133a378c313498429f452f97a6e04ee6` |
| 32 | `lemma` | [chartAt_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/chartat-eq--4dc9f482fdc1d70d778577a6.md) | 292 | `result-track:4dc9f482fdc1d70d778577a63eeb3cec8df4fc1b1e195f786e1ff29673d93cfe` |
| 33 | `lemma` | [chart_eq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/chart-eq--6e27717137826a77bafca339.md) | 296 | `result-track:6e27717137826a77bafca339889e52a45a396f316e6566d3236cee0e2ed1e618` |
| 34 | `lemma` | [chart_eq'](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/chart-eq--a00f05639d583a21762d8418.md) | 304 | `result-track:a00f05639d583a21762d8418203467a28f06af9d36ef6c0caf863e1a0d7f0219` |
| 35 | `instance` | [instHasGroupoid](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/insthasgroupoid--03aed5ec492311a2d4819d43.md) | 310 | `declaration-track:03aed5ec492311a2d4819d434f47a6788c27d877294636aa43e7f1ca0f2ba901` |
| 36 | `theorem` | [chartAt_subtype_val_symm_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/chartat-subtype-val-symm-eventuallyeq--a28026faa473668bcc540c20.md) | 322 | `result-track:a28026faa473668bcc540c202aedb3e69859f9ff54e2237b79697a9b7bab9b05` |
| 37 | `theorem` | [chartAt_inclusion_symm_eventuallyEq](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/chartat-inclusion-symm-eventuallyeq--acd1b463f2fb706f2b31952d.md) | 330 | `result-track:acd1b463f2fb706f2b31952dd910ec698523dec5706fb72c7e08f02f4577a092` |
| 38 | `lemma` | [StructureGroupoid.subtypeRestr_mem_maximalAtlas](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-subtyperestr-mem-maximalatlas--d0b54d2e298a5caf9f3bcebd.md) | 347 | `result-track:d0b54d2e298a5caf9f3bcebdb0b8b439868b4f100e8ef2086f7c48040ed85302` |
| 39 | `structure` | [Structomorph](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structomorph--f787f0e06c7428a4e5c0038c.md) | 364 | `declaration-track:f787f0e06c7428a4e5c0038ca111c618233d94d87f2d8bb935cc9277b30101b7` |
| 40 | `def` | [Structomorph.refl](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structomorph-refl--3c996da8276b2e36697bd340.md) | 373 | `declaration-track:3c996da8276b2e36697bd340f11b2b40a1fab136db4ecac81f40943a09dcf01f` |
| 41 | `def` | [Structomorph.symm](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structomorph-symm--bf6b4df1decfd045c5b20fe9.md) | 382 | `declaration-track:bf6b4df1decfd045c5b20fe9d14b2084fb25338acc7c41fe909c68cd23395cfe` |
| 42 | `def` | [Structomorph.trans](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structomorph-trans--469bd2562bb6aaa95f459d6d.md) | 392 | `declaration-track:469bd2562bb6aaa95f459d6da3c0235435146f5f8e823308dfed499eeb01cf3f` |
| 43 | `theorem` | [StructureGroupoid.restriction_mem_maximalAtlas_subtype](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/structuregroupoid-restriction-mem-maximalatlas-subtype--0c4e4ee2d2e421988d36b9f7.md) | 442 | `result-track:0c4e4ee2d2e421988d36b9f7364a6bf5ae0e1510f4d93f1b29f2906dedbc594b` |
| 44 | `def` | [OpenPartialHomeomorph.toStructomorph](../../../../../mathematics/Topology/GeneralTopology/HasGroupoid/Variant233b21dae9be347dc04a399531ce3383e208e6211abb4b810791df3129d1baba.lean/declarations/openpartialhomeomorph-tostructomorph--80fd5ea65f0ad424661aa649.md) | 469 | `declaration-track:80fd5ea65f0ad424661aa6498461eb4ee54c9e159b9a7302834dbcd497fdb5cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
