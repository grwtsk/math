# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Budgets.Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edaa0bddf80cfcf4eaed73052fae331224074279",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edaa0bddf80cfcf4eaed73052fae331224074279`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.Floor` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [power_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/power-intervalintegrable--598a6eefd87959066acbd38d.md) | 25 | `result-track:598a6eefd87959066acbd38d8da9a5d61c6fb8e908e15071e1d7828e4d2a0380` |
| 2 | `theorem` | [log_power_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/log-power-intervalintegrable--5aa64a31f2efe381211a8315.md) | 33 | `result-track:5aa64a31f2efe381211a8315b290634891581649fba092b66a758516cd2e4e70` |
| 3 | `theorem` | [inverse_half_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/inverse-half-eq--4559e6d3a606920a21ef4c77.md) | 45 | `result-track:4559e6d3a606920a21ef4c7792a4197de782a94ef498c664f0114067562c2ebe` |
| 4 | `theorem` | [power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/power-integral--24ac1712790cce4ef3c5ff6a.md) | 50 | `result-track:24ac1712790cce4ef3c5ff6a5a2424fccfd59df4175e90e3a786726980001255` |
| 5 | `theorem` | [log_power_primitive](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/log-power-primitive--7b488fb0943d07fb3b87f8f2.md) | 62 | `result-track:7b488fb0943d07fb3b87f8f268fdc684935c33eb8514d88e4373048a05d26aff` |
| 6 | `theorem` | [log_power_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/log-power-integral--56139bc746daf3831f9dfc21.md) | 79 | `result-track:56139bc746daf3831f9dfc214fd7e5b4c72ab9a74db9bdf0189719d4bdafa2c5` |
| 7 | `theorem` | [power_integral_le_two](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/power-integral-le-two--a8d4c6b56ee1d909db550cec.md) | 90 | `result-track:a8d4c6b56ee1d909db550cecb426942c4a0cc744a219c0ccf043e9358b4dc8a4` |
| 8 | `theorem` | [log_power_integral_le_four](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/log-power-integral-le-four--6358bcbfde5d8eb869456370.md) | 96 | `result-track:6358bcbfde5d8eb869456370c15f48b041a462d89a1299a55044ba4d762b2059` |
| 9 | `theorem` | [centered_fract_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/centered-fract-abs-le--27d83c137e3a19dfb62f0278.md) | 103 | `result-track:27d83c137e3a19dfb62f02782cbb61011f2ce29a76d69ab4118daea0f015d49f` |
| 10 | `theorem` | [centered_error_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/centered-error-bound--887c6d60e1c43a2280190b5c.md) | 107 | `result-track:887c6d60e1c43a2280190b5ce02a69b88ebd14801d7783abaa9c2839c4fb5274` |
| 11 | `theorem` | [error_budget_le_twelve](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Budgets/Variante9efd76cb0458c2a5752d0240421ab19dd34442bf6fc80c275f0ada492b2b7ed.lean/declarations/error-budget-le-twelve--3032c0ba52e4cf6e1b433e3b.md) | 146 | `result-track:3032c0ba52e4cf6e1b433e3b6a0fb15661223c32c7d087c309a0818a8c970f2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
