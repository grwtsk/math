# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5357f877f67f85bc815733cefd7a4551524f285",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5357f877f67f85bc815733cefd7a4551524f285`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean.json)

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
| 1 | `lemma` | [smul_set_prod](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-prod--ee0af7b8231bf29e0df713c8.md) | 44 | `result-track:ee0af7b8231bf29e0df713c8d0afc27f8c993d40ce8cecb3ac3cb18c171a6991` |
| 2 | `lemma` | [smul_set_pi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-pi--058e55f92021b1857e13a2af.md) | 49 | `result-track:058e55f92021b1857e13a2afef1ab4dd30f016a9077dd53b3bb05827ccafd35c` |
| 3 | `lemma` | [smul_set_pi_of_isUnit](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-pi-of-isunit--8840a9ec8674cffcab2f4e7f.md) | 54 | `result-track:8840a9ec8674cffcab2f4e7facaad17d73c8650945c98df4d247aaf32f95206f` |
| 4 | `lemma` | [smul_set_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-subset-mul--fdb2f2a7c20ee4117c7bb559.md) | 62 | `result-track:fdb2f2a7c20ee4117c7bb5598f7aafbe9fbd8699f5c1f3ded52768808d6c1bde` |
| 5 | `lemma` | [op_smul_set_subset_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/op-smul-set-subset-mul--36a212aec18dd5f1a365e908.md) | 65 | `result-track:36a212aec18dd5f1a365e908c15d2868f5859352fc4de2edaabad5e1aedf3b66` |
| 6 | `theorem` | [image_op_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/image-op-smul--92870884cb890b5e5aa78a14.md) | 68 | `result-track:92870884cb890b5e5aa78a1421fe6e66529dfa45855a17c4ef2eade08314fb5e` |
| 7 | `theorem` | [iUnion_op_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/iunion-op-smul-set--ee3c5a548880bea1f280ec8b.md) | 73 | `result-track:ee3c5a548880bea1f280ec8b7f4a4f9b389d6eb8185b3782b5b429eab34cea16` |
| 8 | `theorem` | [mul_subset_iff_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mul-subset-iff-left--5c4b0c27c6b5706f2c592ae3.md) | 77 | `result-track:5c4b0c27c6b5706f2c592ae3a9cea1905f2fa52e9583b169156e15eadac53436` |
| 9 | `theorem` | [mul_subset_iff_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mul-subset-iff-right--9005ee349b3f11e4d4e26266.md) | 81 | `result-track:9005ee349b3f11e4d4e262660065c2d29097cfb635e4a3a30f60fed4db8efaef` |
| 10 | `lemma` | [pair_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/pair-mul--1943489882ac3ba564684f80.md) | 84 | `result-track:1943489882ac3ba564684f80ffd567534c58f1025b44ff3061091fc86fa48edf` |
| 11 | `lemma` | [mul_pair](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mul-pair--4abae244ee02ffc6138390ca.md) | 88 | `result-track:4abae244ee02ffc6138390ca877bd5720bfa3b2b263571ee6d5dd2b6a79e5ea8` |
| 12 | `lemma` | [range_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/range-mul--1e0658cd44a78b732e941c1b.md) | 91 | `result-track:1e0658cd44a78b732e941c1b2fdf9ef45d51265aa905c1bdea4f5f9301798a02` |
| 13 | `lemma` | [image_smul_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/image-smul-distrib--975c4ae03765960f0981f832.md) | 97 | `result-track:975c4ae03765960f0981f832e4dd0e6b05d6f14ff6545fd38a7c01840db9f654` |
| 14 | `lemma` | [image_op_smul_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/image-op-smul-distrib--a3d837f31e6a48346e8f55e5.md) | 104 | `result-track:a3d837f31e6a48346e8f55e5cb74769ffa4ce10b21819758c3fcf98a3e409550` |
| 15 | `lemma` | [op_smul_set_mul_eq_mul_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/op-smul-set-mul-eq-mul-smul-set--1e70d138d874a5c8ee9ad1ee.md) | 111 | `result-track:1e70d138d874a5c8ee9ad1ee37b1b0a4ccc58413fdc7d20941fcea3582c6b56b` |
| 16 | `theorem` | [pairwiseDisjoint_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/pairwisedisjoint-smul-iff--b635cb72143c86b8c0f6963d.md) | 122 | `result-track:b635cb72143c86b8c0f6963d15eba7076eedba201c3daf90bd591fca77d2d3be` |
| 17 | `instance` | [smulCommClass_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smulcommclass-set--2ef235cb0ab9756c648d3a37.md) | 129 | `declaration-track:2ef235cb0ab9756c648d3a37205a863611bcfe00e542c40fffac83734df701bd` |
| 18 | `instance` | [smulCommClass_set'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smulcommclass-set--7179b5fbd2ba4c48fffee401.md) | 134 | `declaration-track:7179b5fbd2ba4c48fffee40193623d0d134c989778f80b3ff7f6d17460cf5fb8` |
| 19 | `instance` | [smulCommClass_set''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smulcommclass-set--467464484ed0734bbdd17c72.md) | 139 | `declaration-track:467464484ed0734bbdd17c72dff0ac6f38557dbf5b3819c165a8634a9cdce0b5` |
| 20 | `instance` | [smulCommClass](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smulcommclass--12b91667363a38f26602682c.md) | 145 | `declaration-track:12b91667363a38f26602682c4a38d47b8fd93437ac1b2650e82bb4694d86057d` |
| 21 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/isscalartower--d08bf3895dede385cecc5e46.md) | 150 | `declaration-track:d08bf3895dede385cecc5e46d1df93a1f4a909ba25fc51bf865fe85c4649fe9b` |
| 22 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/isscalartower--2be6d92274c3064cc2369083.md) | 155 | `declaration-track:2be6d92274c3064cc2369083566fd50f9e1d286b57189b586a3a0f001ccdec4c` |
| 23 | `instance` | [isScalarTower''](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/isscalartower--8f9375f7cb81ffb3017f0f22.md) | 160 | `declaration-track:8f9375f7cb81ffb3017f0f2228deb3d1317636172d91a73bcb2fe73837954ba1` |
| 24 | `instance` | [isCentralScalar](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/iscentralscalar--4eb1c8fdd9d570ea2a80ad69.md) | 165 | `declaration-track:4eb1c8fdd9d570ea2a80ad695913c48b59ab48a8a5ca9f618e94ddaacb26fe3c` |
| 25 | `def` | [mulAction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mulaction--805718c803d79d4bc6730463.md) | 174 | `declaration-track:805718c803d79d4bc67304634b6b7924e2ba7f8196ae58d2a31b57e6678f9a5d` |
| 26 | `def` | [mulActionSet](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mulactionset--6f56fedbf7441fb7d7e33057.md) | 181 | `declaration-track:6f56fedbf7441fb7d7e3305716efbbb365b629ab4b20dfbaf543894aca6242a2` |
| 27 | `theorem` | [smul_mem_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-mem-smul-set-iff--fd90a2f581bec2c584db60b8.md) | 192 | `result-track:fd90a2f581bec2c584db60b8c95ccbcaf778163c4d9bfae9bb46df77c3fc8914` |
| 28 | `theorem` | [mem_smul_set_iff_inv_smul_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mem-smul-set-iff-inv-smul-mem--f604176ab13f285f743b9c5b.md) | 196 | `result-track:f604176ab13f285f743b9c5b87bee0eabcbcca017940153747b7a32e5bca022b` |
| 29 | `theorem` | [mem_inv_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mem-inv-smul-set-iff--6495e1edd5b05c03b028481f.md) | 200 | `result-track:6495e1edd5b05c03b028481f7bf080cd8524bb819333ecc4de4632f4bf7bf58d` |
| 30 | `lemma` | [mem_smul_set_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mem-smul-set-inv--2d03bb4b3980dd71950e74fe.md) | 204 | `result-track:2d03bb4b3980dd71950e74fed665826a8cd4759ff2ab53c279fd802f80d8e43b` |
| 31 | `theorem` | [preimage_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/preimage-smul--ade96b264501d651b7832d42.md) | 208 | `result-track:ade96b264501d651b7832d428729e21ec320b04220bb5ea045808f26b659784f` |
| 32 | `theorem` | [preimage_smul_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/preimage-smul-inv--951a8e5695c41a3938be49d8.md) | 212 | `result-track:951a8e5695c41a3938be49d88e0a4d73793a796840da6b7963411f68aa9325df` |
| 33 | `theorem` | [smul_set_subset_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-subset-smul-set-iff--9f8905c26baf69d2874f21e4.md) | 216 | `result-track:9f8905c26baf69d2874f21e4ecc0e2d6758207ee19fbcecdbb5f00398b9c677a` |
| 34 | `theorem` | [smul_set_subset_iff_subset_inv_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-subset-iff-subset-inv-smul-set--57dc5db749ca6c52cfa3288f.md) | 220 | `result-track:57dc5db749ca6c52cfa3288f8ee1c320a23f1dc780539a2b05a25050adcc7437` |
| 35 | `theorem` | [subset_smul_set_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/subset-smul-set-iff--c3d9c6f36bd0152b274d654b.md) | 226 | `result-track:c3d9c6f36bd0152b274d654b4029215b5fdc6b7433f1bd8cfa1efa49466915e2` |
| 36 | `theorem` | [smul_set_inter](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-inter--906805625e16174f081bae76.md) | 231 | `result-track:906805625e16174f081bae766667dfc80b7e97460895b57300dadbfa92812887` |
| 37 | `theorem` | [smul_set_iInter](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-iinter--325b3877852f4f80840cae73.md) | 235 | `result-track:325b3877852f4f80840cae73793add64b13cf421d2426c2d1603c1f06cb920b9` |
| 38 | `theorem` | [smul_set_sdiff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-sdiff--bb15f6caa0a93d05c5b0717b.md) | 240 | `result-track:bb15f6caa0a93d05c5b0717bbce6c044bcbf269d55701894936d773384a5e4a6` |
| 39 | `theorem` | [smul_set_symmDiff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-symmdiff--633e4fd3dd5cafbcff849c56.md) | 245 | `result-track:633e4fd3dd5cafbcff849c5600e9ba3f1d43a8cb7a4150e35763bd2f1702fa9d` |
| 40 | `theorem` | [smul_set_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-univ--16fe3d297e038bb21fa02bf5.md) | 249 | `result-track:16fe3d297e038bb21fa02bf5cdcb186c1659c18b81669eec6016fd3682d3ba1e` |
| 41 | `theorem` | [smul_set_eq_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-eq-univ--ecaac1f77a0a4f78ef0ccad9.md) | 253 | `result-track:ecaac1f77a0a4f78ef0ccad98734d1e7827a6764638aae5c0e4b977b735ab10a` |
| 42 | `theorem` | [smul_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-univ--d3ebe7acfbaa46f7a584913c.md) | 257 | `result-track:d3ebe7acfbaa46f7a584913c05de948a5f5542a93a83e184a0c4a37d11e6080f` |
| 43 | `theorem` | [smul_set_compl](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-set-compl--b5b4be91ddf6d8153c58978e.md) | 262 | `result-track:b5b4be91ddf6d8153c58978ee42aeb68f1e39afccad6523b321d5b82031d9ccc` |
| 44 | `theorem` | [smul_inter_nonempty_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-inter-nonempty-iff--7f08317bb2366113a7328ec6.md) | 266 | `result-track:7f08317bb2366113a7328ec6c5beb4cec18c3b5e2e6958f109620b01ca22488a` |
| 45 | `theorem` | [smul_inter_nonempty_iff'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-inter-nonempty-iff--91a0d722d51947e788f3e63a.md) | 276 | `result-track:91a0d722d51947e788f3e63aa8a5bcd8d13e774816c88a33434e4529ed85ef19` |
| 46 | `theorem` | [op_smul_inter_nonempty_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/op-smul-inter-nonempty-iff--69585e86631555a2a6304ceb.md) | 281 | `result-track:69585e86631555a2a6304ceb9eff9ec7717bb063311c786d61be1ddb64602d33` |
| 47 | `theorem` | [iUnion_inv_smul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/iunion-inv-smul--b902099f99fe522eb10d89f4.md) | 292 | `result-track:b902099f99fe522eb10d89f44a2f599778d6068113400bdafeb9d0692dc333ba` |
| 48 | `theorem` | [iUnion_smul_eq_ofPred_exists](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/iunion-smul-eq-ofpred-exists--a6891e1595f845d7c3210775.md) | 296 | `result-track:a6891e1595f845d7c32107755676ea0c042024623de36a4dd5034b7db7ecf785` |
| 49 | `lemma` | [inv_smul_set_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/inv-smul-set-distrib--0984cc02b7ebf767853e9253.md) | 306 | `result-track:0984cc02b7ebf767853e925359ae8f775e47cd0409ca55c9c9d754c0c2a0ed2d` |
| 50 | `lemma` | [inv_op_smul_set_distrib](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/inv-op-smul-set-distrib--81baf5a284f7a6a9f53682e9.md) | 310 | `result-track:81baf5a284f7a6a9f53682e976fb9bce3cdc394464940ae54e9bb8506e377018` |
| 51 | `lemma` | [disjoint_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/disjoint-smul-set--16a5158b979d4470916fe9d8.md) | 314 | `result-track:16a5158b979d4470916fe9d84239d9aabe265dc16939d27e9985dd784e1a426f` |
| 52 | `lemma` | [disjoint_smul_set_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/disjoint-smul-set-left--345b5d63bdd29917de353569.md) | 318 | `result-track:345b5d63bdd29917de353569f18db019d3cc1a1d8e68491fe29ffa91d221276d` |
| 53 | `lemma` | [disjoint_smul_set_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/disjoint-smul-set-right--b51f30dac5aa3e7e4e703e79.md) | 322 | `result-track:b51f30dac5aa3e7e4e703e79dfef55417cbc12eaff3d5b288f14fb4d4453b4d7` |
| 54 | `lemma` | [pairwise_disjoint_smul_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/pairwise-disjoint-smul-iff--7ae4535a04e592af11aa9386.md) | 325 | `result-track:7ae4535a04e592af11aa938680b5b6aa1f066bf6495ecc7da49b2884483f05af` |
| 55 | `lemma` | [exists_smul_inter_smul_subset_smul_inv_mul_inter_inv_mul](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/exists-smul-inter-smul-subset-smul-inv-mul-inter-inv-mul--97eb3a914d46f5811db4308f.md) | 342 | `result-track:97eb3a914d46f5811db4308f7f020f4301ecf1b6c25a400f82ad644618c36353` |
| 56 | `lemma` | [mem_invOf_smul_set](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/mem-invof-smul-set--3fa9e0bcd0b498d23bc12439.md) | 357 | `result-track:3fa9e0bcd0b498d23bc12439927bed06879150318b054e309f9c3cad1fefb7b1` |
| 57 | `lemma` | [smul_graphOn](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-graphon--957e315fe7a91791cba1f255.md) | 366 | `result-track:957e315fe7a91791cba1f25540cc88e2b9035771108368e014ddfd02b0f0467d` |
| 58 | `lemma` | [smul_graphOn_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-graphon-univ--279c8f94635baea3487e55fd.md) | 373 | `result-track:279c8f94635baea3487e55fd6d337545712eb3c0774aca4b87baa50ba6c455d0` |
| 59 | `lemma` | [smul_div_smul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variant7563ee88d180650094ffdc66f247da12e47e12d82548e48e92835e9d928f657c.lean/declarations/smul-div-smul-comm--ee67ca0f22b1900b3d310f11.md) | 381 | `result-track:ee67ca0f22b1900b3d310f111699fc6dd6ac5b11af8f12613a577b749736e823` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
