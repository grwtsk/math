# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesSheafification.Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29d700e340a458dcda1725992e85e6b1117233ce",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29d700e340a458dcda1725992e85e6b1117233ce`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean.json)

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
| 1 | `class` | [PreservesSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/preservessheafification--5746cff25b6096358eecbc92.md) | 61 | `declaration-track:5746cff25b6096358eecbc9246d01d68c73840b85dc11509f8c3f923bb9781da` |
| 2 | `lemma` | [W_of_preservesSheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/w-of-preservessheafification--494915e97a8ec64d054353b2.md) | 66 | `result-track:494915e97a8ec64d054353b21a73034d163ead5b532ccdc17c448bc4bdf8d42c` |
| 3 | `lemma` | [W_isInvertedBy_whiskeringRight_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/w-isinvertedby-whiskeringright-presheaftosheaf--8f1ecc7db77d52232ee5d512.md) | 74 | `result-track:8f1ecc7db77d52232ee5d512be4d92a5433421c7d97831f27f21480f65be0bfb` |
| 4 | `abbrev` | [Sheaf.composeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheaf-composeandsheafify--c9d8bb0b80145423a86d6f2c.md) | 89 | `declaration-track:c9d8bb0b80145423a86d6f2c9aed31340dc6c34678d7986be142d712f5bb8163` |
| 5 | `def` | [toPresheafToSheafCompComposeAndSheafify](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/topresheaftosheafcompcomposeandsheafify--5aa0fd98891c325b811a0d86.md) | 98 | `declaration-track:5aa0fd98891c325b811a0d862d19d2cfbde6c52101baceb3a3cf7396643ae9ce` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/instance--f653b88348e836c328fac6b5.md) | 107 | `declaration-track:f653b88348e836c328fac6b52f0c52d701912079c3e3f6b6c74aac00c1bee180` |
| 7 | `def` | [presheafToSheafCompComposeAndSheafifyIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/presheaftosheafcompcomposeandsheafifyiso--2e9f6172493451d6deac4d49.md) | 117 | `declaration-track:2e9f6172493451d6deac4d49f8438153d1cda07d610bb46572363d6463efea43` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/instance--a639a3ff5bfe933ad019e2c1.md) | 122 | `declaration-track:a639a3ff5bfe933ad019e2c14c3d5fce3ad59794a18b304135d001f54c27d649` |
| 9 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions--8295e61320d8dd17a45d1cd7.md) | 134 | `result-track:8295e61320d8dd17a45d1cd7eadfdb809c78787ba0f5d0570e2ddf14bbc68f87` |
| 10 | `def` | [sheafComposeNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheafcomposenattrans--fb17d4556c4e1cabb8f0c3de.md) | 164 | `declaration-track:fb17d4556c4e1cabb8f0c3dedf51a975a0e85411cc5c870282c33453205c8413` |
| 11 | `lemma` | [sheafComposeNatTrans_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheafcomposenattrans-fac--2e6e6ee7c8c7305076d6985d.md) | 178 | `result-track:2e6e6ee7c8c7305076d6985d1af819c27d410823c41a1df8048d45c041d69721` |
| 12 | `lemma` | [sheafComposeNatTrans_app_uniq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheafcomposenattrans-app-uniq--9ad1c629390dc718865101b2.md) | 185 | `result-track:9ad1c629390dc718865101b21fb6e4b51001ecb212f7d89d1b249afcd7399985` |
| 13 | `lemma` | [GrothendieckTopology.preservesSheafification_iff_of_adjunctions_of_hasSheafCompose](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/grothendiecktopology-preservessheafification-iff-of-adjunctions-of-hassh--f6ece9ed826e1b96bae52a5a.md) | 197 | `result-track:f6ece9ed826e1b96bae52a5af39c85c7db919f33845d3d5b22196f6913c414f4` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/instance--74027a4645b8005acbea4683.md) | 209 | `declaration-track:74027a4645b8005acbea46839cac31f9dd404bf236797a1dfde5246d732e9669` |
| 15 | `def` | [sheafComposeNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheafcomposenatiso--253512744d5073a1b5f433da.md) | 217 | `declaration-track:253512744d5073a1b5f433da46135cd146a19487221cbe8e736f643ef1ab912e` |
| 16 | `def` | [sheafifyComposeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheafifycomposeiso--1e5654b24780b8378db49930.md) | 232 | `declaration-track:1e5654b24780b8378db49930cd80b96ec5f45f3eee0ca39ef76633ef17de3127` |
| 17 | `lemma` | [sheafComposeIso_hom_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheafcomposeiso-hom-fac--f7a42cee93e9cf0d3ee83ce7.md) | 238 | `result-track:f7a42cee93e9cf0d3ee83ce76fe6a486f088dc97cfd2f62df14ac04e30723b86` |
| 18 | `lemma` | [sheafComposeIso_inv_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheafcomposeiso-inv-fac--0e3c4a6179b6104ec5dc1df3.md) | 244 | `result-track:0e3c4a6179b6104ec5dc1df3744652af5aed9400b77050815d457f158def6b20` |
| 19 | `lemma` | [sheafToPresheaf_map_sheafComposeNatTrans_eq_sheafifyCompIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/sheaftopresheaf-map-sheafcomposenattrans-eq-sheafifycompiso-inv--d919f909156e5754d38bc033.md) | 274 | `result-track:d919f909156e5754d38bc0333e685206e1aa5e09a1ab816538db4fc8cca17920` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/instance--24de010d5db09743d00a250f.md) | 288 | `declaration-track:24de010d5db09743d00a250fc0b87cb244935a1569b8ce7875aa029a9f466ed5` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/instance--7033a4006ec711dd18deb613.md) | 294 | `declaration-track:7033a4006ec711dd18deb6138bacb271b84115db02438c41c5724d10c2e26f70` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/instance--3278e133878e507d2a681cc0.md) | 297 | `declaration-track:3278e133878e507d2a681cc062633e7207de2435ea47772118a41415815c6bbc` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variantcd34c8f3bfe89ac630ab6460ff5f00540a6cbec6f51b2c7892d6cc2e18358adb.lean/declarations/instance--b022e85ea5909cb1f56a930b.md) | 304 | `declaration-track:b022e85ea5909cb1f56a930b9053e581d8a2a6a6cd95d79c2051a4ec3ae6acf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
