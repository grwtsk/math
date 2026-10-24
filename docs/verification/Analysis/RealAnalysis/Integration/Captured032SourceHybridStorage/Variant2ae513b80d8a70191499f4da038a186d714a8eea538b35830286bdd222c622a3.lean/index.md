# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Captured032SourceHybridStorage.Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5139daedd6c5a9b7561362dd3dd57e581f7c3d6e",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5139daedd6c5a9b7561362dd3dd57e581f7c3d6e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean.json)

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
| 1 | `theorem` | [flow_integral_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/flow-integral-bound--91b92a3b4625bc3c03e89523.md) | 29 | `result-track:91b92a3b4625bc3c03e8952309172d2dbe54f6a860587f275e37aed9b36e6c27` |
| 2 | `theorem` | [signed_hybrid_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/signed-hybrid-telescope--607c999d43824767ebd81e50.md) | 42 | `result-track:607c999d43824767ebd81e50e84e906f22ea57d355a43030f05af8e9873cf0b7` |
| 3 | `theorem` | [signed_hybrid_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/signed-hybrid-bound--8409d8501e77fc7b90ee3d24.md) | 62 | `result-track:8409d8501e77fc7b90ee3d24de5ab1a5a0343b60ed263a808f3ebacbede8a441` |
| 4 | `def` | [quadraticReadout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/quadraticreadout--860ccec53a0e482b8d4bfe51.md) | 79 | `declaration-track:860ccec53a0e482b8d4bfe510275d3134d41148b1d46b977512ee7e2b69c62a5` |
| 5 | `def` | [FormLE](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/formle--e9963d8b2610ad279b3f314f.md) | 83 | `declaration-track:e9963d8b2610ad279b3f314f43739ce1fdfbb0b6f077e87592655217f596f3f3` |
| 6 | `theorem` | [quadraticReadout_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/quadraticreadout-congruence--1a2efb165d0ef55b60a78749.md) | 86 | `result-track:1a2efb165d0ef55b60a787493f3a24927cfb50dc2e6bbd6186863b44af4c10af` |
| 7 | `theorem` | [formLE_congruence](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/formle-congruence--31dbdbae83a2e65268e4e3cc.md) | 93 | `result-track:31dbdbae83a2e65268e4e3cc903c5ca6e3d465dcc6598204e35051b36ee3f533` |
| 8 | `def` | [homogeneousProjector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/homogeneousprojector--a2ff8ec4aae5f545af97c91a.md) | 99 | `declaration-track:a2ff8ec4aae5f545af97c91ad165df2dd42aa5901390eb74ab248ee8af954c97` |
| 9 | `theorem` | [homogeneousProjector_readout](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/homogeneousprojector-readout--8115067ac6be3f5135226a52.md) | 102 | `result-track:8115067ac6be3f5135226a525b94cb579fd523c00fca45e2b4d7c9b762c689ad` |
| 10 | `theorem` | [homogeneousProjector_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/homogeneousprojector-covariance--c44ac6ac8c536855293ba916.md) | 108 | `result-track:c44ac6ac8c536855293ba916947e6db6188f1b6d86b8973af4f3dc97400b61ab` |
| 11 | `def` | [transformedStorageDerivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/transformedstoragederivative--0f4e009af0cb38a22faa4a83.md) | 124 | `declaration-track:0f4e009af0cb38a22faa4a8315357944426a37a568ee65114a98c8c3ae962658` |
| 12 | `theorem` | [flow_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/flow-defect-covariance--b6136e23dc4ec4b7783dcf49.md) | 127 | `result-track:b6136e23dc4ec4b7783dcf490290d4b137d6a2190d16abaec7d03d3632377e24` |
| 13 | `theorem` | [event_defect_covariance](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/event-defect-covariance--47fcca87ca749317c1ba8e11.md) | 146 | `result-track:47fcca87ca749317c1ba8e1186711039b08b8c8d7b6fc79f623b7cfd29823513` |
| 14 | `theorem` | [simultaneous_affine_reset](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/simultaneous-affine-reset--f22bfc1d5c7b5e76190a047a.md) | 164 | `result-track:f22bfc1d5c7b5e76190a047a3ff3a31591d527c108d7703cdd30f1ce2e03625e` |
| 15 | `theorem` | [simultaneous_impulse_mixed_term](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/simultaneous-impulse-mixed-term--45b4b0261993f45345c73c18.md) | 170 | `result-track:45b4b0261993f45345c73c1879e0837b48e108de69e6ab42d087fa6c8c472300` |
| 16 | `theorem` | [offset_telescope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Captured032SourceHybridStorage/Variant2ae513b80d8a70191499f4da038a186d714a8eea538b35830286bdd222c622a3.lean/declarations/offset-telescope--93ee8af84c4c93b2525ca233.md) | 177 | `result-track:93ee8af84c4c93b2525ca233bdce2699933fc7d285a97d900fb375ab0655b1f5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
