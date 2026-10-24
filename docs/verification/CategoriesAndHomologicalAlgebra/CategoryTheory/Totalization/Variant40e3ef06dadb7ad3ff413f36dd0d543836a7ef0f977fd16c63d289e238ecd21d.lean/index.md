# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Totalization.Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7c8ddc71600ebe6c240309660e848b05eea3032",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7c8ddc71600ebe6c240309660e848b05eea3032`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.Fabric` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TotalizationTheory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/declarations/totalizationtheory--9f31cc9212702c4cc5ad01d4.md) | 28 | `declaration-track:9f31cc9212702c4cc5ad01d4b12af2867874f6d6bcbeef5bf6ddf367ce1d7af0` |
| 2 | `def` | [fabricPrismaticValue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/declarations/fabricprismaticvalue--f0c6fdf7f65bc16f6676f55a.md) | 34 | `declaration-track:f0c6fdf7f65bc16f6676f55aea99d387515d7ece2ce44580498bb9b074e98409` |
| 3 | `def` | [prismaticReactionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/declarations/prismaticreactionmap--8b7d95c917cadd24c74a9f83.md) | 45 | `declaration-track:8b7d95c917cadd24c74a9f83eeaaea82f6bc99f39a228433b3b987a8531e4415` |
| 4 | `theorem` | [prismaticReactionMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/declarations/prismaticreactionmap-id--c6ebfbc5e7c5a87ea6076ba3.md) | 55 | `result-track:c6ebfbc5e7c5a87ea6076ba38026a1f7919847b01c8d46c7981f13f4a1e6f198` |
| 5 | `theorem` | [prismaticReactionMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/declarations/prismaticreactionmap-comp--48e2463055d92286a3dd05f5.md) | 63 | `result-track:48e2463055d92286a3dd05f513d7d7c21815c86e6395c1b11fc46b8d5b593ccd` |
| 6 | `structure` | [PrismaticDescentCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant40e3ef06dadb7ad3ff413f36dd0d543836a7ef0f977fd16c63d289e238ecd21d.lean/declarations/prismaticdescentcertificate--197da4e000f9468192d1f1a6.md) | 80 | `declaration-track:197da4e000f9468192d1f1a63ca5d97d08ba5050365437ed0c126fd3d73863a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
