# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteGrp.Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1056d0ffa39f894e33adebd616b2b0b277dc89b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1056d0ffa39f894e33adebd616b2b0b277dc89b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/finitegrp--0b1f82b6a0eb616b7544eb83.md) | 23 | `declaration-track:0b1f82b6a0eb616b7544eb831196b2fc1a60bb4809f3b763a0eb9593dbecdc42` |
| 2 | `structure` | [FiniteAddGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/finiteaddgrp--fcb6a64a3fd3a797d40c13e4.md) | 30 | `declaration-track:fcb6a64a3fd3a797d40c13e4c9c109c71a1d5ca1d71be247dec21d9bb6f297ec` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/instance--44c3e36837d5c4e096f36d3d.md) | 40 | `declaration-track:44c3e36837d5c4e096f36d3dba646a5c253cb811b59112067f0b2abf62a43925` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/instance--d68da3da8b76199eeb0c9b28.md) | 44 | `declaration-track:d68da3da8b76199eeb0c9b28f5e05eedafe13363a6491e3a7be6afa08306fb63` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/instance--3c29a09e432ad586e551fa6b.md) | 47 | `declaration-track:3c29a09e432ad586e551fa6b9838ad2bac20edd870d5aad780b0b0c51d9a8b77` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/instance--d3e62bc07656c1adc4d96e07.md) | 50 | `declaration-track:d3e62bc07656c1adc4d96e07aebfc33c3cbcf442fec7e7e149ba14abe8536d78` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/instance--b2222827f97d00bb0488615e.md) | 53 | `declaration-track:b2222827f97d00bb0488615ef3133197057c9eef4b115b31785625cb66324912` |
| 8 | `def` | [of](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/of--6475a7a7ca22f1cb4fff0265.md) | 58 | `declaration-track:6475a7a7ca22f1cb4fff0265b862026ba5537603bb5683b0592809eb555623b9` |
| 9 | `def` | [ofHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/ofhom--cef27aad3ce2863832e0b511.md) | 64 | `declaration-track:cef27aad3ce2863832e0b5112e874aa70a8d556de551ce1d561cae5758a716bd` |
| 10 | `lemma` | [ofHom_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FiniteGrp/Variantdd183845b9e9fd006e9c6c8d661f9cf9115e9be8d357d9781b2b041d82f9ecec.lean/declarations/ofhom-apply--daf5bd14dcef04272d7d9615.md) | 68 | `result-track:daf5bd14dcef04272d7d96150a17efe77137506b06266a9bf98e3df5c2fdbeaf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
