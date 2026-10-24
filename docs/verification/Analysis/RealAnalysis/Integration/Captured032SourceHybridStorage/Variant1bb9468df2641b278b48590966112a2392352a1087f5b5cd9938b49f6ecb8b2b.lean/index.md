# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Captured032SourceHybridStorage.Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87ec638aaaed97988b3ed96754e7d2e247e3826c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87ec638aaaed97988b3ed96754e7d2e247e3826c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [flow_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/flow-integral-bound--1ced11af54d3e0afcec1e358.md) | 37 | `result-track:1ced11af54d3e0afcec1e3588ad14c64d7e4eecd859ee688e71fcf226b42e5e6` |
| 2 | `theorem` | [signed_hybrid_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/signed-hybrid-telescope--23d537715fb77396bd7abfc7.md) | 50 | `result-track:23d537715fb77396bd7abfc70fe241cfa23262592c2b8cc72e82a36ecc0fa868` |
| 3 | `theorem` | [signed_hybrid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/signed-hybrid-bound--3adbbd0c336d1ec21221f762.md) | 70 | `result-track:3adbbd0c336d1ec21221f762382c97f48a04d7164012514466a17adfe56f743c` |
| 4 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/quadraticreadout--f461d9db2196f13fbce19fbd.md) | 87 | `declaration-track:f461d9db2196f13fbce19fbdb6a0d3bbd5d951bbc79a945eee06aa0e7912da56` |
| 5 | `def` | [FormLE](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/formle--079f41c47b192f3c9e19d613.md) | 91 | `declaration-track:079f41c47b192f3c9e19d613fc4b4dab10f3621c6034cd978ef41314fd7750ea` |
| 6 | `theorem` | [quadraticReadout_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/quadraticreadout-congruence--044b06a31ef60be94f1b9bab.md) | 94 | `result-track:044b06a31ef60be94f1b9bab949f8c3f9351f81c26cc7dd0314183de19094792` |
| 7 | `theorem` | [formLE_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/formle-congruence--691f72768765001751c92bdc.md) | 101 | `result-track:691f72768765001751c92bdc561a86363f8a94eabf9794e70209a86e987aa75c` |
| 8 | `def` | [homogeneousProjector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/homogeneousprojector--ccde474bc3bc6bb0d461221d.md) | 107 | `declaration-track:ccde474bc3bc6bb0d461221ddb53f5b3ea1e5be1970f0f90dad803399f50283a` |
| 9 | `theorem` | [homogeneousProjector_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/homogeneousprojector-readout--2913188ca9f6dc31c0a34da8.md) | 110 | `result-track:2913188ca9f6dc31c0a34da8ae4faf5627b83c69a774b633c15af810bb4a4565` |
| 10 | `theorem` | [homogeneousProjector_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/homogeneousprojector-covariance--24d0cb42dba9112dd172fc5a.md) | 116 | `result-track:24d0cb42dba9112dd172fc5a177ead8e535260b4b9a11578dc5838e56e57611a` |
| 11 | `def` | [transformedStorageDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/transformedstoragederivative--9ba8bbe8c5279d83c63d7a10.md) | 132 | `declaration-track:9ba8bbe8c5279d83c63d7a10fef302185e74e238ca36c0c31ccd65b533f9f0fc` |
| 12 | `theorem` | [flow_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/flow-defect-covariance--82fff81fc0af91fa74900b68.md) | 135 | `result-track:82fff81fc0af91fa74900b68f5e4556120aa033923bf86761e537b06df0c89c0` |
| 13 | `theorem` | [event_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/event-defect-covariance--73208319e0257885daeae236.md) | 154 | `result-track:73208319e0257885daeae236614d87e304a6e166b0f19cb134765ffb123b652b` |
| 14 | `theorem` | [simultaneous_affine_reset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/simultaneous-affine-reset--49a7ae761f46e233ca179a07.md) | 172 | `result-track:49a7ae761f46e233ca179a07b64abb3fb17e418dbca935619c32357f2b394b44` |
| 15 | `theorem` | [simultaneous_impulse_mixed_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/simultaneous-impulse-mixed-term--072e4e7825e453a4ec3a5cde.md) | 178 | `result-track:072e4e7825e453a4ec3a5cde1331d262d57ac6109c49e9d0ef7f0ae20f608350` |
| 16 | `theorem` | [offset_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant1bb9468df2641b278b48590966112a2392352a1087f5b5cd9938b49f6ecb8b2b.lean/declarations/offset-telescope--ccda75264d2d66e857acfa62.md) | 185 | `result-track:ccda75264d2d66e857acfa621aab3888acc9f23685c9851ed3efd1e0242eb687` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
