# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceHybridStorage.Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "643fa245f70ff184fcfe69841fc69cedf5bc0697",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `643fa245f70ff184fcfe69841fc69cedf5bc0697`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean.json)

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
| 1 | `theorem` | [flow_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/flow-integral-bound--cfea9824f4a16b24e73bbdf6.md) | 37 | `result-track:cfea9824f4a16b24e73bbdf6eb708e5b2b59e5332388795aff38a0d32cd2fe66` |
| 2 | `theorem` | [signed_hybrid_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/signed-hybrid-telescope--c05d16b84d3dd7953aee9cb7.md) | 50 | `result-track:c05d16b84d3dd7953aee9cb786ca2bd148ae2e0838de3ef439dded323287793f` |
| 3 | `theorem` | [signed_hybrid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/signed-hybrid-bound--b5371b4a577b7bb947425cf3.md) | 70 | `result-track:b5371b4a577b7bb947425cf3fa49a0b805c27a9a210b5378a5e8ba662947b9a8` |
| 4 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/quadraticreadout--c59b69d22b507beb131cc5dc.md) | 87 | `declaration-track:c59b69d22b507beb131cc5dce46059f0c948b5953e843a8cc31bc6c6275f0732` |
| 5 | `def` | [FormLE](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/formle--2d5947c69210d6aec8ebe8de.md) | 91 | `declaration-track:2d5947c69210d6aec8ebe8de40640b5e11dc4c550ba9a6105507019ec4777b5e` |
| 6 | `theorem` | [quadraticReadout_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/quadraticreadout-congruence--854461233dd97a77f594c458.md) | 94 | `result-track:854461233dd97a77f594c4582fea5335596977dbb5ebd7fd37ebbb41748cb54e` |
| 7 | `theorem` | [formLE_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/formle-congruence--2df2b60648cf83af5ddcff10.md) | 101 | `result-track:2df2b60648cf83af5ddcff101576c199bb34aa005e831d7e2f5aa96cc5ce8830` |
| 8 | `def` | [homogeneousProjector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/homogeneousprojector--58fa38f9f15b30031352fddf.md) | 107 | `declaration-track:58fa38f9f15b30031352fddfa7b56599329591ec6da46aa4847c30c91537cfd2` |
| 9 | `theorem` | [homogeneousProjector_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/homogeneousprojector-readout--b14f650dd12f3e792734a506.md) | 110 | `result-track:b14f650dd12f3e792734a506e716190eb5472afdb3679eb0dc4ac898f25d2bbb` |
| 10 | `theorem` | [homogeneousProjector_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/homogeneousprojector-covariance--961682900b8e0f3b9db3811e.md) | 119 | `result-track:961682900b8e0f3b9db3811e38128a9c00d75abcf05edc6512fa0303bd8be75f` |
| 11 | `def` | [transformedStorageDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/transformedstoragederivative--02e83e03285289edb1505216.md) | 135 | `declaration-track:02e83e03285289edb15052169127e6154ee7b2c7376cf1c65d7549e2ff446529` |
| 12 | `theorem` | [flow_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/flow-defect-covariance--76483b162ce3ef4fb07c0bea.md) | 138 | `result-track:76483b162ce3ef4fb07c0beaf932b6372a8648968ce0671f90dd312b84ae2ced` |
| 13 | `theorem` | [event_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/event-defect-covariance--52f2ad03137779ba54604453.md) | 157 | `result-track:52f2ad03137779ba546044539b5696a7de0addc842f09aa60a0597155a9ca3ae` |
| 14 | `theorem` | [simultaneous_affine_reset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/simultaneous-affine-reset--bc2809002ada58f8d45ef5d8.md) | 175 | `result-track:bc2809002ada58f8d45ef5d81fa523975e1f7f0423fca20b02c94e40d6d59645` |
| 15 | `theorem` | [simultaneous_impulse_mixed_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/simultaneous-impulse-mixed-term--379a3bf9e7b37ad7e909f59e.md) | 181 | `result-track:379a3bf9e7b37ad7e909f59e8720ec1e22a3dbe1d4f87feacc23df719621ff76` |
| 16 | `theorem` | [offset_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant874be6eb113070adb8a2c86c5ff99699532661740c9b70cdf674e5196ca25bc0.lean/declarations/offset-telescope--5f12a3153b311c73bd83d7dc.md) | 188 | `result-track:5f12a3153b311c73bd83d7dc70c4b2e08c4a2b7d0810674bb55392f9e5bdb467` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
