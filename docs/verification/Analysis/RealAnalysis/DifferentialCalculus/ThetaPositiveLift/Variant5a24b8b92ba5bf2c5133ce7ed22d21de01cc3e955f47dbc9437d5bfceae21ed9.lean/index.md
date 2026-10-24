# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ThetaPositiveLift.Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a965fa6dc578a173bce84ef8c1dd0a04db3d6f4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a965fa6dc578a173bce84ef8c1dd0a04db3d6f4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integraltail--3375aab0f9aabd845347120c.md) | 32 | `declaration-track:3375aab0f9aabd845347120cb56fc27b7f6d23228cfdb1eea370ca3b43b7d0af` |
| 2 | `theorem` | [integrableOn_Ici_of_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integrableon-ici-of-continuous--c51172928cdf564ec924594b.md) | 34 | `result-track:c51172928cdf564ec924594ba8fe55a618ca1e733e63a9ba7560251e6b649648` |
| 3 | `theorem` | [integralTail_eq_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integraltail-eq-sub--61e58d782f050e2d1ef29330.md) | 46 | `result-track:61e58d782f050e2d1ef293307bd2eb285466eb7fd81d9b489415c54227d19024` |
| 4 | `theorem` | [hasDerivAt_integralTail](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/hasderivat-integraltail--3396e26a14d07443903374b4.md) | 55 | `result-track:3396e26a14d07443903374b49238f08bbacc3d44eb37e0076560d0e7c7e77ac5` |
| 5 | `theorem` | [integralTail_positive](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integraltail-positive--ec075e580bcb11b0177d4d53.md) | 66 | `result-track:ec075e580bcb11b0177d4d534b95daa47213b43015fe63b59d25f9c16a1dd8a2` |
| 6 | `theorem` | [logSlope_cross_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/logslope-cross-nonnegative--aad61129504285f287228e9b.md) | 81 | `result-track:aad61129504285f287228e9b6443ae396fc062d715d730fb8f06d479adeaa52a` |
| 7 | `theorem` | [integral_deriv_Ici_eq_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integral-deriv-ici-eq-neg--90b8b25a90bb5e12eea1ecf6.md) | 91 | `result-track:90b8b25a90bb5e12eea1ecf63553a640a03c7368e6b95e16ec51803e09c96333` |
| 8 | `theorem` | [integralTail_logSlope_identity](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integraltail-logslope-identity--58eeb0068af4685ed8ff8342.md) | 102 | `result-track:58eeb0068af4685ed8ff8342c22bb08706965e92c3e18e9c03b3dfe534effdeb` |
| 9 | `theorem` | [integralTail_logSlope_nonnegative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integraltail-logslope-nonnegative--40fad77bed221b2560c575e0.md) | 116 | `result-track:40fad77bed221b2560c575e0aaa7f7b1b28644c94d6bf9b12eb162efb1142f96` |
| 10 | `theorem` | [hasDerivAt_integralTail_ratio](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/hasderivat-integraltail-ratio--d0b75d52103a9309efd93c2b.md) | 129 | `result-track:d0b75d52103a9309efd93c2b049f906e971fc51500f4454a9fb8f9c9d34a9774` |
| 11 | `theorem` | [integralTail_ratio_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integraltail-ratio-antitone--7c6ed3245cdecf8f040eb211.md) | 137 | `result-track:7c6ed3245cdecf8f040eb211825eaea56f8018e809f51922d1cca4d704711655` |
| 12 | `theorem` | [integralTail_logSlope_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ThetaPositiveLift/Variant5a24b8b92ba5bf2c5133ce7ed22d21de01cc3e955f47dbc9437d5bfceae21ed9.lean/declarations/integraltail-logslope-antitone--15270132fad179d7ca2097c1.md) | 157 | `result-track:15270132fad179d7ca2097c1f769e2323dab2157bc011a28f734cc3e5a49b9a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
