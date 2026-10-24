# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologicalFunctor.Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4fc270a07081aa35b065a5e91b40e8e0927f808",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4fc270a07081aa35b065a5e91b40e8e0927f808`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean.json)

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
| 1 | `def` | [homologicalKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologicalkernel--757ca517a010f56cc675034a.md) | 75 | `declaration-track:757ca517a010f56cc675034a87e4986a2fee0d2f034b2ae89e0cfadda4b59d38` |
| 2 | `lemma` | [mem_homologicalKernel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/mem-homologicalkernel-iff--1f56430d788cf00d5cf77da9.md) | 78 | `result-track:1f56430d788cf00d5cf77da9b43d9b033280cd65e8d160b6743430418a8a539c` |
| 3 | `class` | [IsHomological](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/ishomological--dcf0e5d740c8e3782ae28bce.md) | 90 | `declaration-track:dcf0e5d740c8e3782ae28bce53dbe2955dfd1015a022b2eff48e500bf75ca2ba` |
| 4 | `lemma` | [map_distinguished_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/map-distinguished-exact--9a4401e607c92f6435692664.md) | 94 | `result-track:9a4401e607c92f6435692664b56329c3b044198e57f0b960505486b6bfb3abc7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/instance--3121f5a3d67d041796ed34eb.md) | 98 | `declaration-track:3121f5a3d67d041796ed34eb8cd313c0273646da6b1a0032e049b4a2c0d8f2bb` |
| 6 | `lemma` | [IsHomological.mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/ishomological-mk--c1d36d6bee674fecd07fce3c.md) | 102 | `result-track:c1d36d6bee674fecd07fce3cfb0776ae99a7296d8b48d133aa060b2c95cff8fd` |
| 7 | `lemma` | [IsHomological.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/ishomological-of-iso--7fb4019da3ccc1c1fb9deada.md) | 112 | `result-track:7fb4019da3ccc1c1fb9deada4d362bc9139aad1df0a7ee5a2c0adeb1e4650b9b` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/instance--058a6c63f86c1f1ff7b5ea7d.md) | 122 | `declaration-track:058a6c63f86c1f1ff7b5ea7dc386e3524f30fe8eca71b0d32d48940b248eb02b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/instance--cc39ff1e49caed58934c7b75.md) | 125 | `declaration-track:cc39ff1e49caed58934c7b750cc220b85ee64b77271760221cf23a8099aa2e8c` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/instance--38eb698c4220f2e94c917df2.md) | 139 | `declaration-track:38eb698c4220f2e94c917df2cd74495df27d0e63d57a37fdd094cd8660398f46` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/instance--0929989fdca2c79d9815d709.md) | 160 | `declaration-track:0929989fdca2c79d9815d7091758582cd23beb9254b82df82bc9b7b95589f2df` |
| 12 | `lemma` | [isHomological_of_localization](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/ishomological-of-localization--bebdf6adacc2953938c0e596.md) | 163 | `result-track:bebdf6adacc2953938c0e596360eb29eb168a094eebd6093e901cfeb49c7c49e` |
| 13 | `def` | [homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence--331ad82ef99a22f5a5bf09e2.md) | 181 | `declaration-track:331ad82ef99a22f5a5bf09e29137172ffc0ec0fcb63020715a306d8b9523cb83` |
| 14 | `lemma` | [homologySequenceδ_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-naturality--1780b9be9f34e423b794f916.md) | 187 | `result-track:1780b9be9f34e423b794f916f9c18f7df62d2d21da864ced1a2a09e0739ca429` |
| 15 | `lemma` | [comp_homologySequenceδ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/comp-homologysequence--15625fe25b478c1e68490b6c.md) | 202 | `result-track:15625fe25b478c1e68490b6c63dd41e65c335a1df5bdc70beec2614a56c00284` |
| 16 | `lemma` | [homologySequenceδ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-comp--c163b18f5bf60794238920e7.md) | 208 | `result-track:c163b18f5bf60794238920e78461fd7a95ae67ed563bf959bc3923152bd7b312` |
| 17 | `lemma` | [homologySequence_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-comp--6eb908d4609d6f1487f250e5.md) | 214 | `result-track:6eb908d4609d6f1487f250e5adfe0e0c52c2d68507fbe40d8712820da8565a6b` |
| 18 | `lemma` | [homologySequence_exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-exact--d0afcb4b7c2367fa10033679.md) | 222 | `result-track:d0afcb4b7c2367fa1003367973c59421572d61c31177e300c89a35a696cdcef0` |
| 19 | `lemma` | [homologySequence_exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-exact--7f404b46d7a9eccdc7dbff13.md) | 231 | `result-track:7f404b46d7a9eccdc7dbff135466dd88110025a246c0e94453dec4efdc6f39e0` |
| 20 | `lemma` | [homologySequence_exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-exact--80c56e0e2f591c7388f97715.md) | 238 | `result-track:80c56e0e2f591c7388f97715878376a1d6dd805a24245565ad64565082ee0628` |
| 21 | `lemma` | [homologySequence_epi_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-epi-shift-map-mor-iff--ee041d0556d2ebb246335e78.md) | 248 | `result-track:ee041d0556d2ebb246335e78cddc3ea1f639237b7d85cc4f69bc76ed2bf522df` |
| 22 | `lemma` | [homologySequence_mono_shift_map_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-mono-shift-map-mor-iff--255a1261162816113880c94f.md) | 252 | `result-track:255a1261162816113880c94f8092ac1b3f6da57a3b7d77d54a073ee7f2d5775d` |
| 23 | `lemma` | [homologySequence_epi_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-epi-shift-map-mor-iff--b8935e0ce5710382cdf03fd8.md) | 256 | `result-track:b8935e0ce5710382cdf03fd80325021ebebcbc71070f475e632fa594d61f7552` |
| 24 | `lemma` | [homologySequence_mono_shift_map_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequence-mono-shift-map-mor-iff--4373eea7d1a198706dabbf6a.md) | 260 | `result-track:4373eea7d1a198706dabbf6a612fc57d72623a17c1f1627af1d47ad0ea292051` |
| 25 | `lemma` | [mem_homologicalKernel_trW_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/mem-homologicalkernel-trw-iff--7d26dbb58e54a0f7358239f1.md) | 266 | `result-track:7d26dbb58e54a0f7358239f19fe4ebcda5215de3fc396c1f69919aecc334329e` |
| 26 | `def` | [homologySequenceComposableArrows₅](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequencecomposablearrows--63dabfbc61df6c96cca9b3c5.md) | 288 | `declaration-track:63dabfbc61df6c96cca9b3c5c27955c82d7fb38d1186bca00aff46739b1da60c` |
| 27 | `lemma` | [homologySequenceComposableArrows₅_exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologicalFunctor/Variant951d7bf960899265c4ae90c74dc4c49fbe401e7cf525f29100bb15884235f38a.lean/declarations/homologysequencecomposablearrows-exact--0c4e077031e3d4f5a08fe816.md) | 293 | `result-track:0c4e077031e3d4f5a08fe816ded8d390803ba34f910eaf16f7a3e4d63002570a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
