# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactFunctor.Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "519d131fb979c9333c4c1bb61b66db5426d2cdae",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `519d131fb979c9333c4c1bb61b66db5426d2cdae`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.PreservesHomology` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.ShortExact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ShortComplex.Abelian` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Preadditive.LeftExact` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Exact` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [preservesFiniteLimits_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/declarations/preservesfinitelimits-of-preserveshomology--ef71396cedfccb1f2e910e41.md) | 74 | `result-track:ef71396cedfccb1f2e910e41eb2b4232a04ad7cb7a04a7ddbf9044d2e6698019` |
| 2 | `lemma` | [preservesFiniteColimits_of_preservesHomology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/declarations/preservesfinitecolimits-of-preserveshomology--6898221460448c831664afff.md) | 84 | `result-track:6898221460448c831664afff9cbcca453612b45e39f72ada3955181676a9d04a` |
| 3 | `lemma` | [preservesMonomorphisms_of_preserves_shortExact_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/declarations/preservesmonomorphisms-of-preserves-shortexact-left--cf0612b91b307ddf9a53c169.md) | 105 | `result-track:cf0612b91b307ddf9a53c169b86bcd8ef2fca37e4ca4ef7471ed3029329fc952` |
| 4 | `lemma` | [preservesFiniteLimits_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/declarations/preservesfinitelimits-tfae--f8899052f088a51df3e9407d.md) | 119 | `result-track:f8899052f088a51df3e9407da0dcd3f10003068a76938c6a4d4fa12652c8e41b` |
| 5 | `lemma` | [preservesEpimorphisms_of_preserves_shortExact_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/declarations/preservesepimorphisms-of-preserves-shortexact-right--1e26940745a7e60a05347302.md) | 163 | `result-track:1e26940745a7e60a05347302578c0c38289005f0a429fddab1ec660c803b8c92` |
| 6 | `lemma` | [preservesFiniteColimits_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/declarations/preservesfinitecolimits-tfae--9283b81e799999ac53906fd7.md) | 177 | `result-track:9283b81e799999ac53906fd7dcfc63cc1be2aba3184f7db1ce80c14acce63a14` |
| 7 | `lemma` | [exact_tfae](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variant6c3a7977e9de20f994889f2c559ce8fec2e9c031d0433cf898089bb09362e755.lean/declarations/exact-tfae--1caeccf1b7c4d143448d1701.md) | 224 | `result-track:1caeccf1b7c4d143448d1701b78558f2f2272ff38360deb560b4b77c08f2d1e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
