# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposites.Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "57ca024ea50bdd8ec9b71327190591d560e1ca77",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `57ca024ea50bdd8ec9b71327190591d560e1ca77`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Yoneda` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Opposites` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/unop--e9a4ff4dc68441ddc66f5860.md) | 34 | `declaration-track:e9a4ff4dc68441ddc66f58602205065ab004d6bf69ee85de2fdb3a695bdd08ea` |
| 2 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/op--91a12a0a9071e23a5444f398.md) | 47 | `declaration-track:91a12a0a9071e23a5444f3986da53fae4d1550079a414743690d96a1a140fd2d` |
| 3 | `def` | [leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/leftop--946c013715da8604d6f7a282.md) | 60 | `declaration-track:946c013715da8604d6f7a282709e005297cb73c427436cc2e69a08391ff7cec8` |
| 4 | `def` | [rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/rightop--91fde54d352cecd57651d4b6.md) | 68 | `declaration-track:91fde54d352cecd57651d4b6c3ba0dd159dae71862aee799e68dda0b501a777d` |
| 5 | `lemma` | [leftOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/leftop-eq--57f9d5820e9a5cea03489224.md) | 74 | `result-track:57f9d5820e9a5cea03489224c315b9aa3e45e3da8320e28779240af70b236dfd` |
| 6 | `lemma` | [rightOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/rightop-eq--054ae6dd313ed74d2c995c13.md) | 78 | `result-track:054ae6dd313ed74d2c995c130e8a0fd7840544ce9e25ee6b9a39de222abd6fe5` |
| 7 | `def` | [leftAdjointsCoyonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/leftadjointscoyonedaequiv--5b24e0ebb0fdcdf2ac963836.md) | 86 | `declaration-track:5b24e0ebb0fdcdf2ac96383622b838f9645f7658c795b39d6d3f1adbacc00eb9` |
| 8 | `def` | [natIsoOfRightAdjointNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/natisoofrightadjointnatiso--ab3c0bf5b4c72e28e17149d1.md) | 99 | `declaration-track:ab3c0bf5b4c72e28e17149d17f49c79b7ebf9d6aeb87a59e185f9c0eaaba5f0e` |
| 9 | `def` | [natIsoOfLeftAdjointNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variantb3aec118f4f94b4d324eaea119ef7051e9f39aae6e5b7a6cd4a80376b2a807fd.lean/declarations/natisoofleftadjointnatiso--f3945a215ae0cd2d37d18abd.md) | 109 | `declaration-track:f3945a215ae0cd2d37d18abdd69645a3b03a1076c1cdbe9415fcbeafe3c4db73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
