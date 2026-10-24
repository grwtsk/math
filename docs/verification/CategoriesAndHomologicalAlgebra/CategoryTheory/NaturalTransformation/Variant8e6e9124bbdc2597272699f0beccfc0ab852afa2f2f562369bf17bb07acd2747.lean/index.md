# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.NaturalTransformation.Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "181b33384b36c207cb8d32faf2c5f3f9ad5c4953",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `181b33384b36c207cb8d32faf2c5f3f9ad5c4953`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.FullyFaithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ObjectProperty.FullSubcategory` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsMonoidal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/ismonoidal--5ba0c808c11d8afb225f4c61.md) | 44 | `declaration-track:5ba0c808c11d8afb225f4c6169dedb91bd4a413e821b471a6070f0bde5ed0240` |
| 2 | `instance` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/id--78982aac0d61d13166fe47d7.md) | 52 | `declaration-track:78982aac0d61d13166fe47d77c1a53309a5a44930e810eb0c8ba6e1e20b0ae7f` |
| 3 | `instance` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/comp--0f604d7ee571f5f1a1d2b6e3.md) | 54 | `declaration-track:0f604d7ee571f5f1a1d2b6e3f19ea9aee8b632e0fa19c910eb0bba0a4a943051` |
| 4 | `instance` | [hcomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/hcomp--5ae163f8788691888d5fb5e0.md) | 57 | `declaration-track:5ae163f8788691888d5fb5e004dd397ef51d49b4ee6ead3e67857f8b7aa8b2e2` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--058384056fa7e56a7ddac872.md) | 66 | `declaration-track:058384056fa7e56a7ddac872b6ef0067e601fefd6e4426485cf64f5dc71b6153` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--a655a5bfc77919872de8f2d1.md) | 68 | `declaration-track:a655a5bfc77919872de8f2d143556bfab333794978a8d46fd29ec9b095609cba` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--6bbb5a851a4cb707e1142d67.md) | 70 | `declaration-track:6bbb5a851a4cb707e1142d67289ee647d7d6b32eea58b602a323ce89cf75c36c` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--d9dd15ee6f8db72081edff90.md) | 81 | `declaration-track:d9dd15ee6f8db72081edff90c3c266444b204306179e439165ba8e6263071074` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--10f5467675f17d662abc08ed.md) | 102 | `declaration-track:10f5467675f17d662abc08ed3911e8093ecd946ef4ab091a3b837c93e53145b7` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--3298881222e16174d4a06dc0.md) | 121 | `declaration-track:3298881222e16174d4a06dc002ae99ac7cd90afcb9efe54f5a2c9b6644734c89` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--8005e26dd689d99594c846dd.md) | 131 | `declaration-track:8005e26dd689d99594c846ddef135b14a942fc9728f132c3eebdc72e2f76e580` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--c123a1976b2b2d1bf5c16a02.md) | 145 | `declaration-track:c123a1976b2b2d1bf5c16a027131dec5e4cd03641dc470eef8573f956897cc7b` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--db18450a4d6d79b872df5186.md) | 148 | `declaration-track:db18450a4d6d79b872df51863ee78084f1b90e4d73783f4658c1e31a9a2b30ec` |
| 14 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/hom--0db4fc277a9c138a6ca401a9.md) | 158 | `declaration-track:0db4fc277a9c138a6ca401a941a43002432cdfc5b2cd99ecc617b07fc084a047` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/instance--d01fc38feb5294706d1a4c9a.md) | 165 | `declaration-track:d01fc38feb5294706d1a4c9a1f902556572d1300f456e880ae3c40c18c6e2c9a` |
| 16 | `lemma` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/id-hom--82b8bbf67fb5fd1f42422ec1.md) | 171 | `result-track:82b8bbf67fb5fd1f42422ec14a18e75d73a082313b86aeabcd4ba850eee01f3b` |
| 17 | `lemma` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/comp-hom--6e3ee82d83b59c9762959964.md) | 174 | `result-track:6e3ee82d83b59c97629599645819df52efb4a62b124f3ad9c93dbcd6189e3b70` |
| 18 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/hom-ext--0e0a4def39ea69d931ca0f48.md) | 178 | `result-track:0e0a4def39ea69d931ca0f488da0b72315e6796280c03f78326f7078c13b2ec2` |
| 19 | `def` | [homMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/hommk--f7c2c6f83274ef540a06b804.md) | 183 | `declaration-track:f7c2c6f83274ef540a06b804da10c8eb95c603365edcda13081c812acdeea79f` |
| 20 | `def` | [isoMk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/isomk--678ae1660d17f5fcb97051bb.md) | 188 | `declaration-track:678ae1660d17f5fcb97051bbeee5a2fce5a316b68bb9261f87c4efd544d4a501` |
| 21 | `def` | [isoOfComponents](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/NaturalTransformation/Variant8e6e9124bbdc2597272699f0beccfc0ab852afa2f2f562369bf17bb07acd2747.lean/declarations/isoofcomponents--dab4b3ab5e9f4e8301d33915.md) | 198 | `declaration-track:dab4b3ab5e9f4e8301d33915470b752fe48fe000fb710ffb4c25ca408673eba3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
