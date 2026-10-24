# Verification target: GRWTSK.Geometry.ConvexGeometry.Prod.Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ec48602142278cd3c8903d7d95b243185bdd6a5",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ec48602142278cd3c8903d7d95b243185bdd6a5`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/instance--3e81bea09fa4c8f3500a9721.md) | 26 | `declaration-track:3e81bea09fa4c8f3500a9721f5f0f32e501821e1bfe0818b4e51ee2230bff980` |
| 2 | `lemma` | [fst_sConvexComb](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/fst-sconvexcomb--1c799f9808921fcfd204ab1b.md) | 32 | `result-track:1c799f9808921fcfd204ab1b28995a37943e58beae5a5a4f7b32796fea4f34b6` |
| 3 | `lemma` | [snd_sConvexComb](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/snd-sconvexcomb--4dd5470dfb44a8b2dee0f44e.md) | 35 | `result-track:4dd5470dfb44a8b2dee0f44ede9a62893b8a8025ad42533b56716a868eae93b1` |
| 4 | `lemma` | [isAffineMap_fst](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-fst--1a6ef431cb87f31624c54593.md) | 38 | `result-track:1a6ef431cb87f31624c54593b81e14cbd2b927e22117875502893c726a735cd2` |
| 5 | `lemma` | [isAffineMap_snd](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-snd--6e73df3f3a4c398a638e6712.md) | 41 | `result-track:6e73df3f3a4c398a638e6712bc54f9efe95c5bb9a235b1bad16ecfb816125c60` |
| 6 | `lemma` | [fst_iConvexComb](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/fst-iconvexcomb--1ab66c226465ea364bed86d9.md) | 44 | `result-track:1ab66c226465ea364bed86d999ec5f732494061382891bf95fde832f554f8d65` |
| 7 | `lemma` | [snd_iConvexComb](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/snd-iconvexcomb--672d64ff4e015c16d67c8d45.md) | 49 | `result-track:672d64ff4e015c16d67c8d457e93a583b91a5812827bf10f9f527837aa5e0e5e` |
| 8 | `lemma` | [fst_convexCombPair](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/fst-convexcombpair--a7d2386d149e1a7e443cc837.md) | 54 | `result-track:a7d2386d149e1a7e443cc837cefdfe2d3ea0e44ebdd496b97e47701480567f38` |
| 9 | `lemma` | [snd_convexCombPair](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/snd-convexcombpair--4de1b961935d6262fbcbad24.md) | 59 | `result-track:4de1b961935d6262fbcbad241de681d927385544b875baf0d90bb07cb6178a37` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/instance--c4548910eec9943055bf5ca2.md) | 63 | `declaration-track:c4548910eec9943055bf5ca2d26979fcc45efd074634bc6ad5201db38636c65e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/instance--819ca4fd2dfc86c2be6b8211.md) | 75 | `declaration-track:819ca4fd2dfc86c2be6b8211858405d4f7787567aab6c41fdae657e324caf793` |
| 12 | `lemma` | [sConvexComb_apply](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/sconvexcomb-apply--ecf0b901ba15b8c0f1fc12a4.md) | 81 | `result-track:ecf0b901ba15b8c0f1fc12a4209f13533226852d5eae0ea65d8f64c6eb49646d` |
| 13 | `lemma` | [isAffineMap_eval](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-eval--03b6804fb7093963fb3a05af.md) | 85 | `result-track:03b6804fb7093963fb3a05af13bf647af8bcd27f6710dc9955839479b56f5cf8` |
| 14 | `lemma` | [iConvexComb_apply](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/iconvexcomb-apply--8425cb285bc28f03b6b741c9.md) | 89 | `result-track:8425cb285bc28f03b6b741c9011733ac33c5d4a879e27d0c1f17b4206be4772a` |
| 15 | `lemma` | [convexCombPair_apply](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/convexcombpair-apply--82c40d1a9afde45a85f75a6d.md) | 93 | `result-track:82c40d1a9afde45a85f75a6d93781ca51628642df3addd9ebbf32ad619025c02` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/instance--e0f7f54e76358fefea6df735.md) | 97 | `declaration-track:e0f7f54e76358fefea6df73562ccf0a46e78f361a1ae7c54ea9e83cac648a98c` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/instance--3dab0c4a7bc66b85925868eb.md) | 106 | `declaration-track:3dab0c4a7bc66b85925868eb214e5e043ac235573bc11ae57555e281779cac5c` |
| 18 | `lemma` | [sConvexComb_apply](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/sconvexcomb-apply--d4f60a3dffab51ec98747ce3.md) | 117 | `result-track:d4f60a3dffab51ec98747ce3cf25a610e2ede040318d068473d2624ac9fb53ae` |
| 19 | `lemma` | [isAffineMap_eval](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-eval--69a87742100e9f9f8f31427b.md) | 121 | `result-track:69a87742100e9f9f8f31427b813ea3dfdcc6e0efd9ec8522dc53259b8a1ef856` |
| 20 | `lemma` | [iConvexComb_apply](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/iconvexcomb-apply--3cd82ea85a0177fa40d778d5.md) | 125 | `result-track:3cd82ea85a0177fa40d778d569c641bc2c587fde0627d1586763b5f3f20e60ac` |
| 21 | `lemma` | [convexCombPair_apply](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/convexcombpair-apply--991b8d06d35d0a731bed9bc6.md) | 129 | `result-track:991b8d06d35d0a731bed9bc6e879914c93d61bcd81c99df3aacfec0d542f0412` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/instance--15cf78e5712d61232954ff6d.md) | 133 | `declaration-track:15cf78e5712d61232954ff6dbff1ec8178c4f0c99806211f7e05a1856aa00b8b` |
| 23 | `lemma` | [IsAffineMap.prodMk](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-prodmk--ab4fcf3a8da3b47033003c5d.md) | 145 | `result-track:ab4fcf3a8da3b47033003c5df5e466788dee31fbe84033f32227015d39b238cc` |
| 24 | `lemma` | [IsAffineMap.fst](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-fst--bf0153ffffb204c5e0c6f98e.md) | 150 | `result-track:bf0153ffffb204c5e0c6f98eb3cb43c008cba3d088edcb8213d699d218c2938e` |
| 25 | `lemma` | [IsAffineMap.snd](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-snd--f36e62ffe798cd99c6725421.md) | 154 | `result-track:f36e62ffe798cd99c6725421b8bd293d4031c7aa6f302a344d48cdb09e8423b3` |
| 26 | `lemma` | [isAffineMap_prod_iff](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-prod-iff--37c9c1825eb5982ec88c365f.md) | 157 | `result-track:37c9c1825eb5982ec88c365f4759847f2b1cc9fa5f45f71640a180b7509138ca` |
| 27 | `lemma` | [isAffineMap_prodMk_iff](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-prodmk-iff--e48b1e17d6bdc898d7c00008.md) | 162 | `result-track:e48b1e17d6bdc898d7c000082776cc8c58bb1f1096b9960529520437dcfa0517` |
| 28 | `lemma` | [IsAffineMap.pi](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-pi--0793f23b0b2d663351b65483.md) | 171 | `result-track:0793f23b0b2d663351b65483e794e5a575ef1821e429ce53af6e7acd067ce5c0` |
| 29 | `lemma` | [IsAffineMap.eval](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-eval--595cededeb986ab1cc492ebc.md) | 174 | `result-track:595cededeb986ab1cc492ebc4f84702d5b9155a6479febb64f047590fe48197c` |
| 30 | `lemma` | [isAffineMap_pi_iff](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-pi-iff--e6813656a8a91d106bd11248.md) | 177 | `result-track:e6813656a8a91d106bd11248b09942a8d24f5119103766d47e0b56f85a5e26b0` |
| 31 | `lemma` | [IsAffineMap.finsupp](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-finsupp--fe1236c43860ed701ceb18c9.md) | 186 | `result-track:fe1236c43860ed701ceb18c9d2f19ee197426c8afc9bfa558961a2b1b4520984` |
| 32 | `lemma` | [IsAffineMap.finsuppEval](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-finsuppeval--ad7dddd21e14c77727bdd303.md) | 189 | `result-track:ad7dddd21e14c77727bdd3035142884ef45b8d7fee3c5115ab66561da2324eb0` |
| 33 | `lemma` | [isAffineMap_finsupp_iff](../../../../../mathematics/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/declarations/isaffinemap-finsupp-iff--4e819cbbcda1364388371ad3.md) | 192 | `result-track:4e819cbbcda1364388371ad37e2cd89e1dbdd773604e11d91d57f4a1879c0d1f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
