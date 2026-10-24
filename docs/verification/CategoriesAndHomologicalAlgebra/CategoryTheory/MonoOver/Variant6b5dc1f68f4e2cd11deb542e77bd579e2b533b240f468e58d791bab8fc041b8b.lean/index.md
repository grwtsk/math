# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonoOver.Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6547b1c40438df0cb43f30ea013b914ad60d6544",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6547b1c40438df0cb43f30ea013b914ad60d6544`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Over` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Reflective` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/monoover--64f2b0d0adca9b042ffc22cc.md) | 62 | `declaration-track:64f2b0d0adca9b042ffc22ccf8f86fbf3d3d171f350e6264d1861c4e2ca68dd4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/instance--477121013bc7919b6627d505.md) | 66 | `declaration-track:477121013bc7919b6627d505706345a0be3ff01e5872bf72458693d14f3a80fe` |
| 3 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mk--a099f15fd1b2c088fdf8b173.md) | 73 | `declaration-track:a099f15fd1b2c088fdf8b173aff98a8fcd968bc6e4cc90e1dbf7b2ab18fff5f2` |
| 4 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/forget--b034804eeda4bfb7bbf54b71.md) | 79 | `declaration-track:b034804eeda4bfb7bbf54b71254ad9e593b58aa27a8e75989cc39abfa283e17f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/instance--89dc9d8559f8725af3ed5bc0.md) | 83 | `declaration-track:89dc9d8559f8725af3ed5bc013276fc16745fdd628538ab575cf0b15c19e0f67` |
| 6 | `theorem` | [forget_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/forget-obj-left--478438cd72464d4419b4dc00.md) | 86 | `result-track:478438cd72464d4419b4dc00fccef3008d206049821c3b330c7853fe5d3d4d3f` |
| 7 | `theorem` | [mk'_coe'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mk-coe--933b0d82b4640019b5abc3a5.md) | 91 | `result-track:933b0d82b4640019b5abc3a5ec7343bdebbe6c4a93f162274cd66af224dabd34` |
| 8 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/arrow--74c42a1ec1558709b9a98e96.md) | 96 | `declaration-track:74c42a1ec1558709b9a98e9680d9366c1f30438c1f1c733bd454497539af7fe2` |
| 9 | `theorem` | [mk'_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mk-arrow--20908ff8ae09d92ee36219b5.md) | 101 | `result-track:20908ff8ae09d92ee36219b5cc9281a6d0ba4edb19ebab83fe660e4cdf517500` |
| 10 | `theorem` | [forget_obj_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/forget-obj-hom--0107362be1b3283802755fd7.md) | 106 | `result-track:0107362be1b3283802755fd7925fb0dd4f545b6c1ffc3e2deeac894ee8882e47` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/instance--b8e625eaddc3feaddcac2bbf.md) | 110 | `declaration-track:b8e625eaddc3feaddcac2bbf9828677708ad7c59c6b75ae46f71b45034c740eb` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/instance--54f25244df9a8f0a0fb8e6f9.md) | 113 | `declaration-track:54f25244df9a8f0a0fb8e6f92125371f8caa08605b95adf1945b09d11e548864` |
| 13 | `instance` | [mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mono--6893c10a865bbb31031e13fd.md) | 116 | `declaration-track:6893c10a865bbb31031e13fd9d5be303a10d6ac37ff41b45949c69174454488d` |
| 14 | `instance` | [isThin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/isthin--f33b8395100734e6ce4d39a2.md) | 122 | `declaration-track:f33b8395100734e6ce4d39a2232d3a58d1e9cbcf9ffa57352e5517b72c14f84f` |
| 15 | `theorem` | [w](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/w--2ad0f61c77f25ce65365cbea.md) | 130 | `result-track:2ad0f61c77f25ce65365cbea9a4045833b2fe4b3714d7637e694b137ec5d1360` |
| 16 | `abbrev` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/hommk--a04429f79867627ab797564d.md) | 135 | `declaration-track:a04429f79867627ab797564d9dd57ea5d9914d00cfdca05f6afcc591a40542dd` |
| 17 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/isomk--0faa4041040ccffa6cf1a351.md) | 142 | `declaration-track:0faa4041040ccffa6cf1a3511a1bf37c0a5641aa54baabb0d0043c4440b4575c` |
| 18 | `def` | [mk'ArrowIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mk-arrowiso--b91371119f9f88524f624d9c.md) | 151 | `declaration-track:b91371119f9f88524f624d9c3860751d8d77e09922e55fa85dbe0b4310fc4acb` |
| 19 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/lift--42a08376d1d4f893402938f9.md) | 159 | `declaration-track:42a08376d1d4f893402938f900f303a5cc12d6fcd784fdae6ab890830c24ca80` |
| 20 | `def` | [liftIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/liftiso--d0aedca8c0629e5b801b3bbe.md) | 168 | `declaration-track:d0aedca8c0629e5b801b3bbe772cae407f539eaa3613f299f814bf651556f0c2` |
| 21 | `def` | [liftComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/liftcomp--7c9f25663d0e4dc101e2f422.md) | 173 | `declaration-track:7c9f25663d0e4dc101e2f422e5be406d6a06823829c721b018a8fcc82e738ea6` |
| 22 | `def` | [liftId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/liftid--5e8dd16f544eb7f2137a96fb.md) | 179 | `declaration-track:5e8dd16f544eb7f2137a96fbf4458e9b6451fa710f230a90364d56abe598e6e5` |
| 23 | `theorem` | [lift_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/lift-comm--8e581a892842d45208813406.md) | 184 | `result-track:8e581a892842d45208813406ee34463f5ade9c44a003870018e9a8f456b25cc6` |
| 24 | `theorem` | [lift_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/lift-obj-arrow--a43ad94ffdf67d8abfce6336.md) | 191 | `result-track:a43ad94ffdf67d8abfce63362a121ee6c1b12fc89d7f1156640334528580557b` |
| 25 | `def` | [slice](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/slice--8003439efa10df1ad2702161.md) | 200 | `declaration-track:8003439efa10df1ad27021618461ce29220e68ebb1772ab0b7e102e7bf0da1a2` |
| 26 | `def` | [pullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/pullback--7f2f85118353bfe17800fe32.md) | 222 | `declaration-track:7f2f85118353bfe17800fe32277a1c4dd8cd7e46b08fe871cb7260af26a69e4b` |
| 27 | `def` | [pullbackComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/pullbackcomp--09c4f97d2c9454cc7a86ab7c.md) | 229 | `declaration-track:09c4f97d2c9454cc7a86ab7c51e0247fad466a69427f68456d881cc0c3784ed5` |
| 28 | `def` | [pullbackId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/pullbackid--10fa4d393bc823c7c36f4c24.md) | 234 | `declaration-track:10fa4d393bc823c7c36f4c247cae13ddfcbc275ef3bb57ec7d5d9d0eafad264e` |
| 29 | `theorem` | [pullback_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/pullback-obj-left--f0022e84f734af52df57e239.md) | 239 | `result-track:f0022e84f734af52df57e239a25baa2f9175b37b829f27d71fd793fe704f9768` |
| 30 | `theorem` | [pullback_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/pullback-obj-arrow--15e3bd23aeb04c03a1056541.md) | 245 | `result-track:15e3bd23aeb04c03a1056541e4b03e88823ce37d2d7bfb0cd79b8ee7ef0e3c24` |
| 31 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/map--c16c21edea23f0f93e9b2c23.md) | 259 | `declaration-track:c16c21edea23f0f93e9b2c236c52674231edc5aae12d3b5496bfc250190dbe57` |
| 32 | `def` | [mapComp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mapcomp--bdd97a824ff254acef7041c6.md) | 264 | `declaration-track:bdd97a824ff254acef7041c6c8c72047b96152d99232923caedf223a6d41240e` |
| 33 | `def` | [mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mapid--3f1cc903bc980e2d94f7bbc5.md) | 269 | `declaration-track:3f1cc903bc980e2d94f7bbc56cc34f44a91dd057ca474fe64e8a9c04b412e9d1` |
| 34 | `theorem` | [map_obj_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/map-obj-left--5b1dd899e37b004fb880aa7e.md) | 274 | `result-track:5b1dd899e37b004fb880aa7e34fe03ce16f508fe959894f20315ac5106aba452` |
| 35 | `theorem` | [map_obj_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/map-obj-arrow--92729ecb53e250a960faa4a5.md) | 279 | `result-track:92729ecb53e250a960faa4a57ad856bb9c8495bcf47d8bf3b5583f5ae8f30f37` |
| 36 | `instance` | [fullMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/fullmap--1ae9d3b67ef992de7d07d9a7.md) | 283 | `declaration-track:1ae9d3b67ef992de7d07d9a778a8e59cc224f6d5d3c2a46f9de76f1e698a0675` |
| 37 | `instance` | [faithful_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/faithful-map--aa582da69d469e18e587fb6f.md) | 290 | `declaration-track:aa582da69d469e18e587fb6f3f6fa324b392c5d3ff2aea45d8ff10983d772dc4` |
| 38 | `def` | [mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mapiso--dcfefee948064dced75c1e66.md) | 296 | `declaration-track:dcfefee948064dced75c1e66352b26207215bf3fff0590374780823b2be1edeb` |
| 39 | `def` | [congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/congr--263d1dc129de4e3d9e2f7818.md) | 310 | `declaration-track:263d1dc129de4e3d9e2f7818be29674bd2ec7f3b2c93467e8d576f3eac26d632` |
| 40 | `def` | [mapPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/mappullbackadj--a0669c2ea6c65d94f00cd715.md) | 331 | `declaration-track:a0669c2ea6c65d94f00cd71583226197920918fe9d224ee0835a43d725c13945` |
| 41 | `def` | [pullbackMapSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/pullbackmapself--6e2c5e669151c664286ee556.md) | 337 | `declaration-track:6e2c5e669151c664286ee55613c41c7088bbbde4fdd01ee7c2395a34b5f68c07` |
| 42 | `def` | [imageMonoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/imagemonoover--57cdf1b3aa4af539cba52329.md) | 351 | `declaration-track:57cdf1b3aa4af539cba52329e6fd97c1cea00fc407d05c9cb07130486a5716ec` |
| 43 | `theorem` | [imageMonoOver_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/imagemonoover-arrow--569d1540bc2fec1ce8e4c9a3.md) | 356 | `result-track:569d1540bc2fec1ce8e4c9a30b1f4634a96a09076cbe9ef63d43002e61717a1e` |
| 44 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/image--185c937f7c2f176b28d43612.md) | 369 | `declaration-track:185c937f7c2f176b28d4361258406d8d1d013f3e3600314d608a9ad271cf4494` |
| 45 | `def` | [imageForgetAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/imageforgetadj--ecd27a2627d6b43fd32783ed.md) | 385 | `declaration-track:ecd27a2627d6b43fd32783ed385a65a506e50647f9deee07a44a5c608740aed8` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/instance--e0e361bb47c76b5b8aeff09d.md) | 410 | `declaration-track:e0e361bb47c76b5b8aeff09d2fc1d2b6565b20d53fdc7ba409dbc9fdd4877fdf` |
| 47 | `instance` | [reflective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/reflective--755a845e49b8a1c536d75ae9.md) | 414 | `declaration-track:755a845e49b8a1c536d75ae98a3d97e84d071ffd12d6ffd1f952a9bda201c73f` |
| 48 | `def` | [forgetImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/forgetimage--bbdec34215388b5fec9cc334.md) | 420 | `declaration-track:bbdec34215388b5fec9cc334563076cdf524f0e3f927b53c247faf75bac05c23` |
| 49 | `def` | [«exists»](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/exists--eadfa66d84c12ee7cd9f0495.md) | 433 | `declaration-track:eadfa66d84c12ee7cd9f0495a9751553e6da87bfbcfec1f84fb4efb901da23ec` |
| 50 | `instance` | [faithful_exists](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/faithful-exists--524d4b8ce0de1f36be66fb6c.md) | 437 | `declaration-track:524d4b8ce0de1f36be66fb6c19ddc7cf69d0b84851bb0cdf708b60d89fbff54d` |
| 51 | `def` | [existsIsoMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/existsisomap--944343f04be20e429a429203.md) | 442 | `declaration-track:944343f04be20e429a429203ad40d50a8ebd52f908a3a7f49288e083c4d8fd86` |
| 52 | `def` | [existsPullbackAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/MonoOver/Variant6b5dc1f68f4e2cd11deb542e77bd579e2b533b240f468e58d791bab8fc041b8b.lean/declarations/existspullbackadj--c7772379208696cb08dcf942.md) | 453 | `declaration-track:c7772379208696cb08dcf942f884a1ddadefa905131d9c1ee21c490388b8c797` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
