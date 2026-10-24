# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.DyadicExponentialControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4143365097b5a32227f6d605ce5865a39b8c760f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4143365097b5a32227f6d605ce5865a39b8c760f`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ScaledLogPowerEvaluation`](../../../../../mathematics/Analysis/ComplexAnalysis/ScaledLogPowerEvaluation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_squarings_keeps_value](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/zero-squarings-keeps-value--18dd2cc731844dde2540298c.md) | 17 | `result-track:18dd2cc731844dde2540298c147fd8e762959f439ba27ff600a4b258d639f1fa` |
| 2 | `theorem` | [zero_squarings_keeps_error](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/zero-squarings-keeps-error--adb64484bf59acfdd7f4d99e.md) | 19 | `result-track:adb64484bf59acfdd7f4d99e694a43c7813c5b49cdd5dd9b2d8d98108739a623` |
| 3 | `theorem` | [two_squarings_is_fourth_power](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/two-squarings-is-fourth-power--2db1e452d04c323c5bfbcb5f.md) | 22 | `result-track:2db1e452d04c323c5bfbcb5f6fa028301031752f4f0b83f1713f25b9d235ff20` |
| 4 | `theorem` | [quadratic_error_is_required](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/quadratic-error-is-required--a82bb467376e91d135da3b97.md) | 27 | `result-track:a82bb467376e91d135da3b97ab0e54ad2cfd3548bf912d8b20570b4f846b5eb2` |
| 5 | `theorem` | [unit_center_error_step](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/unit-center-error-step--ed988f1fc58db34250e81080.md) | 30 | `result-track:ed988f1fc58db34250e81080e50fffef5233f47361ee24a98b6175d95b0b28b3` |
| 6 | `theorem` | [early_rounding_is_not_final_rounding](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/early-rounding-is-not-final-rounding--4a70d1a5e8ae76b13deb863c.md) | 35 | `result-track:4a70d1a5e8ae76b13deb863cc7a5093f82a6d69114f5f3a0f50e6be1ddff935d` |
| 7 | `theorem` | [scaled_argument_guard_example](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/scaled-argument-guard-example--709b883ebbf8ba1b26b9570a.md) | 38 | `result-track:709b883ebbf8ba1b26b9570adb6967c77473bc5e92b93231db57d4a2684f35d7` |
| 8 | `theorem` | [unscaled_small_degree_guard_fails](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/unscaled-small-degree-guard-fails--993fe558e1cf48a556ac4977.md) | 41 | `result-track:993fe558e1cf48a556ac49771d947e6a69777652d3f800c9a81181f6b9b57bab` |
| 9 | `theorem` | [reduced_small_degree_guard_holds](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/reduced-small-degree-guard-holds--6cf6b65d836e95285e2bfc31.md) | 44 | `result-track:6cf6b65d836e95285e2bfc3113941a8fcb4f37e8e3cb064898cca5d39a9cd64f` |
| 10 | `theorem` | [scaled_polynomial_not_unscaled](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/scaled-polynomial-not-unscaled--078b7d42e5019b207f21e78b.md) | 48 | `result-track:078b7d42e5019b207f21e78bf3184cec552293cd81290cd936278660d728ec5c` |
| 11 | `theorem` | [multiplicity_scales_propagated_error](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/multiplicity-scales-propagated-error--dca86f854ed82ce0586bf89d.md) | 52 | `result-track:dca86f854ed82ce0586bf89d2601559ec96ab3bb2d0151b114dd6227f0e517b6` |
| 12 | `theorem` | [equality_margin_still_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/DyadicExponentialControls.lean/declarations/equality-margin-still-rejected--01f57c37e3c9f883381dacbe.md) | 55 | `result-track:01f57c37e3c9f883381dacbefbb88c16fd4b6d6edecca6e4ceeb0d4df9607f19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
