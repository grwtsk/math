# Verification target: GRWTSK.Analysis.MeasureTheory.MeasurableEquiv.Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc4c024b5ca1c53ee0bd86c5a36b77eedf6f07dd",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc4c024b5ca1c53ee0bd86c5a36b77eedf6f07dd`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Group.Arithmetic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/smul--fa7e869fcf608d6e33887bc6.md) | 57 | `declaration-track:fa7e869fcf608d6e33887bc668e4f8294969b2431d81b1c679ade872f7ad58e8` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_const_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--12f1ff595316b69ae1653622.md) | 63 | `result-track:12f1ff595316b69ae16536228ebacc806faf97742fcbdcbdaf6e87bff936af0e` |
| 3 | `theorem` | [symm_smul](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/symm-smul--3051f89d22127cfb0f0b522b.md) | 67 | `result-track:3051f89d22127cfb0f0b522b252813f88d2927fb2e979f46a8623310bc7c7c43` |
| 4 | `def` | [smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/smul--209e0ae8f93e29d469bb5758.md) | 72 | `declaration-track:209e0ae8f93e29d469bb5758a3e4b8784b86f3c35e9919e80c90119fecbdc686` |
| 5 | `lemma` | [coe_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/coe-smul--d9d1e7b4984358d81952dbdd.md) | 75 | `result-track:d9d1e7b4984358d81952dbdd26ebc97a82f6184a0c9a63c7c5b4424368f1b2de` |
| 6 | `theorem` | [symm_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/symm-smul--c0ce43743ee6344597b5a020.md) | 78 | `result-track:c0ce43743ee6344597b5a0204460e63968311abc17322aca7eb0de229f33ca8c` |
| 7 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_const_smul₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--abf7bcc7146993d494bd0c6a.md) | 82 | `result-track:abf7bcc7146993d494bd0c6ab0aedd9112052ea54d75403a7daaecbf03c7a9c0` |
| 8 | `def` | [mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/mulleft--9d91f7963a40dfaa9d2f28d0.md) | 97 | `declaration-track:9d91f7963a40dfaa9d2f28d004d11ad01c87e39951e0098bb26a92c2b1a64dc2` |
| 9 | `theorem` | [coe_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/coe-mulleft--089dec56d3b8145adc92ef74.md) | 101 | `result-track:089dec56d3b8145adc92ef7466d9b376e2f061523dcba0c5286bf50bd94b2ff3` |
| 10 | `theorem` | [symm_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/symm-mulleft--0024bf639f5f0822865fa64b.md) | 105 | `result-track:0024bf639f5f0822865fa64bbddd1cd0dab35f7a81eaf903efc4c59d1b95e716` |
| 11 | `theorem` | [toEquiv_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/toequiv-mulleft--2aa8cfecd7f7281038e83eb3.md) | 109 | `result-track:2aa8cfecd7f7281038e83eb372631ae5081f2fb7d9202cc6115112d014803e5c` |
| 12 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--3d18ba250d3c8fa949172c21.md) | 113 | `result-track:3d18ba250d3c8fa949172c2121779788d96c6850eabc276b82a7c578ef27b278` |
| 13 | `def` | [mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/mulright--256be88c0454b99a5a5abd92.md) | 121 | `declaration-track:256be88c0454b99a5a5abd92d99eb1078f285acae5fc72fdfa6ce022c7244e2a` |
| 14 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--15a1dd832b6308f757adc624.md) | 127 | `result-track:15a1dd832b6308f757adc62468ab4bf7faa63d237e15bfcd205486fa06aaffa2` |
| 15 | `theorem` | [coe_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/coe-mulright--5b4cc0b2349d396562be2d39.md) | 131 | `result-track:5b4cc0b2349d396562be2d393527a95770f179fbc8e2461d831b8746513827f7` |
| 16 | `theorem` | [symm_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/symm-mulright--124a55f8280542a267de26f5.md) | 135 | `result-track:124a55f8280542a267de26f5bc960b5e31af07bbac3eeeec7c2e8363ef55dc38` |
| 17 | `theorem` | [toEquiv_mulRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/toequiv-mulright--1fa6a9ec4de654e359910335.md) | 139 | `result-track:1fa6a9ec4de654e35991033586206a91d793eac4b51c9787affc3bd935a6185e` |
| 18 | `def` | [mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/mulleft--3868a49926f9a96a2b6c04fc.md) | 144 | `declaration-track:3868a49926f9a96a2b6c04fc05bd484ce4196470566ccba16edb4607ed6b0b98` |
| 19 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--31de73c0f7c60cdf6aac3546.md) | 147 | `result-track:31de73c0f7c60cdf6aac3546db28ae017834526e383b1884d36f496b48109110` |
| 20 | `lemma` | [coe_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/coe-mulleft--39d773fc09e69ed04b341a3e.md) | 151 | `result-track:39d773fc09e69ed04b341a3e2b080061f37f5b5f07bc39c3e103451750685c3a` |
| 21 | `theorem` | [symm_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/symm-mulleft--7d8454a8edc40d9c2e292d51.md) | 154 | `result-track:7d8454a8edc40d9c2e292d51120dbd18364543f9ef1fa7a1034a8a523d335b61` |
| 22 | `theorem` | [toEquiv_mulLeft₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/toequiv-mulleft--318781e134c94e6ec5ad6d6d.md) | 159 | `result-track:318781e134c94e6ec5ad6d6d90bc9672ae07eb6d540149f1714ba0af95337a16` |
| 23 | `def` | [mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/mulright--19521f35a7496e2471b8f21a.md) | 164 | `declaration-track:19521f35a7496e2471b8f21a3db17969531537ea284ad8b4130b699487bcb825` |
| 24 | `theorem` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--1031c0ab1e80f6d594c156f7.md) | 169 | `result-track:1031c0ab1e80f6d594c156f75cdc49e43865ee32e3c86c164435c2f7874d736f` |
| 25 | `theorem` | [coe_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/coe-mulright--acdc8fd8bda7d82fd8d64ad9.md) | 174 | `result-track:acdc8fd8bda7d82fd8d64ad94347868398502e4cc1938a5f66e16b5456031a32` |
| 26 | `theorem` | [symm_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/symm-mulright--fd84cfbfe28aa58806fcdab7.md) | 178 | `result-track:fd84cfbfe28aa58806fcdab73a28823eb4fe60b8149f8631fae734a96f847ce0` |
| 27 | `theorem` | [toEquiv_mulRight₀](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/toequiv-mulright--fca6b9a8fbe526b9c050a2c4.md) | 183 | `result-track:fca6b9a8fbe526b9c050a2c43368f24fe331d2b25531a8b044882c5198617f5c` |
| 28 | `def` | [inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/inv--1f5f1339cd002073180b7f74.md) | 191 | `declaration-track:1f5f1339cd002073180b7f748f2ca1d4a95a6cb60abcdf4fa35ef5d8ed7eeacb` |
| 29 | `theorem` | [symm_inv](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/symm-inv--a55860b1f78bc5e10480cabc.md) | 197 | `result-track:a55860b1f78bc5e10480cabc02e2efd56816e1c07dcc07e3891a8241159d85bd` |
| 30 | `def` | [divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/divright--7d0bcc34dd8308f10e447723.md) | 203 | `declaration-track:7d0bcc34dd8308f10e4477233df932cc4eee8e4cd77a224df1633587b5e0cc5c` |
| 31 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_divRight](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--f5045ccd2bae10e463ff5b95.md) | 209 | `result-track:f5045ccd2bae10e463ff5b95c72b48afa2b03b238bd23e146883ba6a9c6f95ab` |
| 32 | `def` | [divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/divleft--e61a52d987ac91af8139dcba.md) | 215 | `declaration-track:e61a52d987ac91af8139dcba0865f14ee4355661946377e788deeb3c7dec2b9d` |
| 33 | `lemma` | [_root_.GRWTSK.Analysis.MeasureTheory.Smul.Varianta5dc7a64d979d05579565cd2dd56ac554329313b1a1028c68e8aeeb48d80ce97.measurableEmbedding_divLeft](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/root-grwtsk-analysis-measuretheory-smul-varianta5dc7a64d979d05579565cd2d--f1fd4067288766a89cb7fd5f.md) | 221 | `result-track:f1fd4067288766a89cb7fd5feafc1ea7d66f8ce16572672c5a0d8221c00d4074` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/instance--0cbf3dea277066d34f199146.md) | 231 | `declaration-track:0cbf3dea277066d34f19914629167ecc256162fdd92d04da2d8612514fe676e0` |
| 35 | `lemma` | [dmaSMul_apply](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/dmasmul-apply--e75bd2afcb0ed559990b429e.md) | 243 | `result-track:e75bd2afcb0ed559990b429ea7c7ec4cf71c435f8209cb1a4850eb785b6dec71` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/instance--60b632a33c48d5b7752c3aa5.md) | 249 | `declaration-track:60b632a33c48d5b7752c3aa5ab33c8e23da9f428adf34c8718145fb6b0d3229b` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/MeasurableEquiv/Variant55818dcd844c4495a1c250c73f8fff6968aa46d441c65e7a6b99bf795696a454.lean/declarations/instance--a16aa9e776954b7c60478d5b.md) | 252 | `declaration-track:a16aa9e776954b7c60478d5bb505579dc9579549c546f13df6761459bc5575e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
