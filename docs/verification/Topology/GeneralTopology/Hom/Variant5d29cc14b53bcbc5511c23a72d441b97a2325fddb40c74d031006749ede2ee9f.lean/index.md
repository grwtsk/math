# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3bcd60575268952101c9876171e5116af0dc10e3",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3bcd60575268952101c9876171e5116af0dc10e3`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean.json)

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
| 1 | `def` | [continuousLinearMapCoordChange](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouslinearmapcoordchange--81c6c186ef37cbde78f55311.md) | 61 | `declaration-track:81c6c186ef37cbde78f55311ed34075b081945f5d33535bac9faef1c76010f8f` |
| 2 | `theorem` | [continuousOn_continuousLinearMapCoordChange](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouson-continuouslinearmapcoordchange--a6a107f3ec8cf97b6c6370ca.md) | 71 | `result-track:a6a107f3ec8cf97b6c6370cae395d75a7afe2588483ed5d9895488e363356f6e` |
| 3 | `def` | [continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouslinearmap--5e4932a27366db1b511470f2.md) | 96 | `declaration-track:5e4932a27366db1b511470f2b8ee4437c6318c7d68b21b40386355dfe957b0d3` |
| 4 | `instance` | [continuousLinearMap.isLinear](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouslinearmap-islinear--6f257a26cef5a8b8f1f9221c.md) | 125 | `declaration-track:6f257a26cef5a8b8f1f9221cbb4e150bb2b394386fa2f5716e33942fbf52c9eb` |
| 5 | `theorem` | [continuousLinearMap_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouslinearmap-apply--e972ff61719237ac40fae7da.md) | 131 | `result-track:e972ff61719237ac40fae7daefcd03417228ee53e90a2ede4667b53effcd4f9a` |
| 6 | `theorem` | [continuousLinearMap_symm_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouslinearmap-symm-apply--221e07a5a4bb0d9dd70eed1c.md) | 136 | `result-track:221e07a5a4bb0d9dd70eed1c41b8ff2f26c6d04534ae7064a09b7957b4dcbb44` |
| 7 | `theorem` | [continuousLinearMap_symm_apply'](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouslinearmap-symm-apply--d8b7b6cd1f373a1782fdc7d7.md) | 141 | `result-track:d8b7b6cd1f373a1782fdc7d73ff11b89cfee084f5d34f07021d87a77cb90ead7` |
| 8 | `theorem` | [continuousLinearMapCoordChange_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouslinearmapcoordchange-apply--990a3fd19742a079723f52c6.md) | 149 | `result-track:990a3fd19742a079723f52c6f49f5da87e06e2ce2cbd877621e3e9369328513c` |
| 9 | `def` | [Bundle.ContinuousLinearMap.vectorPrebundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-continuouslinearmap-vectorprebundle--6d9367a7d3e2f013a4c23e32.md) | 177 | `declaration-track:6d9367a7d3e2f013a4c23e32ec349ef692bc340a055a80ed41410327147b52f3` |
| 10 | `instance` | [Bundle.ContinuousLinearMap.topologicalSpaceTotalSpace](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-continuouslinearmap-topologicalspacetotalspace--4712847a400abaff87c22945.md) | 216 | `declaration-track:4712847a400abaff87c22945e0419b679cda1680a335044ba0c8a919bd78fcca` |
| 11 | `instance` | [Bundle.ContinuousLinearMap.fiberBundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-continuouslinearmap-fiberbundle--4f70a16fe477b2e13bd9fb20.md) | 221 | `declaration-track:4f70a16fe477b2e13bd9fb2085fc69f779c9d73e19d7ff8e2db6c891a7514adc` |
| 12 | `instance` | [Bundle.ContinuousLinearMap.vectorBundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-continuouslinearmap-vectorbundle--625d1a9019e7b2627cbd0a1b.md) | 226 | `declaration-track:625d1a9019e7b2627cbd0a1b8880c2160a2da8884db60d43cc7490a6492f3380` |
| 13 | `def` | [Bundle.Trivialization.continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-trivialization-continuouslinearmap--d36f4d01a592c123b7fcc940.md) | 235 | `declaration-track:d36f4d01a592c123b7fcc940defe7a605dd06911f0f10857d9f021ebed8b529b` |
| 14 | `instance` | [Bundle.ContinuousLinearMap.memTrivializationAtlas](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-continuouslinearmap-memtrivializationatlas--b96e6126864069d4f58ff142.md) | 239 | `declaration-track:b96e6126864069d4f58ff1427b286b5048675e951e1ac921d34f251339db5d17` |
| 15 | `theorem` | [Bundle.Trivialization.baseSet_continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-trivialization-baseset-continuouslinearmap--e2dcd62e44762be07d9c0528.md) | 248 | `result-track:e2dcd62e44762be07d9c0528e7f48d9a845fc1fd197e345bc5646058d6a53ea6` |
| 16 | `theorem` | [Bundle.Trivialization.continuousLinearMap_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/bundle-trivialization-continuouslinearmap-apply--283c33d822a627d6d8d4dd99.md) | 252 | `result-track:283c33d822a627d6d8d4dd999fe907c53a752d09f772d07e5a48d24eac136136` |
| 17 | `theorem` | [hom_trivializationAt](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/hom-trivializationat--dfeec81266f6f4d4575e0bca.md) | 259 | `result-track:dfeec81266f6f4d4575e0bca7880b6fff0a80a34542e9f92b9faab4bdd5dcbdb` |
| 18 | `theorem` | [hom_trivializationAt_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/hom-trivializationat-apply--2d5367d4a2bf9a65f6a0c0d5.md) | 263 | `result-track:2d5367d4a2bf9a65f6a0c0d5331f0c8bfd93a8ebfcf24d5934d25c3c3403cc6f` |
| 19 | `theorem` | [hom_trivializationAt_source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/hom-trivializationat-source--d433e86fd7f2609ba64ca0db.md) | 270 | `result-track:d433e86fd7f2609ba64ca0dbec1befb49a45b61c75eea37403505a3274e38f53` |
| 20 | `theorem` | [hom_trivializationAt_target](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/hom-trivializationat-target--cd9d8052927e61e2b20ab8f3.md) | 277 | `result-track:cd9d8052927e61e2b20ab8f3153a1fde3098c8fd6cd901b7e4c8c1444c759fc7` |
| 21 | `theorem` | [hom_trivializationAt_baseSet](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/hom-trivializationat-baseset--cf1ec64106bebef0a2afc870.md) | 283 | `result-track:cf1ec64106bebef0a2afc870d1221f6eba65ae50773e64bc3ae652c7cceb95fc` |
| 22 | `theorem` | [continuousWithinAt_hom_bundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouswithinat-hom-bundle--eb33f9b1ab7a151b3a4ecf3d.md) | 288 | `result-track:eb33f9b1ab7a151b3a4ecf3d6a01bb455dfc4a9ea771192df350bb462d10066f` |
| 23 | `theorem` | [continuousAt_hom_bundle](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuousat-hom-bundle--d5c07c57be2607dbabf3accc.md) | 296 | `result-track:d5c07c57be2607dbabf3accc1711d3e349b8cf494d4006e0bb7f7a597775d703` |
| 24 | `lemma` | [ContinuousWithinAt.clm_apply_of_inCoordinates](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouswithinat-clm-apply-of-incoordinates--454d6220a06ddf89496fe293.md) | 338 | `result-track:454d6220a06ddf89496fe293c3c041bd3be6a0461d2c464c0aac44667627d613` |
| 25 | `lemma` | [ContinuousAt.clm_apply_of_inCoordinates](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuousat-clm-apply-of-incoordinates--28ad5f029386b7e9d23b4e4b.md) | 375 | `result-track:28ad5f029386b7e9d23b4e4b9d3f65d4bc8d318879b2da7be5b762ed6a15ff33` |
| 26 | `lemma` | [ContinuousWithinAt.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouswithinat-clm-bundle-apply--8c108cfc2569dbce5fd2f166.md) | 417 | `result-track:8c108cfc2569dbce5fd2f166a87a9f765e731ceb983b06f6b2d77b47d84cbaae` |
| 27 | `lemma` | [ContinuousAt.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuousat-clm-bundle-apply--8269b05d10490e68c33be2b7.md) | 430 | `result-track:8269b05d10490e68c33be2b7294874f8d140a266086e92a09918ad4957b64d7b` |
| 28 | `lemma` | [ContinuousOn.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouson-clm-bundle-apply--3f0a2693b46c15d332520165.md) | 441 | `result-track:3f0a2693b46c15d33252016599de2d9128cdcbcb6bccfe9a138f39691899dceb` |
| 29 | `lemma` | [Continuous.clm_bundle_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuous-clm-bundle-apply--fa753b83925fd9690eaba549.md) | 451 | `result-track:fa753b83925fd9690eaba549de4bcfaa97a2111327bbade388089b9548b5a9ed` |
| 30 | `lemma` | [ContinuousWithinAt.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouswithinat-clm-bundle-apply--7a5fb23799e759918d18262b.md) | 469 | `result-track:7a5fb23799e759918d18262bc066637ca8fa98281e0384bdf7475502429e67c4` |
| 31 | `lemma` | [ContinuousAt.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuousat-clm-bundle-apply--ad41b68c16e0e2a19959173b.md) | 480 | `result-track:ad41b68c16e0e2a19959173bcbc05cef43a728ef2fda37b3120a953fcd094c76` |
| 32 | `lemma` | [ContinuousOn.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuouson-clm-bundle-apply--be54ee13d3032a7ddb0c6092.md) | 491 | `result-track:be54ee13d3032a7ddb0c609241839cde497e6a3d9a74c64bf1861ac45d8b74de` |
| 33 | `lemma` | [Continuous.clm_bundle_apply₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/continuous-clm-bundle-apply--d0ca40689a4e84bc4e805a8b.md) | 503 | `result-track:d0ca40689a4e84bc4e805a8b0802869432836fa9d755bc4f1311f306d6fb3b1a` |
| 34 | `theorem` | [inCoordinates_apply_eq₂](../../../../../mathematics/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/declarations/incoordinates-apply-eq--897ba22f41ac2f8a8ee8e070.md) | 514 | `result-track:897ba22f41ac2f8a8ee8e070f0f6279ca77909b88bcd4bd1bc39a6dd893aea9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
