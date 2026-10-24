# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactFunctor.Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1602470be420055ef13a1a343cb5c0daa897430b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1602470be420055ef13a1a343cb5c0daa897430b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.DerivedCategory.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mapDerivedCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/mapderivedcategory--cc5b689389062a1e387364da.md) | 31 | `declaration-track:cc5b689389062a1e387364da6b597e03b3315a7f5dfd8365bee8fe91f307aad1` |
| 2 | `def` | [mapDerivedCategoryFactors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/mapderivedcategoryfactors--fbf05057033966c75ff456b9.md) | 36 | `declaration-track:fbf05057033966c75ff456b97a64903fa7d4471b27726697566389ba15781963` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/instance--e1a52f17a44abc7afb5e43d1.md) | 41 | `declaration-track:e1a52f17a44abc7afb5e43d1d92afdc1d949e5e61f5bba50cdcaa489b74a09fc` |
| 4 | `def` | [mapDerivedCategoryFactorsh](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/mapderivedcategoryfactorsh--c8e144a503e57fb1d7cb6fda.md) | 49 | `declaration-track:c8e144a503e57fb1d7cb6fda3ddfe352aa0f30a12b767bfb72358f8a777346b7` |
| 5 | `lemma` | [mapDerivedCategoryFactorsh_hom_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/mapderivedcategoryfactorsh-hom-app--bfd1ea50707fc5e75be8f6e0.md) | 54 | `result-track:bfd1ea50707fc5e75be8f6e0ef69cc5b9cc381dd87645e7a18ad6bbde403dc40` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/instance--bbb44cc7d0e4f8539270b636.md) | 62 | `declaration-track:bbb44cc7d0e4f8539270b6369fc7dddd57fe3ee90c00e84e19c77833ca9f09ed` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/instance--e1122944688e62b9b99d58b5.md) | 68 | `declaration-track:e1122944688e62b9b99d58b55f35988828eb26bd3a230a36eee7924a2c45cfe0` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/instance--def05ade44192f67b15045a7.md) | 74 | `declaration-track:def05ade44192f67b15045a720e26933dc73e2fc6e4d74c8c0f2f443f95c2311` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/instance--d49b8664ae0ed48d80f5c810.md) | 80 | `declaration-track:d49b8664ae0ed48d80f5c810b223ca9fda7819f42bb7022fe6de7e9791833285` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantae8e297fdbd0a415d2ef4d6eeaff8d6092e0e8deeb62062a5cc884cc2eebfaaf.lean/declarations/instance--e14448ae71bca53f4f07833c.md) | 90 | `declaration-track:e14448ae71bca53f4f07833c9db66a6f220cfd232dbcc3dd134e2c2e123011cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
