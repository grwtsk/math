# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.QuotientBudgetFullAudit.Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf04c9d295c90427b76ef18c5de93a5ce7bcbb18",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf04c9d295c90427b76ef18c5de93a5ce7bcbb18`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean.json)

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
| 1 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/quotientintegral--65de53efb1841003312beac4.md) | 17 | `declaration-track:65de53efb1841003312beac4eb28fbbf9c464c7245959cd42c7a2648442e3bd8` |
| 2 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/quotient-integrand-integrable--16a97aab48c8c5f1f77b4bfa.md) | 22 | `result-track:16a97aab48c8c5f1f77b4bfa95b5e2b810b95d121a15a6085eb4cd968540450c` |
| 3 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/quotientintegral-continuous--c61fbda914e3c650e051cb8d.md) | 28 | `result-track:c61fbda914e3c650e051cb8d615ad9945a230101a8eacdf91be08d01e2d3b399` |
| 4 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/correctedquotient-eq-integral-of-ne--579f60814dc6a1d644478b5a.md) | 70 | `result-track:579f60814dc6a1d644478b5a8f4fde89593f6d1c82f5aa6202d91d7af87c0533` |
| 5 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/correctedquotient-eq-integral--67096efaa59f13979809172d.md) | 77 | `result-track:67096efaa59f13979809172d9bf04a341afbf2bc763db7f947de9c2530d300b2` |
| 6 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--8b93e4e1d07ce63d4dfdccf8.md) | 96 | `result-track:8b93e4e1d07ce63d4dfdccf8078082861188fa000aefbe33fe80b843fb928b33` |
| 7 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/mobiusreciprocalsum-floor-abs-le--29f3b7fac8a602a0d0b168f8.md) | 109 | `result-track:29f3b7fac8a602a0d0b168f80d19f8b26273ed2e7085935ebd03eff3ec92343d` |
| 8 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/quotient-integrand-norm-le--314406b5af2052ce198a6b22.md) | 115 | `result-track:314406b5af2052ce198a6b22c7fa6e0bc112f86de4e071cb7958cb38034b7f4f` |
| 9 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/inverse-sqrt-integrable--f3c15ca03ebf30cc97797e52.md) | 149 | `result-track:f3c15ca03ebf30cc97797e526da5c54d3c89a4a9b283343454d7678bb0891fbf` |
| 10 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/integral-inverse-sqrt--6adec9ab40b5ed086b1da606.md) | 156 | `result-track:6adec9ab40b5ed086b1da6063072e46284785f66db95038481d364f6e85ec2ab` |
| 11 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/declarations/correctedquotient-norm-le--8e8abef6e4a2cbacc934ade4.md) | 175 | `result-track:8e8abef6e4a2cbacc934ade4c28f3d61a403d9fb2012ab6968d67641013e20a1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
