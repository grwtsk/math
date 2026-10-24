# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFractionalQuadrature.Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "409dccfb05d17d2ea55881e39766fdbe29417749",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `409dccfb05d17d2ea55881e39766fdbe29417749`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_eq_sub_of_unit_cell](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/fract-eq-sub-of-unit-cell--f418a186694174cc076d2428.md) | 26 | `result-track:f418a186694174cc076d24285c655df399b2ed5b370f79ea09a1127e9359942b` |
| 2 | `theorem` | [fract_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/fract-deriv-intervalintegrable--c684f54a70b635c25194cf82.md) | 33 | `result-track:c684f54a70b635c25194cf82e1030e30a3083cfba8589da66c1327d8f26d1c41` |
| 3 | `theorem` | [unit_right_sampling_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/unit-right-sampling-identity--c2dcab3f1520f7f9d761e562.md) | 47 | `result-track:c2dcab3f1520f7f9d761e562bf4e8a218e9a33230d5c9031848a74e626187bfa` |
| 4 | `theorem` | [finite_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/finite-quadrature--db49aedb98460ac33f3896c8.md) | 69 | `result-track:db49aedb98460ac33f3896c85b8c17c4ac5ba7119a98e699f997226a0a19d180` |
| 5 | `theorem` | [finite_quadrature_of_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/finite-quadrature-of-endpoint-zero--3e9f50bd463b7efbb1e97965.md) | 92 | `result-track:3e9f50bd463b7efbb1e97965093d39066eac643f56244ac422532af314da34fe` |
| 6 | `theorem` | [positive_axis_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/positive-axis-quadrature--3514927d5044a517bed2365b.md) | 99 | `result-track:3514927d5044a517bed2365b51ac0c7d9380d31a42092dabed3b9edad2efbb06` |
| 7 | `theorem` | [positive_samples_tsum_eq_sum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/positive-samples-tsum-eq-sum--8fde228c83863290ec643a4a.md) | 135 | `result-track:8fde228c83863290ec643a4a35db69351d0f6da1df6d5cbe97e963727b126f69` |
| 8 | `theorem` | [positive_axis_tsum_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variant35b64e82d8485debb2c003ee4bcf201e101b4bc4d2c99500686692f2b8ed550f.lean/declarations/positive-axis-tsum-quadrature--a8399ec0111f1f39debc70ab.md) | 153 | `result-track:a8399ec0111f1f39debc70ab7b39a5da9269fe52cdec498dee0c13a8f98e4349` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
