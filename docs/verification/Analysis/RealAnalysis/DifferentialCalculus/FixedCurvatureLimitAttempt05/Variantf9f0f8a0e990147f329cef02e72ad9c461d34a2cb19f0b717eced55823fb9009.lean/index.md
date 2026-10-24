# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FixedCurvatureLimitAttempt05.Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a25002a8d3a00eca80fbf51e5ac3aae1b7de19e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a25002a8d3a00eca80fbf51e5ac3aae1b7de19e`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean.json)

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
| 1 | `theorem` | [correlation_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/correlation-deriv-fixed-tendsto--0b65eee0312caa9949760f01.md) | 20 | `result-track:0b65eee0312caa9949760f01fb65d6ead2644a44582398f90edb10a299f96904` |
| 2 | `theorem` | [correlation_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/correlation-second-deriv-fixed-tendsto--c3c83e4138d2233d7a8214d7.md) | 29 | `result-track:c3c83e4138d2233d7a8214d7349ff478af090bca482f454dcbb78501fee9373c` |
| 3 | `theorem` | [critical_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/critical-second-deriv--f773be2a230ac28e8aaa1953.md) | 40 | `result-track:f773be2a230ac28e8aaa19532426d4058f6335d260fc0db65a0e36ee2b80c87e` |
| 4 | `theorem` | [criticalPrimeTest_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/criticalprimetest-deriv-fixed-tendsto--afd717899625dab8f7b1d5c1.md) | 63 | `result-track:afd717899625dab8f7b1d5c1d02f68efc7c9b11f0a4a3b8699422b04b13b85f7` |
| 5 | `theorem` | [criticalPrimeTest_second_deriv_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/criticalprimetest-second-deriv-fixed-tendsto--566fd0235b9f8858d00ebd3f.md) | 78 | `result-track:566fd0235b9f8858d00ebd3f2ad5d4d42e86a22b459d38d412d690695fc27cea` |
| 6 | `theorem` | [criticalPrimeTest_deriv_eventually_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/criticalprimetest-deriv-eventually-pos--d9162f7a0576f86703c62c08.md) | 94 | `result-track:d9162f7a0576f86703c62c08675ca6d437b7a427ec9c6efe61d6c7678f1bfdb9` |
| 7 | `theorem` | [paired_curvature_eq_neg_critical_of_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/paired-curvature-eq-neg-critical-of-positive--b2c1b59b7054c89646bf8038.md) | 101 | `result-track:b2c1b59b7054c89646bf80387f7fe64024976120b0e1a1e6b35ebd7d63fa50fd` |
| 8 | `theorem` | [paired_curvature_fixed_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/FixedCurvatureLimitAttempt05/Variantf9f0f8a0e990147f329cef02e72ad9c461d34a2cb19f0b717eced55823fb9009.lean/declarations/paired-curvature-fixed-tendsto--539703cb0e7d5069f49ed5a5.md) | 117 | `result-track:539703cb0e7d5069f49ed5a55d31d6223a34cb83e6464917695baf7e1d1baafd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
