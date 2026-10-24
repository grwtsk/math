# Verification target: GRWTSK.Geometry.DifferentialGeometry.Advanced.Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "011fa22e31401e1412c8cfdccbb0b7d7bf1893d2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `011fa22e31401e1412c8cfdccbb0b7d7bf1893d2`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.Manifold` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.UnitsOfNormedAlgebra` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Notation` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.ContMDiffSection` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Tangent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.SpecificFunctions` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.BumpFunction` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.MDifferentiable` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorField.LieBracket` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [proj](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/proj--995e62437f9be5c57ace94b3.md) | 49 | `declaration-track:995e62437f9be5c57ace94b341b295f1bb9d055adf22566850b9d81175e84f2a` |
| 2 | `lemma` | [contMDiff_proj](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/contmdiff-proj--191b0ea609db9f28d3b30a80.md) | 59 | `result-track:191b0ea609db9f28d3b30a807b58ca8822bba02b097f7739edfa6951acad34b0` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/example--28d63c2674ecc37f70732903.md) | 64 | `declaration-track:28d63c2674ecc37f7073290312aacf4194bf358440e842b672c9d5c893cdc811` |
| 4 | `def` | [RealCopy](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/realcopy--ddeb94a6b15a208cacd99d11.md) | 309 | `declaration-track:ddeb94a6b15a208cacd99d1152276c6e3ec362c71409577a14569a7577ce7b42` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/instance--2aab8f3288005a20f68dfde3.md) | 311 | `declaration-track:2aab8f3288005a20f68dfde3be0297520ab986d467748bd3a20c0ed196ed8105` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/instance--6a4fffa0b9f68a5834efdbef.md) | 313 | `declaration-track:6a4fffa0b9f68a5834efdbefd05ec664ef14efd47eb99796cdd08cf47a98c9dc` |
| 7 | `def` | [id'](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/id--90f9a15b12f41a34d79f47c0.md) | 318 | `declaration-track:90f9a15b12f41a34d79f47c064f854c5d6531a07a1891601fbf6167389271c28` |
| 8 | `def` | [RealCopy'](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/realcopy--d1df22cfb2cf2e3b2d728c3b.md) | 628 | `declaration-track:d1df22cfb2cf2e3b2d728c3b7beace9ddb01d16be14153f74e7c79e64436f743` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/instance--f7d1b58fb3921d41818b21a8.md) | 630 | `declaration-track:f7d1b58fb3921d41818b21a83824a058c1087f631072a217c240c39c4b3b47fe` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/instance--200ca7ef5a6dd35532c57e97.md) | 631 | `declaration-track:200ca7ef5a6dd35532c57e977678c2b2178d55a45c2618341db0f437291108fd` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Advanced/Variantf10a4ca93e1f29fae59c835e587be04d98dabc4377bc75ee2f7336f64367903d.lean/declarations/instance--ccc48b2fc88e2bce8cf1ce58.md) | 638 | `declaration-track:ccc48b2fc88e2bce8cf1ce58f0cd715855185335b301301853ba85082e3bc130` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
