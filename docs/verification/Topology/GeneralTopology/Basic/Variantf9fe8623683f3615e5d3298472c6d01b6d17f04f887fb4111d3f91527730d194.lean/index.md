# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "916f908a70db9327f1f6f7428f680c492bfad09b",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `916f908a70db9327f1f6f7428f680c492bfad09b`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean.json)

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
| 1 | `def` | [IsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator--23e2cbe8a2175acf90005bae.md) | 79 | `declaration-track:23e2cbe8a2175acf90005baed4a1c3e754102456982fa5c0a2d83ac67abd4412` |
| 2 | `theorem` | [isCompactOperator_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-zero--b1dbb53650187db5a918298b.md) | 83 | `result-track:b1dbb53650187db5a918298b8930fb1665e67d283fb50c899b38b950fbde8163` |
| 3 | `theorem` | [isCompactOperator_id_iff_locallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-id-iff-locallycompactspace--343005282f470aeeadfa57ad.md) | 87 | `result-track:343005282f470aeeadfa57ad9f6c291dfd1fe6cfd592d60d9a4b9f2a5d20dd84` |
| 4 | `lemma` | [isCompactOperator_id](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-id--188844830f803f39033ace96.md) | 99 | `result-track:188844830f803f39033ace969d1dd8a14ddc06f2eed09663f09efd59eee7598d` |
| 5 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_image_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iff-exists-mem-nhds-image-subset-compact--c1c845895cfeaac63176471c.md) | 110 | `result-track:c1c845895cfeaac63176471caab76c8c70f8fab9ddc039bf40450c6752a8f582` |
| 6 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iff-exists-mem-nhds-iscompact-closure-image--101aee25e39b07ef959908ca.md) | 115 | `result-track:101aee25e39b07ef959908caa94f148aec755dad69b9e4f2af12782d68719226` |
| 7 | `theorem` | [IsCompactOperator.image_subset_compact_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-image-subset-compact-of-isvonnbounded--16841cf7353b9c4b0295352c.md) | 130 | `result-track:16841cf7353b9c4b0295352c98b2833f428d9f701b2ff084eb170b48b8b8f61e` |
| 8 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iscompact-closure-image-of-isvonnbounded--d090ba79fe19ccfe5a6adb88.md) | 140 | `result-track:d090ba79fe19ccfe5a6adb8877a8b12ea57ce66f849e443b740426e6a9710324` |
| 9 | `theorem` | [IsCompactOperator.image_subset_compact_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-image-subset-compact-of-bounded--1458fcd68cc196d5b709e8d4.md) | 154 | `result-track:1458fcd68cc196d5b709e8d4eb3400077b1db56cdc811684e9cc0300a03cb6ee` |
| 10 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iscompact-closure-image-of-bounded--0fc30356edbf0a9fbc90be17.md) | 159 | `result-track:0fc30356edbf0a9fbc90be178c4c13218a86ae1291af005deea48d00b0e275b4` |
| 11 | `theorem` | [IsCompactOperator.image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-image-ball-subset-compact--a5601f4565609e1225cd173e.md) | 164 | `result-track:a5601f4565609e1225cd173ec7633add3c8191804f2962e847c5817dab18e2ec` |
| 12 | `theorem` | [IsCompactOperator.image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-image-closedball-subset-compact--763c2e4d110bc34617d130c4.md) | 168 | `result-track:763c2e4d110bc34617d130c4853b99f7edb9d1670395f344a954f0965ac46a81` |
| 13 | `theorem` | [IsCompactOperator.isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iscompact-closure-image-ball--54a99c81e2a44dab883d3521.md) | 173 | `result-track:54a99c81e2a44dab883d3521ad1cf3d8af37e96188b88fd96722ea1e905d8be8` |
| 14 | `theorem` | [IsCompactOperator.isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iscompact-closure-image-closedball--4d8b405a31713fb740650eb8.md) | 178 | `result-track:4d8b405a31713fb740650eb809e6adeed91346fde7c03586ca399c1822d173ff` |
| 15 | `theorem` | [isCompactOperator_iff_image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iff-image-ball-subset-compact--4976437295547a42164dd1a5.md) | 183 | `result-track:4976437295547a42164dd1a56ed612e03833e59ea5a92069dec16207172804d3` |
| 16 | `theorem` | [isCompactOperator_iff_image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iff-image-closedball-subset-compact--ab4c9a646b3e4561fdc17490.md) | 190 | `result-track:ab4c9a646b3e4561fdc1749008b7379205cc7c079257fc95cf045c3458a8eebd` |
| 17 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iff-iscompact-closure-image-ball--47153c8d643bc094cbedb3a0.md) | 197 | `result-track:47153c8d643bc094cbedb3a0c707f3173871e2bb241710adf5dc45638c798479` |
| 18 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-iff-iscompact-closure-image-closedball--2a0966e7626d0b1bbaa1512c.md) | 204 | `result-track:2a0966e7626d0b1bbaa1512c8b9981f8c541d35f6343f793d0d0b96cd3c45466` |
| 19 | `theorem` | [IsCompactOperator.smul](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-smul--1ece45d72167defeb646cf39.md) | 222 | `result-track:1ece45d72167defeb646cf39675778133dac3c57f395b762406cf5ecf7d04a8a` |
| 20 | `theorem` | [IsCompactOperator.smul_unit_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-smul-unit-iff--4425cf2e7e38f989c0038a88.md) | 229 | `result-track:4425cf2e7e38f989c0038a88fb682447639ef5444f45c5fc7e4bf80b851f5d1b` |
| 21 | `theorem` | [IsCompactOperator.smul_isUnit_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-smul-isunit-iff--7164c8dc41c402efbdedc047.md) | 234 | `result-track:7164c8dc41c402efbdedc0470bab83dd73fe648aa300446e22956560cd627c1c` |
| 22 | `theorem` | [IsCompactOperator.smul_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-smul-iff--fd05414e638a30ee9e8d8e23.md) | 240 | `result-track:fd05414e638a30ee9e8d8e237f4bcf2323c8ddc33cc7fa7380086044b01d3fe7` |
| 23 | `theorem` | [IsCompactOperator.smul_iff₀](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-smul-iff--1efa6de9e008e45ca901acaf.md) | 245 | `result-track:1efa6de9e008e45ca901acaf63465b4776cd222bfe1881cb116d3321cd9e6bdd` |
| 24 | `theorem` | [IsCompactOperator.add](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-add--80934b96c48b899aede08024.md) | 250 | `result-track:80934b96c48b899aede08024ee2f74c6dc3a1315c12aef4a305e480fe498b8a6` |
| 25 | `theorem` | [IsCompactOperator.neg](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-neg--afceecb408a6868b8cf9f291.md) | 257 | `result-track:afceecb408a6868b8cf9f291e5beab1695751b446f3501a4308c479829b10e6d` |
| 26 | `theorem` | [IsCompactOperator.sub](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-sub--39c3b38c3519685961e8830c.md) | 262 | `result-track:39c3b38c3519685961e8830c2a3d62e440d3a04b6861964e8811def4c55bd00c` |
| 27 | `def` | [compactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/compactoperator--682204b289238f2bf7c7e8e8.md) | 269 | `declaration-track:682204b289238f2bf7c7e8e845f201168d937c8a8ffa823c796860568c07c297` |
| 28 | `theorem` | [IsCompactOperator.comp_clm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-comp-clm--cf3bcf62d923b17fc15225d6.md) | 284 | `result-track:cf3bcf62d923b17fc15225d6095a42d97c9d13b686348eedc92cb901fb40cc0e` |
| 29 | `theorem` | [IsCompactOperator.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-continuous-comp--395fde1ba46dafac806d9544.md) | 291 | `result-track:395fde1ba46dafac806d95442b21671262204ffa098f4baf6cb22d6e49e84bf7` |
| 30 | `theorem` | [IsCompactOperator.clm_comp](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-clm-comp--5165101763cd7cad6049d28b.md) | 298 | `result-track:5165101763cd7cad6049d28b9fca7c6afde941bb7f4463833b3a42488a02a2f1` |
| 31 | `theorem` | [isCompactOperator_of_locallyCompactSpace_dom](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-of-locallycompactspace-dom--ceec9598835d1cd782f7d342.md) | 304 | `result-track:ceec9598835d1cd782f7d3424f6882de3d3481bda678b72231b89de5512a79a2` |
| 32 | `theorem` | [isCompactOperator_of_locallyCompactSpace_rng](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-of-locallycompactspace-rng--9e941ece87867483c1e0d191.md) | 309 | `result-track:9e941ece87867483c1e0d191893a335e31ecce872e244c30c578dea3f3df17d7` |
| 33 | `theorem` | [IsCompactOperator.codRestrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-codrestrict--b4e13fa2908a465f115370dd.md) | 321 | `result-track:b4e13fa2908a465f115370dd4f71a11bf7d6b199b0c23b2cdf83d6e1bc9a51ab` |
| 34 | `theorem` | [IsCompactOperator.restrict](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-restrict--61f99f0a412f66f69d23ba4b.md) | 344 | `result-track:61f99f0a412f66f69d23ba4b384b9a4a069b17c52ee154fcb24b601eb77088bc` |
| 35 | `theorem` | [IsCompactOperator.restrict'](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-restrict--13c1f5a909fa061594101163.md) | 357 | `result-track:13c1f5a909fa061594101163c9a94a279ab14812afdf6e70535b4246ca2700dc` |
| 36 | `theorem` | [IsCompactOperator.continuous](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-continuous--3d4214837a7ae255aa114339.md) | 372 | `result-track:3d4214837a7ae255aa114339876f5f56728112d21dff1fcb2c8536d130e73ede` |
| 37 | `def` | [ContinuousLinearMap.mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/continuouslinearmap-mkofiscompactoperator--065d435436f3d74aa02861a2.md) | 402 | `declaration-track:065d435436f3d74aa02861a23db351044f3647c03d0b831946235eaebb7f1ffa` |
| 38 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/continuouslinearmap-mkofiscompactoperator-to-linearmap--80acad80d54cb97fdb96c586.md) | 407 | `result-track:80acad80d54cb97fdb96c586a97df1259720b780eee0900d577c426a869692e7` |
| 39 | `theorem` | [ContinuousLinearMap.coe_mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/continuouslinearmap-coe-mkofiscompactoperator--df8dab5e685c0c319b301477.md) | 413 | `result-track:df8dab5e685c0c319b301477d1710db4ed920bd11fee0fa1885f798609bf883d` |
| 40 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/continuouslinearmap-mkofiscompactoperator-mem-compactoperator--fc74785faa5820b5046cba90.md) | 417 | `result-track:fc74785faa5820b5046cba9066568434a6cf7ab8aced78ed555768e46f290a4c` |
| 41 | `theorem` | [isClosed_setOfPred_isCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/isclosed-setofpred-iscompactoperator--5076b03a1a5b47f7bde990c7.md) | 426 | `result-track:5076b03a1a5b47f7bde990c7455ad793fdbdf5a12b1594e9fea4d4276d741416` |
| 42 | `theorem` | [compactOperator_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/compactoperator-topologicalclosure--d8c6846a7c5050364bb2c8b8.md) | 465 | `result-track:d8c6846a7c5050364bb2c8b8738976c92d6055669b2dd2acdecd7ae6aa14a80e` |
| 43 | `theorem` | [isCompactOperator_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf9fe8623683f3615e5d3298472c6d01b6d17f04f887fb4111d3f91527730d194.lean/declarations/iscompactoperator-of-tendsto--7437f95e3a1d2a62b3dc4550.md) | 472 | `result-track:7437f95e3a1d2a62b3dc45509b6fafeb26e8f3d3bcc18eefa4af2024554f20be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
