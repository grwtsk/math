# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableEquiv.Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0150d851e905df091d1b638976c956c79cad254c",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0150d851e905df091d1b638976c956c79cad254c`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean.json)

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
| 1 | `def` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/smul--313fcefa44927760c06b60ea.md) | 61 | `declaration-track:313fcefa44927760c06b60ea65b95115c080ade0830065109ce9a81f0629b1ef` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_const_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--3eb6484df1971ded03733f0e.md) | 67 | `result-track:3eb6484df1971ded03733f0e91173739b46b1ac15173cdad7f3341c1007b7463` |
| 3 | `theorem` | [symm_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/symm-smul--77430d54c79cb21c9685bbe0.md) | 71 | `result-track:77430d54c79cb21c9685bbe05e6cb6ac9b7687a8d3f67f07ecf7e524c5904fc6` |
| 4 | `def` | [smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/smul--411f6f671809081aa80e0462.md) | 76 | `declaration-track:411f6f671809081aa80e0462cf6eb234a91255cab45e07cf672508e89f79f803` |
| 5 | `lemma` | [coe_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/coe-smul--307420188fb3014e333f0a26.md) | 79 | `result-track:307420188fb3014e333f0a26d2c4945ec5fa7c6140030ffa652f4ccebae2fe3b` |
| 6 | `theorem` | [symm_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/symm-smul--aa1b588d47c0f0c6efc1c526.md) | 82 | `result-track:aa1b588d47c0f0c6efc1c5260337949dd5bcbc9cde474995832a882a6a6a256e` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_const_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--4ce7a571099e5d83f36a15bf.md) | 86 | `result-track:4ce7a571099e5d83f36a15bfc77f7b309d8775ed98b8dfae80c50916486838cb` |
| 8 | `def` | [mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/mulleft--147f7f7440919e9fbb35bbd8.md) | 101 | `declaration-track:147f7f7440919e9fbb35bbd8b6819c1d3f53ce33a391d25596853122bc50daef` |
| 9 | `theorem` | [coe_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/coe-mulleft--0de4f4310b09284ef01d1d24.md) | 105 | `result-track:0de4f4310b09284ef01d1d249480d106c65a10de527f6a9916856aa6e91f5b78` |
| 10 | `theorem` | [symm_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/symm-mulleft--60995f0221d3bab6c8338f52.md) | 109 | `result-track:60995f0221d3bab6c8338f52a37cbac7a393acb44bc2fcf549751fccc99eef5b` |
| 11 | `theorem` | [toEquiv_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/toequiv-mulleft--1cdc4f211c0a946c3262f153.md) | 113 | `result-track:1cdc4f211c0a946c3262f153b7c4509af12ea33d427ef26fa1cc6ecda1a30ec7` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--2a218f2e447e57b4a2eed66f.md) | 117 | `result-track:2a218f2e447e57b4a2eed66ff8b4fd4a2a88a741288d18b7161814543beb8c41` |
| 13 | `def` | [mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/mulright--7a12ad429bf7231e2cef96f6.md) | 125 | `declaration-track:7a12ad429bf7231e2cef96f6efb6f29ab1d50eaa346ed47c9c384772bb20e0f1` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--f2f3e5fdbebb820e5346a7d4.md) | 129 | `result-track:f2f3e5fdbebb820e5346a7d490126f2c19507cdca5de395afb78f0ee7e18dd46` |
| 15 | `theorem` | [coe_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/coe-mulright--c39d914ed5aa7bd6a4e070f9.md) | 133 | `result-track:c39d914ed5aa7bd6a4e070f996ba20035c5b4c1a6fd31e889fa2b51e02972005` |
| 16 | `theorem` | [symm_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/symm-mulright--446f07feeda219eb42a5e0bf.md) | 137 | `result-track:446f07feeda219eb42a5e0bf0d260807c7d73bea45b6bf4c7f55aa4dca510c62` |
| 17 | `theorem` | [toEquiv_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/toequiv-mulright--3609358b25c8f4953106fc0f.md) | 141 | `result-track:3609358b25c8f4953106fc0fd9480fb9136e80666ba1331488118dea0d066f4b` |
| 18 | `def` | [mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/mulleft--80a0383566cbe24a7ec6b268.md) | 146 | `declaration-track:80a0383566cbe24a7ec6b268ad28fc5dbce57d30199de23a022c7e1cb5aa7c25` |
| 19 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--d25c6dab74f162fdb9bc4900.md) | 149 | `result-track:d25c6dab74f162fdb9bc4900d60851d335c08dbb26072ce5cca003556329a52d` |
| 20 | `lemma` | [coe_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/coe-mulleft--b118d042919d302207749450.md) | 153 | `result-track:b118d042919d302207749450b6b98a3302f59ea63e6c1d4a5806900e89dd60ec` |
| 21 | `theorem` | [symm_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/symm-mulleft--0e73cc282c56e1d9cd044124.md) | 156 | `result-track:0e73cc282c56e1d9cd04412450a9356defe887a9bfb4bc0769f04948d556255e` |
| 22 | `theorem` | [toEquiv_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/toequiv-mulleft--2905541b2bf802681afcbbb6.md) | 161 | `result-track:2905541b2bf802681afcbbb6ad7b5fc5e080ad742d006525c3d3ed6739ab3041` |
| 23 | `def` | [mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/mulright--efd29ac3ed39109090095c40.md) | 166 | `declaration-track:efd29ac3ed39109090095c405677e07db244901fa11430bfad76525811fd1212` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--7951a925f81c3148f242b372.md) | 169 | `result-track:7951a925f81c3148f242b372eb6bbe91ebb52f82a850149b4ee0e84950515bdc` |
| 25 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/coe-mulright--83df6476f424c96ee5e4a326.md) | 174 | `result-track:83df6476f424c96ee5e4a326b7ef275d3b5fe127cb475235cfeeeb0a504a010d` |
| 26 | `theorem` | [symm_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/symm-mulright--3edb5a83ed53f6b823c02a4e.md) | 178 | `result-track:3edb5a83ed53f6b823c02a4ea18d5723dd2f23460901fa3ef8f6c3475987fd8b` |
| 27 | `theorem` | [toEquiv_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/toequiv-mulright--aeba25951ecb3cbca3a0c97a.md) | 183 | `result-track:aeba25951ecb3cbca3a0c97a0ad8aaa945b84c9a6cbc8b572008b1eb0ecf96d2` |
| 28 | `def` | [inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/inv--da734cef34b68a81be478164.md) | 191 | `declaration-track:da734cef34b68a81be47816488af2f258a2a7bb656582780ac39fd32ad4a9d79` |
| 29 | `theorem` | [symm_inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/symm-inv--b5993014a1b5189e776dc9a9.md) | 195 | `result-track:b5993014a1b5189e776dc9a9a0c29eccf8bfd099ef0055aedae0715a37d0fc34` |
| 30 | `def` | [divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/divright--2fe9dd8ee6585bf9df8ab503.md) | 201 | `declaration-track:2fe9dd8ee6585bf9df8ab5035e855b36547c7b34e293a6cca95b6f727d382ba5` |
| 31 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--79b800ea1cd9415e4fdccbde.md) | 207 | `result-track:79b800ea1cd9415e4fdccbde298312ed409ab234f4fa01bdba84963c2a0f6325` |
| 32 | `def` | [divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/divleft--cd436a3d3cdf9b09bdfb326b.md) | 213 | `declaration-track:cd436a3d3cdf9b09bdfb326bd251fb33822502b1c35d276cb200f6c3d9c60545` |
| 33 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Variant2e1822731f805724f942d4ed0958da9088de4271507c3f9fe8ebfae88ac8f57e.measurableEmbedding_divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/root-grwtsk-analysis-measuretheory-smul-variant2e1822731f805724f942d4ed0--17f4c6729173d664f1c90c4d.md) | 219 | `result-track:17f4c6729173d664f1c90c4d66dfa745582d7d7c18f5f55c08c749792254b5fb` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/instance--af04181874d94ec9c9bd76b5.md) | 229 | `declaration-track:af04181874d94ec9c9bd76b54ea880fb399b4c43edd539d74488a9c6605cd8c2` |
| 35 | `lemma` | [domSMul_apply](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/domsmul-apply--3e379d75974712e9d10bd319.md) | 241 | `result-track:3e379d75974712e9d10bd319d605abfd08474ace08a75f0c4beaf1f1bca4f8a4` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/instance--0d5f05f57bd87d3fae98b19e.md) | 247 | `declaration-track:0d5f05f57bd87d3fae98b19e84e6a2f96dff536eeeaa67aa19c1ee32ffa885f8` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant5bd50d869a4f1da47b0d58f34c82a3f50dccb5aa8721105bf349212f361c23bf.lean/declarations/instance--5f7def9244c2f95d4ba38990.md) | 250 | `declaration-track:5f7def9244c2f95d4ba38990fca71c300d7dd8bd358c81257942dc176075bd59` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
