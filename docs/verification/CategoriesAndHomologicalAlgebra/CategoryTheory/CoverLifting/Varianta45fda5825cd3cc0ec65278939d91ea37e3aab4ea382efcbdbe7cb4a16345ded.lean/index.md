# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.CoverLifting.Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40637bfe56ffef83f620b50a8f018b54fffb3897",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40637bfe56ffef83f620b50a8f018b54fffb3897`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean.json)

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
| 1 | `class` | [Functor.IsCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/functor-iscocontinuous--5128187815980e4a3ba27581.md) | 75 | `declaration-track:5128187815980e4a3ba27581916b4e457854cb9b21746caabdf55de7102b92d7` |
| 2 | `lemma` | [Functor.cover_lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/functor-cover-lift--494030351c1c6c3fca814793.md) | 78 | `result-track:494030351c1c6c3fca814793c638265fc0a74613d510a4143fef2252eac4ec7a` |
| 3 | `instance` | [isCocontinuous_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/iscocontinuous-id--5a2aab1356f7d8439e5b980b.md) | 83 | `declaration-track:5a2aab1356f7d8439e5b980b92fb33f410f98f0310a24a5405d1b2df04d29114` |
| 4 | `theorem` | [isCocontinuous_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/iscocontinuous-comp--a912e62306050b6b19359fc4.md) | 87 | `result-track:a912e62306050b6b19359fc403e26e6fe6afa36c19dda754009f9ea4bb2572be` |
| 5 | `lemma` | [Functor.IsCocontinuous.of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/functor-iscocontinuous-of-iso--3b10a7a6249a9dce578da921.md) | 92 | `result-track:3b10a7a6249a9dce578da9218dd77e619c89412d359f3a6a0ea6bab9239665e0` |
| 6 | `lemma` | [Functor.IsCocontinuous.iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/functor-iscocontinuous-iff-of-iso--3fde2cf6d707c4241dda5dd0.md) | 101 | `result-track:3fde2cf6d707c4241dda5dd0f3ab118676cb23e6e11560023dfff1de49dd7abc` |
| 7 | `lemma` | [CoverPreserving.of_comp_of_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/coverpreserving-of-comp-of-iscocontinuous--5c8f3b9d6c5f9aaae6bc6bb2.md) | 105 | `result-track:5c8f3b9d6c5f9aaae6bc6bb291588e8870d74d5bad326bc21f747030cf0c4aef` |
| 8 | `lemma` | [Adjunction.isCocontinuous_iff_coverPreserving](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/adjunction-iscocontinuous-iff-coverpreserving--7b39ec2019f813ed782ddc9d.md) | 116 | `result-track:7b39ec2019f813ed782ddc9d6355db8a0edc21302a934e96ed9f4496adc0b6e8` |
| 9 | `lemma` | [Adjunction.isContinuous_of_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/adjunction-iscontinuous-of-iscocontinuous--817dc96ae86fe89a6d367aa7.md) | 131 | `result-track:817dc96ae86fe89a6d367aa718799a1b4826074de6b1af93123c2d0d4deec94f` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/instance--26f63b55bb02b25e36ceedfd.md) | 137 | `declaration-track:26f63b55bb02b25e36ceedfd76c1808c3527847f4742f49e0b38062943c36fec` |
| 11 | `def` | [liftAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/liftaux--9593e9a3a5303c599c7418fd.md) | 172 | `declaration-track:9593e9a3a5303c599c7418fda51f87a847b3acde3bb051260520aed4a3efdc2e` |
| 12 | `lemma` | [liftAux_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/liftaux-map--13420bcf2b14d1719a6e6ad3.md) | 189 | `result-track:13420bcf2b14d1719a6e6ad3a570f75d2bf3d95754ff9e2bff95c4ea588b8168` |
| 13 | `lemma` | [liftAux_map'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/liftaux-map--ae71445be00373c3d01205ae.md) | 209 | `result-track:ae71445be00373c3d01205ae5a441beacf26a2f38ce3adce7c5eb19dd75c7de5` |
| 14 | `def` | [lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/lift--334f66b0a9c3063259fd6e00.md) | 225 | `declaration-track:334f66b0a9c3063259fd6e00f892b7e6598619adbb7e55a9b19ffeda47446f2b` |
| 15 | `lemma` | [fac'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/fac--db8e88b32d6cf3814b59fec6.md) | 232 | `result-track:db8e88b32d6cf3814b59fec68bad5359a65fc0a8a30dc95a676a4e925d7576db` |
| 16 | `lemma` | [fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/fac--62ad7b8d4678a8bbccdba025.md) | 239 | `result-track:62ad7b8d4678a8bbccdba025ae560f084effeaf50318bf0bfe4cfc010bf6293f` |
| 17 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/hom-ext--86a5d84ee4a550c8167fa208.md) | 251 | `result-track:86a5d84ee4a550c8167fa20867d70adcc973a5acdb65a59933fe21710de4846f` |
| 18 | `def` | [isLimitMultifork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/islimitmultifork--cb94324c51d40a2e8d4cdf41.md) | 266 | `declaration-track:cb94324c51d40a2e8d4cdf410f7c308bdc4741ba06b106c4c9b6769a6103a585` |
| 19 | `theorem` | [ran_isSheaf_of_isCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/ran-issheaf-of-iscocontinuous--4ceada379b65e0b68f0282a0.md) | 280 | `result-track:4ceada379b65e0b68f0282a022900f4df451a3f7badc8c20c988b166a953cb02` |
| 20 | `def` | [Functor.sheafPushforwardCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/functor-sheafpushforwardcocontinuous--9f78de91c0dcb94015469dd6.md) | 290 | `declaration-track:9f78de91c0dcb94015469dd68254403c2e309bd4fe1eaa85b9a7ec641044a60d` |
| 21 | `def` | [Functor.sheafPushforwardCocontinuousCompSheafToPresheafIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/functor-sheafpushforwardcocontinuouscompsheaftopresheafiso--36d689225b215232accfb380.md) | 296 | `declaration-track:36d689225b215232accfb3802508d80f90c5b9ffdd9f878556ada2ffcfa1f767` |
| 22 | `def` | [sheafAdjunctionCocontinuous](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/sheafadjunctioncocontinuous--19b64ae76eedf74d1db8b4cd.md) | 321 | `declaration-track:19b64ae76eedf74d1db8b4cd4bd9d6621a52446e6aa58b4148db92b0ca90a31f` |
| 23 | `lemma` | [sheafAdjunctionCocontinuous_unit_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/sheafadjunctioncocontinuous-unit-app-hom--87cfc2d6988b350ab3ca361d.md) | 328 | `result-track:87cfc2d6988b350ab3ca361ded379a8844f6902cd798440f2374aa1195a5da75` |
| 24 | `lemma` | [sheafAdjunctionCocontinuous_counit_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/sheafadjunctioncocontinuous-counit-app-hom--fb37ec21e68586108faf145b.md) | 346 | `result-track:fb37ec21e68586108faf145b7b8ad6e108fcc09e4927a8ca23d89d47c78c7ed7` |
| 25 | `lemma` | [sheafAdjunctionCocontinuous_homEquiv_apply_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/sheafadjunctioncocontinuous-homequiv-apply-hom--b2546eaf7b63e093c3c35ef2.md) | 361 | `result-track:b2546eaf7b63e093c3c35ef2c0eb6991147753af70ad31b8dde162e5dd8fb297` |
| 26 | `def` | [pushforwardContinuousSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/pushforwardcontinuoussheafificationcompatibility--54890bdb4146d800c3cfeace.md) | 381 | `declaration-track:54890bdb4146d800c3cfeace5b43cfd5c72954a26a501a9a3555e7fc01b920f1` |
| 27 | `lemma` | [toSheafify_pullbackSheafificationCompatibility](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/tosheafify-pullbacksheafificationcompatibility--1655a66d47e763f07261c694.md) | 390 | `result-track:1655a66d47e763f07261c6947197487583dfb439c63f31034c4a8e46c5ab31b9` |
| 28 | `lemma` | [pushforwardContinuousSheafificationCompatibility_hom_app_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Varianta45fda5825cd3cc0ec65278939d91ea37e3aab4ea382efcbdbe7cb4a16345ded.lean/declarations/pushforwardcontinuoussheafificationcompatibility-hom-app-hom--ee33ce966d995491046a043d.md) | 413 | `result-track:ee33ce966d995491046a043d98f730d97eeaa67195bc77e43bd90469a7e10fc5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
