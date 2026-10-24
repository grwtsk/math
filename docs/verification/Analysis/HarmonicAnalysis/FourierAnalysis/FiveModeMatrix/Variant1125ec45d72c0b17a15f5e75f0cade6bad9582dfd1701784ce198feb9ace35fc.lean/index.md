# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiveModeMatrix.Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "856669554d3c3c2b6e3126860efc3f3a8b0e7577",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `856669554d3c3c2b6e3126860efc3f3a8b0e7577`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `scratch.common_mean_20261004.FiveModeCorrelationAdapter` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeAdmissibility` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ZeroSide.Assembly` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modeFourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/modefourier--e78ebad0223631f79e2d4406.md) | 29 | `declaration-track:e78ebad0223631f79e2d4406cc23d073a5791b5e81d8fd4c286d0527bf6cac9c` |
| 2 | `theorem` | [mode_fourier_integrable](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/mode-fourier-integrable--028d37d133bf2daa086da03d.md) | 32 | `result-track:028d37d133bf2daa086da03d1d27db7a2dd47941671b3cf2ae901737dd470b07` |
| 3 | `theorem` | [mode_fourier_conj](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/mode-fourier-conj--98d98b8b94a89198db98f4a5.md) | 52 | `result-track:98d98b8b94a89198db98f4a5a8e52847f16e7dbd85975b0ef4461d76139ea3c6` |
| 4 | `theorem` | [mode_fourier_im_zero](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/mode-fourier-im-zero--9f730ed6133f139503462c6d.md) | 66 | `result-track:9f730ed6133f139503462c6d9580576dcf088408300370b9301c5d6fe1046be5` |
| 5 | `theorem` | [actual_fourier_reconstruction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/actual-fourier-reconstruction--44e8cfb309b33b43ddd40a1c.md) | 72 | `result-track:44e8cfb309b33b43ddd40a1c8f1c0a160bc57e74a3561d01ebb1fd066465b89a` |
| 6 | `theorem` | [actual_fourier_square_reconstruction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/actual-fourier-square-reconstruction--30724fab0350dc2eec41b579.md) | 86 | `result-track:30724fab0350dc2eec41b5798f0b675d5bc263061fd6a0cc7f6f2e96ad2b5e9d` |
| 7 | `def` | [gammaEntry](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/gammaentry--b2fbc371e23ee5932cf94923.md) | 103 | `declaration-track:b2fbc371e23ee5932cf94923a3f08dd1cdb9897c3a21826d2d0a1aeceb7df340` |
| 8 | `def` | [GammaEntryIntegrability](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/gammaentryintegrability--1b0af3dc51fc01ae70816bd8.md) | 108 | `declaration-track:1b0af3dc51fc01ae70816bd8fca699861b1ad4e82043de45fd9364a308035586` |
| 9 | `theorem` | [gamma_contraction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/gamma-contraction--0d8df7ec123dad976c77e38c.md) | 112 | `result-track:0d8df7ec123dad976c77e38c58c5b0f8604fdc994011483391bb94876f2e3349` |
| 10 | `def` | [arithmeticEntry](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/arithmeticentry--79986a1b0c92b8037bcae45e.md) | 134 | `declaration-track:79986a1b0c92b8037bcae45ef7efb36be29b328f6b24b8fc949e3722845e40b8` |
| 11 | `def` | [geometricEntry](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/geometricentry--0abbd0de93029f7dcd20643a.md) | 138 | `declaration-track:0abbd0de93029f7dcd20643aea2ab5ea805a9181135ad4481e63dad35ef19612` |
| 12 | `theorem` | [negative_pole_eq_positive](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/negative-pole-eq-positive--fe04ab3f0633d084d8a4d565.md) | 141 | `result-track:fe04ab3f0633d084d8a4d5656202e28300917ab1d5079a593086dd5fb12e45ba` |
| 13 | `theorem` | [actual_closed_arithmetic](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/actual-closed-arithmetic--8f1eca0fea7a951e1ebe5976.md) | 151 | `result-track:8f1eca0fea7a951e1ebe597640ea9a6947026ea7af886e4c980a1a169af78b27` |
| 14 | `theorem` | [arithmetic_contraction](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/arithmetic-contraction--736fded0229645e4859f7028.md) | 164 | `result-track:736fded0229645e4859f702895042236038a1b5d851e73549855dd2d55b490d6` |
| 15 | `theorem` | [geometric_matrix_dictionary](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/geometric-matrix-dictionary--0ed335b4cb5cf78441e3ae84.md) | 181 | `result-track:0ed335b4cb5cf78441e3ae84928b006ff1e566ba459a809cdcac0e0bd9c924a1` |
| 16 | `theorem` | [geometric_matrix_zero_dictionary](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/geometric-matrix-zero-dictionary--679045c6de267da992941b59.md) | 195 | `result-track:679045c6de267da992941b59e1d77784f74ac99b8cce4e47fcd58deaacd8d3c5` |
| 17 | `theorem` | [gammaEntry_symm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/gammaentry-symm--ec6190604fe93419da929b81.md) | 207 | `result-track:ec6190604fe93419da929b81207d1d97e0102cbf8bf380dd535d6409ee8ee0f5` |
| 18 | `theorem` | [arithmeticEntry_symm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/arithmeticentry-symm--2381e31b6fd471c0a63efd17.md) | 210 | `result-track:2381e31b6fd471c0a63efd17bf3d8b74b2a44cbcecf40e2f9dc4beba3e69ab3b` |
| 19 | `theorem` | [geometricEntry_symm](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/FiveModeMatrix/Variant1125ec45d72c0b17a15f5e75f0cade6bad9582dfd1701784ce198feb9ace35fc.lean/declarations/geometricentry-symm--90048c23e98c62a702ec8d72.md) | 214 | `result-track:90048c23e98c62a702ec8d72f45c532ba2823de9fe2aa26007cd3e866b462cd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
