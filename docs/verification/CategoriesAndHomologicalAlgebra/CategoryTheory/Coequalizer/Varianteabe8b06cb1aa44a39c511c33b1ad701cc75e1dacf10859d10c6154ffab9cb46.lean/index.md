# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Coequalizer.Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3aa0220a3356f7e22a7dcc0f04c0aac7f29b826",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3aa0220a3356f7e22a7dcc0f04c0aac7f29b826`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Reflexive` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.SplitCoequalizer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monad.Algebra` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FreeCoequalizer.topMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/freecoequalizer-topmap--f7ff57e8ba66175a36cf9f78.md) | 53 | `declaration-track:f7ff57e8ba66175a36cf9f786cda537b0036ebc958e4fa3935b660c03a584b89` |
| 2 | `def` | [FreeCoequalizer.bottomMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/freecoequalizer-bottommap--f7083002b4b8dbc361f7b490.md) | 58 | `declaration-track:f7083002b4b8dbc361f7b490dceef7c3a02e5c46544d9c3ed7320d6e8af874d6` |
| 3 | `def` | [FreeCoequalizer.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/freecoequalizer--cdf809ae9a68be82d964f18d.md) | 64 | `declaration-track:cdf809ae9a68be82d964f18d4101cb7abc0264a1221ced9f838bdec8beaff5c3` |
| 4 | `theorem` | [FreeCoequalizer.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/freecoequalizer-condition--3e87c6dbc481a4521241325c.md) | 68 | `result-track:3e87c6dbc481a4521241325cd21a2946a2da49086db0b7918a441cf70c9e5f63` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/instance--ec67c2f2f27988128bc42f05.md) | 73 | `declaration-track:ec67c2f2f27988128bc42f053bf9334b5d9d1a80b211c34234b78d15a3dbb694` |
| 6 | `def` | [beckAlgebraCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/beckalgebracofork--7b5115b2c7dae0324b2a8403.md) | 86 | `declaration-track:7b5115b2c7dae0324b2a8403a23060e8632b9fd53d397a8cdd30fee5ae3c12ed` |
| 7 | `def` | [beckAlgebraCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/beckalgebracoequalizer--14096278efbb130e4af680ee.md) | 92 | `declaration-track:14096278efbb130e4af680eea6cda39e748e2fe6d0e1b292e4bb7c34bbdb604f` |
| 8 | `def` | [beckSplitCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/becksplitcoequalizer--baa74719b66eac319c9b1af4.md) | 110 | `declaration-track:baa74719b66eac319c9b1af4b7bbc778068be50012b6e8ccc256a628552c0df6` |
| 9 | `def` | [beckCofork](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/beckcofork--b1547d32d21b26ce2f2d4b85.md) | 115 | `declaration-track:b1547d32d21b26ce2f2d4b856d3bf755e127e9561e3d99814d0eb69775758a00` |
| 10 | `theorem` | [beckCofork_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/beckcofork--c0da090a750d3ccb68535c04.md) | 119 | `result-track:c0da090a750d3ccb68535c04ee10029b0fffb66714daa7d6a370c18b896dc6b0` |
| 11 | `def` | [beckCoequalizer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/beckcoequalizer--e5d67fe9afeb8817b4c00f60.md) | 123 | `declaration-track:e5d67fe9afeb8817b4c00f605f47dc1ff2b4c987420b10f90907a5ba4de978dd` |
| 12 | `theorem` | [beckCoequalizer_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Coequalizer/Varianteabe8b06cb1aa44a39c511c33b1ad701cc75e1dacf10859d10c6154ffab9cb46.lean/declarations/beckcoequalizer-desc--b8c61dab9ccfeb020cd3850a.md) | 127 | `result-track:b8c61dab9ccfeb020cd3850a0556affbd9167654ca699f20fca661027c117172` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
