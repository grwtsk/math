# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Projective.Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65ef9c70ae6353a0d13fdff3d56ae7d8295b44d7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65ef9c70ae6353a0d13fdff3d56ae7d8295b44d7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.QuasiIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.ProjectiveResolution` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.Yoneda.Projective` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [exact_d_f](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/exact-d-f--5c53980419f38306aed21e90.md) | 35 | `result-track:5c53980419f38306aed21e90de3e6779efb51c93ff729a5546a05d93e00f9c5a` |
| 2 | `def` | [preservesFiniteColimitsPreadditiveCoyonedaObjOfProjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/preservesfinitecolimitspreadditivecoyonedaobjofprojective--b30c48acc1da54f8e719c1b7.md) | 41 | `declaration-track:b30c48acc1da54f8e719c1b7b2132202e634fdbdd3a97362e7e44f7e43d4ba23` |
| 3 | `theorem` | [projective_of_preservesFiniteColimits_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/projective-of-preservesfinitecolimits-preadditivecoyonedaobj--dbd45a73786c050c06a92e6c.md) | 50 | `result-track:dbd45a73786c050c06a92e6c6e5b6528674d675f2b18961bf26f3625ef6a8338` |
| 4 | `def` | [ofComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/ofcomplex--983e7fb4192299729db4eac0.md) | 76 | `declaration-track:983e7fb4192299729db4eac01df02c739111ba0b8e5c8aa0e1b420f106821224` |
| 5 | `theorem` | [ofComplex_sq_10_comm](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/ofcomplex-sq-10-comm--acaac7025b4008ff195cd65c.md) | 112 | `result-track:acaac7025b4008ff195cd65c68bce0bed610a2b62c6cca0ed1be03e7faf3fe21` |
| 6 | `theorem` | [exact_ofComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/exact-ofcomplex--1f821d9242f6e7a43374939e.md) | 122 | `result-track:1f821d9242f6e7a43374939e0c2607871fd1138492ee071ea54e125f48b5b3fe` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/instance--da6691e9fd446f3b0880bff5.md) | 152 | `declaration-track:da6691e9fd446f3b0880bff58660ec8ca1fb8ad7ccd9a5ebb57df746b023ec24` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/instance--d987fdc18b662274a32a85aa.md) | 154 | `declaration-track:d987fdc18b662274a32a85aa68e0a039f6ff174467a3f23ca71f518c34e7827d` |
| 9 | `def` | [toSingle₀ProjectiveResolution](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Projective/Variant1dfcb7bf714bf51f6670d7a8de62b0bbe2f6aa0f63113ef984a2170d6f48e95f.lean/declarations/tosingle-projectiveresolution--c4533b0f7aff57f9da55f8e9.md) | 166 | `declaration-track:c4533b0f7aff57f9da55f8e9fb20554fe96bf9e6540896a48891afb3c96cc17e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
