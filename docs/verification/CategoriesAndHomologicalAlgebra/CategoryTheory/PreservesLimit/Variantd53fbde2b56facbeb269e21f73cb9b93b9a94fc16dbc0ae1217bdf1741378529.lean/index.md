# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreservesLimit.Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e28cb4c9e10b26ead02a7a0158687e71b31666e5",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e28cb4c9e10b26ead02a7a0158687e71b31666e5`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean.json)

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
| 1 | `def` | [coconeCompShrinkYonedaHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/coconecompshrinkyonedahomequiv--72e4d3bf276033353cf440c8.md) | 44 | `declaration-track:72e4d3bf276033353cf440c825db7932beb329784494e416e4beef112ab704b9` |
| 2 | `def` | [coconePtToShrinkYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/coconepttoshrinkyoneda--bbe79795ff7620b9462c88cb.md) | 66 | `declaration-track:bbe79795ff7620b9462c88cbe1c31cb427a751a5091524f03c62138bb40eb744` |
| 3 | `lemma` | [coconePtToShrinkYoneda_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/coconepttoshrinkyoneda-comp--967d33cad5012368e4288f7f.md) | 73 | `result-track:967d33cad5012368e4288f7fdaa063d5e870b46544350d5557e2181498ff96ae` |
| 4 | `lemma` | [nonempty_isLimit_mapCone_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/nonempty-islimit-mapcone-iff--0e54122f00f3796beb244b41.md) | 82 | `result-track:0e54122f00f3796beb244b410a6cf6313d24e2506663c3bf39f67b9c2bf6fae0` |
| 5 | `lemma` | [preservesLimit_eq_isLocal_single](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/preserveslimit-eq-islocal-single--9b6f58a1f0320ec4946f4822.md) | 96 | `result-track:9b6f58a1f0320ec4946f48223ed4a2961fbea0e85943b26806e7c58d855fb126` |
| 6 | `abbrev` | [preservesLimitHomFamilySrc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/preserveslimithomfamilysrc--d8d275cf6d8aa0240b6f75d0.md) | 107 | `declaration-track:d8d275cf6d8aa0240b6f75d07082694138d4da84aa79b66c9de402fca64e8e67` |
| 7 | `abbrev` | [preservesLimitHomFamilyTgt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/preserveslimithomfamilytgt--0a9a5f0f436f72acc92d13b8.md) | 111 | `declaration-track:0a9a5f0f436f72acc92d13b81d2a48eacf2d775e7b84e9e078d074b98662fb5b` |
| 8 | `abbrev` | [preservesLimitHomFamily](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/preserveslimithomfamily--a415261cb816615647163b9a.md) | 119 | `declaration-track:a415261cb816615647163b9a7b713ef70b61a072c3e4b9a88fa5b2fbc904c19d` |
| 9 | `lemma` | [preservesLimit_eq_isLocal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/preserveslimit-eq-islocal--d5af8f87a496cbe4f0d891c9.md) | 124 | `result-track:d5af8f87a496cbe4f0d891c9083ef993d9d40b091097b3e88f692d99f9bb7ca0` |
| 10 | `lemma` | [preservesLimitsOfShape_eq_isLocal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesLimit/Variantd53fbde2b56facbeb269e21f73cb9b93b9a94fc16dbc0ae1217bdf1741378529.lean/declarations/preserveslimitsofshape-eq-islocal--f3e13b71d6a6a242606ebce7.md) | 136 | `result-track:f3e13b71d6a6a242606ebce7ee7a8ad1a05746ff7a374e65754b95f51638f6da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
