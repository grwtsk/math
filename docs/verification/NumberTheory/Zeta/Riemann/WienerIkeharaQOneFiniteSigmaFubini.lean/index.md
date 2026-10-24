# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneFiniteSigmaFubini

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f4327711f96a9694c056af8cf7b244296e8acf2",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f4327711f96a9694c056af8cf7b244296e8acf2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaMellinFourierSource`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Analysis.Fourier.FourierTransform` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Dirichlet` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.PrimesInAP` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerFubiniLambda](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubinilambda--819eb58c25356d20b5718319.md) | 57 | `declaration-track:819eb58c25356d20b57183191a1b622b5315dbac37a9b1c2eaeb7180411329ef` |
| 2 | `theorem` | [wienerFubiniLambda_LSeriesSummable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubinilambda-lseriessummable--0bbce26cca909d641faac40d.md) | 61 | `result-track:0bbce26cca909d641faac40d6277b1f6fd813a38edd62e20952c71794b16cdb3` |
| 3 | `theorem` | [wienerFubini_norm_term_vertical](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubini-norm-term-vertical--6ca9a1ebc07a37e0896ddd05.md) | 68 | `result-track:6ca9a1ebc07a37e0896ddd0590b955f25b3f989d11a1c04910232ccf2a23a98b` |
| 4 | `theorem` | [wienerFubiniLambda_vertical_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubinilambda-vertical-summable--def0668503199978952ddbef.md) | 75 | `result-track:def0668503199978952ddbef99eba41465f091be17b6c694bf1be4c3a8a73277` |
| 5 | `def` | [wienerFubiniFrequency](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubinifrequency--1135b0119460520acc9598d0.md) | 88 | `declaration-track:1135b0119460520acc9598d0badfc6d46c22057d8f7cd12d4d40584f7cb65da5` |
| 6 | `def` | [wienerFubiniIntegrand](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubiniintegrand--5ddc2804521326f65dd5de90.md) | 93 | `declaration-track:5ddc2804521326f65dd5de908bf81def35ebcf2ae2aa3b27d98bca5e90ec1164` |
| 7 | `theorem` | [wienerFubiniIntegrand_norm](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubiniintegrand-norm--51e6132dcf350c2bf83524b3.md) | 100 | `result-track:51e6132dcf350c2bf83524b311e4ac77de5e22c7401940c57e9b12dd1a2ffdc0` |
| 8 | `theorem` | [wienerFubiniIntegrand_integrable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubiniintegrand-integrable--7aec26fe91460064f0f62bc5.md) | 110 | `result-track:7aec26fe91460064f0f62bc54ee3a31ed032e8c0293a5612bb0aec7e2a45436c` |
| 9 | `theorem` | [wienerFubini_integral_norm_summable](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubini-integral-norm-summable--3dd0d872153858b6c7db36a5.md) | 137 | `result-track:3dd0d872153858b6c7db36a5f72eb01f3069d28c64edae5cab8321af6bc08fe4` |
| 10 | `theorem` | [wienerFubini_integral_tsum](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubini-integral-tsum--726ac43b0e354b7605bc115a.md) | 159 | `result-track:726ac43b0e354b7605bc115a1ffebf099fd1bccf4a6d8ba97acd7560dd88590c` |
| 11 | `theorem` | [wienerFubini_term_phase](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubini-term-phase--270c8a692c740e8905783590.md) | 179 | `result-track:270c8a692c740e890578359069cd0bbcb40fafacf21ad807a4d748caeb9ba63c` |
| 12 | `theorem` | [wienerFubini_integral_eq_Fourier](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubini-integral-eq-fourier--724aa728e7cfd9a28c65f618.md) | 242 | `result-track:724aa728e7cfd9a28c65f6184acf4b86b6623ca7e229bc38526c9e68530cefa0` |
| 13 | `theorem` | [wienerFubini_firstFourier](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubini-firstfourier--3b633cee5e0d5b1b74463d32.md) | 255 | `result-track:3b633cee5e0d5b1b74463d328132948ccff5f6b7417c9556ac00e13e086996aa` |
| 14 | `theorem` | [wienerFubini_qoneLambda_firstFourier](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerfubini-qonelambda-firstfourier--c23b8133ad0041e68e397059.md) | 314 | `result-track:c23b8133ad0041e68e397059360dc5c4dada589ebd96adb04257ce8b57cfde89` |
| 15 | `def` | [wienerLambdaLogKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerlambdalogkernel--3426352118a61912cccd6f70.md) | 332 | `declaration-track:3426352118a61912cccd6f7041d29b94774208ca982f33e3efbe197e64549f3a` |
| 16 | `theorem` | [wienerLambdaLogKernel_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerlambdalogkernel-nonnegative--537072e245970d1de220f9e6.md) | 340 | `result-track:537072e245970d1de220f9e68ea1814bcfd75fdb2b76f96959cc7a5bd1945e58` |
| 17 | `theorem` | [wienerLambdaLogKernel_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/declarations/wienerlambdalogkernel-zero--4c2ea2158fc0250004c9d410.md) | 352 | `result-track:4c2ea2158fc0250004c9d41071627ab474c118ba1ac7a0cef84cc206ab3605ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
