# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomologySequence.Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f5f8d8dc64959ddb339a9755e5390147885ffba",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f5f8d8dc64959ddb339a9755e5390147885ffba`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [homologyFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/homologyfunctor--6999a4a4dd8c011c5cec41c7.md) | 38 | `declaration-track:6999a4a4dd8c011c5cec41c79cd65fde39c04b750d7d55c97300ae0ba353f783` |
| 2 | `def` | [homologyFunctorFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/homologyfunctorfactors--fcb2b187f5edd572c2ee0d72.md) | 43 | `declaration-track:fcb2b187f5edd572c2ee0d72f5690747e1dbd5017230fb7fd39c4f0eed67037f` |
| 3 | `def` | [homologyFunctorFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/homologyfunctorfactorsh--4f590c14024d0be1763bd0ce.md) | 49 | `declaration-track:4f590c14024d0be1763bd0ce0de5e7b475b6ee10bf87e5eb4c772a2268565c25` |
| 4 | `lemma` | [isIso_Qh_map_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/isiso-qh-map-iff--9c22638551e7079d6de60d14.md) | 54 | `result-track:9c22638551e7079d6de60d14e933c97bd63d564215448d52ec0d8351c7cc634f` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/instance--630620be188c56ede108cd2b.md) | 65 | `declaration-track:630620be188c56ede108cd2ba9360938007f82171cfc0d8b42f7e95127ba2336` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/instance--da742af44a84a6182068a3e7.md) | 71 | `declaration-track:da742af44a84a6182068a3e7f98f594d0ef77b6ba29026c079cb41188589b910` |
| 7 | `def` | [δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/anonymous--d0c61b9c2cf8ae4669014e22.md) | 81 | `declaration-track:d0c61b9c2cf8ae4669014e22f8ea76cfece12ee4120597ca9d4d1275d8b86022` |
| 8 | `lemma` | [comp_δ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/comp--249d9b7a50cee8ea7ca3673d.md) | 90 | `result-track:249d9b7a50cee8ea7ca3673d3658e2203fdcae2539a34fd797e9da505ce33a0a` |
| 9 | `lemma` | [δ_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/comp--57529ce84870e88ca44bf69f.md) | 94 | `result-track:57529ce84870e88ca44bf69feeccdf7da9ab7c3847b5d9dffb97e30d182d33cc` |
| 10 | `lemma` | [exact₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/exact--1ea8ebf1ac3df305f43246cc.md) | 97 | `result-track:1ea8ebf1ac3df305f43246ccd98b126cd8612fe8b115c23fb20f3f4cb11380ac` |
| 11 | `lemma` | [exact₃](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/exact--5b905386ea2e1108cb8894da.md) | 103 | `result-track:5b905386ea2e1108cb8894daad70f8f3eaf18ad54daacd0cac9abc8fdc483b69` |
| 12 | `lemma` | [exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/exact--23be9ed4900cdafda00251b6.md) | 106 | `result-track:23be9ed4900cdafda00251b6851a71130402994ab606580061f85e19e4318e9d` |
| 13 | `lemma` | [epi_homologyMap_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/epi-homologymap-mor-iff--4a65e1897d12dfebc57618a2.md) | 109 | `result-track:4a65e1897d12dfebc57618a2a9471d631dd97bbf005997070980c7e4e19022e3` |
| 14 | `lemma` | [mono_homologyMap_mor₁_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/mono-homologymap-mor-iff--4a3b64cdcf6e5e4c7038e001.md) | 113 | `result-track:4a3b64cdcf6e5e4c7038e001ce7bdda90bb682f1e9ad16222f4f441132fe9fed` |
| 15 | `lemma` | [epi_homologyMap_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/epi-homologymap-mor-iff--17e1efc2d1a75f1673ae542b.md) | 117 | `result-track:17e1efc2d1a75f1673ae542b6c3dfa20781153012d56f592ebb3018cded76fcc` |
| 16 | `lemma` | [mono_homologyMap_mor₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HomologySequence/Varianteb3857e8cfeaa03c8932091c82f30dca874c40fe65f7c7c39deb012e38a265cb.lean/declarations/mono-homologymap-mor-iff--a0ced43a57c25c8c1b9c1b29.md) | 121 | `result-track:a0ced43a57c25c8c1b9c1b29bf71b104bd0aadf24768500c7f78bab6e85aa83c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
