# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail.Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7a40185e398ddec88ec7cda16474c27d993eaa59",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7a40185e398ddec88ec7cda16474c27d993eaa59`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integraltail--9e00c887b84040d45c3b8662.md) | 19 | `declaration-track:9e00c887b84040d45c3b8662dbcf241060f7246d7a93bdefd05b78c31772c20e` |
| 2 | `theorem` | [integrableOn_Ici_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integrableon-ici-of-continuous--cf1b9cfa3978ba2b7e665d2b.md) | 21 | `result-track:cf1b9cfa3978ba2b7e665d2bd8a2de4ab902fad877be9caf142fe74eac1f0415` |
| 3 | `theorem` | [integralTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integraltail-eq-sub--119096c57eae7fc281487538.md) | 32 | `result-track:119096c57eae7fc2814875387e0e7a8841379277bf37543243a3475023138778` |
| 4 | `theorem` | [hasDerivAt_integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/hasderivat-integraltail--4624cca374dc4a45034d735a.md) | 40 | `result-track:4624cca374dc4a45034d735a0a0430639a08b9878c6f7bbf1e447f0b27bcdf72` |
| 5 | `theorem` | [integralTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integraltail-positive--f286ddb11aaf13d387fb5c13.md) | 50 | `result-track:f286ddb11aaf13d387fb5c1316f8cbcce297cd599329cc963505e5b08bcbd874` |
| 6 | `theorem` | [logSlope_cross_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/logslope-cross-nonnegative--0609c03ba21d7f634217f5cf.md) | 64 | `result-track:0609c03ba21d7f634217f5cf6d68db4de8a9d3363da971f784699bf7dbce59f2` |
| 7 | `theorem` | [integral_deriv_Ici_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integral-deriv-ici-eq-neg--1dc1ef76c94742de009d509a.md) | 73 | `result-track:1dc1ef76c94742de009d509abfb314ff4725fe27855f3eeccd9f7d93d6edc557` |
| 8 | `theorem` | [integralTail_logSlope_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integraltail-logslope-identity--a72b2f2ab24f8387046d7498.md) | 83 | `result-track:a72b2f2ab24f8387046d7498c080167eb0a74d2d588740ef96781105da8719a2` |
| 9 | `theorem` | [integralTail_logSlope_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integraltail-logslope-nonnegative--fa703627680c0f34ea8e5c62.md) | 96 | `result-track:fa703627680c0f34ea8e5c622a4f89da8150bdc33162f3b5afebf8d91ae8d23f` |
| 10 | `theorem` | [hasDerivAt_integralTail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/hasderivat-integraltail-ratio--3cca1478289d5111504b2e22.md) | 108 | `result-track:3cca1478289d5111504b2e227089a3e4d26448162b6579f3f466af46402a559e` |
| 11 | `theorem` | [integralTail_ratio_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integraltail-ratio-antitone--d7d466169365c6f36e9675b7.md) | 115 | `result-track:d7d466169365c6f36e9675b7ce73b24b540782af177a95d76fc7d12d757067e7` |
| 12 | `theorem` | [integralTail_logSlope_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/3cdb60aa3a9c9a2f79ebbfce5ad6d755da5dc42ae661a9c57a492d5ef9050049IntegralTail/Variant25eb783bb82611967faa0bd7b36681fc7a8b7d21b394439b3b29e4ee90d5921f.lean/declarations/integraltail-logslope-antitone--9feaa0186af5b94f9db8837f.md) | 134 | `result-track:9feaa0186af5b94f9db8837f3004a8a1d4199dab5afbd17b1959c4563e3a0e7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
