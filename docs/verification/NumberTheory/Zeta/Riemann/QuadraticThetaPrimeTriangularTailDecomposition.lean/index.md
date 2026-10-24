# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularTailDecomposition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0398d337b42e44879a34768aa73295fa335385c6",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0398d337b42e44879a34768aa73295fa335385c6`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularBoundaryLocalization`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularBoundaryLocalization.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TriangularBoundaryTailData](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/declarations/triangularboundarytaildata--a08bc208845216bb98b851f4.md) | 13 | `declaration-track:a08bc208845216bb98b851f480ccddf8a4d1e533fe835754d19cb86f0a409cb2` |
| 2 | `theorem` | [TriangularBoundaryTailData.total_error_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/declarations/triangularboundarytaildata-total-error-le--9d657f8be4b2dc6d3391ec31.md) | 35 | `result-track:9d657f8be4b2dc6d3391ec31087d6777d647398504871d18c8ee072b16b258ee` |
| 3 | `def` | [TriangularBoundaryTailDecompositionClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/declarations/triangularboundarytaildecompositionclaim--39ab3ea9b94be85fb49aafd5.md) | 61 | `declaration-track:39ab3ea9b94be85fb49aafd527744282f0c36844e5b00134eb007df3ed27fbf8` |
| 4 | `def` | [SevenEighthsTriangularTailBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/declarations/seveneighthstriangulartailbudget--ce879fb703ef150e4f6b37d4.md) | 70 | `declaration-track:ce879fb703ef150e4f6b37d4ae487ee8a45487946f87bb8f26a6b0c1583263af` |
| 5 | `theorem` | [oneThird_boundary_power_below_threeQuarters](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/declarations/onethird-boundary-power-below-threequarters--083f5916d57d7af15ed58df4.md) | 85 | `result-track:083f5916d57d7af15ed58df426dd7d7fa3dd347a63af9504fbf328cb9148fe23` |
| 6 | `structure` | [TriangularSmoothingTailAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularTailDecomposition.lean/declarations/triangularsmoothingtailaccepted--5475612b8230259c97fdf48d.md) | 93 | `declaration-track:5475612b8230259c97fdf48d6d53bda570054f02a11ce816930f6cd832c178b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
