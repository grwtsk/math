# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Subobject.Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e0e721beaccdf5d81a354d15322cd3f515bc8fc",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e0e721beaccdf5d81a354d15322cd3f515bc8fc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Colim` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.GrothendieckCategory.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Presentable.IsCardinalFiltered` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subobject.Lattice` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mono_of_isColimit_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/declarations/mono-of-iscolimit-monoover--28991e10c2115a605933f925.md) | 47 | `result-track:28991e10c2115a605933f925e4d0dcd68b62b8c4a88e35eead56a1fc03c0b8e9` |
| 2 | `lemma` | [subobjectMk_of_isColimit_eq_iSup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/declarations/subobjectmk-of-iscolimit-eq-isup--1cae422a10f44bbcc1bcef2f.md) | 58 | `result-track:1cae422a10f44bbcc1bcef2f420d1a96889051e00bd367ea9f6aa29860b72219` |
| 3 | `def` | [isColimitMapCoconeOfSubobjectMkEqISup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/declarations/iscolimitmapcoconeofsubobjectmkeqisup--e384eccd918c0af820de1a1c.md) | 87 | `declaration-track:e384eccd918c0af820de1a1cd856e36678ab2fcba21bdfdd4aed09a9671a0b4c` |
| 4 | `lemma` | [exists_isIso_of_functor_from_monoOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Subobject/Variantfb872fe799fba36373dcedf1ca598ba19e024984198fb3b9dd6c4f693f84e204.lean/declarations/exists-isiso-of-functor-from-monoover--8f09056297e378f25a7e5d82.md) | 110 | `result-track:8f09056297e378f25a7e5d828ae9e933e032080e92fa4dcda389c22830cd53cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
