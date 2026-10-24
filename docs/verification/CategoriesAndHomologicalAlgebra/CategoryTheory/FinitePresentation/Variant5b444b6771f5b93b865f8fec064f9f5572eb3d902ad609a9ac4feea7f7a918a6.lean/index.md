# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FinitePresentation.Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd6ca98e91939e1048e7b924f20e55bed5c9fc82",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd6ca98e91939e1048e7b924f20e55bed5c9fc82`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean.json)

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
| 1 | `lemma` | [RingHom.EssFiniteType.exists_comp_map_eq_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/declarations/ringhom-essfinitetype-exists-comp-map-eq-of-iscolimit--5cf80f995e98a9bf219ae027.md) | 45 | `result-track:5cf80f995e98a9bf219ae027ce9954c4d3ead516e14de1856e9c62199e69b515` |
| 2 | `lemma` | [RingHom.EssFiniteType.exists_eq_comp_ι_app_of_isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/declarations/ringhom-essfinitetype-exists-eq-comp-app-of-iscolimit--a6cd206f2a65ba6b5d697e5f.md) | 81 | `result-track:a6cd206f2a65ba6b5d697e5f763a48be5d8c1520b9fd6f57123b8e9e44c655bc` |
| 3 | `lemma` | [CommRingCat.preservesColimit_coyoneda_of_finitePresentation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/declarations/commringcat-preservescolimit-coyoneda-of-finitepresentation--f0ce2c9523465f94e2f1d991.md) | 144 | `result-track:f0ce2c9523465f94e2f1d99152dd947653a83c526ebc89a8c6900014fa3cf51a` |
| 4 | `lemma` | [CommRingCat.preservesFilteredColimits_coyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/declarations/commringcat-preservesfilteredcolimits-coyoneda--504e6c957be93577bf0f2477.md) | 165 | `result-track:504e6c957be93577bf0f247711f5661c36dc01b67f8e2e320c8d0ec54767eeab` |
| 5 | `lemma` | [CommRingCat.isFinitelyPresentable_under](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/declarations/commringcat-isfinitelypresentable-under--0ce0d0b45831d1b90cc55eb4.md) | 171 | `result-track:0ce0d0b45831d1b90cc55eb445372d419c11d5ecc346b17742a792ab1ff39401` |
| 6 | `lemma` | [CommRingCat.isFinitelyPresentable_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FinitePresentation/Variant5b444b6771f5b93b865f8fec064f9f5572eb3d902ad609a9ac4feea7f7a918a6.lean/declarations/commringcat-isfinitelypresentable-hom--e28da9ba17e3749683223653.md) | 177 | `result-track:e28da9ba17e374968322365308862b1a842fb2b8eaddf3b12d6edabde2fd0c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
