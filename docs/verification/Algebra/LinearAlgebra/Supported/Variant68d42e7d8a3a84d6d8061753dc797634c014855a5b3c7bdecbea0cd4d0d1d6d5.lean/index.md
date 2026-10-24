# Verification target: GRWTSK.Algebra.LinearAlgebra.Supported.Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0ea0fa9818c060c8c9b6d401d846896a6c0fe4d",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0ea0fa9818c060c8c9b6d401d846896a6c0fe4d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Submodule.Range` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported--0b0a250d53268ef406835e1c.md) | 40 | `declaration-track:0b0a250d53268ef406835e1cd9eb4bded8d271f6c1d46823cfa38612bb7f9f37` |
| 2 | `theorem` | [mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/mem-supported--422d91a40cce00c2de87aef2.md) | 54 | `result-track:422d91a40cce00c2de87aef212a9ded97b6635c9e1ebf5c2dbed69363f0d8b8d` |
| 3 | `theorem` | [mem_supported'](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/mem-supported--84f887bb4d81dec8ecbaedd9.md) | 57 | `result-track:84f887bb4d81dec8ecbaedd970db5fe2c1403d34401fb25a7fc0ace4cf9a7cef` |
| 4 | `theorem` | [mem_supported_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/mem-supported-support--91ac4361edafe33b2317548e.md) | 61 | `result-track:91ac4361edafe33b2317548ef91ad333eada5c6ed59984827988d4f9e66fafb0` |
| 5 | `theorem` | [single_mem_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/single-mem-supported--19ccb57da37462e04c571b3a.md) | 64 | `result-track:19ccb57da37462e04c571b3a46fcdab08304ae155ffeae428da35765cfa55613` |
| 6 | `theorem` | [supported_eq_span_single](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-eq-span-single--e60a5afe6b8f6523649d911f.md) | 68 | `result-track:e60a5afe6b8f6523649d911f1545af1c3b9e5f746a3cff7857db7281d040105c` |
| 7 | `theorem` | [span_le_supported_biUnion_support](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/span-le-supported-biunion-support--87e531c7f5ad5bc24707db75.md) | 78 | `result-track:87e531c7f5ad5bc24707db75bcf05aca5a6434de0ab1f5bbc9d6a65a63f5634f` |
| 8 | `def` | [restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/restrictdom--9492cd556f0c0f4f44600926.md) | 85 | `declaration-track:9492cd556f0c0f4f4460092612a8fc3dd7b7efca952d880eb8280e5bdf432d21` |
| 9 | `theorem` | [restrictDom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/restrictdom-apply--1ba029ea193bec237788efa0.md) | 97 | `result-track:1ba029ea193bec237788efa082f32f36df9aac2ca2d57cb0bf1fc9057c054e17` |
| 10 | `theorem` | [restrictDom_comp_subtype](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/restrictdom-comp-subtype--0f0958879da60bac69e792e9.md) | 102 | `result-track:0f0958879da60bac69e792e975daefbe5e39aaf942b595ebb87eab760ca3674e` |
| 11 | `theorem` | [range_restrictDom](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/range-restrictdom--aab93fce3cc89ae2fe236723.md) | 109 | `result-track:aab93fce3cc89ae2fe2367230f671056a3bff140df83f80a06c89782fb3663f8` |
| 12 | `theorem` | [supported_mono](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-mono--0785440afed4fcbe000d0b2c.md) | 114 | `result-track:0785440afed4fcbe000d0b2c1b5396c7d72ec5145d7077b563ded4f9c4731f58` |
| 13 | `theorem` | [supported_empty](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-empty--937d096d768c42804babdb56.md) | 118 | `result-track:937d096d768c42804babdb5699360fd45ca62157ae740b38d0d10492dcf49551` |
| 14 | `theorem` | [supported_univ](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-univ--c4560a65d278d32fdf054388.md) | 122 | `result-track:c4560a65d278d32fdf0543886b15faf52013ce1a58cf834d9dc4396bb87c8554` |
| 15 | `theorem` | [supported_iUnion](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-iunion--40c6e1bc0e25fee056cec6e6.md) | 125 | `result-track:40c6e1bc0e25fee056cec6e68c9c9e682e522ac328e846498c60fe9fd4fa141c` |
| 16 | `theorem` | [supported_union](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-union--450e6596e25d6589ea0df64c.md) | 146 | `result-track:450e6596e25d6589ea0df64c79eee71493f81becff3036f6ac72aa55f37d82ad` |
| 17 | `theorem` | [supported_iInter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-iinter--b164c302988d06103f7b2f68.md) | 150 | `result-track:b164c302988d06103f7b2f68614cbd775f75656ef908ea99e3fd5ba45fd35672` |
| 18 | `theorem` | [supported_inter](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-inter--35e78977500140edfecd707e.md) | 154 | `result-track:35e78977500140edfecd707e5d52e5bdad646593920274fcf99d36e4051b793e` |
| 19 | `theorem` | [disjoint_supported_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/disjoint-supported-supported--7d8a4774d105ea64ff28e583.md) | 158 | `result-track:7d8a4774d105ea64ff28e5830eb903649d04d2040532553d981d0059244cc1d6` |
| 20 | `theorem` | [disjoint_supported_supported_iff](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/disjoint-supported-supported-iff--9ef5ac0ad847041ab4f68def.md) | 162 | `result-track:9ef5ac0ad847041ab4f68def8ef3de3aeacaca166e0b6651a7d867564b48dc31` |
| 21 | `def` | [supportedEquivFinsupp](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supportedequivfinsupp--7eefc3c6fdbc24b062753211.md) | 172 | `declaration-track:7eefc3c6fdbc24b0627532113fbcbf15b3de1af054a51b50a16b61811ac5c2c8` |
| 22 | `theorem` | [supportedEquivFinsupp_symm_apply_coe](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supportedequivfinsupp-symm-apply-coe--c5ec823934425331d263e4dd.md) | 182 | `result-track:c5ec823934425331d263e4dd45395a502f550c4bb0850a25da9d8f2e127955f1` |
| 23 | `theorem` | [supported_comap_lmapDomain](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/supported-comap-lmapdomain--13d77357f79108f0b09ac3c7.md) | 190 | `result-track:13d77357f79108f0b09ac3c7add6a8574bc4691d8a51fed2cc98befdc03cd9ab` |
| 24 | `theorem` | [lmapDomain_supported](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/lmapdomain-supported--85e5d15a3f1e3971c9155cab.md) | 198 | `result-track:85e5d15a3f1e3971c9155cab9cf91b29a252e2b6a789fa6ac058e21a9071370a` |
| 25 | `theorem` | [lmapDomain_disjoint_ker](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/lmapdomain-disjoint-ker--946a179b69b9404b092f02c6.md) | 217 | `result-track:946a179b69b9404b092f02c67b14b3d16e6f93cc4f880be1c53b479dac4c8464` |
| 26 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Supported/Variant68d42e7d8a3a84d6d8061753dc797634c014855a5b3c7bdecbea0cd4d0d1d6d5.lean/declarations/congr--fefc2a40be2239f28635efad.md) | 241 | `declaration-track:fefc2a40be2239f28635efadf0b62ab49f460ad4e6ff51aa7ff270595e24f8f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
