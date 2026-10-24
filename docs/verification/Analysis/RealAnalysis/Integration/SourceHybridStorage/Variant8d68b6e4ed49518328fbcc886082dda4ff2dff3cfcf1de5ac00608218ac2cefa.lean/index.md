# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceHybridStorage.Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5ea5bf9f4531ebf6c23be2181e8e8e814eb81e94",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5ea5bf9f4531ebf6c23be2181e8e8e814eb81e94`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ConjTranspose` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [flow_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/flow-integral-bound--93d86bd1d2ed0f01e9287c22.md) | 29 | `result-track:93d86bd1d2ed0f01e9287c22af41f3df540e04f1d1d7fbeb66918c500fd05181` |
| 2 | `theorem` | [signed_hybrid_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/signed-hybrid-telescope--52758bcd597a823fb96e800b.md) | 42 | `result-track:52758bcd597a823fb96e800ba58e896ac6435985de57979df9401d1fb9c287bd` |
| 3 | `theorem` | [signed_hybrid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/signed-hybrid-bound--b53d348af86044f7ca323264.md) | 62 | `result-track:b53d348af86044f7ca32326476372ce97202374dc1a008f85d24de9cd7e0ed8a` |
| 4 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/quadraticreadout--8ae5002930887133afbca175.md) | 79 | `declaration-track:8ae5002930887133afbca1756a1db5ba08ca2e41e77a31bebac8dce41df7898a` |
| 5 | `def` | [FormLE](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/formle--dff4ceb04d325e121ec88828.md) | 83 | `declaration-track:dff4ceb04d325e121ec88828d1274ef68db151c4870a3ecf95b868238cab6b02` |
| 6 | `theorem` | [quadraticReadout_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/quadraticreadout-congruence--899d640f1eeb86f1caff7bfa.md) | 86 | `result-track:899d640f1eeb86f1caff7bfaef9eb5aba86895957a61038629670b63b8ee08bd` |
| 7 | `theorem` | [formLE_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/formle-congruence--4914f78089f5dc591f1714bb.md) | 93 | `result-track:4914f78089f5dc591f1714bb5cc870543c8f7f32b4a9c9e5fc75f14c2d1ff8c4` |
| 8 | `def` | [homogeneousProjector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/homogeneousprojector--8235b8cb26b7791d508d258a.md) | 99 | `declaration-track:8235b8cb26b7791d508d258ac37b520491d0a8b6576f0596d843e649de3aca05` |
| 9 | `theorem` | [homogeneousProjector_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/homogeneousprojector-readout--e80142ceed46d19c6e80e6c2.md) | 102 | `result-track:e80142ceed46d19c6e80e6c2221f2bf9007f2cb551d0a1dce9472387ab6ab380` |
| 10 | `theorem` | [homogeneousProjector_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/homogeneousprojector-covariance--8add43b66e5cbe5617d7a209.md) | 111 | `result-track:8add43b66e5cbe5617d7a209e8f91df0252fc630d73d8a5fafcaa73c1c73113f` |
| 11 | `def` | [transformedStorageDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/transformedstoragederivative--b3188277e0f2b0c797283c65.md) | 127 | `declaration-track:b3188277e0f2b0c797283c65e3e173a9adb463650ce4fbfc30a67f026b841336` |
| 12 | `theorem` | [flow_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/flow-defect-covariance--39e525ca5ba6bbb164509aba.md) | 130 | `result-track:39e525ca5ba6bbb164509abaf24a717e319dd80facc27b16f9fbf08dd111cc46` |
| 13 | `theorem` | [event_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/event-defect-covariance--11a27ba3467e003b57edcbfb.md) | 149 | `result-track:11a27ba3467e003b57edcbfbee2249e6eef8cdf79caf8aa56673cbbe4f7abc6c` |
| 14 | `theorem` | [simultaneous_affine_reset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/simultaneous-affine-reset--69ba69fd2524209cf498a262.md) | 167 | `result-track:69ba69fd2524209cf498a26273db577146e9c61839f7efd8d76d2b92f5e60f9d` |
| 15 | `theorem` | [simultaneous_impulse_mixed_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/simultaneous-impulse-mixed-term--eacbc0c02fef148ed233ba69.md) | 173 | `result-track:eacbc0c02fef148ed233ba69e37ae62d8737a6abf32286bedee022244d34aa8e` |
| 16 | `theorem` | [offset_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/declarations/offset-telescope--7b2441f45dbfc6e2da1de450.md) | 180 | `result-track:7b2441f45dbfc6e2da1de4506df2764166cbfac10c685713d4403eda7f907302` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
