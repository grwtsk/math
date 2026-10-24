# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CorrectedQuotientBudget.Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e0a0558105d3c1c1160a0c6b6a51136ea93bf60",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e0a0558105d3c1c1160a0c6b6a51136ea93bf60`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean.json)

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
| 1 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/quotientintegral--58998e6452031c89ed5b6f4b.md) | 25 | `declaration-track:58998e6452031c89ed5b6f4b529c91958800519c594c33d82c756bff0d902856` |
| 2 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/quotient-integrand-integrable--0c307e467143f402daab42ca.md) | 30 | `result-track:0c307e467143f402daab42ca690de26f530063cec0b23e5bdd201896755a881f` |
| 3 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/quotientintegral-continuous--4226e8ef3d882993831ef73a.md) | 36 | `result-track:4226e8ef3d882993831ef73a8e55afcae282e07b1b705dc326744d8271c2a592` |
| 4 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/correctedquotient-eq-integral-of-ne--7b5c9fecb32b28347956244f.md) | 78 | `result-track:7b5c9fecb32b28347956244fc180d2577a91eda2b3b79ae395c274a96a2a3f30` |
| 5 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/correctedquotient-eq-integral--e3484d7dcd3b97987698e7ec.md) | 85 | `result-track:e3484d7dcd3b97987698e7ec05de5752814d200a037208c5603ddd0520316b8b` |
| 6 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--3d583dc3fbf40901d79ea24d.md) | 104 | `result-track:3d583dc3fbf40901d79ea24d0a2fc474172b671776b585d86117a0e09706ecd9` |
| 7 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/mobiusreciprocalsum-floor-abs-le--edd1b987ee0b32b5ae690f33.md) | 117 | `result-track:edd1b987ee0b32b5ae690f3335526bed5b98cf65ea1d225142a4333d96fa0332` |
| 8 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/quotient-integrand-norm-le--9cf75b0fdc989a717590b551.md) | 123 | `result-track:9cf75b0fdc989a717590b5511590ac3881d89b29b8651fdf23a4c7633b524f86` |
| 9 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/inverse-sqrt-integrable--4014f5b982164b0a1df6c497.md) | 157 | `result-track:4014f5b982164b0a1df6c49789dfb6b0cee21f8113bdd062a1ca489e782067ae` |
| 10 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/integral-inverse-sqrt--673996ae59f47a5715c64e53.md) | 164 | `result-track:673996ae59f47a5715c64e53661b538b1470e31758f203ce1fa8be885954e901` |
| 11 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CorrectedQuotientBudget/Variant8863f7ae2f51c7066d77e9942b273302d4e434b9094cd3ec189879cda0354b6b.lean/declarations/correctedquotient-norm-le--54c1bff678b16a708d7b2f94.md) | 183 | `result-track:54c1bff678b16a708d7b2f9437989620ec8b5e283b0c4a534b757918567bb21a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
