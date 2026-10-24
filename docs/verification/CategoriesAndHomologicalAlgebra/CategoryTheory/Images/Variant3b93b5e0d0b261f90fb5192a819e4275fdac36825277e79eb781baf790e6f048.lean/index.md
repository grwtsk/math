# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "32a1e7aac86c2fc320089f03450823a555fe3796",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `32a1e7aac86c2fc320089f03450823a555fe3796`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/image--44117b9900a0604546c2a5f5.md) | 42 | `declaration-track:44117b9900a0604546c2a5f541f4fa136f4a73afbf498eb2e9694597133c9b2c` |
| 2 | `def` | [image.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/image--d645497fbe1f9895202899ab.md) | 46 | `declaration-track:d645497fbe1f9895202899ab9cab4c8be5f7f1cf6a08eb2f16ed302d9be7f972` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/instance--4087dada7a022ba98cbc0e2f.md) | 49 | `declaration-track:4087dada7a022ba98cbc0e2f3e3d6ec02e3b7476d077dc994b067cf94605588c` |
| 4 | `def` | [factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/factorthruimage--66ca47ed412f6707f43d78c4.md) | 53 | `declaration-track:66ca47ed412f6707f43d78c4d047cf58931d69af82ef3341518961efe02adfc4` |
| 5 | `theorem` | [image.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/image-fac--5e69d08b84779de02c855753.md) | 56 | `result-track:5e69d08b84779de02c855753a220d7fe9ddb16e5e7de899180be683b1b75bea0` |
| 6 | `def` | [image.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/image-lift--7d5eb61fcad7b32df5786813.md) | 64 | `declaration-track:7d5eb61fcad7b32df578681358ba48c8ed72f4f12e875090000b9c8700a343ef` |
| 7 | `theorem` | [image.lift_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/image-lift-fac--5b6abc3cf0352067f07d79ce.md) | 82 | `result-track:5b6abc3cf0352067f07d79ceb8c90b8da676c6234a16454ae2b3335305366845` |
| 8 | `def` | [monoFactorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/monofactorisation--7ba252ba3ea03b90df52a25a.md) | 91 | `declaration-track:7ba252ba3ea03b90df52a25a2e1416a38856388b30a1d0f6ff9f79a7cd376d1e` |
| 9 | `def` | [isImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/isimage--98682945b1d59b2406fa36b2.md) | 98 | `declaration-track:98682945b1d59b2406fa36b2bea1ac8070515db7dd4defbad75dc21209ae4431` |
| 10 | `def` | [imageIsoRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/imageisorange--3e7b56e6e1b5247b671e03f1.md) | 103 | `declaration-track:3e7b56e6e1b5247b671e03f1cdf8b49b93fa575179c735d22b61475c54bc27f8` |
| 11 | `theorem` | [imageIsoRange_inv_image_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/imageisorange-inv-image--f942a8e90a275016ae4a6336.md) | 108 | `result-track:f942a8e90a275016ae4a633689cf36638f4caa7790e6444897abd4f6280f3513` |
| 12 | `theorem` | [imageIsoRange_hom_subtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant3b93b5e0d0b261f90fb5192a819e4275fdac36825277e79eb781baf790e6f048.lean/declarations/imageisorange-hom-subtype--08c0d9f0c71baaa23584caaf.md) | 113 | `result-track:08c0d9f0c71baaa23584caaf51821275e0b4967ac4c0b71de4034561db1daa1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
