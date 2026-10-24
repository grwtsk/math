# Verification target: GRWTSK.Topology.GeneralTopology.Flow.Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0de0d25fe3960f304e036a277fdb1ddfd5e2a5b",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0de0d25fe3960f304e036a277fdb1ddfd5e2a5b`.

Source path: `GRWTSK/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean.json)

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
| 1 | `def` | [IsInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isinvariant--9317f2b01fb97e7e30c09d57.md) | 48 | `declaration-track:9317f2b01fb97e7e30c09d57c1ece289d5cb4d899e8ea3a079f87ddc61f01652` |
| 2 | `theorem` | [isInvariant_iff_image](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isinvariant-iff-image--a24c0879000f23f9231312fb.md) | 53 | `result-track:a24c0879000f23f9231312fb2e3d180873c1b3249a631dbccc558be62eb8704a` |
| 3 | `def` | [IsForwardInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isforwardinvariant--76a94ed495f85f2e0fb58a2d.md) | 57 | `declaration-track:76a94ed495f85f2e0fb58a2dd7ac89a7888ae7df6bc460021905a7e8da69e081` |
| 4 | `theorem` | [IsInvariant.isForwardInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isinvariant-isforwardinvariant--610101b4519019f606307fd8.md) | 60 | `result-track:610101b4519019f606307fd82c5f80c6c3ebbada37f95117fe08184c4156611c` |
| 5 | `theorem` | [IsForwardInvariant.isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isforwardinvariant-isinvariant--128934a579571269cdb364de.md) | 65 | `result-track:128934a579571269cdb364def3579fb0c2efac4399ef5f4bfa5a03c5f85f0656` |
| 6 | `theorem` | [isForwardInvariant_iff_isInvariant](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isforwardinvariant-iff-isinvariant--db74c91f8e7519ac971ca2ec.md) | 71 | `result-track:db74c91f8e7519ac971ca2ec789250885d1001e114f7023d374d0b2ebdc08dae` |
| 7 | `structure` | [Flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/flow--3d2a5ad733ef5bcbbb4ccae0.md) | 85 | `declaration-track:3d2a5ad733ef5bcbbb4ccae0e0575182cf9f268bf00ec9830e8dc54b02ac7e85` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/instance--04c320670b5edce2289c721c.md) | 100 | `declaration-track:04c320670b5edce2289c721cfacba09d894e0a055ab5ef16c9ad8152af34f742` |
| 9 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/id--f870f80242438f0fcc69f6b2.md) | 104 | `declaration-track:f870f80242438f0fcc69f6b2375d6900239a7f16e9d2bb58ade884a9a3bd2dae` |
| 10 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/id-apply--3f546c1e4eb8b672918dec0f.md) | 111 | `result-track:3f546c1e4eb8b672918dec0f736dce55355a07de0ad509675b888d7ae762d0f2` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/instance--68c7d281e71ddde9e45779bf.md) | 113 | `declaration-track:68c7d281e71ddde9e45779bf8bdc93f192a7a007837174506f3d0453c49b1824` |
| 12 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/ext--9cadc570d488cc7d08a66d95.md) | 117 | `result-track:9cadc570d488cc7d08a66d95a6151d663d4a0ff39156ea69b4a097152dc601c4` |
| 13 | `theorem` | [continuous](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/continuous--6d56bdf64a58bcae73cd373d.md) | 124 | `result-track:6d56bdf64a58bcae73cd373d6a90734e7ccb5cf0bd78ff2b1c83e8a391bbfb1a` |
| 14 | `theorem` | [continuous_toFun](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/continuous-tofun--710f87aada5d44bf765dedac.md) | 131 | `result-track:710f87aada5d44bf765dedaccb365209e5b525f611e1ee271a786810594c769e` |
| 15 | `theorem` | [map_add](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/map-add--c5d05acd4837ccf57e4985a9.md) | 134 | `result-track:c5d05acd4837ccf57e4985a946b42e06a01b1f9efaaabedd875b07752b6bf308` |
| 16 | `theorem` | [map_zero](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/map-zero--e876b373257d24f43186e028.md) | 137 | `result-track:e876b373257d24f43186e0285445fb119e4b4cbe773fe0c874651a943e561993` |
| 17 | `theorem` | [map_zero_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/map-zero-apply--a6342d5e9f006bf2aaf64761.md) | 139 | `result-track:a6342d5e9f006bf2aaf64761a43e4346efbc3b9145cab85258a6068de4fdc338` |
| 18 | `def` | [fromIter](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/fromiter--c7711381075c4dc49f29ee0a.md) | 143 | `declaration-track:c7711381075c4dc49f29ee0abc72ae8a005520bb79d31c795614418deefee341` |
| 19 | `theorem` | [fromIter_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/fromiter-apply--a2b9016c0ed561e8df0dfee5.md) | 150 | `result-track:a2b9016c0ed561e8df0dfee56fa5a7fe1976265de1717ee1355fb25a26b30508` |
| 20 | `def` | [_root_.Homeomorph.flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/root-homeomorph-flow--9e5a5e71d877d9f427136f03.md) | 154 | `declaration-track:9e5a5e71d877d9f427136f03b1213ca4a0be24954488ff443c8dad8911cfe03e` |
| 21 | `theorem` | [_root_.Homeomorph.flow_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/root-homeomorph-flow-apply--e440a3e38972423ea298755b.md) | 165 | `result-track:e440a3e38972423ea298755ba394b7776d46722cb9cb0f3874b0a1f7245157ad` |
| 22 | `theorem` | [_root_.Homeomorph.one_flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/root-homeomorph-one-flow--efd834fbf4995551bcea187c.md) | 170 | `result-track:efd834fbf4995551bcea187ce724b67b4c65ba6495283341243d951b756c5be2` |
| 23 | `theorem` | [_root_.Homeomorph.inv_flow](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/root-homeomorph-inv-flow--b7ce61f30538673ca1ccd134.md) | 174 | `result-track:b7ce61f30538673ca1ccd134b40f8979181d9bfd58e2c3b9261232af0fe4fb5a` |
| 24 | `def` | [restrict](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/restrict--89ce1202361b35f0769e3608.md) | 178 | `declaration-track:89ce1202361b35f0769e3608eab82a7d1d7e7ffd7913dd5da5bd216204927800` |
| 25 | `theorem` | [coe_restrict_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/coe-restrict-apply--268de6ad2307c53449f5b93e.md) | 185 | `result-track:268de6ad2307c53449f5b93eb91547344f48d88846d7a8036af569e83763606d` |
| 26 | `def` | [toAddAction](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/toaddaction--cc5e4c910767a3b2416d2f81.md) | 196 | `declaration-track:cc5e4c910767a3b2416d2f81ffa0ac653dc88509f004b208392d51a167bfccb9` |
| 27 | `def` | [restrictAddSubmonoid](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/restrictaddsubmonoid--3f3538d4398d5c2032304fca.md) | 202 | `declaration-track:3f3538d4398d5c2032304fcae674a19bc91b8c6346f48e482d340b627b7bd259` |
| 28 | `theorem` | [restrictAddSubmonoid_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/restrictaddsubmonoid-apply--97dbb252ba6a26125631d30c.md) | 208 | `result-track:97dbb252ba6a26125631d30c101b3707758929df04c6bc1d0be2eb39e9b40733` |
| 29 | `def` | [orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/orbit--3d60e57b66677cca0e4d1467.md) | 214 | `declaration-track:3d60e57b66677cca0e4d1467e5d9f96c5bf7389144c64464a1605d86c13c9ed9` |
| 30 | `theorem` | [orbit_eq_range](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/orbit-eq-range--f27140b6e6dadb4db05e01aa.md) | 216 | `result-track:f27140b6e6dadb4db05e01aa9d5c63f2d0f06259f1a14370b84f93d5bbccd7f6` |
| 31 | `theorem` | [mem_orbit_iff](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/mem-orbit-iff--247f169c1b1801787bf4ca8c.md) | 218 | `result-track:247f169c1b1801787bf4ca8c5bc3e7a1128d13d1dd84e932bbe53e40fe47a48d` |
| 32 | `theorem` | [mem_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/mem-orbit--88047f2f648605be35cd3430.md) | 220 | `result-track:88047f2f648605be35cd3430ec49782904566de6bd4247c195aff118ecd67578` |
| 33 | `theorem` | [mem_orbit_self](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/mem-orbit-self--283ce4f176b97cb73a273434.md) | 223 | `result-track:283ce4f176b97cb73a273434157a772dc225eec3473dbd011bb49de5b04d396f` |
| 34 | `theorem` | [nonempty_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/nonempty-orbit--783d62f9500b3f98ef478837.md) | 225 | `result-track:783d62f9500b3f98ef47883779e5a1005ed2aa3ea089ef02881986929d943df3` |
| 35 | `theorem` | [mem_orbit_of_mem_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/mem-orbit-of-mem-orbit--cb056d0a16ab06d7556e0a92.md) | 227 | `result-track:cb056d0a16ab06d7556e0a922494cbefa01174e213fc5826d052bbc67f6a9d93` |
| 36 | `theorem` | [isInvariant_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isinvariant-orbit--cdd85c54d6c2eae851c904b0.md) | 231 | `result-track:cdd85c54d6c2eae851c904b0014a91d4535a58a62cf816528c5c80590afb5a1d` |
| 37 | `theorem` | [orbit_restrict](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/orbit-restrict--125750ed4e9cb24bbe41ae46.md) | 234 | `result-track:125750ed4e9cb24bbe41ae46bab766ad3259a02b5dd3263878fd0a3f6e794d94` |
| 38 | `def` | [restrictNonneg](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/restrictnonneg--31e6dcd9c8fee0627b5842ad.md) | 241 | `declaration-track:31e6dcd9c8fee0627b5842adf5c5557982dd6d6b2f18c279bca973deb727c5a0` |
| 39 | `def` | [forwardOrbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/forwardorbit--88039134ad73230e4ccc1fdf.md) | 244 | `declaration-track:88039134ad73230e4ccc1fdfae2c7e8af3c43a99816fe1b1546d89d931eccebc` |
| 40 | `theorem` | [forwardOrbit_eq_range_nonneg](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/forwardorbit-eq-range-nonneg--c58d703a135e570060a491ab.md) | 246 | `result-track:c58d703a135e570060a491abacabb3d0a32fbe22990842e15ef53091270fcb82` |
| 41 | `theorem` | [isForwardInvariant_forwardOrbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isforwardinvariant-forwardorbit--e3e843146571f52cce35cd24.md) | 250 | `result-track:e3e843146571f52cce35cd240b79214dcc5377035037a8a74d620463fa6a173e` |
| 42 | `theorem` | [forwardOrbit_subset_orbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/forwardorbit-subset-orbit--aa3f354af8c096c96a579067.md) | 254 | `result-track:aa3f354af8c096c96a57906778b0d6b25a35fc917a7782b1827f1e4f521bdcbc` |
| 43 | `theorem` | [mem_orbit_of_mem_forwardOrbit](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/mem-orbit-of-mem-forwardorbit--f1c01367cf6a4db483e2a982.md) | 257 | `result-track:f1c01367cf6a4db483e2a982ae2ac712016078e5d797c9763666b8a30d6b14c1` |
| 44 | `structure` | [IsSemiconjugacy](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/issemiconjugacy--8f09351cdeb0cafbf2571187.md) | 267 | `declaration-track:8f09351cdeb0cafbf25711877ecdaf446fffb6718b26317b464529ee2f917f95` |
| 45 | `theorem` | [IsSemiconjugacy.comp](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/issemiconjugacy-comp--555c13db68c4de6734123795.md) | 273 | `result-track:555c13db68c4de673412379582890e1af27dd41934153e0df50e09d8c1728f39` |
| 46 | `theorem` | [isSemiconjugacy_id_iff_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/issemiconjugacy-id-iff-eq--b2d5137a53433be21f38e65e.md) | 278 | `result-track:b2d5137a53433be21f38e65e013c00b78f4e139af7ceb7f353f58402afeeac0c` |
| 47 | `def` | [IsFactorOf](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isfactorof--aac01ac8a3b165129718bb7a.md) | 282 | `declaration-track:aac01ac8a3b165129718bb7a49c119d59faca73c376012a9812bdcf59d530d74` |
| 48 | `theorem` | [IsSemiconjugacy.isFactorOf](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/issemiconjugacy-isfactorof--463b9e7558ec0031cc6a4ae8.md) | 284 | `result-track:463b9e7558ec0031cc6a4ae87dd81a3afb38935d2c11e87a7e304747af010c25` |
| 49 | `theorem` | [IsFactorOf.trans](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isfactorof-trans--65fb8d69ee433b0fac1abfcf.md) | 288 | `result-track:65fb8d69ee433b0fac1abfcfd938fd4d31d56be96be5e6e18f6a6abc7618e7d2` |
| 50 | `theorem` | [IsFactorOf.self](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isfactorof-self--a431b7d2311f63af8fc966d2.md) | 292 | `result-track:a431b7d2311f63af8fc966d23d97dc434eedd6b1600650921632fc8bcf95bb3d` |
| 51 | `def` | [toHomeomorph](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/tohomeomorph--832f3055d8942a53aa6a4d3d.md) | 301 | `declaration-track:832f3055d8942a53aa6a4d3d63a7df40435b69e3a425de9f4a3cd6d9392873b1` |
| 52 | `theorem` | [toHomeomorph_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/tohomeomorph-apply--b6bb152aba3c316ba9ebef3b.md) | 308 | `result-track:b6bb152aba3c316ba9ebef3b40c55df378defe7a882c7e248bb466712ca6143e` |
| 53 | `theorem` | [toHomeomorph_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/tohomeomorph-symm-apply--abd873f13997454f0936863b.md) | 311 | `result-track:abd873f13997454f0936863b4b3a42ccbc125f897cc0e38e63b664ae9c7ea68d` |
| 54 | `theorem` | [_root_.Homeomorph.toHomeomorph_flow_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/root-homeomorph-tohomeomorph-flow-eq--d1f32804d34bf2ecf82e7989.md) | 314 | `result-track:d1f32804d34bf2ecf82e798919df812645c93d8def6ad582fbd56d6d29c21dd5` |
| 55 | `theorem` | [isInvariant_iff_image_eq](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/isinvariant-iff-image-eq--21659bea6f948fd261f72e1a.md) | 318 | `result-track:21659bea6f948fd261f72e1aee1e1af8b4f41e07353385f93e1b375c5a507e89` |
| 56 | `theorem` | [image_eq_preimage_symm](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/image-eq-preimage-symm--9ddc823ada73d158e33a02e2.md) | 324 | `result-track:9ddc823ada73d158e33a02e284956e8c42d3a2a3f3e3bb0cf047bfb1005ea390` |
| 57 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/reverse--680464ac1261ae99e46f7f3a.md) | 335 | `declaration-track:680464ac1261ae99e46f7f3a2dec038aee683d14e50be785f266c03a003c6743` |
| 58 | `theorem` | [reverse_apply](../../../../../mathematics/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/declarations/reverse-apply--ea02c2276970d59256558384.md) | 342 | `result-track:ea02c2276970d59256558384530d3a96bc61320b92f9950f1b77adb10d38945f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
