# Verification target: GRWTSK.Topology.GeneralTopology.CompactOperator.Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad6f20323928ec80e6345c793fe419bff2da9f6c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad6f20323928ec80e6345c793fe419bff2da9f6c`.

Source path: `GRWTSK/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator--830e5f25b7a425a07387bdad.md) | 61 | `declaration-track:830e5f25b7a425a07387bdad72c45e9dc97222da44dc29df907cb5da9c5e5c71` |
| 2 | `theorem` | [isCompactOperator_zero](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-zero--2d3b6e1c75d1554ebb014c5e.md) | 66 | `result-track:2d3b6e1c75d1554ebb014c5eb9913a838f646eb105119af3e2b751b454b6642e` |
| 3 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_image_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iff-exists-mem-nhds-image-subset-compact--dd604b49c5af9d9bf81a993a.md) | 78 | `result-track:dd604b49c5af9d9bf81a993a8139eb7bc0d72876f253ed523bb4e7f2d46333b9` |
| 4 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iff-exists-mem-nhds-iscompact-closure-image--fd23f41826da620758d64393.md) | 84 | `result-track:fd23f41826da620758d64393b5f050dd9d12ab4dd6ce70557bb21acd296d73e7` |
| 5 | `theorem` | [IsCompactOperator.image_subset_compact_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-image-subset-compact-of-isvonnbounded--fa19251c5b00ffd44a46db51.md) | 100 | `result-track:fa19251c5b00ffd44a46db51d4c887f0920684351ad7c022babbd88049a4366c` |
| 6 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iscompact-closure-image-of-isvonnbounded--c8183ebcc350cc49adbc4301.md) | 112 | `result-track:c8183ebcc350cc49adbc43011b2cce6973cb8339923ac17bb23e7f6f9343c5df` |
| 7 | `theorem` | [IsCompactOperator.image_subset_compact_of_bounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-image-subset-compact-of-bounded--1c06b963de589636bc5de018.md) | 128 | `result-track:1c06b963de589636bc5de018d18f771dd15392ea91f1c00d329265500840464e` |
| 8 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_bounded](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iscompact-closure-image-of-bounded--6693ffb839a30e89317bf195.md) | 135 | `result-track:6693ffb839a30e89317bf195ddad7c3ee7753d46b066b478a22f2155769d5803` |
| 9 | `theorem` | [IsCompactOperator.image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-image-ball-subset-compact--ad493d01c45af7eef6e0bc2f.md) | 142 | `result-track:ad493d01c45af7eef6e0bc2f5f594259fe076a2634e7362bcc4f93cd7b50b146` |
| 10 | `theorem` | [IsCompactOperator.image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-image-closedball-subset-compact--756b51ab3264171dbf067577.md) | 147 | `result-track:756b51ab3264171dbf067577848c3125eb1a977f7be48f08db30917923d01c46` |
| 11 | `theorem` | [IsCompactOperator.isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iscompact-closure-image-ball--9428a26c1dc190c68a90b1fa.md) | 153 | `result-track:9428a26c1dc190c68a90b1fa8927eb7fd8782b098f71bc7c7009fd37a63cce34` |
| 12 | `theorem` | [IsCompactOperator.isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iscompact-closure-image-closedball--4741ac7f5dd2ece461ca363e.md) | 159 | `result-track:4741ac7f5dd2ece461ca363e54f4c1ed64f4b9ec980deb96c4941f42d4c83273` |
| 13 | `theorem` | [isCompactOperator_iff_image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iff-image-ball-subset-compact--e905a1281f22dbedb2c93f48.md) | 165 | `result-track:e905a1281f22dbedb2c93f48c657b94396a77076891ab28bdc5ba397e1731d48` |
| 14 | `theorem` | [isCompactOperator_iff_image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iff-image-closedball-subset-compact--e3f3000ef3ed23e589e66023.md) | 173 | `result-track:e3f3000ef3ed23e589e660236ecf96d4d17f674900efc126308938c6df1aae8b` |
| 15 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iff-iscompact-closure-image-ball--8700446bef6d7b518f6fa57f.md) | 181 | `result-track:8700446bef6d7b518f6fa57f6b73b1069ebaf57c41f4dc021304b8734c522872` |
| 16 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-iff-iscompact-closure-image-closedball--aa2b980cb27833374c0b39b2.md) | 189 | `result-track:aa2b980cb27833374c0b39b20553491be238e67b07e8841e6a9acf97bf36e1f8` |
| 17 | `theorem` | [IsCompactOperator.smul](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-smul--69a544fafb4b24ea59706c41.md) | 208 | `result-track:69a544fafb4b24ea59706c4191d3aa169f37844005935ce40185c7b40e00be38` |
| 18 | `theorem` | [IsCompactOperator.add](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-add--6ab1318bacd01199d33c3590.md) | 216 | `result-track:6ab1318bacd01199d33c3590feecb2863200ccd61739400fa6e94ba03fed0672` |
| 19 | `theorem` | [IsCompactOperator.neg](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-neg--f6b18c024d8f6e1f5101a667.md) | 224 | `result-track:f6b18c024d8f6e1f5101a667e87498ebd4f420b14d82e48eff77480bac6f781d` |
| 20 | `theorem` | [IsCompactOperator.sub](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-sub--2a489b188a5194069649fffd.md) | 230 | `result-track:2a489b188a5194069649fffd6ca6dc2bd7643fbf1c628f8eebfc79adf1cc7aef` |
| 21 | `def` | [compactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/compactoperator--4f6b6480a37147e8138c75a5.md) | 238 | `declaration-track:4f6b6480a37147e8138c75a5f76d1c8eba15d715b86446a32f5d3ed48953e0dc` |
| 22 | `theorem` | [IsCompactOperator.comp_clm](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-comp-clm--14dbf888107fa83fa776cb19.md) | 254 | `result-track:14dbf888107fa83fa776cb196bcd44209b634b41869f5fcdc453339c5b27b672` |
| 23 | `theorem` | [IsCompactOperator.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-continuous-comp--718aa95d0befd6569ae580a9.md) | 262 | `result-track:718aa95d0befd6569ae580a99b1da3d28a602404660754bcdecb8581d5ad57e1` |
| 24 | `theorem` | [IsCompactOperator.clm_comp](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-clm-comp--55a97bda7b7e436a43150bde.md) | 270 | `result-track:55a97bda7b7e436a43150bde8975c371a9417f45a72c4b257ec051aec8769072` |
| 25 | `theorem` | [IsCompactOperator.codRestrict](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-codrestrict--6d306627b8d8f3da8a77df8b.md) | 284 | `result-track:6d306627b8d8f3da8a77df8bd2990a4675c1c147c5c5722afd434fd6bdcf53cc` |
| 26 | `theorem` | [IsCompactOperator.restrict](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-restrict--38e6d15366024715893e3f2d.md) | 308 | `result-track:38e6d15366024715893e3f2d538e00ce67d764e0e51999ed2d70c604c89cb60a` |
| 27 | `theorem` | [IsCompactOperator.restrict'](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-restrict--71df371d73bd0e6e384192cd.md) | 322 | `result-track:71df371d73bd0e6e384192cd11b9fb625eca9427a35da1b2b162ae860aa41f9e` |
| 28 | `theorem` | [IsCompactOperator.continuous](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-continuous--53cda059e90ea271ada96e2f.md) | 338 | `result-track:53cda059e90ea271ada96e2f3248d2bc6bc852a25afd9f887c7ee11d7f5e061a` |
| 29 | `def` | [ContinuousLinearMap.mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/continuouslinearmap-mkofiscompactoperator--c494db266b8fcd8c13ee35f7.md) | 371 | `declaration-track:c494db266b8fcd8c13ee35f77940b20b10fcf7d4ae69a4215bf3ebe2970446e4` |
| 30 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/continuouslinearmap-mkofiscompactoperator-to-linearmap--fe96eb7ae13ceb81c3daa647.md) | 377 | `result-track:fe96eb7ae13ceb81c3daa647b78fc63491c4fe6d4ababe8c6b3535efb775669a` |
| 31 | `theorem` | [ContinuousLinearMap.coe_mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/continuouslinearmap-coe-mkofiscompactoperator--c59da93da5448e901ef35a40.md) | 384 | `result-track:c59da93da5448e901ef35a4008de96c7c61e660b03fbd3fc338b0ce764bd7209` |
| 32 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/continuouslinearmap-mkofiscompactoperator-mem-compactoperator--2ef78c02902acfe2f1b7db37.md) | 389 | `result-track:2ef78c02902acfe2f1b7db3768756c9b283913d103140f1cf76ffe96b622071d` |
| 33 | `theorem` | [isClosed_setOf_isCompactOperator](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/isclosed-setof-iscompactoperator--5fa14552921163676a2dc853.md) | 399 | `result-track:5fa14552921163676a2dc8533c784de2451d9dfcdf3885b033c350591b989b56` |
| 34 | `theorem` | [compactOperator_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/compactoperator-topologicalclosure--002bc9d3bd7005ac0d649860.md) | 436 | `result-track:002bc9d3bd7005ac0d6498607da318d13f0fd93ec8e7ac6d042d62b8962be9d7` |
| 35 | `theorem` | [isCompactOperator_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/CompactOperator/Variantaa848706cf048498a04072425e3c749e9e7e09f8745fa34bf7daae75d77070f1.lean/declarations/iscompactoperator-of-tendsto--d560cc68ada67904a258be7b.md) | 445 | `result-track:d560cc68ada67904a258be7b62eca3eb69f5274f1684767e0833a6bfae64782c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
