# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3993c8dae956b9a125f3a0e350bd97dba3fe97cf",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3993c8dae956b9a125f3a0e350bd97dba3fe97cf`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean.json)

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
| 1 | `def` | [continuousLinearMapCoordChange](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouslinearmapcoordchange--9f63ecd7533f762b6e092b09.md) | 69 | `declaration-track:9f63ecd7533f762b6e092b09c7cc7c7c7dcc7779dde3df59f735137f5e46cf73` |
| 2 | `theorem` | [continuousOn_continuousLinearMapCoordChange](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouson-continuouslinearmapcoordchange--fde1be21d7ae9d7230094795.md) | 79 | `result-track:fde1be21d7ae9d72300947952b0ae91205ef94372db925964211015ee700682c` |
| 3 | `def` | [continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouslinearmap--e57bc728b06f1a714aa0fed8.md) | 104 | `declaration-track:e57bc728b06f1a714aa0fed83f38a57d1728cf07b0c756f7681916e90d703195` |
| 4 | `instance` | [continuousLinearMap.isLinear](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouslinearmap-islinear--cfe587ac8bcabf9689f82969.md) | 133 | `declaration-track:cfe587ac8bcabf9689f82969a1d0d9e8b3818d964e45b8685285c99229c51716` |
| 5 | `theorem` | [continuousLinearMap_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouslinearmap-apply--55965a77ceef52445a3a3514.md) | 139 | `result-track:55965a77ceef52445a3a3514430ce972f80253e9e6b1a80eb6d3f325284ca948` |
| 6 | `theorem` | [continuousLinearMap_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouslinearmap-symm-apply--096eec2a66b6d189ca7f1389.md) | 144 | `result-track:096eec2a66b6d189ca7f13893a89a815679134632a3d05bc4fe1b4d3767f8fd2` |
| 7 | `theorem` | [continuousLinearMap_symm_apply'](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouslinearmap-symm-apply--d147a86b2d40c4c978be1669.md) | 149 | `result-track:d147a86b2d40c4c978be16691e00c35620e591341f0227e1c42147273fed36b2` |
| 8 | `theorem` | [continuousLinearMapCoordChange_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouslinearmapcoordchange-apply--aec4aaef739547eb982cc27e.md) | 157 | `result-track:aec4aaef739547eb982cc27e40fc1197d356bce6e5a1f814f547d84698f80c7a` |
| 9 | `def` | [Bundle.ContinuousLinearMap.vectorPrebundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-continuouslinearmap-vectorprebundle--3c9ac2d195fc864c59006b60.md) | 185 | `declaration-track:3c9ac2d195fc864c59006b60538a26c3b797c941c9de9cc435acb6c5d291c402` |
| 10 | `instance` | [Bundle.ContinuousLinearMap.topologicalSpaceTotalSpace](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-continuouslinearmap-topologicalspacetotalspace--7bbafb7307162eeceeeff255.md) | 224 | `declaration-track:7bbafb7307162eeceeeff2552cee03f35829a7280da807a0c0ba13e90f13cab2` |
| 11 | `instance` | [Bundle.ContinuousLinearMap.fiberBundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-continuouslinearmap-fiberbundle--5484209613f3965ab3703db4.md) | 229 | `declaration-track:5484209613f3965ab3703db4541ee3317b61ee2f37b6464b20fff05962843e43` |
| 12 | `instance` | [Bundle.ContinuousLinearMap.vectorBundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-continuouslinearmap-vectorbundle--77964af39f0979159c1f4a64.md) | 234 | `declaration-track:77964af39f0979159c1f4a64c6a4af514fa533dcb159cf58ca174702ea4e8ecd` |
| 13 | `def` | [Bundle.Trivialization.continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-trivialization-continuouslinearmap--7e4f2747c93edf220ec8ff54.md) | 243 | `declaration-track:7e4f2747c93edf220ec8ff54fde504e3e2b488ca0bb1a4ac33f2b860dd69fb7f` |
| 14 | `instance` | [Bundle.ContinuousLinearMap.memTrivializationAtlas](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-continuouslinearmap-memtrivializationatlas--c171ad0d56193a7e4614fcb4.md) | 247 | `declaration-track:c171ad0d56193a7e4614fcb47001a5faff3e14a9748d3ab99a694502058404fa` |
| 15 | `theorem` | [Bundle.Trivialization.baseSet_continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-trivialization-baseset-continuouslinearmap--52474951073eba376abdaa82.md) | 256 | `result-track:52474951073eba376abdaa82d18870f783b3d7eeef4afad53ab8f689247569be` |
| 16 | `theorem` | [Bundle.Trivialization.continuousLinearMap_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/bundle-trivialization-continuouslinearmap-apply--8d6ca15bdf9602ef15bb4f05.md) | 260 | `result-track:8d6ca15bdf9602ef15bb4f05ead1a385efe70d6744e87031fd34cdb5c6197603` |
| 17 | `theorem` | [hom_trivializationAt](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/hom-trivializationat--2fae97338e5c91e1bc32d40b.md) | 267 | `result-track:2fae97338e5c91e1bc32d40b80c5bdf19d17fb7b45da56a8fdf1a4b74499c3e8` |
| 18 | `theorem` | [hom_trivializationAt_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/hom-trivializationat-apply--42914c438a02205220d8dcc6.md) | 271 | `result-track:42914c438a02205220d8dcc6755d22718d4725107de71759d4e91ffded1c0fa7` |
| 19 | `theorem` | [hom_trivializationAt_source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/hom-trivializationat-source--3d943de60a7326b7e88efbf2.md) | 278 | `result-track:3d943de60a7326b7e88efbf24c85e6cd474c9bb1e3864800ec0f534fc658b4a3` |
| 20 | `theorem` | [hom_trivializationAt_target](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/hom-trivializationat-target--b35d566d2d1ed1c6941d5d15.md) | 285 | `result-track:b35d566d2d1ed1c6941d5d15349de8c38f77c7349dcd48f6107764315a27f602` |
| 21 | `theorem` | [hom_trivializationAt_baseSet](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/hom-trivializationat-baseset--13a77d4776ed0d120c56c872.md) | 291 | `result-track:13a77d4776ed0d120c56c872fc8faf09985ddaa58d44a914040c2481b9997ca2` |
| 22 | `theorem` | [continuousWithinAt_hom_bundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouswithinat-hom-bundle--8bb4875c831d2d043a4cb42c.md) | 296 | `result-track:8bb4875c831d2d043a4cb42cb8909eee7f4c2b57a5caa4a0595bbbfbbe465b68` |
| 23 | `theorem` | [continuousAt_hom_bundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuousat-hom-bundle--ec793f2f0931ac059cc18756.md) | 304 | `result-track:ec793f2f0931ac059cc18756be21eaf92715b72dee3bef3fb608c29fb0bcb028` |
| 24 | `lemma` | [ContinuousWithinAt.clm_apply_of_inCoordinates](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouswithinat-clm-apply-of-incoordinates--5a53a3b9256e2f9a65bbfa46.md) | 346 | `result-track:5a53a3b9256e2f9a65bbfa468c1034f220a0ee3d92300f2b0fd19e9e46090062` |
| 25 | `lemma` | [ContinuousAt.clm_apply_of_inCoordinates](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuousat-clm-apply-of-incoordinates--68f9f102af89cbfc87bc4675.md) | 383 | `result-track:68f9f102af89cbfc87bc46759fcad002a951a7a04e5e27fc21f18b145ce49f01` |
| 26 | `lemma` | [ContinuousWithinAt.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouswithinat-clm-bundle-apply--91edb9cdbf2fafa0c260e3fe.md) | 425 | `result-track:91edb9cdbf2fafa0c260e3fe9e03e639ff16e2bf28820e9cdb4a00f7d378ced0` |
| 27 | `lemma` | [ContinuousAt.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuousat-clm-bundle-apply--058cb448156bf0debf794ab4.md) | 438 | `result-track:058cb448156bf0debf794ab4a17ece3dd8fc37c699b333ea271a8f356a759e2c` |
| 28 | `lemma` | [ContinuousOn.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouson-clm-bundle-apply--9f1feedf56b091dd05a0bcd0.md) | 449 | `result-track:9f1feedf56b091dd05a0bcd0794c748fb9d3a5188614e2f02da5e2301df55df8` |
| 29 | `lemma` | [Continuous.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuous-clm-bundle-apply--fbe2a1e992ca0ccc17832adc.md) | 459 | `result-track:fbe2a1e992ca0ccc17832adc6a1760a9a701aac4b7890d8588bb1f9d5cec3193` |
| 30 | `lemma` | [ContinuousWithinAt.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouswithinat-clm-bundle-apply--3a31e0c49b606f5fbd63fbc5.md) | 477 | `result-track:3a31e0c49b606f5fbd63fbc556e9a2d2fe9e6ca8cf31381ca90d5b4435a3eedc` |
| 31 | `lemma` | [ContinuousAt.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuousat-clm-bundle-apply--819512a517546cf5eae5547e.md) | 488 | `result-track:819512a517546cf5eae5547ef5d07d0634f0bcf5910d6323e783725c2db2651d` |
| 32 | `lemma` | [ContinuousOn.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuouson-clm-bundle-apply--1886aeb7d68ef27287f0c410.md) | 499 | `result-track:1886aeb7d68ef27287f0c410f7b56c8b6c1ebb8bce860d982f4714acf990fd93` |
| 33 | `lemma` | [Continuous.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/continuous-clm-bundle-apply--4a4d1878f27fa5198f16968d.md) | 511 | `result-track:4a4d1878f27fa5198f16968d9780f41906dc425868d2743df02bd14804e76bbb` |
| 34 | `theorem` | [inCoordinates_apply_eq₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/declarations/incoordinates-apply-eq--4b90eb27d6fe62f9d93d5635.md) | 522 | `result-track:4b90eb27d6fe62f9d93d5635bd4a35e4c5ce7efac70acb9e4d75b6993e4647ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
