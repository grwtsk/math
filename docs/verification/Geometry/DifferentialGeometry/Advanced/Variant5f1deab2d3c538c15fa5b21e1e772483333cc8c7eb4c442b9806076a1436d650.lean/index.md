# Verification target: GRWTSK.Geometry.DifferentialGeometry.Advanced.Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be97cb06e4aa3099f1cfcd456b75cc99ada0a5b1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be97cb06e4aa3099f1cfcd456b75cc99ada0a5b1`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Manifold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.UnitsOfNormedAlgebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Notation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.ContMDiffSection` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Tangent` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.BumpFunction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.MDifferentiable` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorField.LieBracket` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proj](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/proj--528ceabd85772c4829a1b07b.md) | 57 | `declaration-track:528ceabd85772c4829a1b07b46ec091acc19bf1d0f75684a584f33128f2ee0d8` |
| 2 | `lemma` | [contMDiff_proj](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/contmdiff-proj--43f66b3304da7ebcf5f8fbab.md) | 67 | `result-track:43f66b3304da7ebcf5f8fbabd196d3f7d0c4e10427b5087229ed19efd7e3d27a` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/example--a939caa0a3f33b09c23932de.md) | 72 | `declaration-track:a939caa0a3f33b09c23932de4a9a7cd7af3da978adb88fd98c3a0a506be39754` |
| 4 | `def` | [RealCopy](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/realcopy--5b18f74d7cea85f4ae8ca151.md) | 317 | `declaration-track:5b18f74d7cea85f4ae8ca1517d269e6bd04081adeef9d3dd797e13b55b69bb87` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/instance--e8866d4bc0dba8e87af4bc48.md) | 319 | `declaration-track:e8866d4bc0dba8e87af4bc480f6b2b769b13cea27a3c3ace6a7a55a8cb4323b5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/instance--88298c87ea818b99bd263757.md) | 321 | `declaration-track:88298c87ea818b99bd263757aec395574e461f97603292cd2fb16a15b0744429` |
| 7 | `def` | [id'](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/id--3f3ab39207ab2ca06461c407.md) | 326 | `declaration-track:3f3ab39207ab2ca06461c407805c2df71ed693cae8cb0b1ad8839266a6db54fb` |
| 8 | `def` | [RealCopy'](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/realcopy--a729ba5d2a45c4ef110ba4e5.md) | 636 | `declaration-track:a729ba5d2a45c4ef110ba4e5a13105955fa9b5eb5a2231c846fef78568a14fa1` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/instance--6f27806a946a203538c36569.md) | 638 | `declaration-track:6f27806a946a203538c36569fa1106306db68b9a499662b3eb5f87063e3fbb92` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/instance--ef902ec793999f971a9b023b.md) | 639 | `declaration-track:ef902ec793999f971a9b023be1f8bcbc2f3ab3d3be56445f0eb26beaba4c61ae` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variant5f1deab2d3c538c15fa5b21e1e772483333cc8c7eb4c442b9806076a1436d650.lean/declarations/instance--721326c0e275fed630e66340.md) | 646 | `declaration-track:721326c0e275fed630e66340a32d0e52badbd03be3f33df75f103240f880f1bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
