# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Totalization.Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d65f24f03f7615de32d016b8623e021accc92ea3",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d65f24f03f7615de32d016b8623e021accc92ea3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Prismatic.Fabric` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TotalizationTheory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/declarations/totalizationtheory--c584189b12471f8fd67515cf.md) | 20 | `declaration-track:c584189b12471f8fd67515cf13f9394668820e178021e369d750b9c0618b756b` |
| 2 | `def` | [fabricPrismaticValue](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/declarations/fabricprismaticvalue--8b0f5041e65cb81a61237c3b.md) | 26 | `declaration-track:8b0f5041e65cb81a61237c3b56461a715740ecedcd4d99237df9c3532589fb10` |
| 3 | `def` | [prismaticReactionMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/declarations/prismaticreactionmap--40c5861de01d145c5262f061.md) | 37 | `declaration-track:40c5861de01d145c5262f0613bdf41a98df9af3ae1daea35af7e0f7ee14277dc` |
| 4 | `theorem` | [prismaticReactionMap_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/declarations/prismaticreactionmap-id--c09fd970fc2d481b50831ee4.md) | 47 | `result-track:c09fd970fc2d481b50831ee4dd75a6b292213ff9f49d974008dcde907341b814` |
| 5 | `theorem` | [prismaticReactionMap_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/declarations/prismaticreactionmap-comp--9ee18389be837627e37d81cd.md) | 55 | `result-track:9ee18389be837627e37d81cda184fbece10c87d1c9a2d09ad92814d4fa1b9114` |
| 6 | `structure` | [PrismaticDescentCertificate](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Totalization/Variant614d1fd719871e3fc1a08ae877b71aded2f387aaa0f571baae8bbb8a74c8d67d.lean/declarations/prismaticdescentcertificate--720c8323d90b0b346c6e8dc3.md) | 72 | `declaration-track:720c8323d90b0b346c6e8dc3f33e6e26cb396617088bed2cd0b3d78420d633bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
