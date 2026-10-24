# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5da9fee4999aa59248050a6442a9dd6b77da68b3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5da9fee4999aa59248050a6442a9dd6b77da68b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [has_cofiltered_limits_op_of_has_filtered_colimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean/declarations/has-cofiltered-limits-op-of-has-filtered-colimits--bc1bb2131c3bd65cefe1ba94.md) | 34 | `declaration-track:bc1bb2131c3bd65cefe1ba94a715ba770b7585530786e771c624df3cc59e4620` |
| 2 | `theorem` | [has_cofiltered_limits_of_has_filtered_colimits_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean/declarations/has-cofiltered-limits-of-has-filtered-colimits-op--b368aa3f78234ecd87860df7.md) | 38 | `result-track:b368aa3f78234ecd87860df72ae7f91b2080a762b8a6bb554d585c3424dd0b1f` |
| 3 | `instance` | [has_filtered_colimits_op_of_has_cofiltered_limits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean/declarations/has-filtered-colimits-op-of-has-cofiltered-limits--29f56974cb1e87af04d35d1d.md) | 42 | `declaration-track:29f56974cb1e87af04d35d1d746696678ce947723a19d74bb8d6fd52c5cffabd` |
| 4 | `theorem` | [has_filtered_colimits_of_has_cofiltered_limits_op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variant5c5f49b576f3a1cb539d03cc452139d1ee9850c59b98e8a03c24b2da9e9ff4ee.lean/declarations/has-filtered-colimits-of-has-cofiltered-limits-op--656fca447ff2444fb5cc5b27.md) | 45 | `result-track:656fca447ff2444fb5cc5b2711e84e3c23c516c529734d2b8a7889ca07a201b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
