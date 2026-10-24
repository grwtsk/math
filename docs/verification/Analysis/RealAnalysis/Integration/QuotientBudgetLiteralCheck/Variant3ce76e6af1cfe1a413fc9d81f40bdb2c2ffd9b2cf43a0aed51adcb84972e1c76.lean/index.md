# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.QuotientBudgetLiteralCheck.Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64d1ddad294b912b90034cc9620013c3c0d03af6",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64d1ddad294b912b90034cc9620013c3c0d03af6`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean.json)

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
| 1 | `def` | [quotientIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/quotientintegral--cfb2b21203fb9c95e08e4cce.md) | 25 | `declaration-track:cfb2b21203fb9c95e08e4cceabf9afdf97865d340648269395405da44c4b9e8d` |
| 2 | `theorem` | [quotient_integrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/quotient-integrand-integrable--5936340c7c949a827c64d407.md) | 30 | `result-track:5936340c7c949a827c64d4078dfcf9ed60348d370bd148257c3a101af40bb9af` |
| 3 | `theorem` | [quotientIntegral_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/quotientintegral-continuous--acfda757de35dcadff3fdcfc.md) | 36 | `result-track:acfda757de35dcadff3fdcfc3071a180b91bdb1001cff738c4abf3649b2eecb3` |
| 4 | `theorem` | [correctedQuotient_eq_integral_of_ne](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/correctedquotient-eq-integral-of-ne--266c1cf28b7b315054ea91d4.md) | 78 | `result-track:266c1cf28b7b315054ea91d49e561d6c603a75130c66de6ef97a4b6750e58192` |
| 5 | `theorem` | [correctedQuotient_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/correctedquotient-eq-integral--62f019bbb42000b8f080a9bd.md) | 85 | `result-track:62f019bbb42000b8f080a9bdd6759b9dd3159430e228e3685acca7a64e86b78b` |
| 6 | `theorem` | [mobiusReciprocalSum_abs_le_harmonic](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/mobiusreciprocalsum-abs-le-harmonic--4870e2822562238fc78c8e5c.md) | 104 | `result-track:4870e2822562238fc78c8e5c6ae972e3debfa4426a4a45201a70860da7d5a200` |
| 7 | `theorem` | [mobiusReciprocalSum_floor_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/mobiusreciprocalsum-floor-abs-le--c7a16ee1b454c20295884396.md) | 117 | `result-track:c7a16ee1b454c202958843968591a6b426b9319be0a447c72f70858292670910` |
| 8 | `theorem` | [quotient_integrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/quotient-integrand-norm-le--d91dbbd4c061c7d115093fe9.md) | 123 | `result-track:d91dbbd4c061c7d115093fe9b20d901cfcd66211cb88f73180591b519eea7c6d` |
| 9 | `theorem` | [inverse_sqrt_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/inverse-sqrt-integrable--f72f1cf6b2bd35e6a4624348.md) | 157 | `result-track:f72f1cf6b2bd35e6a46243489dea6fb65fb33847b26bd574215d0c0cb25ae575` |
| 10 | `theorem` | [integral_inverse_sqrt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/integral-inverse-sqrt--cd4bbf1a9e012852a6248049.md) | 164 | `result-track:cd4bbf1a9e012852a624804920a95d6491b71693479d47b48d7797a6f105d78c` |
| 11 | `theorem` | [correctedQuotient_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/correctedquotient-norm-le--4d219e19ff30d04b12fab4cc.md) | 183 | `result-track:4d219e19ff30d04b12fab4cca383cd41aaa3727b6ddbd712df3d407fecf4ae60` |
| 12 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--8304180e933a064d3e976bc5.md) | 214 | `declaration-track:8304180e933a064d3e976bc536c94130d352b956fa3d076466745f6858b073ba` |
| 13 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--1d04442d6059de64b38157ca.md) | 217 | `declaration-track:1d04442d6059de64b38157ca9e6d5c9645df6662c969f11f66b21da416854b0a` |
| 14 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--f0841cc9de74eeb93e4ca919.md) | 221 | `declaration-track:f0841cc9de74eeb93e4ca91965e8a1e04ef3617c80d009277aaec6b2d9c4bda9` |
| 15 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--7b6c4645ed28341e508b4c63.md) | 222 | `declaration-track:7b6c4645ed28341e508b4c63923956123dec465ecf3c1dd55e1cbd83884edbc7` |
| 16 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--e7ed41b56ca1f99b2ea44292.md) | 226 | `declaration-track:e7ed41b56ca1f99b2ea4429265e7fa770e8b6401366b4a9692f5d730f4d0ca0e` |
| 17 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--7378f0430fb617c84e0516e5.md) | 228 | `declaration-track:7378f0430fb617c84e0516e58dacc3a1e41a40dcd44f8e1a908d2cd3b74f9dde` |
| 18 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--76e7afc91429ab65c14e9550.md) | 230 | `declaration-track:76e7afc91429ab65c14e9550daf95b337f6f71e06c1e3af28b1bf8257a1b694a` |
| 19 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--9a22219cff6a7d88f83119d6.md) | 234 | `declaration-track:9a22219cff6a7d88f83119d61e0f5d66e42617bd148016de5e59d4612228b156` |
| 20 | `example` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/QuotientBudgetLiteralCheck/Variant3ce76e6af1cfe1a413fc9d81f40bdb2c2ffd9b2cf43a0aed51adcb84972e1c76.lean/declarations/example--5f172fdd65e4c1d9b87647f9.md) | 237 | `declaration-track:5f172fdd65e4c1d9b87647f93d61fdda61da6032b1e7af56b824b5aacaf43fdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
