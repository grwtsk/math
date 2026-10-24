# Verification target: GRWTSK.Algebra.CriticalTwoModeDiophantine.Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfb2d5c40b93fe8c353093184ad762e0b858f1bc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/index.md) · [Full source](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfb2d5c40b93fe8c353093184ad762e0b858f1bc`.

Source path: `GRWTSK/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CriticalTwoModeBasic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Round` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Real.Pi.Bounds` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BadlyApproximable](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/badlyapproximable--a8d8b4babc25b7966a2ea13f.md) | 22 | `declaration-track:a8d8b4babc25b7966a2ea13ff8fcb08b601514ef762df271378a8965dc76aaad` |
| 2 | `def` | [nearestPeriod](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/nearestperiod--ad660791ff7828ac2b4d5cb3.md) | 26 | `declaration-track:ad660791ff7828ac2b4d5cb394ec8cbbae25ca1f6e4461c8d3eddd6ad8531cf5` |
| 3 | `def` | [periodResidual](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/periodresidual--46c0ffa3dacc1802dae9068e.md) | 27 | `declaration-track:46c0ffa3dacc1802dae9068efc48fca3009c5acb555a1dffa572d035d971ff63` |
| 4 | `theorem` | [badly_approximable_iff_positive_denominators](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/badly-approximable-iff-positive-denominators--2b2dc887fa24fe728881aa97.md) | 29 | `result-track:2b2dc887fa24fe728881aa970993b4be767bb08c6f95ae147bf5c22c1b777fdf` |
| 5 | `theorem` | [badly_approximable_is_irrational](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/badly-approximable-is-irrational--a47fb91e98173c07903d4f7b.md) | 55 | `result-track:a47fb91e98173c07903d4f7bc637fc0d3d8ff3afb87e785ee4331c3d17ca0f75` |
| 6 | `theorem` | [literal_period_residual_abs_le_pi](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/literal-period-residual-abs-le-pi--9f4892627eeab18e626fe5fa.md) | 65 | `result-track:9f4892627eeab18e626fe5fac4486f413392d1dce802726ff3dcf51637c16aa2` |
| 7 | `theorem` | [literal_period_residual_cos](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/literal-period-residual-cos--63aade1bdaa9ae23af92eac3.md) | 77 | `result-track:63aade1bdaa9ae23af92eac34350eb42e1a289ab204fff0adc78b81f1c1a26eb` |
| 8 | `theorem` | [literal_period_residual_deficit](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/literal-period-residual-deficit--7f7059d6d2440a3e190e9075.md) | 80 | `result-track:7f7059d6d2440a3e190e90757e67b785cacc92fa6ce1d92e388eb2f3ecd3b244` |
| 9 | `theorem` | [literal_two_mode_residual_deficit](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/literal-two-mode-residual-deficit--b0114e1f6630bbfcf8b51743.md) | 86 | `result-track:b0114e1f6630bbfcf8b517438c075eb8329336096ec23e8fcf404c5182f47791` |
| 10 | `theorem` | [literal_nearest_period_size_bound](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/literal-nearest-period-size-bound--756325c3b824231643d9fc9f.md) | 94 | `result-track:756325c3b824231643d9fc9f26a6ef5b776bf7524eec68f449f3340c1537d515` |
| 11 | `theorem` | [literal_nonzero_period_diophantine_price](../../../../mathematics/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/declarations/literal-nonzero-period-diophantine-price--a7a59076d259009097fde5e1.md) | 112 | `result-track:a7a59076d259009097fde5e185c07b1dadf94c8c648cc97401d3d9082e8b99e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
