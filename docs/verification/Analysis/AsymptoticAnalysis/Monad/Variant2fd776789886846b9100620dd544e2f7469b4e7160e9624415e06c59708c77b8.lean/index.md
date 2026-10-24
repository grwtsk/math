# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Monad.Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcd200b2c63f89336c9fed9e6fb7cf9f185ad988",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcd200b2c63f89336c9fed9e6fb7cf9f185ad988`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.ProbabilityMassFunction.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/pure--39d7bdd7fdc8779dc8d6a929.md) | 45 | `declaration-track:39d7bdd7fdc8779dc8d6a9295a046b2dab977e10ab47bcc5565ef3a9c468f5d9` |
| 2 | `theorem` | [pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/pure-apply--dfc98619935a43008b8a46d1.md) | 52 | `result-track:dfc98619935a43008b8a46d1a52281c803fff3cea3f71fd3401d7c97c53a29fe` |
| 3 | `theorem` | [support_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/support-pure--0f38ddc15d439bc52510a4d6.md) | 55 | `result-track:0f38ddc15d439bc52510a4d65d7e42a0010aeab01d75dffdb8efeff1a1c647fb` |
| 4 | `theorem` | [mem_support_pure_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/mem-support-pure-iff--3b5f0b9576202d98c78405a4.md) | 58 | `result-track:3b5f0b9576202d98c78405a4d52efa3eaef2ee809226b4a04963c3b365bbbb75` |
| 5 | `theorem` | [pure_apply_self](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/pure-apply-self--75de3efb240e344e6294670d.md) | 60 | `result-track:75de3efb240e344e6294670d3d1930500a48d10885cee401f4c0097d326a05d7` |
| 6 | `theorem` | [pure_apply_of_ne](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/pure-apply-of-ne--49ccff73ff06c8d6ec0e3a06.md) | 63 | `result-track:49ccff73ff06c8d6ec0e3a0625774c594862632db832f69ec8d79fa310b19beb` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/instance--072fca66c33880621037c35c.md) | 66 | `declaration-track:072fca66c33880621037c35cefa35f2ef55c913aba2880481254f4194ea6048e` |
| 8 | `theorem` | [toOuterMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/tooutermeasure-pure-apply--80909710982524340057fc7f.md) | 75 | `result-track:80909710982524340057fc7fd577a1dd1c1e3ed9184711d944d27183e4bc21c0` |
| 9 | `theorem` | [toMeasure_pure_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/tomeasure-pure-apply--6ab7bde52be68b45411cdedf.md) | 90 | `result-track:6ab7bde52be68b45411cdedfe5d7047c7e48d37ac4c3b35d454beccb1ca67424` |
| 10 | `theorem` | [toMeasure_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/tomeasure-pure--346cc4554be2b89d11e7faa2.md) | 94 | `result-track:346cc4554be2b89d11e7faa2e7f67945c2d6722f3524088e2673748d52f724e0` |
| 11 | `theorem` | [toPMF_dirac](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/topmf-dirac--4c64379258e2beff537962b1.md) | 98 | `result-track:4c64379258e2beff537962b12a051a2d0cbf9cd1c6ebdba5deae655eab73e36e` |
| 12 | `def` | [bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bind--0794f43f641a33cc65ed54bd.md) | 109 | `declaration-track:0794f43f641a33cc65ed54bdeb06524bec33a079d729a341d0954196c9cc7006` |
| 13 | `theorem` | [bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bind-apply--fae2bbfb75fa3a692faba87c.md) | 117 | `result-track:fae2bbfb75fa3a692faba87cfdf3fe4e83fd55e1818e7ae1fb8c812446190181` |
| 14 | `theorem` | [support_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/support-bind--b81f843fc68d8dc1644aaba3.md) | 120 | `result-track:b81f843fc68d8dc1644aaba3d2066e30307c3c29622b10588ed3fb32548a7161` |
| 15 | `theorem` | [mem_support_bind_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/mem-support-bind-iff--99d55efc58eeac02e6ced795.md) | 123 | `result-track:99d55efc58eeac02e6ced795ee6b31359ef86f465ad1264b0f314233f88234ab` |
| 16 | `theorem` | [pure_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/pure-bind--70c4d8903432bc5123e6630b.md) | 128 | `result-track:70c4d8903432bc5123e6630b9abfb9a9bf46b23aab0996529ac0d84a71161c78` |
| 17 | `theorem` | [bind_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bind-pure--6dbc10df4f73e38290b7949c.md) | 136 | `result-track:6dbc10df4f73e38290b7949c631fc07880b8c26f61090ea97be32de831a587d6` |
| 18 | `theorem` | [bind_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bind-const--28999fa3d75cfe1ce288a5b0.md) | 142 | `result-track:28999fa3d75cfe1ce288a5b080b92ca706cb98104d1f5df0f5d013292cd328a2` |
| 19 | `theorem` | [bind_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bind-bind--96b1ecd23f79c10350f07f46.md) | 146 | `result-track:96b1ecd23f79c10350f07f460bc19a25c663312622f85dedee1d37ad0b84e95b` |
| 20 | `theorem` | [bind_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bind-comm--b75c67a8fa35135d1f39ae23.md) | 151 | `result-track:b75c67a8fa35135d1f39ae23cc38b116de434bfddda4a2b48a109f97363424fe` |
| 21 | `theorem` | [toOuterMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/tooutermeasure-bind-apply--75ba4a5569be4623a46bf052.md) | 162 | `result-track:75ba4a5569be4623a46bf052cb374e39253041511f0e1dfe516e107f597a2163` |
| 22 | `theorem` | [toMeasure_bind_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/tomeasure-bind-apply--411ad5e686d1fe35f3d2807c.md) | 179 | `result-track:411ad5e686d1fe35f3d2807cd3d338c701941d9ccbb276438b7ac2a5bfa5b86b` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/instance--5b7786120280df9d5109e047.md) | 190 | `declaration-track:5b7786120280df9d5109e047b47259131a8d14d24f15cd1bb01606c3633f91e2` |
| 24 | `def` | [bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bindonsupport--f954c0e51bcb22c18b5e94a6.md) | 198 | `declaration-track:f954c0e51bcb22c18b5e94a6795c310fddb9f6f3565d37a1ca02c81de6fa8ba0` |
| 25 | `theorem` | [bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bindonsupport-apply--8225d60ce79d81cc3f61cf86.md) | 209 | `result-track:8225d60ce79d81cc3f61cf86f5cd5c2666cdfc64d069d21b3b50fd284a936a91` |
| 26 | `theorem` | [support_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/support-bindonsupport--d3e421e4489c7706245abffe.md) | 213 | `result-track:d3e421e4489c7706245abffe357ff2907c091e4d70171ad1a7dfd3ab898e6148` |
| 27 | `theorem` | [mem_support_bindOnSupport_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/mem-support-bindonsupport-iff--f017507e27973fead59ddd6e.md) | 226 | `result-track:f017507e27973fead59ddd6eb2cd0954840ce756a2be5b96885c4619138cac0f` |
| 28 | `theorem` | [bindOnSupport_eq_bind](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bindonsupport-eq-bind--b02aa91e3abf190d2431dd7b.md) | 232 | `result-track:b02aa91e3abf190d2431dd7b6e851d6d8e6bfb1aabfde97549220d7e6ac4af10` |
| 29 | `theorem` | [bindOnSupport_eq_zero_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bindonsupport-eq-zero-iff--979f6b0a8b625e5cb4e90a85.md) | 240 | `result-track:979f6b0a8b625e5cb4e90a853c181eb2d8182ff1b729eb7d79bd6951786a83c7` |
| 30 | `theorem` | [pure_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/pure-bindonsupport--6bf9cdaf0708654442506ef4.md) | 247 | `result-track:6bf9cdaf0708654442506ef406bd91b67c64f8bd7cac9712c245917837a1a408` |
| 31 | `theorem` | [bindOnSupport_pure](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bindonsupport-pure--a3307269aa0bf349805d6b20.md) | 255 | `result-track:a3307269aa0bf349805d6b20e773790a2dd18648646fbce535f606afb247179e` |
| 32 | `theorem` | [bindOnSupport_bindOnSupport](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bindonsupport-bindonsupport--869564e4069613aad7589797.md) | 259 | `result-track:869564e4069613aad7589797ceab46d263ba9895a998fe53e92fc28d6a59a66a` |
| 33 | `theorem` | [bindOnSupport_comm](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/bindonsupport-comm--9fe633c97a4c6bbafd0e1038.md) | 278 | `result-track:9fe633c97a4c6bbafd0e1038f80b601b197a1b563f300288c57d1495f625d736` |
| 34 | `theorem` | [toOuterMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/tooutermeasure-bindonsupport-apply--79bb977885be1971a4c65f65.md) | 292 | `result-track:79bb977885be1971a4c65f651434d4a90354939c64ddc965ece17e195718bfa2` |
| 35 | `theorem` | [toMeasure_bindOnSupport_apply](../../../../../mathematics/Analysis/AsymptoticAnalysis/Monad/Variant2fd776789886846b9100620dd544e2f7469b4e7160e9624415e06c59708c77b8.lean/declarations/tomeasure-bindonsupport-apply--c7ad2ca982aee00b16d0a898.md) | 312 | `result-track:c7ad2ca982aee00b16d0a8980ab8b8aa6a48f8a668dc1c865b34ef51b8a428e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
