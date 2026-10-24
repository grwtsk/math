# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Sheaf.Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8576972820f0fa13b7411e3e412366cb1226c9d6",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8576972820f0fa13b7411e3e412366cb1226c9d6`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.FunctorCategory` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Generator.Sheaf` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Abelian` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/declarations/instance--2149e162fa11af80cca37dd9.md) | 51 | `declaration-track:2149e162fa11af80cca37dd9d1d73ebfad096ce445e6b1d9addaf588dd5fed47` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/declarations/instance--8f5f72020775f98fbef5d3e9.md) | 55 | `declaration-track:8f5f72020775f98fbef5d3e9a2405a571e87132a9fa2e3e888c54ffd86c1a4ed` |
| 3 | `instance` | [hasFilteredColimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/declarations/hasfilteredcolimitsofsize--f80ac7bc6c73afd72f0daffb.md) | 61 | `declaration-track:f80ac7bc6c73afd72f0daffb9e3df1131c15d899c52c3dec12ca450ebafb88a0` |
| 4 | `instance` | [hasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/declarations/hasexactcolimitsofshape--151b0de5ea8df4bb0acd73c3.md) | 66 | `declaration-track:151b0de5ea8df4bb0acd73c356a140b84c442677b648ba0a8df8731c281489a1` |
| 5 | `instance` | [ab5ofSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/declarations/ab5ofsize--4b021963f2998d75ae0f2701.md) | 71 | `declaration-track:4b021963f2998d75ae0f27017d4c46270d63b099c994a042817aa513cfb0297c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/declarations/instance--1fb89eaaab2a6e71140cb192.md) | 76 | `declaration-track:1fb89eaaab2a6e71140cb1920af96b387be16d1f92f63e58fe4df1ac32c7e8d1` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant6df18c8768840cff1ca02ae97b46e7bf21726d7a383b424808b0755f176cf6a6.lean/declarations/instance--38e2d5703b40ae143a47aff5.md) | 80 | `declaration-track:38e2d5703b40ae143a47aff54f9ee8d691f60da8ecce3660527dab9316a90dc9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
