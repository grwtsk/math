# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategory.Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eff770dbabe2cdccbbd38737862a5fa62450665",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eff770dbabe2cdccbbd38737862a5fa62450665`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Yoneda` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FunctorCategory.prodPreservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean/declarations/functorcategory-prodpreservescolimits--3cada4d9e369e24c1a08dae0.md) | 58 | `declaration-track:3cada4d9e369e24c1a08dae0908cb31e136a0e3b1761f80cb2b8d929b45386b1` |
| 2 | `instance` | [whiskeringLeftPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean/declarations/whiskeringleftpreserveslimits--797fd2171ad955314da56bd3.md) | 78 | `declaration-track:797fd2171ad955314da56bd364a0ba8404349c1cb10e525c252199e13f708d0e` |
| 3 | `instance` | [whiskeringRightPreservesLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean/declarations/whiskeringrightpreserveslimitsofshape--88beefa4b6aeff561de53d07.md) | 89 | `declaration-track:88beefa4b6aeff561de53d07651490235cd2c47c494afa86289508a172b2467d` |
| 4 | `instance` | [whiskeringRightPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean/declarations/whiskeringrightpreserveslimits--6f987947f200bf084a2da7da.md) | 100 | `declaration-track:6f987947f200bf084a2da7da4f1e61efee72c8493ede6c21b292eb360c406d91` |
| 5 | `def` | [preservesLimitOfLanPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf0a03398d74b078323144e3754f14fb129ee32e8d440f5380ac309415652da2c.lean/declarations/preserveslimitoflanpreserveslimit--6a289b12aa74442d5da37fb9.md) | 108 | `declaration-track:6a289b12aa74442d5da37fb98e3cc1fb1ddc9211c76cda0a0eb53dcb1437fb36` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
