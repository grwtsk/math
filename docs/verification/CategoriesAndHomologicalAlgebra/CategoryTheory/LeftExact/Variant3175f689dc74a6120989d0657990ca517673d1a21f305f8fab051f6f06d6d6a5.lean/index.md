# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftExact.Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e3df8e2fa48d6f98e6297eee93e069f7e27629d",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e3df8e2fa48d6f98e6297eee93e069f7e27629d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/conecompevaluationofconecompdiagramfunctorcompevaluation--37013a380841152e8492dbcc.md) | 38 | `declaration-track:37013a380841152e8492dbcc4326dc780b427f2e7615a8de51652d73839315f7` |
| 2 | `abbrev` | [liftToDiagramLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/lifttodiagramlimitobj--aa3a29fa1790edd2cf8fc8fc.md) | 55 | `declaration-track:aa3a29fa1790edd2cf8fc8fcff20665614bc3750307eb6f410ef2f7535c513bf` |
| 3 | `instance` | [preservesLimit_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preserveslimit-diagramfunctor--0656ce705aedc0757db6b4c7.md) | 76 | `declaration-track:0656ce705aedc0757db6b4c7f453308759715100ff8642cba312f5db222ede22` |
| 4 | `instance` | [preservesLimitsOfShape_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preserveslimitsofshape-diagramfunctor--b4467901854fc16d0042c705.md) | 104 | `declaration-track:b4467901854fc16d0042c70581a2b8f12c59a8af40cd1b82f4ebee7b41e17eeb` |
| 5 | `instance` | [preservesLimits_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preserveslimits-diagramfunctor--76576ee9ada33e35de756cb5.md) | 109 | `declaration-track:76576ee9ada33e35de756cb567a6c9a14b0f3645909f076d501fd8cb2551e9b2` |
| 6 | `def` | [liftToPlusObjLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/lifttoplusobjlimitobj--5eb72928be38b510cc48e656.md) | 123 | `declaration-track:5eb72928be38b510cc48e6564095c9319fc310c157c29da3e1295f99bd282025` |
| 7 | `theorem` | [liftToPlusObjLimitObj_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/lifttoplusobjlimitobj-fac--88f5fa76540b9b366d224b83.md) | 153 | `result-track:88f5fa76540b9b366d224b8367cb7ef7ff46bc0fd0aee3f9e974a816693b85f4` |
| 8 | `instance` | [preservesLimitsOfShape_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preserveslimitsofshape-plusfunctor--e056ee4c34d401384b9369ad.md) | 179 | `declaration-track:e056ee4c34d401384b9369ad298d46a28a2becc2eb01edc623b1266734ed9ec1` |
| 9 | `instance` | [preserveFiniteLimits_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preservefinitelimits-plusfunctor--b7f4ced1336e96c42fe5bf46.md) | 207 | `declaration-track:b7f4ced1336e96c42fe5bf46dfd7b3ac6490c7074b805d53e7d58fa8b916113f` |
| 10 | `instance` | [preservesLimitsOfShape_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preserveslimitsofshape-sheafification--b298f416cafc893557673783.md) | 215 | `declaration-track:b298f416cafc893557673783270b31afbaa6909d5c52dfec96bedea143bd9e25` |
| 11 | `instance` | [preservesFiniteLimits_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preservesfinitelimits-sheafification--90771700475692201280d60d.md) | 221 | `declaration-track:90771700475692201280d60d059ec1d9b1c9b324c4a6483951f186000e9c7722` |
| 12 | `instance` | [preservesLimitsOfShape_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preserveslimitsofshape-presheaftosheaf--2de48647e5f0609277624c3c.md) | 244 | `declaration-track:2de48647e5f0609277624c3c92ce8f4e6448f4ec873f2dd7d65eb192403acaf1` |
| 13 | `instance` | [preservesfiniteLimits_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant3175f689dc74a6120989d0657990ca517673d1a21f305f8fab051f6f06d6d6a5.lean/declarations/preservesfinitelimits-presheaftosheaf--66e7ad605ad2a0f024090950.md) | 254 | `declaration-track:66e7ad605ad2a0f0240909502a4b81d74a448daa3e12362571d225d29a774bee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
