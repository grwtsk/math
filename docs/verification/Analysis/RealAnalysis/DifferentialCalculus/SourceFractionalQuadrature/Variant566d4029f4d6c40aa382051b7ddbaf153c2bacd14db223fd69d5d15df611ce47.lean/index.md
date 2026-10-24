# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFractionalQuadrature.Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2e21b9173cf8b73758344bf3dfec97fdd19e4aea",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2e21b9173cf8b73758344bf3dfec97fdd19e4aea`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_eq_sub_of_unit_cell](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/fract-eq-sub-of-unit-cell--af7c920741effa8ff5b6e86c.md) | 34 | `result-track:af7c920741effa8ff5b6e86cdc774941c161587dd4b3dad595a743231fb56197` |
| 2 | `theorem` | [fract_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/fract-deriv-intervalintegrable--965df31e5ad8eb624ad97950.md) | 41 | `result-track:965df31e5ad8eb624ad97950d733040845fe8b3228b366adb93b54358ae76a5c` |
| 3 | `theorem` | [unit_right_sampling_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/unit-right-sampling-identity--6a470374694dfa6d0140156a.md) | 55 | `result-track:6a470374694dfa6d0140156a5e067a6e6eb9494b618db199fb5bdf8c2731ad62` |
| 4 | `theorem` | [finite_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/finite-quadrature--cde094e4a961f88e1f26ab73.md) | 77 | `result-track:cde094e4a961f88e1f26ab733c8cfd4036802dcc9c9ff8cc7edf75bd537dcb5b` |
| 5 | `theorem` | [finite_quadrature_of_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/finite-quadrature-of-endpoint-zero--6fa1fe3eb11e1292f2badc69.md) | 100 | `result-track:6fa1fe3eb11e1292f2badc69b33dd3f40977f771fc91e308a67b59030314d7c8` |
| 6 | `theorem` | [positive_axis_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/positive-axis-quadrature--e32922cfc38c0b27ae0318bc.md) | 107 | `result-track:e32922cfc38c0b27ae0318bc2af8e1217b7dbcbb85bbe868b70b4e23cfab935e` |
| 7 | `theorem` | [positive_samples_tsum_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/positive-samples-tsum-eq-sum--c2920f7a7af59350029188bb.md) | 143 | `result-track:c2920f7a7af59350029188bb05534d6f288fed6915ebd34969c133dcb53ea474` |
| 8 | `theorem` | [positive_axis_tsum_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant566d4029f4d6c40aa382051b7ddbaf153c2bacd14db223fd69d5d15df611ce47.lean/declarations/positive-axis-tsum-quadrature--c258e1dec773e84c08940388.md) | 161 | `result-track:c258e1dec773e84c089403882af0e48afbae339ff141d93ffb80054d338e16f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
