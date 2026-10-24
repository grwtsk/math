# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt02.Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "00f6653ce40ebbd0b02ecc78be849717c1348102",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `00f6653ce40ebbd0b02ecc78be849717c1348102`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceMangoldtNorm` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/correlation-deriv-fixed-tendsto--c1023b5c3253efbeb9b9ee69.md) | 20 | `result-track:c1023b5c3253efbeb9b9ee69e700f14ff3051612623317bb3e2e3837f20464e9` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/correlation-second-deriv-fixed-tendsto--343c432efc5e1087593291ef.md) | 29 | `result-track:343c432efc5e1087593291ef93e4d9a74cd545fe41f0b5523ca20a82e7e2431d` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/critical-second-deriv--5ffcc7bf331bb42eae2fb51c.md) | 39 | `result-track:5ffcc7bf331bb42eae2fb51cd5e2d9de5cf30be687411f12862ff0d3bb19bda9` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/criticalprimetest-deriv-fixed-tendsto--6797b92caf1c0a5de491ae79.md) | 62 | `result-track:6797b92caf1c0a5de491ae796876ef00e5b071f93fa293d1dba7f8a5d9227ece` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--d63814881470ce55279ab03e.md) | 78 | `result-track:d63814881470ce55279ab03ea6fe9ad1eb9e08866c2334cca43c1192f80da61f` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/criticalprimetest-deriv-eventually-pos--230081e54a681d3bf4678062.md) | 95 | `result-track:230081e54a681d3bf4678062a0166b09feafbf37bce662d1d94485f0e997e4e4` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/paired-curvature-eq-neg-critical-of-positive--c13c78bbcf4d1da754407427.md) | 102 | `result-track:c13c78bbcf4d1da7544074271be511c33c88f9508abdd14f6b57a26ba1e67d93` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt02/Variant42bb0ef473d70f3040cf58204071ec2238b263bca96524eec471e781f5107c57.lean/declarations/paired-curvature-fixed-tendsto--23c0715416cdbaedeb72cc7d.md) | 118 | `result-track:23c0715416cdbaedeb72cc7d04ebfc2507c7a30491b5e7f74a0ea202df1d3dff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
