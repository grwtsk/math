# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt04.Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "000b73d09934bf54084f08f2dd0f4374e46f4cc6",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `000b73d09934bf54084f08f2dd0f4374e46f4cc6`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean.json)

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
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/correlation-deriv-fixed-tendsto--d9b3c86555acdff74b409aa2.md) | 20 | `result-track:d9b3c86555acdff74b409aa297b75e3729ee668202734f2c0a64f49ee8cd1b93` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/correlation-second-deriv-fixed-tendsto--6238cca77203dbd8b253be6f.md) | 29 | `result-track:6238cca77203dbd8b253be6fb3b84fce175dc229208313cda0f3d331c146e428` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/critical-second-deriv--e48457e0652cce17f9253cb6.md) | 40 | `result-track:e48457e0652cce17f9253cb610ece97abeb16ea932f15e5e591438a8dcff145e` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/criticalprimetest-deriv-fixed-tendsto--6c55383f57a1919e59fe596f.md) | 63 | `result-track:6c55383f57a1919e59fe596f0cf0deec387617db6068d099e9ca19d87fff3d16` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--243cfdc2d19e43d6740f694f.md) | 78 | `result-track:243cfdc2d19e43d6740f694fab42872b2e7d0c673e4c17deba34f923e53158ee` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/criticalprimetest-deriv-eventually-pos--22c76e04e7aca414bdd4382e.md) | 94 | `result-track:22c76e04e7aca414bdd4382e9be4e01efa745b13abe2b58e8154be653c3ff5da` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/paired-curvature-eq-neg-critical-of-positive--34f02b9cf0cda693c53656b8.md) | 101 | `result-track:34f02b9cf0cda693c53656b89cd9f71d2dcb5c971e1d2d0a080f4552f588513a` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt04/Variant20e894e5f86c6fd64e3e18dab5abea271c6c606d2f485511790571c34000c1b5.lean/declarations/paired-curvature-fixed-tendsto--140e0e8e048a8b9d96839148.md) | 117 | `result-track:140e0e8e048a8b9d968391483627d6d3319557dd868aeb7ecf95fb70efb69856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
