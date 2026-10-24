# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceHybridStorage.Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2752fc911e4490f46e950968e3ccbea5a65c7d02",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2752fc911e4490f46e950968e3ccbea5a65c7d02`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [flow_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/flow-integral-bound--8a1867499fcf584df967d8e5.md) | 34 | `result-track:8a1867499fcf584df967d8e58915b3ab14648bf64718850093bacc2c71eec6a4` |
| 2 | `theorem` | [signed_hybrid_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/signed-hybrid-telescope--a2e741fac1b4665f27cc4bc1.md) | 47 | `result-track:a2e741fac1b4665f27cc4bc195966c1c4d177c23d4ca31484a68f3376163097a` |
| 3 | `theorem` | [signed_hybrid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/signed-hybrid-bound--6df2d47e2c3c3cef1dda5141.md) | 64 | `result-track:6df2d47e2c3c3cef1dda5141e4017080b856a4137889179ba66fe21c75680583` |
| 4 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/quadraticreadout--5dee52d4b37b0409377a58b2.md) | 81 | `declaration-track:5dee52d4b37b0409377a58b2c9eff6ed6d1db3b3d9ea061eb5a05917945270b9` |
| 5 | `def` | [FormLE](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/formle--e8408cd89dcb30e149e7260b.md) | 85 | `declaration-track:e8408cd89dcb30e149e7260b7260e6b080dfd708c2f2dc4a51d311fd3c63728c` |
| 6 | `theorem` | [quadraticReadout_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/quadraticreadout-congruence--80e5bd76375bca3b34e9f61b.md) | 88 | `result-track:80e5bd76375bca3b34e9f61b3cd8547c25775fe5f26e8cdcb091505e361d6dbd` |
| 7 | `theorem` | [formLE_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/formle-congruence--b26114bebfa1dce6cf851a9d.md) | 95 | `result-track:b26114bebfa1dce6cf851a9d17c706d5bffd1264020593ec141867dbf453867f` |
| 8 | `def` | [transformedStorageDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/transformedstoragederivative--dafb57f7961c4f9e5b2856aa.md) | 108 | `declaration-track:dafb57f7961c4f9e5b2856aa13b14b3d3cbd875f92369695a99bff079c06cda2` |
| 9 | `theorem` | [flow_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/flow-defect-covariance--5c06117e06e5e90053159272.md) | 111 | `result-track:5c06117e06e5e9005315927204b0f8518b28c7acb71197324fbbd53be17307ae` |
| 10 | `theorem` | [event_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/event-defect-covariance--de7293d98e752919246f1e31.md) | 129 | `result-track:de7293d98e752919246f1e310d1fcd53741d193e614c0127a330a18b14e96a06` |
| 11 | `theorem` | [simultaneous_affine_reset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/simultaneous-affine-reset--bc35fec81b3def3485733fee.md) | 147 | `result-track:bc35fec81b3def3485733feef9a10d04420e0b308cc809d97e0ddf79f6d5b1e0` |
| 12 | `theorem` | [simultaneous_impulse_mixed_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant9b8226ad09b491502e0acae4c1120253568e2facd21e9bedbaf886b2fa0f7a3f.lean/declarations/simultaneous-impulse-mixed-term--2512170931ef75ff7951d06e.md) | 153 | `result-track:2512170931ef75ff7951d06eb7548e1a4b6b0c6f104750dc71fd7229532e9af3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
