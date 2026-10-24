# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrectedQuotientBudget.Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29829fee542156c41b77ae2bb554e03c2e5a6533",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29829fee542156c41b77ae2bb554e03c2e5a6533`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Sqrt` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/quotientintegral--4d22d7756ba1946d3329fe4d.md) | 17 | `declaration-track:4d22d7756ba1946d3329fe4d349a690e227c86bc8f3144d79573f09df45c1e31` |
| 2 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/quotient-integrand-integrable--a01f52110a80e6756ee5e0a2.md) | 22 | `result-track:a01f52110a80e6756ee5e0a29679a36e1912d0f8e4d10624a006a264fe2a2e04` |
| 3 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/quotientintegral-continuous--9fba0bab31226738ccf11369.md) | 28 | `result-track:9fba0bab31226738ccf1136920be6966bba0efd54b901178a41b4434fd60c683` |
| 4 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/correctedquotient-eq-integral-of-ne--55edc78b643d1233a94bd898.md) | 70 | `result-track:55edc78b643d1233a94bd8983d022b87ec69540057856f7d7737852a02c62136` |
| 5 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/correctedquotient-eq-integral--112cc41b920802eb9cba1ac4.md) | 77 | `result-track:112cc41b920802eb9cba1ac45dc2b856318e4b5f45389a1487ab8c1d2d40958d` |
| 6 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--ecef50b50f060733068c62ce.md) | 96 | `result-track:ecef50b50f060733068c62ce3b8732e03e8fe70ab7f25f8b06c825c1ff0ed833` |
| 7 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/mobiusreciprocalsum-floor-abs-le--c4e54098c8bf848c3778ffc3.md) | 109 | `result-track:c4e54098c8bf848c3778ffc344029c886f741c6a7b1cf5348804285cff331f94` |
| 8 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/quotient-integrand-norm-le--f891279c7b51a9ec9c7bfdc0.md) | 115 | `result-track:f891279c7b51a9ec9c7bfdc0d9174ef8d926afc2634924927a98c90339342404` |
| 9 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/inverse-sqrt-integrable--4e4bd981f68051a4c706ee34.md) | 149 | `result-track:4e4bd981f68051a4c706ee343c267902702b727c7dbdbaf1acaa7d4907f3a277` |
| 10 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/integral-inverse-sqrt--399a5c22758ea70b76e1f27d.md) | 156 | `result-track:399a5c22758ea70b76e1f27dc105caabbb957889afd5c8afe8a8809240518664` |
| 11 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant19e72719408dce713ad2abc6c04b37d74447c8ad3d8814e9073fc99bf0aeeafa.lean/declarations/correctedquotient-norm-le--7699b893f3fb4e6c307f7199.md) | 175 | `result-track:7699b893f3fb4e6c307f7199aa5084d0af013255f650a9958a43ffc2c4e51ce2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
