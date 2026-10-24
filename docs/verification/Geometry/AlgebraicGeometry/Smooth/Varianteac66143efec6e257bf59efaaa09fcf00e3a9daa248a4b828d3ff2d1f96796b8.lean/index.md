# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Smooth.Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5d4198b84337a3a5f5f38945cd0e541cebbd76e",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5d4198b84337a3a5f5f38945cd0e541cebbd76e`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean.json)

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
| 1 | `class` | [Smooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smooth--6f3fc9b137f90ecda46e265f.md) | 70 | `declaration-track:6f3fc9b137f90ecda46e265ffcc889d6b562a39335eb576c3ba9850d16921e76` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--bdf28236adccd1c206bd792a.md) | 79 | `declaration-track:bdf28236adccd1c206bd792a1509e2dc69a03f1402e4c44b688104b5e9c02bd6` |
| 3 | `lemma` | [Smooth.iff_forall_exists_isStandardSmooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smooth-iff-forall-exists-isstandardsmooth--5acabc35f72a9862329c51b4.md) | 90 | `result-track:5acabc35f72a9862329c51b46067c69b7cace758bfe43a41256d2a8398e47cea` |
| 4 | `lemma` | [Smooth.exists_isStandardSmooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smooth-exists-isstandardsmooth--c3822cca85df64c39d9a6f2c.md) | 105 | `result-track:c3822cca85df64c39d9a6f2c5dc5bc09db563a4f39d99a4d5c044185f57e77b5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--559bf7ba700908290be9a535.md) | 111 | `declaration-track:559bf7ba700908290be9a53584ae2a189dfbdd3cf7590b74c6cfc3ce4fdb2d6c` |
| 6 | `instance` | [smooth_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smooth-comp--d024c5e3009e2ea41b519de8.md) | 115 | `declaration-track:d024c5e3009e2ea41b519de89e16d630ffde1069aaa86567dc915736b51594fd` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--802f632c13d07cea06cb3b89.md) | 119 | `declaration-track:802f632c13d07cea06cb3b89532de4942282e96d93e09e19e8bdd151c6367fa7` |
| 8 | `instance` | [smooth_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smooth-isstableunderbasechange--b16d8976a4a932560ea4ddd3.md) | 123 | `declaration-track:b16d8976a4a932560ea4ddd38101be159a7785e5d49edadd1b27c9a5453b9e83` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--991027cd7a19a0c6f198fdb4.md) | 126 | `declaration-track:991027cd7a19a0c6f198fdb4927710552e7bc9b43ccb8e4b463d3c05a2e97296` |
| 10 | `class` | [SmoothOfRelativeDimension](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smoothofrelativedimension--d4a4e28af78e541e17441fbb.md) | 138 | `declaration-track:d4a4e28af78e541e17441fbb0df80aadb5d936aba130731883041f796c7462c8` |
| 11 | `lemma` | [SmoothOfRelativeDimension.smooth](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smoothofrelativedimension-smooth--3f6f49872108b33662702280.md) | 144 | `result-track:3f6f49872108b336627022802c88da49065b56b867b14772b0958425d66eaa54` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--2d3e44f63fc15db506a953ee.md) | 152 | `declaration-track:2d3e44f63fc15db506a953ee217f7b6135ef5181682d05d23f93c379d0739610` |
| 13 | `instance` | [smoothOfRelativeDimension_isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smoothofrelativedimension-isstableunderbasechange--daebd7d024bc3fc8fcb4179f.md) | 164 | `declaration-track:daebd7d024bc3fc8fcb4179f35a12115db9773e86edfc91eab8c979c2f7e4f38` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--e4515a0178c240c6a33ce9b3.md) | 171 | `declaration-track:e4515a0178c240c6a33ce9b37ff43d397edd731ce787c4915e2705fd4f56bbb2` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--2d200c2abee84278c84552c8.md) | 177 | `declaration-track:2d200c2abee84278c84552c87ebff983549d40289b46feeab1f2546a76bfc367` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--a09748c314cbb6ba6ba6fb60.md) | 181 | `declaration-track:a09748c314cbb6ba6ba6fb60d2917a7663a707fe299d85e6325b5147906cc9b7` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--8abc5a437e8546210dece5e2.md) | 186 | `declaration-track:8abc5a437e8546210dece5e25550b1437507cc24a9bf635aae01ff7fe0fdb342` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--1806fa01268cee3349efcf6a.md) | 191 | `declaration-track:1806fa01268cee3349efcf6a6ee4b741f94a5401dede4380c4ea16ee01b8fd54` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--fb979235d33bfc1412f2e680.md) | 194 | `declaration-track:fb979235d33bfc1412f2e680dbcbd316fe7ef7be3ce2ae4fa94c42c247edfc22` |
| 20 | `instance` | [smoothOfRelativeDimension_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/smoothofrelativedimension-comp--bf0631b03ca09b906d0c5761.md) | 200 | `declaration-track:bf0631b03ca09b906d0c5761c6b8a0683abf1a0571aa65571b5ad1457603dff6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--c708f19f66da41a4f0f57237.md) | 224 | `declaration-track:c708f19f66da41a4f0f57237faab5cac8d955ee2adaf2cf323dc66944c8e0834` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--7599510e7fdcc0669c2bc606.md) | 230 | `declaration-track:7599510e7fdcc0669c2bc606f48e591b8cc5ac1357d4c86b6b8a11c787ddd1b7` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/instance--8be95a4316ffdfdf461df0fb.md) | 235 | `declaration-track:8be95a4316ffdfdf461df0fbcf0515a587ca76beae0ceb633b6adcd806e27b78` |
| 24 | `lemma` | [formallySmooth_stalkMap_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/formallysmooth-stalkmap-iff--d41d15ae1f3b01bc63d0b6f4.md) | 240 | `result-track:d41d15ae1f3b01bc63d0b6f4e216d75917d327683f54b50f31b6895fb9d230af` |
| 25 | `lemma` | [exists_smooth_of_formallySmooth_stalk](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/exists-smooth-of-formallysmooth-stalk--0028e8693407a52723e08ae3.md) | 260 | `result-track:0028e8693407a52723e08ae345ab65fdc0a3186eadd94ff57dc07afc1bf57b25` |
| 26 | `lemma` | [Scheme.Hom.isOpen_smoothLocus](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-isopen-smoothlocus--f3da2164c663ae191cb2b766.md) | 290 | `result-track:f3da2164c663ae191cb2b76690fb556913543b8c68b88818c1f906b9c5e49fb6` |
| 27 | `def` | [Scheme.Hom.smoothLocus](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-smoothlocus--fb4f23b30da19df2d95b541f.md) | 299 | `declaration-track:fb4f23b30da19df2d95b541fb4df44328343626f85346f963334e5f04978ebc3` |
| 28 | `lemma` | [Scheme.Hom.mem_smoothLocus](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-mem-smoothlocus--69ba8763448ec3dfc314766f.md) | 302 | `result-track:69ba8763448ec3dfc314766fd21dcf82949a4925f3289dc6f8e3cad3b20ebfb9` |
| 29 | `lemma` | [Scheme.Hom.smoothLocus_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-smoothlocus-eq-top--adcfffca12c06b7c3430ea2d.md) | 305 | `result-track:adcfffca12c06b7c3430ea2d45f715293b21d3d1db5fd1ac5ba747eb31a5d209` |
| 30 | `lemma` | [Scheme.Hom.smoothLocus_eq_top_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-smoothlocus-eq-top-iff--759ac6648d4c0e2f7c28c457.md) | 319 | `result-track:759ac6648d4c0e2f7c28c457c17a615fefda091edee7b1f23d25fd83d8ed0690` |
| 31 | `lemma` | [Scheme.Hom.preimage_smoothLocus_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-preimage-smoothlocus-eq--5decd6d2ab791afab42fe593.md) | 332 | `result-track:5decd6d2ab791afab42fe593ad6d67c93e456484bbc4b070a26dda986510cfe5` |
| 32 | `lemma` | [Scheme.Hom.genericPoint_mem_smoothLocus_of_perfectField](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-genericpoint-mem-smoothlocus-of-perfectfield--c91ed34f912cac5055edecdd.md) | 341 | `result-track:c91ed34f912cac5055edecddf6098b81a7a3395a51352eb7489fb7f8b9a28830` |
| 33 | `lemma` | [Scheme.Hom.dense_smoothLocus_of_perfectField](../../../../../mathematics/Geometry/AlgebraicGeometry/Smooth/Varianteac66143efec6e257bf59efaaa09fcf00e3a9daa248a4b828d3ff2d1f96796b8.lean/declarations/scheme-hom-dense-smoothlocus-of-perfectfield--e03bac0b20b2be1bdfe9d2e3.md) | 360 | `result-track:e03bac0b20b2be1bdfe9d2e3b534eb0c8332ce8dc0d5ee1a3762e9ea6c2c2dfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
