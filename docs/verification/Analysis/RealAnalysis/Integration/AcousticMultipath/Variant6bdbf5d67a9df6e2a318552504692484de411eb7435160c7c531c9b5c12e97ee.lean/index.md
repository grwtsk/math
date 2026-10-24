# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AcousticMultipath.Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0548e61752d01521291086a13681da08ed77e866",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0548e61752d01521291086a13681da08ed77e866`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularFourierPhase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourierphase--3d8da25d57a3ccaa4a6c8291.md) | 43 | `declaration-track:3d8da25d57a3ccaa4a6c82915ffd71ae99129212ac5ddee7090688660bea8223` |
| 2 | `def` | [angularFourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourier--2f57d2801ef91e6bc39e61de.md) | 47 | `declaration-track:2f57d2801ef91e6bc39e61de7e2253fbe0aa849f3e82052c806daec9433aebc6` |
| 3 | `theorem` | [angularFourierPhase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourierphase-norm--9c09084909d9ce3222d26e22.md) | 51 | `result-track:9c09084909d9ce3222d26e228199f169bc68f97fbdb628350f7e79ee3884b7bd` |
| 4 | `theorem` | [angularFourierPhase_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourierphase-continuous--c2c70bb237e45b06d9298a3b.md) | 56 | `result-track:c2c70bb237e45b06d9298a3b0d87a3a872f7a73723245eb759cbb3c19b0d4aa8` |
| 5 | `theorem` | [angularFourierPhase_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourierphase-add--7afe67728441f4847ec9a65d.md) | 62 | `result-track:7afe67728441f4847ec9a65d5e165fe4c2eb0289763cbe3b1c86a1e4b2173656` |
| 6 | `theorem` | [angular_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angular-fourier-integrable--4ea197600cf938042f399512.md) | 72 | `result-track:4ea197600cf938042f39951297c3d8df090ddc66d9133af12b13c84d85d243e3` |
| 7 | `def` | [delayedPath](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/delayedpath--4116da0b415fbe8ddfac0382.md) | 78 | `declaration-track:4116da0b415fbe8ddfac03821299e53557dc8ced4e1281669ba0244cb2926558` |
| 8 | `theorem` | [delayed_path_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/delayed-path-integrable--dd27d95eb988ee39b435ce9a.md) | 82 | `result-track:dd27d95eb988ee39b435ce9adc52d92ae81ea8c8bbb437b9f0f062e60dc090bf` |
| 9 | `theorem` | [angularFourier_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourier-const-mul--42a64679e39234082c07c798.md) | 87 | `result-track:42a64679e39234082c07c7983410ff137f3f8a6a853865e43741888d81141dcc` |
| 10 | `theorem` | [angularFourier_delay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourier-delay--55dde24a586d53f96fc6a1b9.md) | 97 | `result-track:55dde24a586d53f96fc6a1b9c5c7c4907b14136dee97ce809c767be8abaf7640` |
| 11 | `theorem` | [angularFourier_delayedPath](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourier-delayedpath--94083aab6a763d1a842f82ec.md) | 111 | `result-track:94083aab6a763d1a842f82ec29c1c150a268fccc721bb99ebda220220c9747c3` |
| 12 | `def` | [finiteMultipathSignal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/finitemultipathsignal--8975b99f737d5763a9c85c02.md) | 120 | `declaration-track:8975b99f737d5763a9c85c02d8b5bf64198f0f1211c2ee3255e65b26f261290c` |
| 13 | `def` | [finiteTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/finitetransfer--b2fbeafd0c9e451afe82de3d.md) | 125 | `declaration-track:b2fbeafd0c9e451afe82de3df3021bc59c76caccd8e0f4d00c1ad289273542d7` |
| 14 | `theorem` | [finite_multipath_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/finite-multipath-integrable--20f26a8a36321cb039e601ee.md) | 130 | `result-track:20f26a8a36321cb039e601eecc09876ac19905cc5bed41e2bf6be513a1f9baee` |
| 15 | `theorem` | [angularFourier_finite_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/angularfourier-finite-sum--d8244c64adf424d44e4ed6bf.md) | 138 | `result-track:d8244c64adf424d44e4ed6bf3f543145daafde620054f612fd8c559ccfb7f35a` |
| 16 | `theorem` | [finite_multipath_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/finite-multipath-fourier--c0d93761e0b6d04ebe30defb.md) | 149 | `result-track:c0d93761e0b6d04ebe30defb4f40ebe36fdd7b37edeb6f6e403b17dbc209a63a` |
| 17 | `theorem` | [source_fourier_recovery](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/source-fourier-recovery--77c09fc57d534219eb0ae7ef.md) | 161 | `result-track:77c09fc57d534219eb0ae7efb16393b9bce4989084200a2732c8fa3c36638175` |
| 18 | `abbrev` | [IntegrableAcousticSignal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/integrableacousticsignal--ae9b1e69af23691a02c08e76.md) | 171 | `declaration-track:ae9b1e69af23691a02c08e760492f81266ad227f303a8e8d8f5a3b62c64761f9` |
| 19 | `theorem` | [source_fourier_coefficient_descends](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/source-fourier-coefficient-descends--5994bbfc253ab3df19f7b0c5.md) | 174 | `result-track:5994bbfc253ab3df19f7b0c582822e2953b5426686ff8e6e9bb1fe4063e59b94` |
| 20 | `theorem` | [transfer_stability](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/transfer-stability--3abc6408a4cfe74e121912fe.md) | 188 | `result-track:3abc6408a4cfe74e121912fe27a623903b20e5edc0137a95b4e3af3b8e2fb699` |
| 21 | `def` | [spectralObservation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/spectralobservation--040359c1135b20d6fff5a7bb.md) | 196 | `declaration-track:040359c1135b20d6fff5a7bb248183de63d70a2c8c78367e47ccaecabe7ea4a9` |
| 22 | `theorem` | [spectralObservation_injective](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/spectralobservation-injective--86c04b7a31f67c495c57ec5b.md) | 200 | `result-track:86c04b7a31f67c495c57ec5bc91b0191fb712f54f1673614f8c1df392ef4a19b` |
| 23 | `def` | [notchSpectrum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/notchspectrum--a12bcaac19e5be886ee5d8a5.md) | 207 | `declaration-track:a12bcaac19e5be886ee5d8a59dfc0939fdb705933652985cd80468db978f6273` |
| 24 | `def` | [spectralNotchObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/spectralnotchobstruction--6988b6963995e6850250ec49.md) | 211 | `declaration-track:6988b6963995e6850250ec496de0dd8a6575ad698a41a1802cd8650dc831d663` |
| 25 | `def` | [twoPathTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/twopathtransfer--3b46dda8bb07b63be98babfa.md) | 227 | `declaration-track:3b46dda8bb07b63be98babfa6a582739110ae4efa26f6d7f339fa9706e0367b4` |
| 26 | `theorem` | [twoPathTransfer_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/twopathtransfer-formula--2074eaf6dae844eb4a6a20ff.md) | 232 | `result-track:2074eaf6dae844eb4a6a20ff24e1ee6a9a5dcf2665d4d0bc2802a631f682451a` |
| 27 | `theorem` | [twoPathTransfer_notch](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/twopathtransfer-notch--d11f074889707de9a4d4cc85.md) | 237 | `result-track:d11f074889707de9a4d4cc859cb8ad30123a0f0153173f759a9381e929fe4d9b` |
| 28 | `theorem` | [twoPathTransfer_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/twopathtransfer-zero--66d15929370bffb3590b895e.md) | 242 | `result-track:66d15929370bffb3590b895e17d2d7ab52eafe0e44b2b7e8dfa227a78db9f521` |
| 29 | `def` | [twoBinTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/twobintransfer--9ed0bfdc9c132807e4cd2ea5.md) | 246 | `declaration-track:9ed0bfdc9c132807e4cd2ea5571d89613721a35c1ab0b340969a789c94611aa2` |
| 30 | `theorem` | [twoBinTransfer_notch](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/twobintransfer-notch--6b7d5cfcc9ad3ab1d73607d1.md) | 250 | `result-track:6b7d5cfcc9ad3ab1d73607d1a77a1dfc3162a315bcb5652ad3a781adaa0c6262` |
| 31 | `def` | [twoBinNotchObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/twobinnotchobstruction--351075ce2ca622703b476846.md) | 254 | `declaration-track:351075ce2ca622703b476846d95c79101642c7b1d2a3b5808225c03493586f1d` |
| 32 | `theorem` | [no_two_bin_spectrum_decoder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant6bdbf5d67a9df6e2a318552504692484de411eb7435160c7c531c9b5c12e97ee.lean/declarations/no-two-bin-spectrum-decoder--8e9c44b10d59aa780a93cd1f.md) | 259 | `result-track:8e9c44b10d59aa780a93cd1fe980b1b0f6633127cd3a3773f83cb269cfc3e5ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
