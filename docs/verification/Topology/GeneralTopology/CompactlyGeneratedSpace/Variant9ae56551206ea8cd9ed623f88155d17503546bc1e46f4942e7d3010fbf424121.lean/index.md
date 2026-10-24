# Verification target: GRWTSK.Topology.GeneralTopology.CompactlyGeneratedSpace.Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6937be976453441d26c55e790be5352ece73834b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6937be976453441d26c55e790be5352ece73834b`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean.json)

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
| 1 | `def` | [TopologicalSpace.compactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/topologicalspace-compactlygenerated--8802f28ee23188ee05155ab7.md) | 67 | `declaration-track:8802f28ee23188ee05155ab7482c7db596db9f29238213a7d30c00d4be5d307d` |
| 2 | `lemma` | [continuous_from_compactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/continuous-from-compactlygenerated--43679c1f0642e10ec567cf3e.md) | 71 | `result-track:43679c1f0642e10ec567cf3e0ea410f44d6667da0c7220368266c3c673850f3b` |
| 3 | `class` | [UCompactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/ucompactlygeneratedspace--7a0ed85ed07a0787e388affa.md) | 90 | `declaration-track:7a0ed85ed07a0787e388affa91315c8cf02f7e35cfbab109ec705b733b15ec5b` |
| 4 | `lemma` | [eq_compactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/eq-compactlygenerated--3aa2cfd8fe4a34d58c3b8188.md) | 94 | `result-track:3aa2cfd8fe4a34d58c3b8188a61212238569b78e7f2a6c8ca404d64d5de64269` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/instance--d91d94b45ad9bee964969767.md) | 102 | `declaration-track:d91d94b45ad9bee964969767e607f9744736334d6b8586fdbde6b3bfc50cf02d` |
| 6 | `lemma` | [uCompactlyGeneratedSpace_of_continuous_maps](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/ucompactlygeneratedspace-of-continuous-maps--5edfccbd6dd36d8c5cfaa46e.md) | 114 | `result-track:5edfccbd6dd36d8c5cfaa46e6840b8cffca9aef1ddb4874ff2a0a40d1ba7e987` |
| 7 | `lemma` | [continuous_from_uCompactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/continuous-from-ucompactlygeneratedspace--88a499f0d5a55e0b7f4153af.md) | 134 | `result-track:88a499f0d5a55e0b7f4153af4dae07e9a72863f2e96382f081e7a7368b47c616` |
| 8 | `theorem` | [uCompactlyGeneratedSpace_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/ucompactlygeneratedspace-of-isclosed--493d1059386b7c8793ea4fea.md) | 141 | `result-track:493d1059386b7c8793ea4fead9c7f753cd59cafcf5d0dcb45d431d0f094b6049` |
| 9 | `theorem` | [uCompactlyGeneratedSpace_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/ucompactlygeneratedspace-of-isopen--04274055d8b3b28b93437d5d.md) | 149 | `result-track:04274055d8b3b28b93437d5ded2906dcd89471d7a4e8c664df4e5649dfa272f6` |
| 10 | `theorem` | [UCompactlyGeneratedSpace.isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/ucompactlygeneratedspace-isclosed--90d9be14d8d4790a5372894c.md) | 157 | `result-track:90d9be14d8d4790a5372894c86d4724e02016d1fe8ebe3187952efe4edab3276` |
| 11 | `theorem` | [UCompactlyGeneratedSpace.isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/ucompactlygeneratedspace-isopen--fab1100dd2a531d6876f298e.md) | 165 | `result-track:fab1100dd2a531d6876f298edb946296f3e65e8b074a78a69e2a11576f087ed3` |
| 12 | `theorem` | [uCompactlyGeneratedSpace_of_coinduced](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/ucompactlygeneratedspace-of-coinduced--60a855c54a62c5ea90d9bbf2.md) | 173 | `result-track:60a855c54a62c5ea90d9bbf25e48cfe6b120282975f980bbb031fcd7c7375010` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/instance--2eba4e4e225b3a07a98002f2.md) | 181 | `declaration-track:2eba4e4e225b3a07a98002f2deeb81aae9bc22b7ebde879ef745f1ea32a01ee0` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/instance--aa6bc5d8e53dd95d2ffd61cc.md) | 186 | `declaration-track:aa6bc5d8e53dd95d2ffd61cc309dfa75a1c042a7b162a1034ca81c53f02704c4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/instance--91cf190d78e366ea2f6980bc.md) | 199 | `declaration-track:91cf190d78e366ea2f6980bc388a844e69456625579d1ef7556f970f122ac1ec` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/instance--1755eb34b7bd6561f5aa8531.md) | 210 | `declaration-track:1755eb34b7bd6561f5aa8531ac12b9269e06d1e53f277933e8220d67eff03b27` |
| 17 | `abbrev` | [CompactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace--44f57fd6af89f400852225aa.md) | 238 | `declaration-track:44f57fd6af89f400852225aa1bc26e38b9bd948862f5ae6cdeda12b5df906673` |
| 18 | `lemma` | [continuous_from_compactlyGeneratedSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/continuous-from-compactlygeneratedspace--e3ba8dc7a907e5ff9e9b73c3.md) | 244 | `result-track:e3ba8dc7a907e5ff9e9b73c366bde06a5437ef5a34222d1501b0693f50735fd9` |
| 19 | `lemma` | [compactlyGeneratedSpace_of_continuous_maps](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-of-continuous-maps--1d7ec1f54e326deabbd3372c.md) | 252 | `result-track:1d7ec1f54e326deabbd3372c79d5b060e48d55415dd130447f422f10d93c8a00` |
| 20 | `theorem` | [compactlyGeneratedSpace_of_isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-of-isclosed--b4dbdaf17576ae9e089f8870.md) | 262 | `result-track:b4dbdaf17576ae9e089f88707a733bac0c92b2b2faf1ca2faabf4a680e66f4d3` |
| 21 | `theorem` | [CompactlyGeneratedSpace.isClosed'](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-isclosed--4c3e5d7747f70f342efb0d64.md) | 270 | `result-track:4c3e5d7747f70f342efb0d646d9a09404e7d29e8674de528588670a40c5bed6a` |
| 22 | `theorem` | [CompactlyGeneratedSpace.isClosed](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-isclosed--a0f7fdbed6933c9285382093.md) | 277 | `result-track:a0f7fdbed6933c92853820934f732ad94c2e1e7d0d507d9b4ba4fc1e56662417` |
| 23 | `theorem` | [compactlyGeneratedSpace_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-of-isopen--ebdc32f81e6bd523f01d8df4.md) | 285 | `result-track:ebdc32f81e6bd523f01d8df486d830bd70205336a544d6aded7f9727ccb75765` |
| 24 | `theorem` | [CompactlyGeneratedSpace.isOpen'](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-isopen--020b03be972d538d104f7337.md) | 293 | `result-track:020b03be972d538d104f73373dcf5d61039073f18cec5bd7bad837ae44443085` |
| 25 | `theorem` | [CompactlyGeneratedSpace.isOpen](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-isopen--6e23eb6a2ebff25e5fd4d33b.md) | 300 | `result-track:6e23eb6a2ebff25e5fd4d33be9dedfadf04fd2b92f0584f728f9945a6c96a4ba` |
| 26 | `theorem` | [compactlyGeneratedSpace_of_coinduced](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-of-coinduced--1483982c1ded7fdf8c7797bc.md) | 308 | `result-track:1483982c1ded7fdf8c7797bc5566825d7b68bcc499f52f6ac3d2923fb0375ec0` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/instance--8158d266f137d7ba6a6d81c0.md) | 314 | `declaration-track:8158d266f137d7ba6a6d81c0491e1b716b58d5cdf6f5f07497d2eae4c054fe45` |
| 28 | `theorem` | [CompactlyGeneratedSpace.isClosed_iff_of_t2](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-isclosed-iff-of-t2--d7ed2cc1f8a51d0d080bcaf9.md) | 325 | `result-track:d7ed2cc1f8a51d0d080bcaf904050d722a54483fcdd80bab840dcf97ea0d1584` |
| 29 | `theorem` | [compactlyGeneratedSpace_of_isClosed_of_t2](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-of-isclosed-of-t2--313ecbe879b2be9ac9429bce.md) | 333 | `result-track:313ecbe879b2be9ac9429bcea0f95263f3e7322736ab9bdf3a3c1fef3cec3806` |
| 30 | `theorem` | [compactlyGeneratedSpace_of_isOpen_of_t2](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/compactlygeneratedspace-of-isopen-of-t2--fafa94c68b8f8aacf6d7856e.md) | 346 | `result-track:fafa94c68b8f8aacf6d7856eb9d21da31e7900477de13ab97b643f1b2da1578e` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/instance--16879d0b5c94e43eb1fc8759.md) | 354 | `declaration-track:16879d0b5c94e43eb1fc875983ebc6eb5ba64bb8f3e0d23bf41461be108f3cde` |
| 32 | `instance` | [to_compactlyCoherentSpace](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/to-compactlycoherentspace--f81e6b3bccab905e17fb725a.md) | 364 | `declaration-track:f81e6b3bccab905e17fb725ac50145b60b272b2bd06df1ce135b3d17db50335d` |
| 33 | `instance` | [of_compactlyCoherentSpace_of_t2](../../../../../mathematics/Topology/GeneralTopology/CompactlyGeneratedSpace/Variant9ae56551206ea8cd9ed623f88155d17503546bc1e46f4942e7d3010fbf424121.lean/declarations/of-compactlycoherentspace-of-t2--5d80d9dfcc6361051fb4878d.md) | 369 | `declaration-track:5d80d9dfcc6361051fb4878dbe4bad2a821e9eb40eeeadfdc875ba2b1cb5c463` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
