# Verification target: GRWTSK.Topology.GeneralTopology.DeltaGeneratedSpace.Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "003b90f637fa7e0f8a403a32cc844950620f3042",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `003b90f637fa7e0f8a403a32cc844950620f3042`.

Source path: `GRWTSK/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.WithSeminorms` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopologicalSpace.deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/topologicalspace-deltagenerated--693d558c7ca4fd3cae7d4ce6.md) | 32 | `declaration-track:693d558c7ca4fd3cae7d4ce6cd3723fd2fb19f4789014be97170b28082bf32ff` |
| 2 | `lemma` | [deltaGenerated_eq_coinduced](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltagenerated-eq-coinduced--8902993d9b9e3ca0f09d42f3.md) | 36 | `result-track:8902993d9b9e3ca0f09d42f3fcd35b33d72c6b17f8b536134b27b3be69da6b30` |
| 3 | `lemma` | [deltaGenerated_le](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltagenerated-le--4c2e0ee8a3a452723c00f76b.md) | 41 | `result-track:4c2e0ee8a3a452723c00f76b6e838984df5358dd7b8f122b722d5de420560b2c` |
| 4 | `lemma` | [isOpen_deltaGenerated_iff](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/isopen-deltagenerated-iff--23879049301909bac52b1f6a.md) | 46 | `result-track:23879049301909bac52b1f6a264595b322a3b1d239de0870c7f840e40211b248` |
| 5 | `lemma` | [continuous_euclidean_to_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/continuous-euclidean-to-deltagenerated--21a8e68635141018bea180b0.md) | 53 | `result-track:21a8e68635141018bea180b06f1e45a29903f0d2983119dd63a89d6a3e723ad3` |
| 6 | `lemma` | [deltaGenerated_deltaGenerated_eq](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltagenerated-deltagenerated-eq--a9e47763b459074b20035791.md) | 61 | `result-track:a9e47763b459074b20035791a812524c1bc1aa9539f7789eb4b3561c8e08e233` |
| 7 | `class` | [DeltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltageneratedspace--f0dc64ff50c749fd2a4799ed.md) | 72 | `declaration-track:f0dc64ff50c749fd2a4799ed343be7c2bef50ac5db99c9b4d3076745b2033e02` |
| 8 | `lemma` | [eq_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/eq-deltagenerated--d935c2d03248785bd1cc0cec.md) | 75 | `result-track:d935c2d03248785bd1cc0cec02769f107caa7f5c14fbb7aca06e1dee3eb4c072` |
| 9 | `lemma` | [DeltaGeneratedSpace.isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltageneratedspace-isopen-iff--4cd9b0d15855eceb860a7a2d.md) | 80 | `result-track:4cd9b0d15855eceb860a7a2dc7302fe51451512c4f21dd6f2808847e439a98bc` |
| 10 | `lemma` | [DeltaGeneratedSpace.continuous_iff](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltageneratedspace-continuous-iff--17483ed29c85c813251c05b5.md) | 86 | `result-track:17483ed29c85c813251c05b510818f878722a96ac4fc8ad5830cd007d99fe705` |
| 11 | `lemma` | [continuous_to_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/continuous-to-deltagenerated--f8d12cad9af5eda3637918f7.md) | 94 | `result-track:f8d12cad9af5eda3637918f70907ca5b0b7a47bd28c55231aad9ed8d0d95db78` |
| 12 | `lemma` | [deltaGeneratedSpace_deltaGenerated](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltageneratedspace-deltagenerated--b6f14e191880c15571286898.md) | 99 | `result-track:b6f14e191880c15571286898e53bcc363235e2827d9f9bdb1ea2f437edd69241` |
| 13 | `lemma` | [deltaGenerated_mono](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltagenerated-mono--560c2dcc51a2103466a1743a.md) | 103 | `result-track:560c2dcc51a2103466a1743a4bf27f5ce0a4ca98d8e72a51cd2675e5741a539e` |
| 14 | `def` | [of](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/of--2b80b4c14645c2bb628a8a61.md) | 112 | `declaration-track:2b80b4c14645c2bb628a8a610eea5d0335dd75d3f78086e0cfabacdcce62bdb0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/instance--733471979e0631add19f464a.md) | 114 | `declaration-track:733471979e0631add19f464aa50203c81427569756b38fb7f628e09111502977` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/instance--991f15796b511739727757b2.md) | 116 | `declaration-track:991f15796b511739727757b217188632ef42a623241c8f15799197a012b9fb48` |
| 17 | `def` | [counit](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/counit--fb734c57b1f46ab3f49e1ab6.md) | 120 | `declaration-track:fb734c57b1f46ab3f49e1ab6955d27c5bc45f122e5043aab8886d27e99f8c96f` |
| 18 | `lemma` | [continuous_counit](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/continuous-counit--c768f4e5922cbf3b0a7c97d3.md) | 122 | `result-track:c768f4e5922cbf3b0a7c97d330f8153879ac101a94f54a8cd915fc385333bf02` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/instance--8c22328c9d3f8763ffed583a.md) | 126 | `declaration-track:8c22328c9d3f8763ffed583a3a4d8c0039f408be541ec6e1c881636691f9734a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/instance--25057cb5ac8e0f2d1f75e468.md) | 131 | `declaration-track:25057cb5ac8e0f2d1f75e468e2d5bf96ad1a00a2a9bd87551c02f28b583af134` |
| 21 | `lemma` | [DeltaGeneratedSpace.coinduced](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltageneratedspace-coinduced--1bbb3d93aa945a63d6fb83e2.md) | 139 | `result-track:1bbb3d93aa945a63d6fb83e21d25c1957bc6c6b17679866da631a842a757eeed` |
| 22 | `lemma` | [DeltaGeneratedSpace.iSup](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltageneratedspace-isup--f478b7969ecf6d2255f4c33b.md) | 145 | `result-track:f478b7969ecf6d2255f4c33b8d364fb89fd26fa76b46274d66c9f1e4db3ec958` |
| 23 | `lemma` | [DeltaGeneratedSpace.sup](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/deltageneratedspace-sup--347f26ae3d8da04c52b301b1.md) | 151 | `result-track:347f26ae3d8da04c52b301b1538b5ec1a4b20e0f08f0a5f80063a4b2b0e55367` |
| 24 | `lemma` | [Topology.IsQuotientMap.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/topology-isquotientmap-deltageneratedspace--8cef0916e6b8b4cebc06f30c.md) | 158 | `result-track:8cef0916e6b8b4cebc06f30c439ad8e87b995aa65c6262ba125f2cac940d20a1` |
| 25 | `instance` | [Quot.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/quot-deltageneratedspace--f124e3e98dcfad2bd68604b9.md) | 163 | `declaration-track:f124e3e98dcfad2bd68604b9d2c0244bdba0688bb69da183030a8fc3e0b9a38d` |
| 26 | `instance` | [Quotient.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/quotient-deltageneratedspace--41a6be1653d343af7f0d6152.md) | 168 | `declaration-track:41a6be1653d343af7f0d61526b240c14bdbdd82b94bee67f55af19151a13097a` |
| 27 | `instance` | [Sum.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/sum-deltageneratedspace--e7ecb3333638c1d4de5c2fc0.md) | 173 | `declaration-track:e7ecb3333638c1d4de5c2fc0da686d3172bd2a97a26b3eedaa6b214ef3d3c3b4` |
| 28 | `instance` | [Sigma.deltaGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/DeltaGeneratedSpace/Variantdc8ee728d0493407fdee1d0b16422bc2f3bf4907f1b85929343c1853ca0047c8.lean/declarations/sigma-deltageneratedspace--37558fd28f32dc537735fffe.md) | 178 | `declaration-track:37558fd28f32dc537735fffef7e3da671604c56d3a6eeb33367cc99733cccfff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
