# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Additive.Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edf59db9be012444009c42e739596cb10d86eefd",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edf59db9be012444009c42e739596cb10d86eefd`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.BoxIntegral.Partition.Split` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.OperatorNorm` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BoxAdditiveMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/boxadditivemap--d8b1086ed18461772c283a79.md) | 53 | `declaration-track:d8b1086ed18461772c283a7915c2a5b58b6a3e926fe9cefd7725faa6a3c81c6c` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/instance--7b6a40b14a59b9bf16d8265f.md) | 69 | `declaration-track:7b6a40b14a59b9bf16d8265f00c38cd7dcdbfaa055f4e0927ea0ae4d5b2785ae` |
| 3 | `theorem` | [coe_mk](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/coe-mk--8a99673694e9efa1a1eca6b9.md) | 78 | `result-track:8a99673694e9efa1a1eca6b99b4cd955d39d9df8a357ae18ac6e749284d2d231` |
| 4 | `theorem` | [coe_injective](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/coe-injective--0075294175eeb470476cc08c.md) | 81 | `result-track:0075294175eeb470476cc08c80c5e3311692abc65aa6a8a70eb508bcf81087e8` |
| 5 | `theorem` | [coe_inj](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/coe-inj--73bdb6624c20ca3b77500f08.md) | 86 | `result-track:73bdb6624c20ca3b77500f085b078d0a826935451d9b12b53a14b8905a68e16b` |
| 6 | `theorem` | [sum_partition_boxes](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/sum-partition-boxes--fca32d92e975400387ad8516.md) | 89 | `result-track:fca32d92e975400387ad85160b9a8d6bf7b87f4a569bfda34ba5de74029823db` |
| 7 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/instance--11be4c7dddc17014dca9291a.md) | 95 | `declaration-track:11be4c7dddc17014dca9291a285817a0611d8a204c4c2db87b1e3ac518d14ad3` |
| 8 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/instance--2c0da2db5971682d5c3d9e2c.md) | 98 | `declaration-track:2c0da2db5971682d5c3d9e2c25cd3ebc645287c9b1578dfaf2bb8a661904d0ec` |
| 9 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/instance--9fa6378aca0f618ae44616e4.md) | 101 | `declaration-track:9fa6378aca0f618ae44616e4e4faff917923ee482453e752b282e9d9af8cf079` |
| 10 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/instance--b389fe557bf5f649cd96946d.md) | 106 | `declaration-track:b389fe557bf5f649cd96946d87516a4a61350e713a9fe651140be9f4d475db3b` |
| 11 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/instance--bd4fa107ba6c2903b48791a6.md) | 111 | `declaration-track:bd4fa107ba6c2903b48791a67bea78363b9f2cfd1570812b9df882a673d49772` |
| 12 | `theorem` | [map_split_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/map-split-add--67075b83877fb13510cc0e4b.md) | 115 | `result-track:67075b83877fb13510cc0e4b62afdd7f1a7958339b60c791c881409d23588fd6` |
| 13 | `def` | [restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/restrict--938c51b0bf07fe67f9eedbea.md) | 123 | `declaration-track:938c51b0bf07fe67f9eedbeaf90e9a3d1a75a5e48ef7f29b80a3be7b22d4c76e` |
| 14 | `def` | [ofMapSplitAdd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/ofmapsplitadd--96d6cf09b6e030b479145884.md) | 129 | `declaration-track:96d6cf09b6e030b479145884e478c5b55cdba788cdba9d4fa4fc234f97e946a3` |
| 15 | `def` | [map](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/map--e53ee935b017384ad122e672.md) | 154 | `declaration-track:e53ee935b017384ad122e672a8649255f28c4db92c9cc17fb008b40f3df807a7` |
| 16 | `theorem` | [sum_boxes_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/sum-boxes-congr--58aef80d7ffc96c3c1b8e06d.md) | 161 | `result-track:58aef80d7ffc96c3c1b8e06d85ec24bde10d74502189c5bbe31b4d081a6b99de` |
| 17 | `def` | [toSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/tosmul--c339c529859b01d1efbede82.md) | 186 | `declaration-track:c339c529859b01d1efbede82633a36e52c79d185f300da4525c5be3f944f549f` |
| 18 | `theorem` | [toSMul_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/tosmul-apply--615dac117400c1bec1a080ca.md) | 191 | `result-track:615dac117400c1bec1a080cab77b4240a7854e3808b09d71ae04c2a718e29345` |
| 19 | `def` | [upperSubLower.](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Additive/Variantf807b06e1de88706e1a7357843c8e284adde9f48bf9535053fe452a2835df1c8.lean/declarations/uppersublower--0950ddaa890fe447b4040afc.md) | 201 | `declaration-track:0950ddaa890fe447b4040afc1fe9aa06f5b073c43795d8f973aaf59a9d755bd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
