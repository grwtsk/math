# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65d550b3aab803ff8f76d8f700f3f5ea09985b18",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65d550b3aab803ff8f76d8f700f3f5ea09985b18`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean.json)

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
| 1 | `def` | [refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/refl--235f20cbccfabf6d751fca22.md) | 40 | `declaration-track:235f20cbccfabf6d751fca22577092f56fb905340270238e2c2ac6a2273ca799` |
| 2 | `theorem` | [refl_partialEquiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/refl-partialequiv--600dedfde7caef5c3c8d12e1.md) | 44 | `result-track:600dedfde7caef5c3c8d12e143cb2df15be18c687e848832e5dc13571d0d2a8a` |
| 3 | `theorem` | [refl_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/refl-symm--ec78c4d9efc1a4c89af9e2ce.md) | 48 | `result-track:ec78c4d9efc1a4c89af9e2cea3e7c9ca1dfab8735d945a580f64b587b6978adc` |
| 4 | `theorem` | [source_preimage_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/source-preimage-target--dd3865523f784ef86f8e6a42.md) | 53 | `result-track:dd3865523f784ef86f8e6a4204a9d9d9119c2177ed06448f2db4ab29ed15d6a2` |
| 5 | `theorem` | [image_eq_target_inter_inv_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/image-eq-target-inter-inv-preimage--fa2075bd3080e3136f0cdcf8.md) | 56 | `result-track:fa2075bd3080e3136f0cdcf8c299f11ab63d9c6cafdf607490dbb8dab07eeac9` |
| 6 | `theorem` | [image_source_inter_eq'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/image-source-inter-eq--5d67abdd9979442c24d4a193.md) | 60 | `result-track:5d67abdd9979442c24d4a193173f4663e128e91f55394891a24d1728cd00ad45` |
| 7 | `theorem` | [image_source_inter_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/image-source-inter-eq--6612caca284236ae04b2bcb0.md) | 63 | `result-track:6612caca284236ae04b2bcb00cf13df2bf2cf7e72aa83f8e44c68bd0166edfa8` |
| 8 | `theorem` | [symm_image_eq_source_inter_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/symm-image-eq-source-inter-preimage--90549d60cf4687ec896f74d2.md) | 67 | `result-track:90549d60cf4687ec896f74d2c7b7c487b959572cdb948dbf5e9b2d47d865b8bc` |
| 9 | `theorem` | [symm_image_target_inter_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/symm-image-target-inter-eq--075a5dc33a1e7876a66e2a33.md) | 71 | `result-track:075a5dc33a1e7876a66e2a33ad5299f6a67b079ae5c640318a0fa9ae68989546` |
| 10 | `theorem` | [source_inter_preimage_inv_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/source-inter-preimage-inv-preimage--7bc35cffd33ce1247b635276.md) | 75 | `result-track:7bc35cffd33ce1247b635276464667ea285f524626be5a66b2691ced8f37969f` |
| 11 | `theorem` | [target_inter_inv_preimage_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/target-inter-inv-preimage-preimage--121832dbe0ba9e560038047a.md) | 79 | `result-track:121832dbe0ba9e560038047ab1895c7c86b8ad206ebdd24413aeae089b6659fb` |
| 12 | `theorem` | [source_inter_preimage_target_inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/source-inter-preimage-target-inter--2ca6bbf5aadda534ac73993e.md) | 83 | `result-track:2ca6bbf5aadda534ac73993ea4f2686bad20cf34fe175b3f4d0c112e68bef74f` |
| 13 | `theorem` | [image_source_eq_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/image-source-eq-target--bff4abce8b4606e8d56dc994.md) | 87 | `result-track:bff4abce8b4606e8d56dc9945c3fdb02cb9968030b35f04e5f55e8086d9f6326` |
| 14 | `theorem` | [symm_image_target_eq_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/symm-image-target-eq-source--fed3ccacfaf632badc88e957.md) | 90 | `result-track:fed3ccacfaf632badc88e95736f34c36ce4fc4164bba66192306b431742964df` |
| 15 | `theorem` | [isOpen_inter_preimage](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopen-inter-preimage--410145c323ab8063c32d50b2.md) | 93 | `result-track:410145c323ab8063c32d50b26cb5ea9441e85d3621fc6d6f152d8fc4249f2ebe` |
| 16 | `theorem` | [isOpen_inter_preimage_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopen-inter-preimage-symm--c5694b87cabac39102250582.md) | 96 | `result-track:c5694b87cabac39102250582dae3ba6b040ecc8d60b5055528516bec881f6216` |
| 17 | `lemma` | [isOpen_image_of_subset_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopen-image-of-subset-source--7972de9123ac2adbb67a82ad.md) | 101 | `result-track:7972de9123ac2adbb67a82adaafaaee17937cb220a27e86f7ec8c470a7bfb273` |
| 18 | `theorem` | [isOpen_image_source_inter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopen-image-source-inter--ca06daeacb78b3b147925299.md) | 107 | `result-track:ca06daeacb78b3b1479252991fcf29dff66761e7f1e7c4e7fd226921d5ad3d53` |
| 19 | `lemma` | [isOpen_image_symm_of_subset_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopen-image-symm-of-subset-target--901ad76c271f1b4f9a61d9f2.md) | 112 | `result-track:901ad76c271f1b4f9a61d9f22de9914a30701d1bfaaa481170e0ae345400764b` |
| 20 | `lemma` | [isOpen_symm_image_iff_of_subset_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopen-symm-image-iff-of-subset-target--0d7e1627ede0ca9f16e70900.md) | 116 | `result-track:0d7e1627ede0ca9f16e70900d46eb91a29f040347ce03ca9da06a2403b46f439` |
| 21 | `theorem` | [isOpen_image_iff_of_subset_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopen-image-iff-of-subset-source--d5aa14ac71d11c741b5e8ef5.md) | 125 | `result-track:d5aa14ac71d11c741b5e8ef502ed8c2ca5376b1a27991a6a2391f2e800d678d6` |
| 22 | `def` | [ofContinuousOpenRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/ofcontinuousopenrestrict--dde9c8c63c39380f7e63c069.md) | 132 | `declaration-track:dde9c8c63c39380f7e63c06997350864e9e24d7bf28a2b05ac56ce55c34d6cdc` |
| 23 | `theorem` | [coe_ofContinuousOpenRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/coe-ofcontinuousopenrestrict--504e7b1934795e8ac74f8f7f.md) | 140 | `result-track:504e7b1934795e8ac74f8f7f8d586d050fa74e385ae3b025ae00d461de9e2f0b` |
| 24 | `theorem` | [coe_ofContinuousOpenRestrict_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/coe-ofcontinuousopenrestrict-symm--170aeada52f61dd7bf05c282.md) | 146 | `result-track:170aeada52f61dd7bf05c2821e77d16aa4ff81ec725c33672ff4d7e12c94505c` |
| 25 | `def` | [ofContinuousOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/ofcontinuousopen--4e0a3a972ab6a125e8967089.md) | 154 | `declaration-track:4e0a3a972ab6a125e896708921e0c94c7b4ef09de8f8c5e07437c1ff088ae6c7` |
| 26 | `theorem` | [coe_ofContinuousOpen](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/coe-ofcontinuousopen--4a76f4d894246fb9ee80f883.md) | 159 | `result-track:4a76f4d894246fb9ee80f883dead47c37e71fc055ac5aa60f6e5f85ed6006e40` |
| 27 | `theorem` | [coe_ofContinuousOpen_symm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/coe-ofcontinuousopen-symm--8044c695696d57db06c369fe.md) | 165 | `result-track:8044c695696d57db06c369fe724fbb6f62462bb428060e382e878b874727a49d` |
| 28 | `def` | [homeomorphOfImageSubsetSource](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/homeomorphofimagesubsetsource--db8688e3f7446a44d47ed21a.md) | 173 | `declaration-track:db8688e3f7446a44d47ed21a56a1c0a08dddba423801d2262c6afa63cc4ea0e3` |
| 29 | `def` | [toHomeomorphSourceTarget](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/tohomeomorphsourcetarget--0edbf83cd688988553984f6e.md) | 179 | `declaration-track:0edbf83cd688988553984f6e47ad8b6d707ca20089be59004b45fcdf46ab06c6` |
| 30 | `theorem` | [secondCountableTopology_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/secondcountabletopology-source--6d238a4a28a744d6b9d7e006.md) | 182 | `result-track:6d238a4a28a744d6b9d7e0060692bfc885d77af20c909f282b2bf6aff32afef2` |
| 31 | `theorem` | [nhds_eq_comap_inf_principal](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/nhds-eq-comap-inf-principal--428725a9262b4c1e1d968a8b.md) | 186 | `result-track:428725a9262b4c1e1d968a8b8d53ac5091f6851382774fd7d3301bb2cd6ab6e9` |
| 32 | `def` | [toHomeomorphOfSourceEqUnivTargetEqUniv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/tohomeomorphofsourceequnivtargetequniv--45da179742a0445c58942339.md) | 197 | `declaration-track:45da179742a0445c58942339b5d7415e07504cd89026f5d259674c863436973b` |
| 33 | `theorem` | [isOpenEmbedding_restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopenembedding-restrict--8b865e0389bd6bff99326065.md) | 201 | `result-track:8b865e0389bd6bff993260655897157598c561bfea5e86fa6e1762d7b615b72a` |
| 34 | `theorem` | [isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/isopenembedding--8fc8dc37df8c54419c574d89.md) | 209 | `result-track:8fc8dc37df8c54419c574d899d1bb9577f54a103ad60e316d0ad54fac65d2728` |
| 35 | `def` | [toOpenPartialHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/toopenpartialhomeomorph--762d58c430642a0e0d43452f.md) | 228 | `declaration-track:762d58c430642a0e0d43452fd29a03c3bd30f8fd3b4ad96daa944fa22919543c` |
| 36 | `lemma` | [toOpenPartialHomeomorph_left_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/toopenpartialhomeomorph-left-inv--22bc2daf22e1894fb512f000.md) | 234 | `result-track:22bc2daf22e1894fb512f000400ada42df50fea45e4311d3fe5e87371bb8e52d` |
| 37 | `lemma` | [toOpenPartialHomeomorph_right_inv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/toopenpartialhomeomorph-right-inv--80359177e495ff1fcbd25a76.md) | 238 | `result-track:80359177e495ff1fcbd25a76189eec40065896d21a4f293c9e1610f8b5e6aa10` |
| 38 | `def` | [openPartialHomeomorphSubtypeCoe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/openpartialhomeomorphsubtypecoe--9a898aefb78a2d74b68d02ed.md) | 255 | `declaration-track:9a898aefb78a2d74b68d02ed6436802c97e4c07308f3031ed54a9e8ba5206c4e` |
| 39 | `theorem` | [openPartialHomeomorphSubtypeCoe_coe](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/openpartialhomeomorphsubtypecoe-coe--738ef85fd69f336cd2a7a848.md) | 259 | `result-track:738ef85fd69f336cd2a7a848efbf972823b7ab653e01c2107a4f4361c14ba910` |
| 40 | `theorem` | [openPartialHomeomorphSubtypeCoe_source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/openpartialhomeomorphsubtypecoe-source--8024c86580f9a8ad5e486edf.md) | 264 | `result-track:8024c86580f9a8ad5e486edf8d82e3197314052fe62cdb6a0de5c91baf02a961` |
| 41 | `theorem` | [openPartialHomeomorphSubtypeCoe_target](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant8b32428d0bbc9704afc5940a840cc17874d7c8f5385aae4b75ba6d82f5e643b0.lean/declarations/openpartialhomeomorphsubtypecoe-target--d0c5756f5bcddd2d2cab1ba0.md) | 269 | `result-track:d0c5756f5bcddd2d2cab1ba0d69f68b1442ad6788f8e6be3efbc469d496b119d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
