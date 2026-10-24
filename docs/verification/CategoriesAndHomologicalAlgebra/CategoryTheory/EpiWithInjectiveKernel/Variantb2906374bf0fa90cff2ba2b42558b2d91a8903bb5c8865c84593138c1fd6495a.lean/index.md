# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiWithInjectiveKernel.Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f40431774af076290c124fe9318a86c8f386d038",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f40431774af076290c124fe9318a86c8f386d038`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [epiWithInjectiveKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean/declarations/epiwithinjectivekernel--e839d200295f8de06dc7458f.md) | 31 | `declaration-track:e839d200295f8de06dc7458f34a51a18c19c633cee354de5780ae8982a9d3134` |
| 2 | `lemma` | [epiWithInjectiveKernel_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean/declarations/epiwithinjectivekernel-iff--017ebaac7b750bfd10b6bd01.md) | 37 | `result-track:017ebaac7b750bfd10b6bd0174994acad5e964bdd447c1e6e4fac1742cd047cb` |
| 3 | `lemma` | [epiWithInjectiveKernel_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean/declarations/epiwithinjectivekernel-of-iso--a22f9c17b994d38fe9135807.md) | 53 | `result-track:a22f9c17b994d38fe91358076b366629c9b5c5627dbb7e75d947cfb966777969` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiWithInjectiveKernel/Variantb2906374bf0fa90cff2ba2b42558b2d91a8903bb5c8865c84593138c1fd6495a.lean/declarations/instance--6fe6d11e9095ef9fd7445e3c.md) | 59 | `declaration-track:6fe6d11e9095ef9fd7445e3cce5b15daeeb4891f9f344d2d56b762e1ce091148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
