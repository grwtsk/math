# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bd6eebd84a516207361f74f451fdf7de4c3c5c3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bd6eebd84a516207361f74f451fdf7de4c3c5c3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Opposites` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftToFinsetObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetobj--e0a4d3b954f18a09c46f831e.md) | 48 | `declaration-track:e0a4d3b954f18a09c46f831e73833b74eddb1567d06c2c689ba8c103696b7a0f` |
| 2 | `def` | [liftToFinsetColimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetcolimitcocone--f680bbe554a3cad93a5fa0cf.md) | 57 | `declaration-track:f680bbe554a3cad93a5fa0cf654124cdd79e9b87c268b68966f823276281d81f` |
| 3 | `def` | [liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinset--cd34266c301c466876ec77d4.md) | 85 | `declaration-track:cd34266c301c466876ec77d42d479c15a7e8250ae19acb8c1884de618335768c` |
| 4 | `def` | [finiteSubcoproductsCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/finitesubcoproductscocone--caf1102cfa7f504060ade5af.md) | 92 | `declaration-track:caf1102cfa7f504060ade5af5dc3d7128fcad13f2f234322a5d587cdd45884c3` |
| 5 | `def` | [isColimitFiniteSubproductsCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/iscolimitfinitesubproductscocone--ca5a99bf65c7984ac07c665d.md) | 98 | `declaration-track:ca5a99bf65c7984ac07c665d97e6bfaf19077f1b9da674fd955d103d6637985d` |
| 6 | `theorem` | [hasCoproducts_of_finite_and_filtered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/hascoproducts-of-finite-and-filtered--16871a400cd3735b1ca60a42.md) | 117 | `result-track:16871a400cd3735b1ca60a421ab74a9a280e8534c9554c89725a4eb082fe3bdd` |
| 7 | `theorem` | [has_colimits_of_finite_and_filtered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/has-colimits-of-finite-and-filtered--400ca254d72a83a91935f751.md) | 121 | `result-track:400ca254d72a83a91935f75113eeb17afcb7093662372f37ddfb61426d8527e5` |
| 8 | `theorem` | [hasProducts_of_finite_and_cofiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/hasproducts-of-finite-and-cofiltered--26dacdd0171ff5a0c0b6d83a.md) | 126 | `result-track:26dacdd0171ff5a0c0b6d83a7ade0ca2379219ac170054239b5fd3b3be22eef6` |
| 9 | `theorem` | [has_limits_of_finite_and_cofiltered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/has-limits-of-finite-and-cofiltered--84777629f8dbb47a3485cce0.md) | 131 | `result-track:84777629f8dbb47a3485cce082f5fc1c77b1ee99a7b65e37b219b2d20ba4b0de` |
| 10 | `theorem` | [liftToFinsetColimIso_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetcolimiso-aux--d98676ab1ea9106ec4adcca6.md) | 145 | `result-track:d98676ab1ea9106ec4adcca6fa05023edbd644f2b68f3f3d4efac514bd1c341c` |
| 11 | `def` | [liftToFinsetColimIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetcolimiso--adc7f309db4c90468976bf4d.md) | 153 | `declaration-track:adc7f309db4c90468976bf4dd8117b68f3113dc467db0199cdc23d1c19c8994f` |
| 12 | `def` | [liftToFinsetEvaluationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetevaluationiso--66a9dcfc2205eaa245c2c0cc.md) | 169 | `declaration-track:66a9dcfc2205eaa245c2c0cc10ed34a3b042bbb350a147c7752226851af88021` |
| 13 | `def` | [liftToFinsetObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetobj--96e1cb1b2254618391f091a0.md) | 184 | `declaration-track:96e1cb1b2254618391f091a0d2f10b7ca2aeeea985b05a9becc725ba537cbad6` |
| 14 | `def` | [liftToFinsetLimitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetlimitcone--eee5b8735390844055dbf117.md) | 194 | `declaration-track:eee5b8735390844055dbf1178c5df93c0fda878fcd31b7c6b4c77134320f044c` |
| 15 | `def` | [finiteSubproductsCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/finitesubproductscone--ef2c926a3582087703268813.md) | 219 | `declaration-track:ef2c926a3582087703268813f6b4aad9a8676cd0f7f2b9a36711b025f6e33117` |
| 16 | `def` | [isLimitFiniteSubproductsCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/islimitfinitesubproductscone--b0c4b16c75dea334bb916306.md) | 225 | `declaration-track:b0c4b16c75dea334bb91630685fb5850d46b9d159cfab43f6fb5998e61200087` |
| 17 | `def` | [liftToFinset](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinset--5c9de1896ea62871af9bccaf.md) | 245 | `declaration-track:5c9de1896ea62871af9bccafc22d40ebdd54b5a0990a6e5282803d6567c490ba` |
| 18 | `def` | [liftToFinsetLimIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetlimiso--a5189cd51e0116c6cfc82cd2.md) | 251 | `declaration-track:a5189cd51e0116c6cfc82cd26288af79ce8da4e4bc764941a19929c4377d27eb` |
| 19 | `def` | [liftToFinsetEvaluationIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd486989d7abc9177994a748e8efa72d317380eb8cf36efa420f7bb497246636c.lean/declarations/lifttofinsetevaluationiso--c591f1c3c1736fcf69177296.md) | 262 | `declaration-track:c591f1c3c1736fcf691772965e28d8d51781be82b265250d4b5a7541861422bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
