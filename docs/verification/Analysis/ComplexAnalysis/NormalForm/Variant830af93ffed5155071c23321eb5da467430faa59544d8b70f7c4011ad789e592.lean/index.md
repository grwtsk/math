# Verification target: GRWTSK.Analysis.ComplexAnalysis.NormalForm.Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6eb19e8cec95b101020b7e6f35cc4c2fea2ab545",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6eb19e8cec95b101020b7e6f35cc4c2fea2ab545`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Divisor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MeromorphicNFAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat--9b610621f5ba0c6b7f507271.md) | 51 | `declaration-track:9b610621f5ba0c6b7f5072715a8d1e2cd8890e716a12b8657ef9aa45a18c8d1a` |
| 2 | `theorem` | [meromorphicNFAt_iff_analyticAt_or](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-iff-analyticat-or--52f84f88c8a4f9d88f079f4a.md) | 57 | `result-track:52f84f88c8a4f9d88f079f4a589fbbb553cdee0e0058aceac3b5105e79096c22` |
| 3 | `theorem` | [MeromorphicNFAt.meromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-meromorphicat--200fe274eb3ac5f31d4ad136.md) | 108 | `result-track:200fe274eb3ac5f31d4ad13631c67a9cdd0482c553fc4138e82044172b7e966b` |
| 4 | `theorem` | [MeromorphicNFAt.meromorphicOrderAt_nonneg_iff_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-meromorphicorderat-nonneg-iff-analyticat--d6ae2c6a5ffd0147772e9e74.md) | 118 | `result-track:d6ae2c6a5ffd0147772e9e745138a25acced8107e541fb37f25030bb13aa5d97` |
| 5 | `theorem` | [AnalyticAt.meromorphicNFAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/analyticat-meromorphicnfat--4e0a4c77c84dd32702b6e987.md) | 133 | `result-track:4e0a4c77c84dd32702b6e987bd1647d4925171cb090bb33f14551ed7ff11e3a2` |
| 6 | `theorem` | [MeromorphicOn.meromorphicNFAt_mem_codiscreteWithin](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicon-meromorphicnfat-mem-codiscretewithin--be8b2084b0243f15f814f0ac.md) | 139 | `result-track:be8b2084b0243f15f814f0ac2a71efb122590f45f13edcfebb388f0977eea2fe` |
| 7 | `theorem` | [MeromorphicNFAt.meromorphicOrderAt_eq_zero_iff](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-meromorphicorderat-eq-zero-iff--460f22796fc13ef909006950.md) | 153 | `result-track:460f22796fc13ef9090069506aae8dddce5d8db5f07fd1f6685db7c47994cca0` |
| 8 | `theorem` | [MeromorphicNFAt.eventuallyEq_nhdsNE_iff_eventuallyEq_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-eventuallyeq-nhdsne-iff-eventuallyeq-nhds--9bc26ce3fc81fb0230850372.md) | 187 | `result-track:9bc26ce3fc81fb0230850372b7c89284d967cc3258aa6fdfe760886b30429595` |
| 9 | `theorem` | [meromorphicNFAt_congr](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-congr--72b998d23a0699dff3b1dfc7.md) | 212 | `result-track:72b998d23a0699dff3b1dfc79bbfaded23462d11c5c3ff404c5e23e9d3f5539b` |
| 10 | `lemma` | [MeromorphicNFAt.smul_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-smul-analytic--13484c381a4ce7713b3382dc.md) | 229 | `result-track:13484c381a4ce7713b3382dc31b679b9bda864658c11bcc2250312118ccb8c98` |
| 11 | `theorem` | [meromorphicNFAt_smul_iff_right_of_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-smul-iff-right-of-analyticat--e6e466bc7b538fc54330da2b.md) | 247 | `result-track:e6e466bc7b538fc54330da2bab4578323222f0fd02af36fa8f5ba4b3120fddfb` |
| 12 | `theorem` | [meromorphicNFAt_mul_iff_right](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-mul-iff-right--d760ec680d422a86b9884045.md) | 263 | `result-track:d760ec680d422a86b9884045b80ba940ebc418acb4ba44cb4c67e5f06223eca3` |
| 13 | `theorem` | [meromorphicNFAt_mul_iff_left](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-mul-iff-left--45e20c65e5f0bd3767902c2d.md) | 270 | `result-track:45e20c65e5f0bd3767902c2de48942a7c8baa5b3480ee6d4421c27f1e3e3d0c8` |
| 14 | `def` | [toMeromorphicNFAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfat--1d04919c4924b00a542179d8.md) | 283 | `declaration-track:1d04919c4924b00a542179d88a331355cd98e9308146005efbe612d67795df6a` |
| 15 | `lemma` | [MeromorphicAt.eqOn_compl_singleton_toMermomorphicNFAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicat-eqon-compl-singleton-tomermomorphicnfat--a4a7990892c556cd5393bcad.md) | 295 | `result-track:a4a7990892c556cd5393bcad38d8b6800b751babd18f618044e04440332c6fb9` |
| 16 | `lemma` | [toMeromorphicNFAt_of_not_meromorphicAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfat-of-not-meromorphicat--e1127d35e6a9b72e90d0d6bd.md) | 300 | `result-track:e1127d35e6a9b72e90d0d6bd9f90cccdfb074b8b6fdd9d7753f7684098b30691` |
| 17 | `lemma` | [MeromorphicAt.eq_nhdsNE_toMeromorphicNFAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicat-eq-nhdsne-tomeromorphicnfat--80ab95a3bf4d739dab28a3c3.md) | 305 | `result-track:80ab95a3bf4d739dab28a3c3a82300c195f6a9a247155803b07eb6f9913cf357` |
| 18 | `theorem` | [meromorphicNFAt_toMeromorphicNFAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-tomeromorphicnfat--d594557cd1404a9f02baf0a4.md) | 313 | `result-track:d594557cd1404a9f02baf0a40c6a86d677ac5dbb9c8a31115eb8ff6f41b7aa2f` |
| 19 | `theorem` | [toMeromorphicNFAt_eq_self](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfat-eq-self--2540ac8752df08bf4acb1802.md) | 343 | `result-track:2540ac8752df08bf4acb180222ec330fabb487fdf1b94b64915c504073b1b57b` |
| 20 | `theorem` | [MeromorphicNFAt.inv](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-inv--9f5617d7171034563bac3a27.md) | 393 | `result-track:9f5617d7171034563bac3a276cb50e8b6382ed98c64a11a8713c293a9fc038e3` |
| 21 | `theorem` | [meromorphicNFAt_inv](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfat-inv--e9d81756b139f11e4630903c.md) | 408 | `result-track:e9d81756b139f11e4630903c0d09bf33e1e073650d855cee2f8e66065ccfcf5c` |
| 22 | `def` | [MeromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon--1783d25729aac722bc26d90c.md) | 424 | `declaration-track:1783d25729aac722bc26d90cc5541abdc45ae99b67fd63a18225a7100fe546ca` |
| 23 | `theorem` | [MeromorphicNFOn.meromorphicOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-meromorphicon--90157cc8e7d3f8529f0ec42d.md) | 434 | `result-track:90157cc8e7d3f8529f0ec42d52a2c802734c5c8b5a5e980f44b54b818d7fd104` |
| 24 | `theorem` | [MeromorphicNFOn.divisor_nonneg_iff_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-divisor-nonneg-iff-analyticonnhd--0b080ac658c05b880e49ee3b.md) | 441 | `result-track:0b080ac658c05b880e49ee3b0f044391c06475c0cb3038824f7af666db678260` |
| 25 | `theorem` | [AnalyticOnNhd.meromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/analyticonnhd-meromorphicnfon--b5e77452b6372b6d7a5ffc9f.md) | 458 | `result-track:b5e77452b6372b6d7a5ffc9f00b58d240b90ca56147206b6fd9a55de667529ac` |
| 26 | `theorem` | [MeromorphicNFOn.zero_set_eq_divisor_support](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-zero-set-eq-divisor-support--069d4528ea6389a18df11a0f.md) | 469 | `result-track:069d4528ea6389a18df11a0f0ba766ff1a4d44da4a217696fbce360bdd643943` |
| 27 | `theorem` | [meromorphicNFOn_smul_iff_right_of_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-smul-iff-right-of-analyticonnhd--99a7cd4944350e5057f80961.md) | 497 | `result-track:99a7cd4944350e5057f8096177611b6c990cd1af2432c9f2aa1e756141888eb0` |
| 28 | `theorem` | [meromorphicNFOn_mul_iff_right_of_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-mul-iff-right-of-analyticonnhd--bfc3b8819993a26af4c05b7e.md) | 511 | `result-track:bfc3b8819993a26af4c05b7eed3d4e6877c01ea4516750db539fa0328f497da1` |
| 29 | `theorem` | [meromorphicNFOn_mul_iff_left_of_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-mul-iff-left-of-analyticonnhd--42936483253d41ac876ee3bb.md) | 522 | `result-track:42936483253d41ac876ee3bbb8381bc2b4650eea37b63730dd7fec82047205d4` |
| 30 | `theorem` | [meromorphicNFOn_inv](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-inv--c108c0c90ca565325233fb0a.md) | 531 | `result-track:c108c0c90ca565325233fb0af02455da7d9bad00ba0609af2b2dd2ab94158b05` |
| 31 | `def` | [toMeromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfon--158ccf6e1aa2bff2b94f21f3.md) | 545 | `declaration-track:158ccf6e1aa2bff2b94f21f38b249f26412abc80b51b1d388c77162cd5f2d5a6` |
| 32 | `lemma` | [toMeromorphicNFOn_of_not_meromorphicOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfon-of-not-meromorphicon--a32b1e78ca3059ad03f3cbd1.md) | 558 | `result-track:a32b1e78ca3059ad03f3cbd1ecc8d41f0cb49e3265a58d0b3de78e24276d607d` |
| 33 | `lemma` | [toMeromorphicNFOn_eq_self_on_compl](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfon-eq-self-on-compl--9013d62f6fd7b2adb52e1257.md) | 565 | `result-track:9013d62f6fd7b2adb52e12577c0769317b8d0624f351e901cd265fd86b406006` |
| 34 | `theorem` | [toMeromorphicNFOn_eqOn_codiscrete](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfon-eqon-codiscrete--b8944d29360d4c1d9ac43d0d.md) | 574 | `result-track:b8944d29360d4c1d9ac43d0dbb8083c6be052883ced8965afc4fd6b7cbe06abd` |
| 35 | `theorem` | [MeromorphicOn.toMeromorphicNFOn_eq_self_on_nhdsNE](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicon-tomeromorphicnfon-eq-self-on-nhdsne--fbaea2c4864e664f79247131.md) | 585 | `result-track:fbaea2c4864e664f7924713159d03acd57e5dcbcbb57a6eea4dee8bcf21fb8d8` |
| 36 | `theorem` | [toMeromorphicNFOn_eq_toMeromorphicNFAt_on_nhds](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfon-eq-tomeromorphicnfat-on-nhds--afb8fc358faf6f2a2b4566f1.md) | 601 | `result-track:afb8fc358faf6f2a2b4566f1261275ec54d69c67a082ec4d44fea93e880d272e` |
| 37 | `theorem` | [toMeromorphicNFOn_eq_toMeromorphicNFAt](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfon-eq-tomeromorphicnfat--ae9415913f51d62b05745706.md) | 616 | `result-track:ae9415913f51d62b05745706e206698cbb2be5bed16d91f77d052375b96efd71` |
| 38 | `theorem` | [meromorphicNFOn_toMeromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicnfon-tomeromorphicnfon--1c803c57dfd2f9e74a27cc60.md) | 626 | `result-track:1c803c57dfd2f9e74a27cc60edaffe157955603bea7bfd02c8c6ddbd2cb562eb` |
| 39 | `theorem` | [toMeromorphicNFOn_eq_self](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/tomeromorphicnfon-eq-self--2a52bbe12755ff0f8391ef9a.md) | 639 | `result-track:2a52bbe12755ff0f8391ef9aa09ed8ed2a37db86c934af38195c6d4f9bf6170a` |
| 40 | `theorem` | [meromorphicOrderAt_toMeromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicorderat-tomeromorphicnfon--1e1dfda5656c62f210790cb3.md) | 653 | `result-track:1e1dfda5656c62f210790cb3f262d83fe4fab7364d9f43db12622543fc71131b` |
| 41 | `theorem` | [MeromorphicOn.divisor_of_toMeromorphicNFOn](../../../../../mathematics/Analysis/ComplexAnalysis/NormalForm/Variant830af93ffed5155071c23321eb5da467430faa59544d8b70f7c4011ad789e592.lean/declarations/meromorphicon-divisor-of-tomeromorphicnfon--a629f176945b9b855506e678.md) | 664 | `result-track:a629f176945b9b855506e678736ad09f7d0ef7c15260a29084c347867d885874` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
