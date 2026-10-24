# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Path.Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9d729d974142d55bf2d0a28bb87e63c283b8927",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9d729d974142d55bf2d0a28bb87e63c283b8927`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Horn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Path₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/path--51be873b7c9a7e6e193229e2.md) | 34 | `declaration-track:51be873b7c9a7e6e193229e2954b1dadbea559b4ad2e4240b60a579a92e61fca` |
| 2 | `def` | [Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/path--4d9b0263ae3fc9981f5ae02d.md) | 46 | `declaration-track:4d9b0263ae3fc9981f5ae02d820487eebd4635bc906e5f3ab88946785d5110e8` |
| 3 | `abbrev` | [vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/vertex--9a46a67c45c2d1796e9add16.md) | 54 | `declaration-track:9a46a67c45c2d1796e9add16a1e36ec8961f60ec16a4a56f65574ccaedaf3da6` |
| 4 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/arrow--acc101557522fbffb01b8f46.md) | 58 | `declaration-track:acc101557522fbffb01b8f4653cc6c55dba0039acd56c035c475ca68f9796913` |
| 5 | `lemma` | [arrow_src](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/arrow-src--2acbcda62af173a012e1a680.md) | 62 | `result-track:2acbcda62af173a012e1a6804fb28d31572a2996d63174920495744343578f00` |
| 6 | `lemma` | [arrow_tgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/arrow-tgt--df1f9fb35e37d724a0f14d09.md) | 67 | `result-track:df1f9fb35e37d724a0f14d097cd60bed8630924b7f988278dcb061c2b525a805` |
| 7 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/ext--0b9043100bbbd68e5bb5dbf6.md) | 72 | `result-track:0b9043100bbbd68e5bb5dbf662b02ff5e0237d4c257858f5226a79b91e81c665` |
| 8 | `lemma` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/ext--15336a457fadd31bfb773451.md) | 78 | `result-track:15336a457fadd31bfb77345111c46f7cfb422ab8a9098db6288994b78e821965` |
| 9 | `def` | [interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/interval--52a46cc5a1f52531e9f53a05.md) | 88 | `declaration-track:52a46cc5a1f52531e9f53a05ca7ee9acfe625f4233322b7c59598870c5e80868` |
| 10 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map--2dfbf9053398588e23512838.md) | 97 | `declaration-track:2dfbf9053398588e235128385fe981e9b614b77fb075594c1a9de92df8672a8e` |
| 11 | `lemma` | [map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map-vertex--460fdf65378c1f4b70a4e5d3.md) | 109 | `result-track:460fdf65378c1f4b70a4e5d36edb080c621eada3a6776cb9255dd50d13171983` |
| 12 | `lemma` | [map_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map-arrow--71707c4af6214140b20fddfe.md) | 115 | `result-track:71707c4af6214140b20fddfe7a0609ca16a54a877fce0db903d67952e149b99b` |
| 13 | `lemma` | [map_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map-interval--7f7fb462f88be0320e633702.md) | 120 | `result-track:7f7fb462f88be0320e633702eecb601425fee86ecf442afec426c2101936447b` |
| 14 | `def` | [spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine--a822591c738f7e9d1a902555.md) | 130 | `declaration-track:a822591c738f7e9d1a902555d6f27ca95a594a0f1249417182ad650d09f37e8c` |
| 15 | `lemma` | [trunc_spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/trunc-spine--51bad8a0484510a80ef2b57d.md) | 146 | `result-track:51bad8a0484510a80ef2b57d0dca4a638e77d1d06a137cea07a0078ef4c5a5f1` |
| 16 | `lemma` | [spine_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-vertex--6f76a8d44a280b6fce22fb76.md) | 154 | `result-track:6f76a8d44a280b6fce22fb768a35cd7d8c555b8b3d8568334ce729d9d1d302f3` |
| 17 | `lemma` | [spine_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-arrow--1d457b0d0cf2f3638e9ca327.md) | 161 | `result-track:1d457b0d0cf2f3638e9ca32759d37f3a1a11e33b1278aecc27f7d7ecf7ef0ab2` |
| 18 | `lemma` | [spine_map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-map-vertex--099fc49c107efbeb101b46ac.md) | 165 | `result-track:099fc49c107efbeb101b46ac58ea59cf17cf8eb71403c87d35ddf2ad0dafee74` |
| 19 | `lemma` | [spine_map_subinterval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-map-subinterval--fad6168ee82e22036ad5475b.md) | 173 | `result-track:fad6168ee82e22036ad5475bcf5b5cbaf38c4e612ae2537804ab77dab740d3b8` |
| 20 | `abbrev` | [Path](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/path--2c8fefa660fce500269a9ac4.md) | 188 | `declaration-track:2c8fefa660fce500269a9ac4a93cc594b3d32cf6d53d098308c9016bf2d117bf` |
| 21 | `abbrev` | [vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/vertex--8a694c03c13bfda1e3cb92bf.md) | 195 | `declaration-track:8a694c03c13bfda1e3cb92bfd7959c76ec4e855ee2e1c3015a5c2d51a9c86207` |
| 22 | `abbrev` | [arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/arrow--f68f8dbe65e3d574879dfe07.md) | 199 | `declaration-track:f68f8dbe65e3d574879dfe0776942a5ec76e255f88b3934bc26e7a9a50e9e545` |
| 23 | `lemma` | [arrow_src](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/arrow-src--90a4506c148af97c3551f47a.md) | 203 | `result-track:90a4506c148af97c3551f47ae3c92014875a5e739dd47c0b8118bee4b39fd6ea` |
| 24 | `lemma` | [arrow_tgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/arrow-tgt--a6caaa41b556e438ce6594fe.md) | 208 | `result-track:a6caaa41b556e438ce6594fe993b2beef0546b9139bf46fadae3a9155691000b` |
| 25 | `lemma` | [ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/ext--332a7c8bad7e0847a15daa2e.md) | 213 | `result-track:332a7c8bad7e0847a15daa2ebf2b3a8a7c7a03f43ebf4617f3be72ddb90f37f0` |
| 26 | `lemma` | [ext'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/ext--e590c4953ddd4148ec10134d.md) | 219 | `result-track:e590c4953ddd4148ec10134d5ba71a017dbe527db9d2f24ba86d03d77524f7ea` |
| 27 | `def` | [interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/interval--f43f672609cc57b14c85df87.md) | 224 | `declaration-track:f43f672609cc57b14c85df87588b8a3bb83d6797e1672936972b6a0d09d82826` |
| 28 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map--a58cfb28c24212593fb08b1a.md) | 230 | `declaration-track:a58cfb28c24212593fb08b1a94fad0ab1e5d737cb46f50936e804da0bca851a0` |
| 29 | `lemma` | [map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map-vertex--8ab1e5f429ee2311da0f0aac.md) | 234 | `result-track:8ab1e5f429ee2311da0f0aacd5b0724c3d4ff89636a7d232c364ad27659bcb20` |
| 30 | `lemma` | [map_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map-arrow--9c2ce7a6b19bccd31a678aad.md) | 239 | `result-track:9c2ce7a6b19bccd31a678aadbe7905f2c05727effeb71e12c9eadc8305cbc9b8` |
| 31 | `lemma` | [map_interval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/map-interval--538118066f5ddd4b392c72f4.md) | 244 | `result-track:538118066f5ddd4b392c72f4a562bdbb4cb4d2b985efd66c90aa89abbd633ed7` |
| 32 | `def` | [spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine--d1f92a0e1c9ad3a209cf52b8.md) | 256 | `declaration-track:d1f92a0e1c9ad3a209cf52b81ad1dc8ae27250b14f528498321b72cc86df4293` |
| 33 | `lemma` | [spine_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-vertex--51e77e29c25983c667cce9b4.md) | 260 | `result-track:51e77e29c25983c667cce9b4681a452484fce8b4f7028ca4dcdc3db96c32c542` |
| 34 | `lemma` | [spine_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-arrow--b5ab8a7fcd07498b8fff656f.md) | 265 | `result-track:b5ab8a7fcd07498b8fff656fef4cbaa01bf330316d36643d37318e92f51047b9` |
| 35 | `lemma` | [truncation_spine](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/truncation-spine--7ce4a6bc9bfbaa93c2f9701a.md) | 271 | `result-track:7ce4a6bc9bfbaa93c2f9701a5ace6992c375920b3260788ebd7e6271c864d4ec` |
| 36 | `lemma` | [spine_map_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-map-vertex--736da4441655d3e632210be1.md) | 275 | `result-track:736da4441655d3e632210be1b1280f14440e8ab99bb15115567d1a08b4a39673` |
| 37 | `lemma` | [spine_map_subinterval](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/spine-map-subinterval--fa82385c327c19d85cf613d7.md) | 282 | `result-track:fa82385c327c19d85cf613d7182ad3270c7d9dfb53357edc68ab4c5a67a34b77` |
| 38 | `def` | [stdSimplex.spineId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/stdsimplex-spineid--576fe8c55609c3908e9dd0af.md) | 289 | `declaration-track:576fe8c55609c3908e9dd0af379e37c58376a9b91c460564fab28236c2c2a251` |
| 39 | `lemma` | [stdSimplex.spineId_vertex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/stdsimplex-spineid-vertex--441cff1f226ea753922e2121.md) | 293 | `result-track:441cff1f226ea753922e21211bc8a4630cf4f05c58302955c0808c95efef844b` |
| 40 | `lemma` | [stdSimplex.spineId_arrow_apply_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/stdsimplex-spineid-arrow-apply-zero--60563125e91c5e9a800a35fe.md) | 297 | `result-track:60563125e91c5e9a800a35fe38ed87a63ab1bd273f1d4d1e31e00618d0db1ebc` |
| 41 | `lemma` | [stdSimplex.spineId_arrow_apply_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/stdsimplex-spineid-arrow-apply-one--54fa69929ebb3748007e6d47.md) | 301 | `result-track:54fa69929ebb3748007e6d470c46648d0795178f4c2042660a20b077deb56d70` |
| 42 | `def` | [Subcomplex.liftPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/subcomplex-liftpath--5bef3db98a52b55d18148dbf.md) | 307 | `declaration-track:5bef3db98a52b55d18148dbfa0d72968cfcf256b532eb89b23b9ccb0b35ac0f5` |
| 43 | `lemma` | [Subcomplex.map_ι_liftPath](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/subcomplex-map-liftpath--4d76cdff629bfe1ddda9f3ee.md) | 317 | `result-track:4d76cdff629bfe1ddda9f3ee20c25f78378829abd7bb48d6e3ea356376bcce47` |
| 44 | `def` | [horn.spineId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/horn-spineid--3756e12adba72a02fa799253.md) | 325 | `declaration-track:3756e12adba72a02fa7992532ed69b6e513bcc00e4c96ee8687ec186bfc69c11` |
| 45 | `lemma` | [horn.spineId_map_hornInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant644186aab122f161ce2af3d81422fde91a36154830b41140209a51d08c019c1b.lean/declarations/horn-spineid-map-horninclusion--d9e1419781558910983cb4c8.md) | 334 | `result-track:d9e1419781558910983cb4c8605071e9c5e44c5258757ab8f57a80e99b79b36a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
