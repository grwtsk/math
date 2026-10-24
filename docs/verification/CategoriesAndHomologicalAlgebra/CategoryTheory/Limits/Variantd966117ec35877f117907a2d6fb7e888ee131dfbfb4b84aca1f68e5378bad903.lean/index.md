# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00e91245f5f20047ecfb41a228500320e3e21ed2",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00e91245f5f20047ecfb41a228500320e3e21ed2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean.json)

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
| 1 | `theorem` | [preserves_lift_mapCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preserves-lift-mapcone--db87aa49527f1f373151c7a4.md) | 45 | `result-track:db87aa49527f1f373151c7a4c6e36110dfe231835acc57b6c57bc465bca944cb` |
| 2 | `def` | [preservesLimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preserveslimitiso--171b988ac00f946ef5301261.md) | 54 | `declaration-track:171b988ac00f946ef53012614b77639c8b3e7f27e31df829742ba6b17440e7c5` |
| 3 | `theorem` | [preservesLimitIso_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preserveslimitiso-hom--009b846628ef3f28540e1648.md) | 58 | `result-track:009b846628ef3f28540e1648ff581dbcfb7772de7560deed1c507edbdeec00fe` |
| 4 | `theorem` | [preservesLimitIso_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preserveslimitiso-inv--fae5b4f838568a0ef46a1b6a.md) | 63 | `result-track:fae5b4f838568a0ef46a1b6a310be77564e58a9abac924c079a09ee6f3742eab` |
| 5 | `theorem` | [lift_comp_preservesLimitIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/lift-comp-preserveslimitiso-hom--04ffdfb6d45bd50b54a0c545.md) | 68 | `result-track:04ffdfb6d45bd50b54a0c54596a5ee1739ac875276fefa5e20ecb830f60c0f81` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/instance--553b58a922d2641b29590599.md) | 74 | `declaration-track:553b58a922d2641b295905991f07b3f3f0234619d99b01a49a1af5b216f8c066` |
| 7 | `def` | [preservesLimitNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preserveslimitnatiso--1c1cc92975b44e5c6d701bb7.md) | 83 | `declaration-track:1c1cc92975b44e5c6d701bb78795fc703b64f636716276ac11b6802a54266408` |
| 8 | `lemma` | [preservesLimit_of_isIso_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preserveslimit-of-isiso-post--bd284f7cf71d537974ae3228.md) | 100 | `result-track:bd284f7cf71d537974ae3228f7112cb1bfdc23db433449c5333dad7157d7d782` |
| 9 | `theorem` | [preserves_desc_mapCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preserves-desc-mapcocone--a9bbaee979f0deb8255d950d.md) | 112 | `result-track:a9bbaee979f0deb8255d950d81c569c3af3b8c64bbe7c2bc663a16000180eb59` |
| 10 | `def` | [preservesColimitIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preservescolimitiso--6f5972de44a034c7fc9a3b21.md) | 122 | `declaration-track:6f5972de44a034c7fc9a3b210edd90f46ad72216bf489fb60474223b72ff79f6` |
| 11 | `theorem` | [ι_preservesColimitIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preservescolimitiso-inv--a1f908d8f463bce78555abe5.md) | 126 | `result-track:a1f908d8f463bce78555abe58e3e821f26ccd2e15880a52fecfcf69014c7390b` |
| 12 | `theorem` | [ι_preservesColimitIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preservescolimitiso-hom--96eaa7023fbd8d3967ac32d3.md) | 131 | `result-track:96eaa7023fbd8d3967ac32d3053257cb8f2d638b800c41694c82904b83988deb` |
| 13 | `theorem` | [preservesColimitIso_inv_comp_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preservescolimitiso-inv-comp-desc--7132ebcc8434c308f8fb9851.md) | 136 | `result-track:7132ebcc8434c308f8fb985125da5820bf4a644c0a1fa9575e1a2c20645db6a8` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/instance--21f4b48228e6a8504addbdc3.md) | 142 | `declaration-track:21f4b48228e6a8504addbdc33a7c6397065ce5baeb24578d8a4f93637f6f84d3` |
| 15 | `def` | [preservesColimitNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preservescolimitnatiso--b231a947cd024783ae91c4c5.md) | 151 | `declaration-track:b231a947cd024783ae91c4c5fee7b8964ba732999be955ebe8c1896b6f6093e0` |
| 16 | `lemma` | [preservesColimit_of_isIso_post](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantd966117ec35877f117907a2d6fb7e888ee131dfbfb4b84aca1f68e5378bad903.lean/declarations/preservescolimit-of-isiso-post--cebe50b2831ca09bf7b1ea84.md) | 171 | `result-track:cebe50b2831ca09bf7b1ea84ebfea971f30eccc3def739e6c781349fbb30cd58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
