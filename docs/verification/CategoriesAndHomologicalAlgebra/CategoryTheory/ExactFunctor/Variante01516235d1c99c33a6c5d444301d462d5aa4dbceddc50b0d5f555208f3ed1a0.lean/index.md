# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactFunctor.Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06141d6538e482aabeace146afd4788d24d482d7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06141d6538e482aabeace146afd4788d24d482d7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.PreservesHomology` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Abelian` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.LeftExact` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Exact` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [preservesFiniteLimits_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/declarations/preservesfinitelimits-of-preserveshomology--9dac61704104fb6c93b1e56a.md) | 66 | `result-track:9dac61704104fb6c93b1e56aa4017aa010488b48ff6efb6577fdfe4689fbfab2` |
| 2 | `lemma` | [preservesFiniteColimits_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/declarations/preservesfinitecolimits-of-preserveshomology--7936a6f61e0b937362f17ffc.md) | 76 | `result-track:7936a6f61e0b937362f17ffcb3d82f52618704951cacc391a76761a571d756bd` |
| 3 | `lemma` | [preservesMonomorphisms_of_preserves_shortExact_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/declarations/preservesmonomorphisms-of-preserves-shortexact-left--009557248e05a55175b80a1c.md) | 97 | `result-track:009557248e05a55175b80a1c396dd85f5f570f04c28f4f97518ac37e49d8b8b2` |
| 4 | `lemma` | [preservesFiniteLimits_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/declarations/preservesfinitelimits-tfae--ce3c5509ca8d2fb5eb61bd58.md) | 111 | `result-track:ce3c5509ca8d2fb5eb61bd58f748c6882ae5a97dfff4c82e0090735fe0e0c808` |
| 5 | `lemma` | [preservesEpimorphisms_of_preserves_shortExact_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/declarations/preservesepimorphisms-of-preserves-shortexact-right--baecc509c878efd2b2792c5e.md) | 155 | `result-track:baecc509c878efd2b2792c5e8d0c28a7ec2b29c563397fa2ddef5cca92127d6a` |
| 6 | `lemma` | [preservesFiniteColimits_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/declarations/preservesfinitecolimits-tfae--b8fd0df0385ccdacc7fe6a5d.md) | 169 | `result-track:b8fd0df0385ccdacc7fe6a5d12a703da87ee1d5c50ce9555399bd9727296a411` |
| 7 | `lemma` | [exact_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variante01516235d1c99c33a6c5d444301d462d5aa4dbceddc50b0d5f555208f3ed1a0.lean/declarations/exact-tfae--c967bf3b49a2fb88f96d064b.md) | 216 | `result-track:c967bf3b49a2fb88f96d064b0d6fd20913e41f8a3b85fcc731f25d34b5b988c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
