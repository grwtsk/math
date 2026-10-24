# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "543f795e30d59adce56381b2a18b186cc2da8d2d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `543f795e30d59adce56381b2a18b186cc2da8d2d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Connected` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Shapes.Pullbacks` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsColimit.pullbackOfHasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/declarations/iscolimit-pullbackofhasexactcolimitsofshape--f0e0a88b8b13c117d963d1dd.md) | 47 | `declaration-track:f0e0a88b8b13c117d963d1dd99b2de1eaab7f8525c650c481987c3a4c93b2d88` |
| 2 | `theorem` | [IsColimit.pullback_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/declarations/iscolimit-pullback-hom-ext--8b2c49224a08343da3ec8bfb.md) | 60 | `result-track:8b2c49224a08343da3ec8bfb1dbd7e32946d88f4a351dcb574e3c90089485c36` |
| 3 | `theorem` | [IsColimit.pullback_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/declarations/iscolimit-pullback-zero-ext--ec8209f072b87571430d425f.md) | 71 | `result-track:ec8209f072b87571430d425f920e24c7d4e428f201526a4ea4157f2a3acdce25` |
| 4 | `def` | [IsLimit.pushoutOfHasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/declarations/islimit-pushoutofhasexactlimitsofshape--be146fc0420c2fff174e4f0c.md) | 83 | `declaration-track:be146fc0420c2fff174e4f0c59c5c6154b4e77a0538068f1aefc908eeb5b2e65` |
| 5 | `theorem` | [IsLimit.pushout_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/declarations/islimit-pushout-hom-ext--1bafd774bd62564e42805b34.md) | 96 | `result-track:1bafd774bd62564e42805b34f17c1cb91f061f6226e2b47aa57490b899c8dbab` |
| 6 | `theorem` | [IsLimit.pushout_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantb3a11ba3d85bab63cae5713e64023388b35cf44526037360d6023c6289de4272.lean/declarations/islimit-pushout-zero-ext--fccd799168ded269d0570310.md) | 107 | `result-track:fccd799168ded269d0570310fd64da0e075e658c9c6b942ce6956669fdea669a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
