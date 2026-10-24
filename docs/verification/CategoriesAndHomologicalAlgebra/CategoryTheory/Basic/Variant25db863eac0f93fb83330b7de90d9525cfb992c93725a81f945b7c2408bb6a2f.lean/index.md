# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2b4b87c3bed0d68f325d6780d7ef61563b8f37dc",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2b4b87c3bed0d68f325d6780d7ef61563b8f37dc`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Subobject` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Abelian.Transfer` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.AdjointFunctorTheorems` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.HasLimits` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsGrothendieckAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/declarations/isgrothendieckabelian--65dbaefde992193cc2b2eb95.md) | 75 | `declaration-track:65dbaefde992193cc2b2eb95daf92d3150748c5000a78f9d2a2725b591e7155d` |
| 2 | `theorem` | [IsGrothendieckAbelian.of_equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/declarations/isgrothendieckabelian-of-equivalence--a9da26e2c07e56854d0e15fa.md) | 86 | `result-track:a9da26e2c07e56854d0e15fabb1ec59b64e650dc29512eb7ccc3dee57f287a08` |
| 3 | `instance` | [ShrinkHoms.isGrothendieckAbelian](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/declarations/shrinkhoms-isgrothendieckabelian--67192ff1bc5e015cb03e2bbd.md) | 96 | `declaration-track:67192ff1bc5e015cb03e2bbddf78f01ad351a8dc560e24e6b33b2e7432e32c5d` |
| 4 | `instance` | [IsGrothendieckAbelian.hasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/declarations/isgrothendieckabelian-hascolimits--37ce35bce44a16a18f181d36.md) | 104 | `declaration-track:37ce35bce44a16a18f181d36a384ad1ad2d3b0054bd170e817237965cc3c006d` |
| 5 | `instance` | [IsGrothendieckAbelian.hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/declarations/isgrothendieckabelian-haslimits--2951f8f404692451b8770b5c.md) | 107 | `declaration-track:2951f8f404692451b8770b5c5f9bcd0189b17a1e105ad66d0ec2250616b3fff8` |
| 6 | `instance` | [IsGrothendieckAbelian.wellPowered](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/declarations/isgrothendieckabelian-wellpowered--77754a13ebe9a0c21eca9d4a.md) | 111 | `declaration-track:77754a13ebe9a0c21eca9d4a819173abb315621a094bad1a403e035e75de816c` |
| 7 | `instance` | [IsGrothendieckAbelian.ab4OfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant25db863eac0f93fb83330b7de90d9525cfb992c93725a81f945b7c2408bb6a2f.lean/declarations/isgrothendieckabelian-ab4ofsize--d5dcb7ce718be1640ade7f69.md) | 114 | `declaration-track:d5dcb7ce718be1640ade7f69aa49c53d27b759ed66f7d0b69afaa3c9c486a656` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
