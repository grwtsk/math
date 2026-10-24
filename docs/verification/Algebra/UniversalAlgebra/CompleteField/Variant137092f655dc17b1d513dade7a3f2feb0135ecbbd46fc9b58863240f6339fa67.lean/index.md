# Verification target: GRWTSK.Algebra.UniversalAlgebra.CompleteField.Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bd738dfe349e252a78f1c6aa7034eac9de25a25",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bd738dfe349e252a78f1c6aa7034eac9de25a25`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/instance--7a81fda5e7bda41e14e5db7a.md) | 64 | `declaration-track:7a81fda5e7bda41e14e5db7aec8aa80bcd77824f9c7a9583634f7b0f968ff880` |
| 2 | `def` | [cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/cutmap--04e43b2d273dec41b0db0580.md) | 94 | `declaration-track:04e43b2d273dec41b0db05808bdec808d73c057af7979068aac3fa80c797b037` |
| 3 | `theorem` | [cutMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/cutmap-mono--18284642bdf1e300b7929bbe.md) | 97 | `result-track:18284642bdf1e300b7929bbe5586e4c1c9404793332927bd6af37323a8e8ac95` |
| 4 | `theorem` | [mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/mem-cutmap-iff--da3211176e4727a57c127286.md) | 102 | `result-track:da3211176e4727a57c12728647258f3738cb1b29150f1b1f45cf4c845794135c` |
| 5 | `theorem` | [coe_mem_cutMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/coe-mem-cutmap-iff--df4b338946c9b7b6dd6e054c.md) | 104 | `result-track:df4b338946c9b7b6dd6e054c2a857af16c316a2148edc8ea954bd8cc025e28bf` |
| 6 | `theorem` | [cutMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/cutmap-self--9cbb9054ac7bab20f42cc644.md) | 107 | `result-track:9cbb9054ac7bab20f42cc644bad046c610a4135ce4579a0c4a63fd4e19bbd032` |
| 7 | `theorem` | [cutMap_coe](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/cutmap-coe--0d19fb69e70543b997740b0e.md) | 115 | `result-track:0d19fb69e70543b997740b0ea74a7e251ab498a15ec24c9cbcbd8d9d64f7c057` |
| 8 | `theorem` | [cutMap_nonempty](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/cutmap-nonempty--745d02775cd83b67b8f7ae77.md) | 121 | `result-track:745d02775cd83b67b8f7ae771a5049203dfdc1cf375985107c6d05156f5e04eb` |
| 9 | `theorem` | [cutMap_bddAbove](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/cutmap-bddabove--c4961ae453948cf81edb713f.md) | 124 | `result-track:c4961ae453948cf81edb713f7efc4af644c81a02c87951072b869e1e0193e4bf` |
| 10 | `theorem` | [cutMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/cutmap-add--c1a1660fe1bcd3c8edecd2e1.md) | 128 | `result-track:c1a1660fe1bcd3c8edecd2e1e4b4f9adf9ba6e4cb38cb5421cb17ffe1e8f1d96` |
| 11 | `def` | [inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap--f87fe03baed0051173140c55.md) | 166 | `declaration-track:f87fe03baed0051173140c554f2336da2bbf7aaf516625f4651e60a5e3646e08` |
| 12 | `theorem` | [inducedMap_mono](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-mono--43c68a262a7fcb3057f76841.md) | 171 | `result-track:43c68a262a7fcb3057f76841ce32b28ea3741209858f06a35e8cf1ad3f731871` |
| 13 | `theorem` | [inducedMap_rat](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-rat--23bef4b1ee026f4d7f88e280.md) | 174 | `result-track:23bef4b1ee026f4d7f88e280d4a279436de58b3247d5ffb36b005fe18cd387e0` |
| 14 | `theorem` | [inducedMap_zero](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-zero--42e30f5bd35208c726c2cc98.md) | 185 | `result-track:42e30f5bd35208c726c2cc981842152d4847684b38b69c3fb4585faa18e87ed3` |
| 15 | `theorem` | [inducedMap_one](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-one--b9137f2fb7b255f0193cba66.md) | 188 | `result-track:b9137f2fb7b255f0193cba66de4a117386ad70c9ec07e27d3690cd81ed1dad42` |
| 16 | `theorem` | [inducedMap_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-nonneg--368d43d24e7e0cdd00d2271d.md) | 192 | `result-track:368d43d24e7e0cdd00d2271d7115bb389e05e457dc845c5711c679614476ad64` |
| 17 | `theorem` | [coe_lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/coe-lt-inducedmap-iff--349d77066005a90c8af098ad.md) | 195 | `result-track:349d77066005a90c8af098adc0000b873c78cb98c3cc447863f5dde3ba4824c1` |
| 18 | `theorem` | [lt_inducedMap_iff](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/lt-inducedmap-iff--a110231ca728e6566f76dddb.md) | 203 | `result-track:a110231ca728e6566f76dddbe50374e9813cc1701a9df6146219e5282e85d681` |
| 19 | `theorem` | [inducedMap_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-self--af4c5e848e66ac8942280ad2.md) | 208 | `result-track:af4c5e848e66ac8942280ad2586e6423266828de819151c763ad0b0316ddc7b4` |
| 20 | `theorem` | [inducedMap_inducedMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-inducedmap--63b90d433e929a80da767aa0.md) | 214 | `result-track:63b90d433e929a80da767aa02216137127f54e0e84edb16d26d84caa28e2d057` |
| 21 | `theorem` | [inducedMap_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-inv-self--f1679becfae921a6fc7070b9.md) | 218 | `result-track:f1679becfae921a6fc7070b904291f221b2b47f97b13c71b1b28e1fae4f381e9` |
| 22 | `theorem` | [inducedMap_add](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedmap-add--5f41d60a43b3723d6783b584.md) | 221 | `result-track:5f41d60a43b3723d6783b584f1215ad2035bfdfdcd93ffa1b85ae55d5d38fa43` |
| 23 | `theorem` | [le_inducedMap_mul_self_of_mem_cutMap](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/le-inducedmap-mul-self-of-mem-cutmap--eb33249601466b929528debf.md) | 230 | `result-track:eb33249601466b929528debf314aa4393cbc544897377905e0fad6ab7a7ce879` |
| 24 | `theorem` | [exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/exists-mem-cutmap-mul-self-of-lt-inducedmap-mul-self--c61b1f77fe98c4e75db96955.md) | 242 | `result-track:c61b1f77fe98c4e75db96955e6a455fbdabd099c1aa7439c2d8cfefd471313c9` |
| 25 | `def` | [inducedAddHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedaddhom--8f98a1cebf33968cbabfeee6.md) | 260 | `declaration-track:8f98a1cebf33968cbabfeee63d30f7102bb4a755f0cfd1f420421fbf4eae2cee` |
| 26 | `def` | [inducedOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedorderringhom--c7f622354637a81e2306ef7f.md) | 265 | `declaration-track:c7f622354637a81e2306ef7f53f8aa9ba870135aeb9a3b3540a4f2607ea989ea` |
| 27 | `def` | [inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedorderringiso--20d2eadb22cc7b5b60a959a1.md) | 285 | `declaration-track:20d2eadb22cc7b5b60a959a1e6f2ba517f5b90dd11b5a5ebdf04e1884854607e` |
| 28 | `theorem` | [coe_inducedOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/coe-inducedorderringiso--caf593645f64139575ac074a.md) | 299 | `result-track:caf593645f64139575ac074ad3b01c7252f080c0514094fc7d479b95a77c009d` |
| 29 | `theorem` | [inducedOrderRingIso_symm](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedorderringiso-symm--58b08b89c4aec1ca1a65d02c.md) | 302 | `result-track:58b08b89c4aec1ca1a65d02ce422b8c109036414318aea81690755035aacf286` |
| 30 | `theorem` | [inducedOrderRingIso_self](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/inducedorderringiso-self--9b764c4e54c3fc1bbe90c3ad.md) | 305 | `result-track:9b764c4e54c3fc1bbe90c3ad72c5611dc91964fbc86a021051c857502f7a70b3` |
| 31 | `instance` | [uniqueOrderRingHom](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/uniqueorderringhom--c6814d21240fa71c780421f1.md) | 312 | `declaration-track:c6814d21240fa71c780421f14b6a8855a2e8498b75334c43ad93680918fcfbf1` |
| 32 | `instance` | [uniqueOrderRingIso](../../../../../mathematics/Algebra/UniversalAlgebra/CompleteField/Variant137092f655dc17b1d513dade7a3f2feb0135ecbbd46fc9b58863240f6339fa67.lean/declarations/uniqueorderringiso--8ca35479d37155f231eea09c.md) | 317 | `declaration-track:8ca35479d37155f231eea09cfdaad3331afe0b2393ca31192797ce8188b1a9a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
