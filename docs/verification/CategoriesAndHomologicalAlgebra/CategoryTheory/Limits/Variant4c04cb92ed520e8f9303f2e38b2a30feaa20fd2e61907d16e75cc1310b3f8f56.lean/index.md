# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bffd5b4f78310b005d501e71f23fd3c4f9d55c93",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bffd5b4f78310b005d501e71f23fd3c4f9d55c93`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.Yoneda.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [preservesLimits_preadditiveYonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean/declarations/preserveslimits-preadditiveyonedaobj--66732d2561c5d5b9eea54482.md) | 41 | `declaration-track:66732d2561c5d5b9eea54482098669f135b18204c2f2c309528b5c96a33803bb` |
| 2 | `instance` | [preservesLimits_preadditiveCoyonedaObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean/declarations/preserveslimits-preadditivecoyonedaobj--8d5d7a8c7683974bf48ce13d.md) | 46 | `declaration-track:8d5d7a8c7683974bf48ce13d15e4ea5534df6d7e0228854f6188cca89ed23ac3` |
| 3 | `instance` | [preservesLimits_preadditiveYoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean/declarations/preserveslimits-preadditiveyoneda-obj--c2884d7bd2a71d36f0e8e78f.md) | 52 | `declaration-track:c2884d7bd2a71d36f0e8e78f385a54cd0eb6960f4d0217f92820d4a65e65ad30` |
| 4 | `instance` | [preservesLimits_preadditiveCoyoneda_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant4c04cb92ed520e8f9303f2e38b2a30feaa20fd2e61907d16e75cc1310b3f8f56.lean/declarations/preserveslimits-preadditivecoyoneda-obj--e84658a02ba44af2fd505a7d.md) | 56 | `declaration-track:e84658a02ba44af2fd505a7de81d84c4b3248c86cc0a82ceaea8c22512045417` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
