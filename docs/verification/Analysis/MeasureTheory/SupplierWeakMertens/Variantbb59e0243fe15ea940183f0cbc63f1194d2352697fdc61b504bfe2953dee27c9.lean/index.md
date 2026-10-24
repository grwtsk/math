# Verification target: GRWTSK.Analysis.MeasureTheory.SupplierWeakMertens.Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f2181af98b4b4d12847e2e6f33ba5d764a007b0",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f2181af98b4b4d12847e2e6f33ba5d764a007b0`.

Source path: `GRWTSK/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.OriginalSignedSupplier` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.SupplierEnvelopeRecurrence` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recordingEnergy](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/recordingenergy--40f34098f8edcdb51cc44b3f.md) | 31 | `declaration-track:40f34098f8edcdb51cc44b3f4df4b92499e0b27202ea46050f34a9588eee4dd0` |
| 2 | `def` | [WeakMertensBound](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/weakmertensbound--8694b5037d6132bae4f18e3c.md) | 34 | `declaration-track:8694b5037d6132bae4f18e3c1b23424cad044fc8a326b39c8307dbac846d9191` |
| 3 | `theorem` | [recordingEnergy_nonneg](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/recordingenergy-nonneg--2b2c3d9bf340877dd6b54432.md) | 37 | `result-track:2b2c3d9bf340877dd6b54432366fcf72dbc42a25871054fb76ec037ce86b11ce` |
| 4 | `theorem` | [pickupDensity_sq_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/pickupdensity-sq-intervalintegrable--5ff9b77c3cbf1a56583a9c4d.md) | 40 | `result-track:5ff9b77c3cbf1a56583a9c4dff72f16ae8d08055418f3dda5c839f31eb183cf3` |
| 5 | `theorem` | [pickupDensity_sq_eq_energy](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/pickupdensity-sq-eq-energy--38625e4c122df278aeb0fcf4.md) | 55 | `result-track:38625e4c122df278aeb0fcf4784535edecb92b2e4d87927a4e88d96bea26e0fa` |
| 6 | `theorem` | [pickupDensity_sq_integral_eq](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/pickupdensity-sq-integral-eq--29c55c72a508f57de439e8ec.md) | 66 | `result-track:29c55c72a508f57de439e8ec1f89eb4c4798233b26e91c0c876451dc3e1af30d` |
| 7 | `theorem` | [recordingEnergy_intervalIntegrable](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/recordingenergy-intervalintegrable--9036b36d266834093f5e15c2.md) | 76 | `result-track:9036b36d266834093f5e15c2dfba13905fc9d2850a66079bd4776c75f5937647` |
| 8 | `theorem` | [integral_sq_le_length_mul_integral_sq](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/integral-sq-le-length-mul-integral-sq--6d95abef42f157e26a3de2ed.md) | 92 | `result-track:6d95abef42f157e26a3de2edbd7f270f221f787fec2a022311bd85f73c323654` |
| 9 | `theorem` | [centeredPickup_eq_reset_integral](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/centeredpickup-eq-reset-integral--54a4f27368a7f3bd358498e0.md) | 123 | `result-track:54a4f27368a7f3bd358498e04f9f69633e2c2647722d1f808685ffe6bfd4bc6f` |
| 10 | `theorem` | [centeredPickup_sq_le_energy](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/centeredpickup-sq-le-energy--e3ea76dd83222014c524e471.md) | 135 | `result-track:e3ea76dd83222014c524e47103567c9e64ff3deb8a9fef8b945aa5e12856c784` |
| 11 | `theorem` | [centeredPickup_abs_le_of_weakMertens](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/centeredpickup-abs-le-of-weakmertens--6115b5152260c5e6f06d0aeb.md) | 153 | `result-track:6115b5152260c5e6f06d0aeb5f04cb3cc90259772a0b3329788664aec38330bc` |
| 12 | `theorem` | [signedMeter_le_of_weakMertens](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/signedmeter-le-of-weakmertens--7d043f5f9806ea4238700765.md) | 193 | `result-track:7d043f5f9806ea42387007655357e7e522676b37df78fb6bd1bda66a254cc083` |
| 13 | `theorem` | [supplierEstimate_of_weakMertens](../../../../../mathematics/Analysis/MeasureTheory/SupplierWeakMertens/Variantbb59e0243fe15ea940183f0cbc63f1194d2352697fdc61b504bfe2953dee27c9.lean/declarations/supplierestimate-of-weakmertens--d7116c7ddea2365c50f7f646.md) | 206 | `result-track:d7116c7ddea2365c50f7f646d9f438df6cca5fc8c48f5c90ef69bc61484c807c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
