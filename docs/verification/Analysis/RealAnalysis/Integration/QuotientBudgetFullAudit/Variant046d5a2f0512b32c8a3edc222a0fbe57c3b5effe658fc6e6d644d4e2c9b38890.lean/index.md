# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.QuotientBudgetFullAudit.Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "830ec3b1ab8eb985f3a9c35e1f11289d2736509e",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `830ec3b1ab8eb985f3a9c35e1f11289d2736509e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/quotientintegral--c9b9940638b5ba37d26bc9df.md) | 25 | `declaration-track:c9b9940638b5ba37d26bc9dfa0a7ecbe28f63ac3c09a4cc2c315f4bbd67c85c3` |
| 2 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/quotient-integrand-integrable--9d4b30342b1afe5592b2ae58.md) | 30 | `result-track:9d4b30342b1afe5592b2ae5804a25f881531e2fa16e7baf3c3786c1420f482bb` |
| 3 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/quotientintegral-continuous--562d01292636e2dca73a6bce.md) | 36 | `result-track:562d01292636e2dca73a6bce47620e2414a08122892f443f5b4caade42d4be54` |
| 4 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/correctedquotient-eq-integral-of-ne--96dd9fbecfee6df365b49c70.md) | 78 | `result-track:96dd9fbecfee6df365b49c708dd6fe72545708937d8bca92d0c38e382f4a205f` |
| 5 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/correctedquotient-eq-integral--e68b6f04d15a9453caffdc1e.md) | 85 | `result-track:e68b6f04d15a9453caffdc1e1b564fe8d47df699462e40a42e62147955303e68` |
| 6 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--d1de220cd4981d75ec081a71.md) | 104 | `result-track:d1de220cd4981d75ec081a71fb1d65cb0225d3df13c526963b517e969353786f` |
| 7 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/mobiusreciprocalsum-floor-abs-le--6d5eee3491651cfb93e28545.md) | 117 | `result-track:6d5eee3491651cfb93e2854580feea34faa709485e93ae87f03b6e4754c8549a` |
| 8 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/quotient-integrand-norm-le--e37937097540a202a4410c3b.md) | 123 | `result-track:e37937097540a202a4410c3bb8fe4f5a92f604966091dd5da19f459a17e9ff8c` |
| 9 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/inverse-sqrt-integrable--a2020d383156542dccedb9c3.md) | 157 | `result-track:a2020d383156542dccedb9c33c3c05ddfeffbc2b589e2026d314b8e2905228b0` |
| 10 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/integral-inverse-sqrt--b9edbc10fc0dea76338f405c.md) | 164 | `result-track:b9edbc10fc0dea76338f405cb733775e25fc9667dc9c4a2f4207d7a0bed33643` |
| 11 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant046d5a2f0512b32c8a3edc222a0fbe57c3b5effe658fc6e6d644d4e2c9b38890.lean/declarations/correctedquotient-norm-le--973d6a2b9c9eef1ee569fc78.md) | 183 | `result-track:973d6a2b9c9eef1ee569fc784a15c7673499410d4b46ebe6d861e35d76d82a5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
