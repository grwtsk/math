# Verification target: GRWTSK.Topology.GeneralTopology.CompactConvergence.Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3240f22e93d7462b3ec97d0ddc704ac9d515fb66",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3240f22e93d7462b3ec97d0ddc704ac9d515fb66`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.CompactOpen` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compactConvNhd](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd--0337b0fec618179598f4d501.md) | 96 | `declaration-track:0337b0fec618179598f4d5016a72f297e42ca318aa8541b362de4a557f943445` |
| 2 | `theorem` | [self_mem_compactConvNhd](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/self-mem-compactconvnhd--00dadf2fe02f0f41df33fac2.md) | 102 | `result-track:00dadf2fe02f0f41df33fac2e1ea22abc272edd56541aa73c9f16440237a8251` |
| 3 | `theorem` | [compactConvNhd_mono](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd-mono--1eec7d0800f209c683335951.md) | 107 | `result-track:1eec7d0800f209c683335951ae1e1f7f0edcd88fa2047925303262781a8704dd` |
| 4 | `theorem` | [compactConvNhd_mem_comp](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd-mem-comp--804f6f7854dd0f087d054835.md) | 111 | `result-track:804f6f7854dd0f087d0548355378d926d7c9ba3f1fff96f44696f56076981d4d` |
| 5 | `theorem` | [compactConvNhd_nhd_basis](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd-nhd-basis--27c41411d5fa97f4972874fc.md) | 118 | `result-track:27c41411d5fa97f4972874fc17729e1af298a9d9104d2d754bcc584d687a7fb3` |
| 6 | `theorem` | [compactConvNhd_subset_inter](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd-subset-inter--3f7f187ba1221f2191d074cf.md) | 127 | `result-track:3f7f187ba1221f2191d074cf2cd026095725c02de2f618729079712425787f4e` |
| 7 | `theorem` | [compactConvNhd_compact_entourage_nonempty](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd-compact-entourage-nonempty--b6ecb852007d4b2a4039e492.md) | 134 | `result-track:b6ecb852007d4b2a4039e492930ff9829acb9459bd074b310a997bed1bd7a603` |
| 8 | `theorem` | [compactConvNhd_filter_isBasis](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd-filter-isbasis--e88a721fc7576ed0fdcbb26f.md) | 139 | `result-track:e88a721fc7576ed0fdcbb26f9697515b4e4744f497d1116554215e04e4da42ae` |
| 9 | `def` | [compactConvergenceFilterBasis](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvergencefilterbasis--0b9cd17592d7b338df3f042e.md) | 151 | `declaration-track:0b9cd17592d7b338df3f042ee54f87ebaef9cbc1af529b8f1aeaab5dc2a88e0d` |
| 10 | `theorem` | [mem_compactConvergence_nhd_filter](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/mem-compactconvergence-nhd-filter--f8384d4efceb03bd92da6306.md) | 155 | `result-track:f8384d4efceb03bd92da6306ef211541e9e23c8d7201f96fc9dcfa0eddd3b603` |
| 11 | `def` | [compactConvergenceTopology](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvergencetopology--376ae49b0b1987e0f56e0b03.md) | 169 | `declaration-track:376ae49b0b1987e0f56e0b030959319ab2ae98fdd5652a11959b269de2f0f3ee` |
| 12 | `theorem` | [nhds_compactConvergence](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/nhds-compactconvergence--224bcf62e48e10fb90e248c4.md) | 173 | `result-track:224bcf62e48e10fb90e248c447966cea723b1414672b63b52bb05ba4705b5d73` |
| 13 | `theorem` | [hasBasis_nhds_compactConvergence](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/hasbasis-nhds-compactconvergence--91124e12bf2420a761479e3a.md) | 183 | `result-track:91124e12bf2420a761479e3a76d1da3d2f3dd26b39d614590f15070ace2e0e1e` |
| 14 | `theorem` | [tendsto_iff_forall_compact_tendstoUniformlyOn'](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/tendsto-iff-forall-compact-tendstouniformlyon--783981a2e78d14f46259c799.md) | 193 | `result-track:783981a2e78d14f46259c799752425e2cc45e88d3a2262e80ec1de0717d6d18f` |
| 15 | `theorem` | [compactConvNhd_subset_compactOpen](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvnhd-subset-compactopen--0495ef71317c9858fafb5e4c.md) | 208 | `result-track:0495ef71317c9858fafb5e4c1976471d2e6423c2cd504d1cc09cc6811af58ea5` |
| 16 | `theorem` | [iInter_compactOpen_gen_subset_compactConvNhd](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/iinter-compactopen-gen-subset-compactconvnhd--13d1f44ca60539af6b1616af.md) | 222 | `result-track:13d1f44ca60539af6b1616af81f476b43a842135800786360355c2b394e64cf3` |
| 17 | `theorem` | [compactOpen_eq_compactConvergence](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactopen-eq-compactconvergence--3a9b89c3e2487434ad08c068.md) | 268 | `result-track:3a9b89c3e2487434ad08c068a44b02f5513ff995668ed44393d632e771f62875` |
| 18 | `def` | [compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvergenceuniformity--069d99166a2a9339e19dbb93.md) | 290 | `declaration-track:069d99166a2a9339e19dbb93a6f53f46b741ce5956a23a191d3ff457a4b0a70a` |
| 19 | `theorem` | [hasBasis_compactConvergenceUniformity_aux](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/hasbasis-compactconvergenceuniformity-aux--03a816a60c00d977c329897c.md) | 295 | `result-track:03a816a60c00d977c329897c9c45babc3d029f11a1c224721a4d3b54c4b2fea3` |
| 20 | `theorem` | [mem_compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/mem-compactconvergenceuniformity--d128fe8982eae51b8236093b.md) | 309 | `result-track:d128fe8982eae51b8236093b222d9f7932bffd3fa0b01eadb34ef16a6006b2a0` |
| 21 | `instance` | [compactConvergenceUniformSpace](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/compactconvergenceuniformspace--7b2f354ffe7c7d629bdb5dc0.md) | 318 | `declaration-track:7b2f354ffe7c7d629bdb5dc048910b3eef2f7b673dd7d49ae7e16b487bececf5` |
| 22 | `theorem` | [mem_compactConvergence_entourage_iff](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/mem-compactconvergence-entourage-iff--465aa68b52219aa00572f4b6.md) | 356 | `result-track:465aa68b52219aa00572f4b62790056f8de380cd7e78f03b9dd7761c8ee211f4` |
| 23 | `theorem` | [hasBasis_compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/hasbasis-compactconvergenceuniformity--19e497b966cd9384a7b8e0a5.md) | 363 | `result-track:19e497b966cd9384a7b8e0a5edfa81f6213ed6c4f136ec8053a22d9808ce940e` |
| 24 | `theorem` | [_root_.Filter.HasBasis.compactConvergenceUniformity](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/root-filter-hasbasis-compactconvergenceuniformity--0c6079574b82531cc058641e.md) | 369 | `result-track:0c6079574b82531cc058641e859747b93951e1b46f460b42006c6c9fb04ea481` |
| 25 | `theorem` | [tendsto_iff_forall_compact_tendstoUniformlyOn](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/tendsto-iff-forall-compact-tendstouniformlyon--4b63931e0dc6c8449362db4b.md) | 383 | `result-track:4b63931e0dc6c8449362db4bfb49f48e365649827bce410aee0a60803e4d7d8a` |
| 26 | `theorem` | [tendsto_of_tendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/tendsto-of-tendstolocallyuniformly--0155e3f6e40bc4728f4025eb.md) | 389 | `result-track:0155e3f6e40bc4728f4025eb35340d5a1bd69919c90af6b56fefbdfca1c9f778` |
| 27 | `theorem` | [tendstoLocallyUniformly_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/tendstolocallyuniformly-of-tendsto--368688b3e26f905f3375fb32.md) | 401 | `result-track:368688b3e26f905f3375fb32d6970e630fbc9c8ac88905454b8fceea972003cc` |
| 28 | `theorem` | [tendsto_iff_tendstoLocallyUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/tendsto-iff-tendstolocallyuniformly--b41a6bafa83e5ac786719539.md) | 415 | `result-track:b41a6bafa83e5ac786719539ded62d0a134fea9a3dc884840e94c6ac37e9c984` |
| 29 | `theorem` | [hasBasis_compactConvergenceUniformity_of_compact](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/hasbasis-compactconvergenceuniformity-of-compact--2f6389c6bb120a35aab27467.md) | 424 | `result-track:2f6389c6bb120a35aab27467258ba5bb3974ae63e7fe6d02459e88cce77759af` |
| 30 | `theorem` | [tendsto_iff_tendstoUniformly](../../../../../mathematics/Topology/GeneralTopology/CompactConvergence/Variantebaa5fbebdfb97638ee27a2b14d3b25577cfda084aad988735bcf3260266a259.lean/declarations/tendsto-iff-tendstouniformly--5e0d44a25b5d93f56c877ec7.md) | 434 | `result-track:5e0d44a25b5d93f56c877ec75d9657308e5f4afa691e7f891664a4c7e7c25910` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
