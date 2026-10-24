# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Budgets.Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07aa01938322434936bdd0ebe83041ca3375dd47",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07aa01938322434936bdd0ebe83041ca3375dd47`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [power_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/power-intervalintegrable--2eb36d364d77c1506ffbcb5f.md) | 17 | `result-track:2eb36d364d77c1506ffbcb5f86194ba365e7a66f1df179752a7cbe50a3ae3853` |
| 2 | `theorem` | [log_power_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/log-power-intervalintegrable--3fbac12780df93ab37c47a40.md) | 25 | `result-track:3fbac12780df93ab37c47a409ecf7a168635e2f38755bad6b0d7e1ded99f9322` |
| 3 | `theorem` | [inverse_half_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/inverse-half-eq--25a44554ed10a74660b4573b.md) | 37 | `result-track:25a44554ed10a74660b4573b6930a522d8132af1f789fe8ba94fa5684164c781` |
| 4 | `theorem` | [power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/power-integral--3d23f2ed432624f3db907d68.md) | 42 | `result-track:3d23f2ed432624f3db907d684f97f72fafd2142c01e2556ba44d49fd298027e7` |
| 5 | `theorem` | [log_power_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/log-power-primitive--d19f51c9334fab4edb273a5e.md) | 54 | `result-track:d19f51c9334fab4edb273a5eea5f935b101ee3b912dca3e0e3e425f215e6a28c` |
| 6 | `theorem` | [log_power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/log-power-integral--9bcf1bad99d698e0d408b6f4.md) | 71 | `result-track:9bcf1bad99d698e0d408b6f422754439dae9c1d665995b40cfee3c611d0b0a36` |
| 7 | `theorem` | [power_integral_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/power-integral-le-two--5bce69f33a5dc86d3b797169.md) | 82 | `result-track:5bce69f33a5dc86d3b797169f8f60ace1a95505ad333435515b2b432246e7f87` |
| 8 | `theorem` | [log_power_integral_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/log-power-integral-le-four--5b2dd56a8041487c1755eb76.md) | 88 | `result-track:5b2dd56a8041487c1755eb76b7e2056b1b4fb9be55a7650e67f3e5ccd4b45710` |
| 9 | `theorem` | [centered_fract_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/centered-fract-abs-le--bc57161a0c83b58bbbeb9026.md) | 95 | `result-track:bc57161a0c83b58bbbeb9026c6bab5714e477d4ad96d0a0b8143bf891db021c7` |
| 10 | `theorem` | [centered_error_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/centered-error-bound--68bc90a0e27e5e8658733f08.md) | 99 | `result-track:68bc90a0e27e5e8658733f086744112a566ca127bb05636056c8f3ffd94852dd` |
| 11 | `theorem` | [error_budget_le_twelve](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variant3ed3a22edc6a7042f001939c040200b8101d0be385b09221f56bc2a45b04f3a6.lean/declarations/error-budget-le-twelve--8e14500d87efb5410c2b6b83.md) | 138 | `result-track:8e14500d87efb5410c2b6b830943fc87f0117327f1773e1bfda10d3458b1e228` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
