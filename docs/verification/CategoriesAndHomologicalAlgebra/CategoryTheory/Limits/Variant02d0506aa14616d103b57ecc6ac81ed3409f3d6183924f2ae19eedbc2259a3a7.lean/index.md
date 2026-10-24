# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2c25780bd1014dfd513562ff7f6f4de01f8e6e1",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2c25780bd1014dfd513562ff7f6f4de01f8e6e1`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Creates` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multiforkEvaluationCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/multiforkevaluationcone--5459f15c04a4fd1a510b3e84.md) | 62 | `declaration-track:5459f15c04a4fd1a510b3e84866d35362970d34dd7605249227e4d9526f03d7c` |
| 2 | `def` | [isLimitMultiforkOfIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/islimitmultiforkofislimit--ff6e87d8b2f865598bd9525c.md) | 99 | `declaration-track:ff6e87d8b2f865598bd9525c216a3d86aefdfa85416ea993de1189c72d99617a` |
| 3 | `theorem` | [isSheaf_of_isLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/issheaf-of-islimit--4493b6945274b63270176534.md) | 139 | `result-track:4493b6945274b632701765345453da999f59d2cd194fe7ff4f38a5f6d6d1084c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/instance--2e7bc1182c75ed293a6a3f95.md) | 147 | `declaration-track:2e7bc1182c75ed293a6a3f959d69e284c03c99b9ca4d2b4001e30b53332a870c` |
| 5 | `instance` | [createsLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/createslimitsofshape--20dee81ab036b0532b070be0.md) | 164 | `declaration-track:20dee81ab036b0532b070be0135a3e8dc8bc47c143fcf477c1a87619f26a1ffb` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/instance--b4f1e7c097aee8859705b2e6.md) | 166 | `declaration-track:b4f1e7c097aee8859705b2e68f9a9a30f5088fa054731ee61b9d3a1f76e1ebc3` |
| 7 | `instance` | [createsLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/createslimits--d79d4b04c75658e75633d4c4.md) | 171 | `declaration-track:d79d4b04c75658e75633d4c442bb753bf2523d6c82760919d82bfe179d16edf8` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/instance--e5dcd16b4e91f421d6538327.md) | 174 | `declaration-track:e5dcd16b4e91f421d653832713c036fea0defd4af34f57e32117b988a81d196d` |
| 9 | `def` | [sheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/sheafifycocone--b435ae3c6097db41e98edc5f.md) | 208 | `declaration-track:b435ae3c6097db41e98edc5ffc43264ada38f632677081bd0829ac6f4e14956a` |
| 10 | `def` | [isColimitSheafifyCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/iscolimitsheafifycocone--aae7063ae7c833ef87e2c8b0.md) | 223 | `declaration-track:aae7063ae7c833ef87e2c8b00dfca5d9e86bf396addd4521aa4ae4863424dea1` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/instance--8782b7088b49ea281b592e6e.md) | 244 | `declaration-track:8782b7088b49ea281b592e6ebaaef02829a7ac19cfeed932c739462992be3a4f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant02d0506aa14616d103b57ecc6ac81ed3409f3d6183924f2ae19eedbc2259a3a7.lean/declarations/instance--9af178f6c5cc32ef2c4fe1f8.md) | 248 | `declaration-track:9af178f6c5cc32ef2c4fe1f883e4ae1ba49c975e19e4f4a0c651626a1731bb5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
