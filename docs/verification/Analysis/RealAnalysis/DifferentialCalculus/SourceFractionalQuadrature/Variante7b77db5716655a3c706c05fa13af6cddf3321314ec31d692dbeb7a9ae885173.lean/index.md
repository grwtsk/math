# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFractionalQuadrature.Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "88bc693be20a0b66805a18d190af9f2fc9e6e41f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `88bc693be20a0b66805a18d190af9f2fc9e6e41f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fract_eq_sub_of_unit_cell](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/declarations/fract-eq-sub-of-unit-cell--3c71784a1059a2060cfb92d8.md) | 25 | `result-track:3c71784a1059a2060cfb92d8571d4a06f4d449d5d17be277aa12f76845799a67` |
| 2 | `theorem` | [fract_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/declarations/fract-deriv-intervalintegrable--911c120d673fe3159ce49325.md) | 32 | `result-track:911c120d673fe3159ce4932516add401afdaa1c4effae5b8fac90bc9b147fb27` |
| 3 | `theorem` | [unit_right_sampling_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/declarations/unit-right-sampling-identity--a2399c38f8376f17056bd3ab.md) | 46 | `result-track:a2399c38f8376f17056bd3ab43d9f7fbf843ddab259c23f04c986d78d9f04a15` |
| 4 | `theorem` | [finite_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/declarations/finite-quadrature--1638128faa6213ab5ad78981.md) | 68 | `result-track:1638128faa6213ab5ad789812c1c044f6495b5a2894782c5e7cb0a3c90940a43` |
| 5 | `theorem` | [finite_quadrature_of_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/declarations/finite-quadrature-of-endpoint-zero--7fc99310cf4891997b817d00.md) | 91 | `result-track:7fc99310cf4891997b817d008cd06a457538b5a4ecb912d188ed442995f6e27a` |
| 6 | `theorem` | [positive_axis_quadrature](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFractionalQuadrature/Variante7b77db5716655a3c706c05fa13af6cddf3321314ec31d692dbeb7a9ae885173.lean/declarations/positive-axis-quadrature--d58dee89a5105f87c25ee989.md) | 98 | `result-track:d58dee89a5105f87c25ee9890c230bed7bf4ba633ee885c12f917ee14d9e4199` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
