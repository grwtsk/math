# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CenteredAbel.Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f874a5b2e2b663a5cdeab3ad88c0686ab27651ea",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f874a5b2e2b663a5cdeab3ad88c0686ab27651ea`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.AbelSummation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fracPlus](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/fracplus--5227a01cec6bc59bde25c4b6.md) | 18 | `declaration-track:5227a01cec6bc59bde25c4b6e946e3e1692fca79120f96e6c6b2b747e57eb276` |
| 2 | `theorem` | [fracPlus_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/fracplus-bounds--70379b700aaf8b88759310f7.md) | 20 | `result-track:70379b700aaf8b88759310f7fb4f5c810bd11438c6345c4bfabd725532b9704f` |
| 3 | `theorem` | [fracPlus_eq_fract](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/fracplus-eq-fract--78874198bf98af149dc7095d.md) | 27 | `result-track:78874198bf98af149dc7095d68d80ee65ecb415e0a9f8b1c37992a84eecc294a` |
| 4 | `theorem` | [fracPlus_centered_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/fracplus-centered-abs-le--0c427c689a4fcdfdd95b04bd.md) | 30 | `result-track:0c427c689a4fcdfdd95b04bdf669d7dfa1ed5e9b22ca4cc532975344f594cac7` |
| 5 | `theorem` | [fracPlus_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/fracplus-measurable--c0f546157cb976776b15bff9.md) | 35 | `result-track:c0f546157cb976776b15bff9aeaf7f7e6f5602f3d5fdd93d1686c6d3dacd8632` |
| 6 | `def` | [unitCoeff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/unitcoeff--607dfa3b4037027a47f7df71.md) | 39 | `declaration-track:607dfa3b4037027a47f7df71f2152d3547f277d85e90124f34089b5bcd836d66` |
| 7 | `theorem` | [unitCoeff_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/unitcoeff-sum--d6c833a98cf420ab98766772.md) | 41 | `result-track:d6c833a98cf420ab9876677277fcca1caa2547dc8f6660083970ae9009179067` |
| 8 | `theorem` | [unitCoeff_weighted_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/unitcoeff-weighted-sum--b14ce4a508616e091f6da2a4.md) | 49 | `result-track:b14ce4a508616e091f6da2a420a9b6840f5382a702d53ea7a82b5045b2cb0823` |
| 9 | `theorem` | [fracPlus_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/fracplus-deriv-intervalintegrable--f0955150090cb943e6a305bb.md) | 72 | `result-track:f0955150090cb943e6a305bbed41be8007ad2ecbdd7d0f2b2033e385ed820b41` |
| 10 | `theorem` | [centered_deriv_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/centered-deriv-intervalintegrable--ca179149b497a7d50fbdc531.md) | 85 | `result-track:ca179149b497a7d50fbdc531813d1b06ff2ab61c7dcf9d28d607e10382988f93` |
| 11 | `theorem` | [sum_eq_integral_add_frac](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/sum-eq-integral-add-frac--7c6e653109684f86e3c98fde.md) | 92 | `result-track:7c6e653109684f86e3c98fdedf13625a81d77a6623635249fca0b8d49b0d63bd` |
| 12 | `theorem` | [sum_eq_integral_add_centered](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/sum-eq-integral-add-centered--e3ebc7700a9f115eca22d06e.md) | 133 | `result-track:e3ebc7700a9f115eca22d06e71987714933c05b98dcc8f6fed9ee559f03af195` |
| 13 | `theorem` | [centered_eq_uncentered_of_endpoints_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CenteredAbel/Variantf4d948a35ae9329231299c2403b874787ddf8e6eb66d8eb1ad06d89d0342f62d.lean/declarations/centered-eq-uncentered-of-endpoints-zero--04676e9484e87a53c13c5a31.md) | 151 | `result-track:04676e9484e87a53c13c5a31bf0f3d8fdf6b5aa971163ed64b31e73812d474a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
