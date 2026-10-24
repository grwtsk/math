# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CenteredDigammaKernel.Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb63320071bbabdfdf61a69663113d7a8418c516",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb63320071bbabdfdf61a69663113d7a8418c516`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedLaplaceCosine` — import line 1; external provider; requires a separately pinned dependency.
- `ArchimedeanKernel` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/term--32f87582be91a26f2325e535.md) | 18 | `declaration-track:32f87582be91a26f2325e535bd3fc9ab50a2bb4b83af811fd3f67e98e2706662` |
| 2 | `def` | [compensatedKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/compensatedkernel--5a167bb18dde8f1d1cba7196.md) | 21 | `declaration-track:5a167bb18dde8f1d1cba7196a174b3987a89c25f0c52d397585d4dcaefe551fa` |
| 3 | `theorem` | [cosine_deficit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/cosine-deficit--037713715861bf9d30466300.md) | 24 | `result-track:037713715861bf9d304663009f23ca2bfe513939bc407989d1af1693246d80be` |
| 4 | `theorem` | [compensatedKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/compensatedkernel-integrable--90ce570a75075e2430fef7fc.md) | 31 | `result-track:90ce570a75075e2430fef7fcead348de2f704417e4e6410fc0cb9f7b576bc0d7` |
| 5 | `theorem` | [term_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/term-integrable--55e85f93657a8e910960ac9b.md) | 44 | `result-track:55e85f93657a8e910960ac9bade9a152e18c9f9fa0c323e1b46076086cfce130` |
| 6 | `theorem` | [term_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/term-nonneg--61e2844ad4d3a571a4e911f5.md) | 47 | `result-track:61e2844ad4d3a571a4e911f58b143ab0e6061b5dc4314c393a4eb68536902a6b` |
| 7 | `theorem` | [hasSum_terms](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/hassum-terms--a32ea739a0ab745ffd0adc90.md) | 50 | `result-track:a32ea739a0ab745ffd0adc90c3106e0d9195b34a44de58917940fe761a5fa7fe` |
| 8 | `theorem` | [norm_integrals_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/norm-integrals-summable--cf91db418c90ec86fc0eb8c9.md) | 68 | `result-track:cf91db418c90ec86fc0eb8c9253d28d8f5adae27d153b57dfad89971df7c9029` |
| 9 | `theorem` | [actual_multiplier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/actual-multiplier-integral--ee85b45bf4c0bf6930460c09.md) | 77 | `result-track:ee85b45bf4c0bf6930460c0959d2b33606069901dc7fdb86076cfc4e9e070661` |
| 10 | `theorem` | [actual_multiplier_integral_explicit](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant8a5cee5dfb7b4c7c422af5ba6356f96d0789b2c60b836cbca86687e8c53264b3.lean/declarations/actual-multiplier-integral-explicit--70dea6b670366190a6270082.md) | 92 | `result-track:70dea6b670366190a6270082b2b025a931063fd4ce864fc58ac3f2cd08c7626a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
