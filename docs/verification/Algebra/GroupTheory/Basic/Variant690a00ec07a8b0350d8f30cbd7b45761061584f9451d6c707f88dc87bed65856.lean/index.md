# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00eee1062e6dedca68fa00a1a740953746bc13c8",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00eee1062e6dedca68fa00a1a740953746bc13c8`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Coset.Defs` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-leftcoset--733eccfa7c39aa392b460d8b.md) | 60 | `result-track:733eccfa7c39aa392b460d8bb7106088cf5b0680a4328b3c21c0166d9ab3a783` |
| 2 | `theorem` | [mem_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-rightcoset--60853713365cf73fa3958a3b.md) | 64 | `result-track:60853713365cf73fa3958a3b9d6be1f982b01ffa314ff42636bc0496dc8dc56f` |
| 3 | `def` | [LeftCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftcosetequivalence--aec00c4c3d6129970f544517.md) | 69 | `declaration-track:aec00c4c3d6129970f544517f771fb66dbd27cd578aad5d88650a3eef9379383` |
| 4 | `theorem` | [leftCosetEquivalence_rel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftcosetequivalence-rel--2f05d7d1937e724d905efe1d.md) | 73 | `result-track:2f05d7d1937e724d905efe1d644f97bc748d3ae045a5ba78463e7109d4efb0f7` |
| 5 | `def` | [RightCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightcosetequivalence--2795aa7ea98927cdba0d1ec8.md) | 78 | `declaration-track:2795aa7ea98927cdba0d1ec8bf5ca525b658becc4a355395a556ebfe930df301` |
| 6 | `theorem` | [rightCosetEquivalence_rel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightcosetequivalence-rel--817479d7a036e0030723212c.md) | 82 | `result-track:817479d7a036e0030723212c2e0ef5855365bb79e859854c42542b5528558699` |
| 7 | `theorem` | [leftCoset_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftcoset-assoc--406332296d1a247a5735606e.md) | 92 | `result-track:406332296d1a247a5735606e499c98c0aa12892e57295152d9c030a8cc3acab9` |
| 8 | `theorem` | [rightCoset_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightcoset-assoc--9d3540138209faaec791daf1.md) | 96 | `result-track:9d3540138209faaec791daf1e2068360f75e63992cdb295b5e1c17e2da3cdae0` |
| 9 | `theorem` | [leftCoset_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftcoset-rightcoset--cc641b6c0c898de251fbe9e9.md) | 100 | `result-track:cc641b6c0c898de251fbe9e9db8b93a13167c3b2a2fbdc5d65b46f00f889ddc9` |
| 10 | `theorem` | [one_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/one-leftcoset--66abfb7b58adea5b902d7b73.md) | 110 | `result-track:66abfb7b58adea5b902d7b73e69b13e311115c68a002b28733df99493ec44a17` |
| 11 | `theorem` | [rightCoset_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightcoset-one--82709270e87ec09386d4fe0f.md) | 114 | `result-track:82709270e87ec09386d4fe0ffb34f9b121dd925dc9e1c037cef9c76ae529c47d` |
| 12 | `theorem` | [mem_own_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-own-leftcoset--42f49aaf0088ebe73b9b9ed5.md) | 126 | `result-track:42f49aaf0088ebe73b9b9ed5701d3f2710ba1edb7435259a02c15d96cca2fb34` |
| 13 | `theorem` | [mem_own_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-own-rightcoset--0a64eaf531e9cb51f772219d.md) | 131 | `result-track:0a64eaf531e9cb51f772219d200b82df27e046bdc88012e10513ffb990d390d6` |
| 14 | `theorem` | [mem_leftCoset_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-leftcoset-leftcoset--4f6e0d087b8d84219807013c.md) | 136 | `result-track:4f6e0d087b8d84219807013c661150b05604d3142f73f2f5a3fdfdf8351bc2cd` |
| 15 | `theorem` | [mem_rightCoset_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-rightcoset-rightcoset--2c89fc6e55a9751591d0e91b.md) | 140 | `result-track:2c89fc6e55a9751591d0e91bdde0752482be622da7367b96f9d17c8100e3d61f` |
| 16 | `theorem` | [mem_leftCoset_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-leftcoset-iff--930b6332fd1e9239894a0cd5.md) | 150 | `result-track:930b6332fd1e9239894a0cd5bac9a1862410e0e5e645a4710609618d173344a8` |
| 17 | `theorem` | [mem_rightCoset_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/mem-rightcoset-iff--a0f16ac665d493f591cf901f.md) | 154 | `result-track:a0f16ac665d493f591cf901ff7d55e367e5c6cd69558370e1ad729c8f5ef48d0` |
| 18 | `theorem` | [leftCoset_mem_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftcoset-mem-leftcoset--59bddd3f6e96525cf27e6a14.md) | 166 | `result-track:59bddd3f6e96525cf27e6a149e308bfb69747b95b5637807b603c5c28646cc29` |
| 19 | `theorem` | [rightCoset_mem_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightcoset-mem-rightcoset--4211491db83bf668db70e2ba.md) | 170 | `result-track:4211491db83bf668db70e2ba1aa79140b76571e469d9a0c772dbd3a7be0c2dda` |
| 20 | `theorem` | [orbit_subgroup_eq_rightCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/orbit-subgroup-eq-rightcoset--b25fbd81752bb1a66cda4448.md) | 174 | `result-track:b25fbd81752bb1a66cda4448b09753d3d291ffc45b12c593441b8452f8134710` |
| 21 | `theorem` | [orbit_subgroup_eq_self_of_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/orbit-subgroup-eq-self-of-mem--0227f8d01621790fc00c20e1.md) | 178 | `result-track:0227f8d01621790fc00c20e1aa1c1fe560c2fc439c776c5217f865e3da18958b` |
| 22 | `theorem` | [orbit_subgroup_one_eq_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/orbit-subgroup-one-eq-self--91711059684d40a9fa1e0db7.md) | 182 | `result-track:91711059684d40a9fa1e0db7d5eba64d8081393d11484d61a8f50cb2e529f6c1` |
| 23 | `theorem` | [eq_cosets_of_normal](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/eq-cosets-of-normal--b9621be2f7bf9800280b2036.md) | 186 | `result-track:b9621be2f7bf9800280b2036b6764eed60648a16338390b00ae7b06e6a495d6d` |
| 24 | `theorem` | [normal_of_eq_cosets](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/normal-of-eq-cosets--293087def3926b26c30fb137.md) | 190 | `result-track:293087def3926b26c30fb137e7ee9f0b9939c5d5d46779c48cf1b90a37e4e557` |
| 25 | `theorem` | [normal_iff_eq_cosets](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/normal-iff-eq-cosets--0daabb06eea7c5252bfc3a78.md) | 195 | `result-track:0daabb06eea7c5252bfc3a78bf8e7d4d7de49e82afdb3b59a934a5b0080d504c` |
| 26 | `theorem` | [leftCoset_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftcoset-eq-iff--51e9c8d2cf4f733d12423e4b.md) | 199 | `result-track:51e9c8d2cf4f733d12423e4bad6cfe552ab67a932d4c8201f849e37374e860f4` |
| 27 | `theorem` | [rightCoset_eq_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightcoset-eq-iff--5bbefb4fb2bdc2934a133766.md) | 213 | `result-track:5bbefb4fb2bdc2934a133766867e0a2079839619be6c8297d1b221ff77bcf7cf` |
| 28 | `theorem` | [leftRel_r_eq_leftCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftrel-r-eq-leftcosetequivalence--915c4f3f0577afb77c18f3e6.md) | 232 | `result-track:915c4f3f0577afb77c18f3e667afddcd42639ad8a778c95d15718a7fbf6c3e57` |
| 29 | `lemma` | [leftRel_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftrel-prod--650871344c392494d3a6bf27.md) | 239 | `result-track:650871344c392494d3a6bf2722a08bf3a2aeac05ee6f944c334288977ca6e867` |
| 30 | `lemma` | [leftRel_pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftrel-pi--e0a5149457f97bf5020d32bb.md) | 250 | `result-track:e0a5149457f97bf5020d32bb21ab5cdf19c020b7767ebb247c1fa50ae9072ce0` |
| 31 | `theorem` | [rightRel_r_eq_rightCosetEquivalence](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightrel-r-eq-rightcosetequivalence--b1a3fe35838655a5381373fa.md) | 255 | `result-track:b1a3fe35838655a5381373fadfdb933689bb10f6e866345181c1437208998ca3` |
| 32 | `lemma` | [rightRel_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightrel-prod--9a0e45b1b5dcddbb1bf8b731.md) | 262 | `result-track:9a0e45b1b5dcddbb1bf8b731d5edaba8ab252e8e9e3219e2b6182a903164f5b3` |
| 33 | `lemma` | [rightRel_pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightrel-pi--01c35d2f923a0e451e407703.md) | 273 | `result-track:01c35d2f923a0e451e407703ac003871b8862f235513ce83ee4c6e200306d92c` |
| 34 | `instance` | [fintypeQuotientRightRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fintypequotientrightrel--2a35c39e8d6538506b8b6259.md) | 279 | `declaration-track:2a35c39e8d6538506b8b6259e9ff36982511db4a58f4e7e8206f29ea86447ac2` |
| 35 | `theorem` | [card_quotient_rightRel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/card-quotient-rightrel--6551834f27a99713fbd28217.md) | 284 | `result-track:6551834f27a99713fbd282178b00756b7b319719e683375b4e8cae78ed4bec19` |
| 36 | `instance` | [fintype](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fintype--5ba4cedb4c95d234344b08d8.md) | 295 | `declaration-track:5ba4cedb4c95d234344b08d89712d3c878b0a3fd2f9bc6fa9e89d679d3b8ac31` |
| 37 | `theorem` | [strictMono_comap_prod_image](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/strictmono-comap-prod-image--97b0b0d78bf31aa44cd6b90a.md) | 307 | `result-track:97b0b0d78bf31aa44cd6b90afd2a2b96e66cdd48dfecdb6f12bfbff6cb5121f5` |
| 38 | `theorem` | [eq_class_eq_leftCoset](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/eq-class-eq-leftcoset--d29dbffd73ba7611860f44bc.md) | 318 | `result-track:d29dbffd73ba7611860f44bc0703bcd0e2ca133a33d2f42e43d4379b5a31a2b8` |
| 39 | `lemma` | [orbit_mk_eq_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/orbit-mk-eq-smul--daeb9d8290462a2c09bc9909.md) | 325 | `result-track:daeb9d8290462a2c09bc9909541fba9dc0df752264eb72c3710ff24e42afbc50` |
| 40 | `lemma` | [orbit_eq_out_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/orbit-eq-out-smul--75b6dea4b3949876d023e5e4.md) | 331 | `result-track:75b6dea4b3949876d023e5e4a241922a03eb389c489b235db397cce6bf2c9cfb` |
| 41 | `def` | [leftCosetEquivSubgroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/leftcosetequivsubgroup--9312c90e6d71b9fd22c34a4d.md) | 345 | `declaration-track:9312c90e6d71b9fd22c34a4d32f4eae36885775be289b64a3defa8789616cf35` |
| 42 | `def` | [rightCosetEquivSubgroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/rightcosetequivsubgroup--d675e854a08613501257fe6d.md) | 351 | `declaration-track:d675e854a08613501257fe6d33ced2f3db66f397f5c95cde1071683485b817bf` |
| 43 | `def` | [groupEquivQuotientProdSubgroup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/groupequivquotientprodsubgroup--8d51036c6d6423ad5b3bc327.md) | 358 | `declaration-track:8d51036c6d6423ad5b3bc327887a56cb9e128fc39e5db799a43cbb1bd2ed113b` |
| 44 | `def` | [quotientEquivProdOfLE'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientequivprodofle--2fe611f3ffde5b59a24cf886.md) | 379 | `declaration-track:2fe611f3ffde5b59a24cf88602e2bf00064cdeb10a651799d3c1fe0c3667ec8f` |
| 45 | `def` | [quotientEquivProdOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientequivprodofle--ecf3875d381cd1cdea5734d2.md) | 420 | `declaration-track:ecf3875d381cd1cdea5734d2755342e1d98b5ed358d3f7e73f316a6499f072fe` |
| 46 | `def` | [quotientSubgroupOfEmbeddingOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientsubgroupofembeddingofle--19bd7da1891fb30f8e9f64c9.md) | 434 | `declaration-track:19bd7da1891fb30f8e9f64c94150a3e2126594361d4866450e01d11546aac60b` |
| 47 | `theorem` | [quotientSubgroupOfEmbeddingOfLE_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientsubgroupofembeddingofle-apply-mk--7c4319e05e1cbb585aa18bae.md) | 446 | `result-track:7c4319e05e1cbb585aa18baef18f9061b235d17d96ef37eca78d02d71c371611` |
| 48 | `def` | [quotientSubgroupOfMapOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientsubgroupofmapofle--aed59bc41ee61f6a56ca0e4e.md) | 452 | `declaration-track:aed59bc41ee61f6a56ca0e4eeb82cd67d9e71127e33230a7ac82e1f6f2926475` |
| 49 | `theorem` | [quotientSubgroupOfMapOfLE_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientsubgroupofmapofle-apply-mk--a512c8f0effd338f2790f5b1.md) | 459 | `result-track:a512c8f0effd338f2790f5b13e77b35f38161297be70164bae970db1745e79e2` |
| 50 | `def` | [quotientMapOfLE](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientmapofle--cd01245e2aad5eb14fde335a.md) | 465 | `declaration-track:cd01245e2aad5eb14fde335abb2c3b82c964e5d19f8d8d0a3772a7a87fe7c23a` |
| 51 | `theorem` | [quotientMapOfLE_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientmapofle-apply-mk--d1ec52521eaba0cfb7690128.md) | 471 | `result-track:d1ec52521eaba0cfb7690128ae88ebc88e2df3e26ffffe9d5dd2f6b6f2a34d2a` |
| 52 | `def` | [quotientiInfSubgroupOfEmbedding](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientiinfsubgroupofembedding--279db1c30239e4a3e0802229.md) | 478 | `declaration-track:279db1c30239e4a3e080222961f83fbfe58f97c8ff249fc54ae496a7c35241aa` |
| 53 | `theorem` | [quotientiInfSubgroupOfEmbedding_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientiinfsubgroupofembedding-apply-mk--2c3063701d03955efba283ba.md) | 487 | `result-track:2c3063701d03955efba283ba57d2abf10a1747cd2a4f00f79deaf286ae3c79a3` |
| 54 | `def` | [quotientiInfEmbedding](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientiinfembedding--21324eab00ca6996f2f70467.md) | 494 | `declaration-track:21324eab00ca6996f2f70467751548c0d72ce7dc8e51984a42d56f8a3a4b06b3` |
| 55 | `theorem` | [quotientiInfEmbedding_apply_mk](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientiinfembedding-apply-mk--b44f9ffa29f5d95abcf88c99.md) | 502 | `result-track:b44f9ffa29f5d95abcf88c99f132dd79fcfc5ce396212dfd9f723c0ccfb3bd30` |
| 56 | `def` | [fiberEquivKer](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequivker--05719bafda23ca41ab48d207.md) | 514 | `declaration-track:05719bafda23ca41ab48d2073d07f14ef1b766c211abfb4aeeabb22a541ed439` |
| 57 | `lemma` | [fiberEquivKer_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequivker-apply--850fdbce511a80c679ae43e9.md) | 522 | `result-track:850fdbce511a80c679ae43e9d448ca3415bc3a356d1f9454a09723edfe7241c4` |
| 58 | `lemma` | [fiberEquivKer_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequivker-symm-apply--237131cc62aec2be1011a950.md) | 526 | `result-track:237131cc62aec2be1011a95003bbee67dd7377ffe533550da66a29535bec5a4b` |
| 59 | `def` | [fiberEquivKerOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequivkerofsurjective--6d76d106782a032b5097d661.md) | 532 | `declaration-track:6d76d106782a032b5097d6616b6d78c5120a191851c7065a3e7af64ed795c0ee` |
| 60 | `def` | [fiberEquiv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequiv--2253266feebd1db68ff6094c.md) | 538 | `declaration-track:2253266feebd1db68ff6094c4d1b9f9493d6d4d6f668aefd7f0a0c93331d50ba` |
| 61 | `lemma` | [fiberEquiv_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequiv-apply--c272af05077875b4b15dacd5.md) | 542 | `result-track:c272af05077875b4b15dacd59b1891eee9e73ad459614481b7e5e2ba1131cc2f` |
| 62 | `lemma` | [fiberEquiv_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequiv-symm-apply--e62e96215c4422b9738f96dd.md) | 547 | `result-track:e62e96215c4422b9738f96dd3dd49c66dccb00e5277795d572dca3e111b28507` |
| 63 | `def` | [fiberEquivOfSurjective](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/fiberequivofsurjective--d94e745503eddaaeb5702c4d.md) | 553 | `declaration-track:d94e745503eddaaeb5702c4d794e7325f68f0144a3cae156723ebbb9545b9f2b` |
| 64 | `def` | [preimageMkEquivSubgroupProdSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/preimagemkequivsubgroupprodset--387d8d97bb014fa0fdb96384.md) | 569 | `declaration-track:387d8d97bb014fa0fdb96384f3a99c41a47a5bf6fd945cd74e385b7a76e6a2ed` |
| 65 | `lemma` | [univ_eq_iUnion_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/univ-eq-iunion-smul--94efb622a55e487b969e7bc3.md) | 587 | `result-track:94efb622a55e487b969e7bc3f721cee6170156d02237d56be19dacfde3f3bd41` |
| 66 | `def` | [quotientEquivSelf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant690a00ec07a8b0350d8f30cbd7b45761061584f9451d6c707f88dc87bed65856.lean/declarations/quotientequivself--13470a1a2c97dbc7d3094389.md) | 597 | `declaration-track:13470a1a2c97dbc7d3094389e239f08a7b1f9f03bd7908bec23644e579b07475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
