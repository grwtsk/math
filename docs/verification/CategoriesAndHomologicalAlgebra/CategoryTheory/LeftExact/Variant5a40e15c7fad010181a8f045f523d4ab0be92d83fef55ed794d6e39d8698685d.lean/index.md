# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftExact.Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "684f1b83112793875c088b489fac50aeb1ab5892",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `684f1b83112793875c088b489fac50aeb1ab5892`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.Sheafification` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coneCompEvaluationOfConeCompDiagramFunctorCompEvaluation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/conecompevaluationofconecompdiagramfunctorcompevaluation--8ed09bd8c7d6a4e092c26c75.md) | 46 | `declaration-track:8ed09bd8c7d6a4e092c26c7574052464ade9d506537f7ffe125c08639a39b245` |
| 2 | `abbrev` | [liftToDiagramLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/lifttodiagramlimitobj--8a9aa12a11220b9e74936b24.md) | 63 | `declaration-track:8a9aa12a11220b9e74936b24563ed3c4304c201307dbf0403ed5542f5de23ca7` |
| 3 | `instance` | [preservesLimit_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preserveslimit-diagramfunctor--357b43b351b2bc602c7f5484.md) | 84 | `declaration-track:357b43b351b2bc602c7f5484ebf8a319d7434aeb032d33fe91676ec27e1c88f4` |
| 4 | `instance` | [preservesLimitsOfShape_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preserveslimitsofshape-diagramfunctor--2a0155eea4d5900607d5eb25.md) | 112 | `declaration-track:2a0155eea4d5900607d5eb2573c9ca727052256d2abf829b9fb42d0833d858a1` |
| 5 | `instance` | [preservesLimits_diagramFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preserveslimits-diagramfunctor--fb98d40d1934987e9bd231a5.md) | 117 | `declaration-track:fb98d40d1934987e9bd231a556cf417d33bb06d2c9b4b86e0982ca1710e3bd98` |
| 6 | `def` | [liftToPlusObjLimitObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/lifttoplusobjlimitobj--170f040bb2b327fcd89a762f.md) | 131 | `declaration-track:170f040bb2b327fcd89a762fb594202669192f6f642eb9cf0e85536057d4a270` |
| 7 | `theorem` | [liftToPlusObjLimitObj_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/lifttoplusobjlimitobj-fac--450730cf4acd9495e0665b90.md) | 161 | `result-track:450730cf4acd9495e0665b90a3801341600e688a847e6fa9567e29182a96174d` |
| 8 | `instance` | [preservesLimitsOfShape_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preserveslimitsofshape-plusfunctor--df5ba703e9d9c04417fd46ad.md) | 187 | `declaration-track:df5ba703e9d9c04417fd46ad0b8ee7d412f95b3c96122a4aa35bf2f7cdc28a35` |
| 9 | `instance` | [preserveFiniteLimits_plusFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preservefinitelimits-plusfunctor--0b150e075ad771cb55294a10.md) | 215 | `declaration-track:0b150e075ad771cb55294a10f34e15708e03cdc91a69e6f46a540b108fcb1c9f` |
| 10 | `instance` | [preservesLimitsOfShape_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preserveslimitsofshape-sheafification--b7dcb1acdfa09490631faa1a.md) | 223 | `declaration-track:b7dcb1acdfa09490631faa1af45e9b28a07b74fccf2c39b45b8ce962f0774325` |
| 11 | `instance` | [preservesFiniteLimits_sheafification](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preservesfinitelimits-sheafification--e277cb05901f79eefb8abf98.md) | 229 | `declaration-track:e277cb05901f79eefb8abf9897c29f988c80b0ba4017b4de5d601dccff86c9d4` |
| 12 | `instance` | [preservesLimitsOfShape_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preserveslimitsofshape-presheaftosheaf--50150bc0160a2ef6b0baee20.md) | 252 | `declaration-track:50150bc0160a2ef6b0baee2021ba8d77da805ed089970a99eb380baa5ed19508` |
| 13 | `instance` | [preservesfiniteLimits_presheafToSheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/declarations/preservesfinitelimits-presheaftosheaf--3c66b2be0e609a1f7d3462f4.md) | 262 | `declaration-track:3c66b2be0e609a1f7d3462f4b6d78f34620bd47c1c7b08e0c32af4aa5513e8a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
