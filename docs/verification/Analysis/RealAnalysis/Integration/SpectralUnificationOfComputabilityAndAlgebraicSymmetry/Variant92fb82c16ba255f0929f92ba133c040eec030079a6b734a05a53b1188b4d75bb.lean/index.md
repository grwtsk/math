# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cdb4b814f987450166049168fbec5a487ed6d9f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cdb4b814f987450166049168fbec5a487ed6d9f`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateKernelMoments` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Integral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TwoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/twomomentprofile--2f5c118d0b52930d9dac976e.md) | 40 | `declaration-track:2f5c118d0b52930d9dac976ed435e4f930a25446f50d34a2820fa145476d7589` |
| 2 | `def` | [shiftedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/shiftedmomentintegrand--98487464e48a48c568c9973b.md) | 47 | `declaration-track:98487464e48a48c568c9973be27fd27e276b9afb5d01d71345361410eb552a44` |
| 3 | `def` | [reflectedMomentIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/reflectedmomentintegrand--aeb177841e80461079842c9e.md) | 51 | `declaration-track:aeb177841e80461079842c9ea745905657e1bffd8b8d4068a756a57d6104006d` |
| 4 | `theorem` | [weighted_zero_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/weighted-zero-integrable--44efaa568046d450a10cf861.md) | 54 | `result-track:44efaa568046d450a10cf8616ca81a1062c581f6c9d67b0602b3457609d8eb45` |
| 5 | `theorem` | [weighted_first_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/weighted-first-integrable--64b50d511987b5e363844a1b.md) | 62 | `result-track:64b50d511987b5e363844a1b65b03f4a89300aa64e78cf354bcc97743dec5e65` |
| 6 | `theorem` | [shiftedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/shiftedmomentintegrand-integrable--308615de32f2a85f8d51859e.md) | 71 | `result-track:308615de32f2a85f8d51859ed7d5c575db84cbd7d18d7e7f3e2ff5f4139732e8` |
| 7 | `theorem` | [reflectedMomentIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/reflectedmomentintegrand-integrable--cbe648bc24ecd74b2ff6aac1.md) | 91 | `result-track:cbe648bc24ecd74b2ff6aac173ca6bc6465c95171ccb57e830645756484e18e2` |
| 8 | `theorem` | [shiftedMoment_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/shiftedmoment-integral-zero--79a43e3c9ff1795e17f146b7.md) | 112 | `result-track:79a43e3c9ff1795e17f146b7609f361efb3f665efc5f1bab376fadaece7f0b75` |
| 9 | `theorem` | [reflectedMoment_eq_neg_negativeHalf](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/reflectedmoment-eq-neg-negativehalf--5e4e5eb4be11114c0d0e703a.md) | 170 | `result-track:5e4e5eb4be11114c0d0e703a56293bf51a4ffeced5b2eaa2a1aa0bc6aef8dcba` |
| 10 | `theorem` | [two_moment_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/two-moment-reflection--631272ab18b2cd7cbacaf654.md) | 191 | `result-track:631272ab18b2cd7cbacaf65428f482a353cbb3725dbe6e5f54e8484245cc1ed8` |
| 11 | `theorem` | [sourceCorrelation_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/sourcecorrelation-twomomentprofile--1e5c2930ceabfa31e81bc570.md) | 210 | `result-track:1e5c2930ceabfa31e81bc5704a7d53ecee0f271d97d38555ee7db16fa545995e` |
| 12 | `theorem` | [derivativeProfile_twoMomentProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/derivativeprofile-twomomentprofile--756777d4a05ab6cb0e41fbd9.md) | 227 | `result-track:756777d4a05ab6cb0e41fbd999bbbc9a43f2f33cf40567c9b4ed2cf49b97caab` |
| 13 | `theorem` | [sourceCorrelation_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/sourcecorrelation-reflection--9216ca0d286a54943fc865c0.md) | 258 | `result-track:9216ca0d286a54943fc865c0a70d141128c032640c6011f4957b2a569c9576f2` |
| 14 | `theorem` | [derivativeProfile_reflection](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/derivativeprofile-reflection--c55f4fbd82cb26f4c6792063.md) | 270 | `result-track:c55f4fbd82cb26f4c6792063c84092b224ef0b47ab9b8633c66a995014ac7176` |
| 15 | `def` | [MomentReflectionCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/momentreflectioncheckpoint--9c8bec1aba4c9f30ded20f1d.md) | 284 | `declaration-track:9c8bec1aba4c9f30ded20f1dd495582bba57f1925f1ea16c7ea9627dac2dc28c` |
| 16 | `theorem` | [moment_reflection_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant92fb82c16ba255f0929f92ba133c040eec030079a6b734a05a53b1188b4d75bb.lean/declarations/moment-reflection-checkpoint--c0932de105eeb53e6451a7a7.md) | 300 | `result-track:c0932de105eeb53e6451a7a7abfb7ecd57cfb9cc28ea852fe64dce4fab8161b4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
