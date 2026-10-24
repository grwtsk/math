# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.RootActualXiConditionalHolomorphy.Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8ebeaabf23dc9780845adc52db4386df5b3eb6c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8ebeaabf23dc9780845adc52db4386df5b3eb6c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiConditionalComplexLaplace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [time_exp_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean/declarations/time-exp-bound--de25d80cc2c57228c791ec95.md) | 28 | `result-track:de25d80cc2c57228c791ec9595960e364a7d55c0c042f5da5d34656b1845023b` |
| 2 | `theorem` | [derivative_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean/declarations/derivative-norm-bound--df2581383479b2e06a5ce31f.md) | 35 | `result-track:df2581383479b2e06a5ce31f07403af48afbb0f32dbce84075b3f0757e5af1be` |
| 3 | `theorem` | [kernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean/declarations/kernel-hasderivat--1471725606930812117ad1c5.md) | 58 | `result-track:1471725606930812117ad1c51569a17702e8c6081fee7570fcaf2cc318ab4a39` |
| 4 | `theorem` | [actualXiComplexLaplace_hasDerivAt_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean/declarations/actualxicomplexlaplace-hasderivat-of-future-average--c29f756e22a61a7e1656170d.md) | 68 | `result-track:c29f756e22a61a7e1656170d918dab99c32b3c8d12a9837c96638833942a4a1a` |
| 5 | `theorem` | [actualXiComplexLaplace_analyticOnNhd_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/RootActualXiConditionalHolomorphy/Variant08bbdf0c77a7309bf297c045491dcf34ec582c000c429f90faee44c8160d1821.lean/declarations/actualxicomplexlaplace-analyticonnhd-of-future-average--9f41af6ee404205ce10a9c9d.md) | 120 | `result-track:9f41af6ee404205ce10a9c9d073f728b0ec08101be143505505bae5f65a03ed4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
