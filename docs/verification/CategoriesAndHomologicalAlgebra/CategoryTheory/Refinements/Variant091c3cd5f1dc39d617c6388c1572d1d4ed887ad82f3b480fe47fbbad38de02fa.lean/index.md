# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Refinements.Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "723557e6166c023fb83259d2cc086552cee76661",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `723557e6166c023fb83259d2cc086552cee76661`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [epi_iff_surjective_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean/declarations/epi-iff-surjective-up-to-refinements--3a21924ccab84adea88db3ba.md) | 78 | `result-track:3a21924ccab84adea88db3ba1df8b8f16131732aac838b27ae767075c88aa7c3` |
| 2 | `lemma` | [surjective_up_to_refinements_of_epi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean/declarations/surjective-up-to-refinements-of-epi--db28939ed4ecd189f29f4c6f.md) | 89 | `result-track:db28939ed4ecd189f29f4c6fdf9acecb0863690e2877b82338c82781324d7e39` |
| 3 | `lemma` | [ShortComplex.exact_iff_exact_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean/declarations/shortcomplex-exact-iff-exact-up-to-refinements--002f8e9fab6467d285800f85.md) | 93 | `result-track:002f8e9fab6467d285800f852f2eec8b5eb1a95df40ad6f99cf9d85037179e02` |
| 4 | `lemma` | [ShortComplex.Exact.exact_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean/declarations/shortcomplex-exact-exact-up-to-refinements--7e6598cde5aeae2faa7b8690.md) | 107 | `result-track:7e6598cde5aeae2faa7b86907112f20c3e4c72109ee53c8b0c6212912b303cb0` |
| 5 | `lemma` | [ShortComplex.eq_liftCycles_homologyπ_up_to_refinements](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Refinements/Variant091c3cd5f1dc39d617c6388c1572d1d4ed887ad82f3b480fe47fbbad38de02fa.lean/declarations/shortcomplex-eq-liftcycles-homology-up-to-refinements--5151c479dabf456986f8d133.md) | 113 | `result-track:5151c479dabf456986f8d133306ef1d95d634a2d19f1a0390473981123cffa37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
