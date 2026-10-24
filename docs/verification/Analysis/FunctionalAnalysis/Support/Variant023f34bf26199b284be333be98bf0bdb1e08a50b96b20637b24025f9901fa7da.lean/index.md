# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Support.Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15761e3d4cc1afb05b0a6b6704fcd6c1ffdf52d3",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15761e3d4cc1afb05b0a6b6704fcd6c1ffdf52d3`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean.json)

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
| 1 | `def` | [IsVanishingOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/isvanishingon--4b18f641d78d606d72d92932.md) | 67 | `declaration-track:4b18f641d78d606d72d9293294aee5e64a0293a44afd008763646e2d68383f1c` |
| 2 | `theorem` | [IsVanishingOn.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/isvanishingon-mono--5f9864a2abeabd7044902051.md) | 71 | `result-track:5f9864a2abeabd7044902051dbb918c624fe476f46c7ff79e10c4ad88b6cffb5` |
| 3 | `theorem` | [not_isVanishingOn_mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/not-isvanishingon-mono--9a078072312521de85926c56.md) | 75 | `result-track:9a078072312521de85926c565f58ea12517421c08ba86154a03e983273a92678` |
| 4 | `theorem` | [not_isVanishingOn_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/not-isvanishingon-iff--f907efcee9bf70ea29fc82a2.md) | 79 | `result-track:f907efcee9bf70ea29fc82a259f489801e9e7c594e7d27b4a0b79dbadbc55f85` |
| 5 | `def` | [dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport--beb9d3ca975eac47b6e163f2.md) | 102 | `declaration-track:beb9d3ca975eac47b6e163f2346e8883ad518efddee0988189051e1ef4753e23` |
| 6 | `theorem` | [mem_dsupport_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/mem-dsupport-iff--05d3f80c364d657a26d8df0f.md) | 104 | `result-track:05d3f80c364d657a26d8df0fdf1d19dec0b724adc9fec30ad25fe6093c51c45d` |
| 7 | `theorem` | [dsupport_compl_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-compl-eq--89c16282b6d4f0d0ed9f839f.md) | 109 | `result-track:89c16282b6d4f0d0ed9f839fe215c01bd9b9f4c8ca993d766676beb08aacf2a3` |
| 8 | `theorem` | [notMem_dsupport_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/notmem-dsupport-iff--97a7959b3ee6455a9cc5d720.md) | 113 | `result-track:97a7959b3ee6455a9cc5d720bc6dd314cd9fb895dfdb8217a6bba8bf96677772` |
| 9 | `theorem` | [mem_dsupport_iff_not_isVanishingOn](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/mem-dsupport-iff-not-isvanishingon--5d6e4bfbdbec14285975cf4b.md) | 117 | `result-track:5d6e4bfbdbec14285975cf4ba95458450abadd500f2c39aeda93467213fc9b12` |
| 10 | `theorem` | [mem_dsupport_iff_forall_exists_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/mem-dsupport-iff-forall-exists-ne--3a3dcb777403c91226bef2d2.md) | 121 | `result-track:3a3dcb777403c91226bef2d2433734c7836ac161ae0f46ae01ab78248816a305` |
| 11 | `theorem` | [mem_dsupport_iff_frequently](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/mem-dsupport-iff-frequently--3b9eb49f0c8c7777ae003272.md) | 125 | `result-track:3b9eb49f0c8c7777ae00327229bc8a486d26d597bc7b09b12b1f395de6e8f70f` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsVanishingOn.Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.Filter.HasBasis.mem_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/root-grwtsk-analysis-functionalanalysis-isvanishingon-varianta05d4787e52--033f8bc8a0c94e7582d4ceaa.md) | 130 | `result-track:033f8bc8a0c94e7582d4ceaa42dd71fddf8ffdce7dc814c1f4031e845966e023` |
| 13 | `theorem` | [notMem_dsupport_iff_eventually](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/notmem-dsupport-iff-eventually--b49b631ca299661b5d569d4f.md) | 136 | `result-track:b49b631ca299661b5d569d4fa37269e24746457ab0e079a25fa676f8e21650e0` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsVanishingOn.Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.Filter.HasBasis.notMem_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/root-grwtsk-analysis-functionalanalysis-isvanishingon-varianta05d4787e52--bfdf40b8effc58a26ed2626c.md) | 140 | `result-track:bfdf40b8effc58a26ed2626cb53373bfbc7929571f146e4bec94919792362298` |
| 15 | `theorem` | [dsupport_subset_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-subset-dsupport--0fa8a4d9e0416ac2ce7df97e.md) | 146 | `result-track:0fa8a4d9e0416ac2ce7df97edf6ec181febf4eaa03a7d209ae101c203a84e046` |
| 16 | `theorem` | [isClosed_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/isclosed-dsupport--7077a4eb4b272270100207ba.md) | 152 | `result-track:7077a4eb4b272270100207ba4016487ecb9e7672562c427e93b8091ae2a8e7c8` |
| 17 | `theorem` | [IsVanishingOn.disjoint_dsupport](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/isvanishingon-disjoint-dsupport--f9012fcdd6230da15e2aa369.md) | 155 | `result-track:f9012fcdd6230da15e2aa3697804897f3aca3a168df1eb5cd519710c55249b33` |
| 18 | `theorem` | [compl_dsupport_eq_sUnion_isBounded](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/compl-dsupport-eq-sunion-isbounded--261563806853984f2bfcddc6.md) | 171 | `result-track:261563806853984f2bfcddc6322c11508945e27002a231f338d0cc7ff9aed122` |
| 19 | `theorem` | [smulLeftCLM](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/smulleftclm--aa4810a3e588217518720a25.md) | 193 | `result-track:aa4810a3e588217518720a2568f27836a14a19fba73e4756bc95ad0ddf17a5dc` |
| 20 | `theorem` | [lineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/linederivop--f91a8a4767872655f1d852c8.md) | 206 | `result-track:f91a8a4767872655f1d852c8cda79ad16dd35878aa1950a56144e60a1e825db1` |
| 21 | `theorem` | [iteratedLineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/iteratedlinederivop--0070c3502dd96b5777542c50.md) | 213 | `result-track:0070c3502dd96b5777542c501f6bd6e3c8ffa908517c1a8f58583c04258b7113` |
| 22 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsVanishingOn.Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.TemperedDistribution.isVanishingOn_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/root-grwtsk-analysis-functionalanalysis-isvanishingon-varianta05d4787e52--39f54c8ac7e7b3e84a52d5a6.md) | 222 | `result-track:39f54c8ac7e7b3e84a52d5a6418beec6345d16544223cbd0b28080a94d58c90d` |
| 23 | `theorem` | [dsupport_smulLeftCLM_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-smulleftclm-subset--d4e500d5a7a0426941a4ab0e.md) | 232 | `result-track:d4e500d5a7a0426941a4ab0ea33064ca0e4177e75b6ea84566e178302b62f336` |
| 24 | `theorem` | [dsupport_lineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-linederivop-subset--44edf7d8767152c66419ec2a.md) | 241 | `result-track:44edf7d8767152c66419ec2a02815e9235113c13816432e344d18fd2c5c5cac6` |
| 25 | `theorem` | [dsupport_iteratedLineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-iteratedlinederivop-subset--3309444a62f4ec94432da3be.md) | 244 | `result-track:3309444a62f4ec94432da3be6c726247c9d9b467b5e728986ebd7879541dfe88` |
| 26 | `theorem` | [dsupport_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-delta--0c63250ddb2067a12b426213.md) | 248 | `result-track:0c63250ddb2067a12b42621363378af5eca49510254ac2e76a6a7ca71c47c7b7` |
| 27 | `theorem` | [lineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/linederivop--438f32be69ecd87872cb8434.md) | 289 | `result-track:438f32be69ecd87872cb8434dd1f540fde5afe671fc7761282d158a704909a2a` |
| 28 | `theorem` | [iteratedLineDerivOp](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/iteratedlinederivop--50ef6935121de826e0cab2b7.md) | 296 | `result-track:50ef6935121de826e0cab2b74d1498872633ef4f01e8a0e6a67b10c118ab0991` |
| 29 | `theorem` | [_root_.GRWTSK.Analysis.FunctionalAnalysis.IsVanishingOn.Varianta05d4787e52306316d43cbe36c8fe31374dd3f957a3966b1624a4541c39b8047.Distribution.isVanishingOn_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/root-grwtsk-analysis-functionalanalysis-isvanishingon-varianta05d4787e52--65677214375d867afae04ae4.md) | 305 | `result-track:65677214375d867afae04ae45f0e995f649b8950cb1667cc4d8631955b49173c` |
| 30 | `theorem` | [dsupport_lineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-linederivop-subset--e06cccad0c468b004995031b.md) | 317 | `result-track:e06cccad0c468b004995031b364be6e71f7cf2ac6c0fc54a6cecb78965fc35f4` |
| 31 | `theorem` | [dsupport_iteratedLineDerivOp_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-iteratedlinederivop-subset--f69f0713a89080658e27cbbc.md) | 320 | `result-track:f69f0713a89080658e27cbbc1e168e0bf2a6da617935747f5b72b2b6ccf92c0a` |
| 32 | `theorem` | [dsupport_delta](../../../../../mathematics/Analysis/FunctionalAnalysis/Support/Variant023f34bf26199b284be333be98bf0bdb1e08a50b96b20637b24025f9901fa7da.lean/declarations/dsupport-delta--86d456c793f3eaef5096a871.md) | 324 | `result-track:86d456c793f3eaef5096a871250e5f625c94767875ce6d1ed27baa50e92dabe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
