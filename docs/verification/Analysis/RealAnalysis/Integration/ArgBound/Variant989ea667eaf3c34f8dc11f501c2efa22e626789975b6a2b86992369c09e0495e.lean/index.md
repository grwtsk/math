# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ArgBound.Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efccbb8d147887a4dd95cc2adb71b3070b76ed9f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efccbb8d147887a4dd95cc2adb71b3070b76ed9f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Complex.LogDeriv` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Complex.Arg` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Basic` — import line 26; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 27; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_im_integral_logDeriv_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/abs-im-integral-logderiv-le-pi--0e2b958ee56242c37f96ad6d.md) | 41 | `result-track:0e2b958ee56242c37f96ad6dc34af4a4fba47fea4e9b65ff025b223b31c5686a` |
| 2 | `lemma` | [hasDerivAt_vertical](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/hasderivat-vertical--6f6e89bb69a578c12c107379.md) | 71 | `result-track:6f6e89bb69a578c12c107379527e382cfa6b19ed16f00cc320a0e9510f162df2` |
| 3 | `lemma` | [hasDerivAt_horizontal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/hasderivat-horizontal--dac79c39ce5206bbf0463715.md) | 76 | `result-track:dac79c39ce5206bbf04637151ef3ffa08d65dfb87cd1aae51b407b428d261e32` |
| 4 | `theorem` | [abs_im_integral_logDeriv_vertical_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/abs-im-integral-logderiv-vertical-le-pi--6a04e5ae71ffc70d5ef04df3.md) | 81 | `result-track:6a04e5ae71ffc70d5ef04df39ded5dca200db26cc4f66bd8fe5255d2476c75e2` |
| 5 | `theorem` | [abs_im_integral_logDeriv_horizontal_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/abs-im-integral-logderiv-horizontal-le-pi--a77cfa7b9f02f41ce736bfec.md) | 103 | `result-track:a77cfa7b9f02f41ce736bfec08832a54fc5537b78db15b9df9b5d98bb9c2e9ce` |
| 6 | `lemma` | [continuousOn_inv_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/continuouson-inv-sub--6fe341952162d795550bef7a.md) | 126 | `result-track:6fe341952162d795550bef7a3cbd273885bad3736d314ff315e5dbbc873e7025` |
| 7 | `theorem` | [intervalIntegrable_inv_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/intervalintegrable-inv-sub--f97043b22b76e95f18db26f6.md) | 132 | `result-track:f97043b22b76e95f18db26f606fb34af66f82579ae66b76e35739c9f5aeaf779` |
| 8 | `theorem` | [abs_im_integral_inv_sub_le_pi](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ArgBound/Variant989ea667eaf3c34f8dc11f501c2efa22e626789975b6a2b86992369c09e0495e.lean/declarations/abs-im-integral-inv-sub-le-pi--8cf717c92c184a6adeb0ee60.md) | 137 | `result-track:8cf717c92c184a6adeb0ee600de31d12f7217a6385609aa6c27d7e9526688078` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
