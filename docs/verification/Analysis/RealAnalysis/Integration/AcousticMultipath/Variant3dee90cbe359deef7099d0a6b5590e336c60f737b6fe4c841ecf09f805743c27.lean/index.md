# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AcousticMultipath.Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15fbb58a1352087059089b2f6e7a762355aead96",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15fbb58a1352087059089b2f6e7a762355aead96`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Integral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [angularFourierPhase](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourierphase--19e093cad4dc3b83f2ee8e09.md) | 35 | `declaration-track:19e093cad4dc3b83f2ee8e090bf3cdb6810de0849f945d0219d953d393b3a5c1` |
| 2 | `def` | [angularFourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourier--3ff782b4406eb43b6094dd40.md) | 39 | `declaration-track:3ff782b4406eb43b6094dd407180443a7240e3c5fdbace04b49218c7f49f898e` |
| 3 | `theorem` | [angularFourierPhase_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourierphase-norm--53aef15f9f0e18e86d96837d.md) | 43 | `result-track:53aef15f9f0e18e86d96837d854af5a1cef01668bfe4b34d1e2d3195c053aa3a` |
| 4 | `theorem` | [angularFourierPhase_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourierphase-continuous--59d63e1ca50f83fe1ecfb76d.md) | 48 | `result-track:59d63e1ca50f83fe1ecfb76dc99b973317fdb19cc429e767d9f6791efce6adda` |
| 5 | `theorem` | [angularFourierPhase_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourierphase-add--7b33b6b42bb77701a6d970ab.md) | 54 | `result-track:7b33b6b42bb77701a6d970abe680e062fce8481192d6635519709e248c8f785f` |
| 6 | `theorem` | [angular_fourier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angular-fourier-integrable--35740e2936d078e941c9a97f.md) | 64 | `result-track:35740e2936d078e941c9a97fa25cdc1407ee39fd554bf1ba6d0c768b4b8545b2` |
| 7 | `def` | [delayedPath](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/delayedpath--2f2a8d8bef864cbd8d2d1fca.md) | 70 | `declaration-track:2f2a8d8bef864cbd8d2d1fca090841c9d97c1d3df87b07707b6416d74ac7c2c7` |
| 8 | `theorem` | [delayed_path_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/delayed-path-integrable--f683ccb598c0f6a723fa6f54.md) | 74 | `result-track:f683ccb598c0f6a723fa6f5446bfa4eb66cf39dbb61defbd61bc5f25b6d4c4d0` |
| 9 | `theorem` | [angularFourier_const_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourier-const-mul--3d73ef31296cc669d1699f75.md) | 79 | `result-track:3d73ef31296cc669d1699f7567ca3c4ea7d548c922efa9d3fb000307a41d3657` |
| 10 | `theorem` | [angularFourier_delay](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourier-delay--32a1fbbc674d1350e28e6761.md) | 89 | `result-track:32a1fbbc674d1350e28e67612219dc4bce9a4cc2132fb9884369a604ddda0829` |
| 11 | `theorem` | [angularFourier_delayedPath](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourier-delayedpath--568fc9afa2beae3b9a7fc70e.md) | 103 | `result-track:568fc9afa2beae3b9a7fc70e233ac74d8d8c2ea7522e7bb2aa282b4b3dfa2004` |
| 12 | `def` | [finiteMultipathSignal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/finitemultipathsignal--2ca8e9c911944d7ead69c935.md) | 112 | `declaration-track:2ca8e9c911944d7ead69c93577454c856bfff06a68f92b5f198a96589f08481c` |
| 13 | `def` | [finiteTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/finitetransfer--6963a094d91c0de943d25342.md) | 117 | `declaration-track:6963a094d91c0de943d25342cfc5b1137d7546ef15a6cd3067d9bd221254fd4e` |
| 14 | `theorem` | [finite_multipath_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/finite-multipath-integrable--19e9334d22334e563419501c.md) | 122 | `result-track:19e9334d22334e563419501caa196fa90167a49906f11413f8a1fd1c26e30e73` |
| 15 | `theorem` | [angularFourier_finite_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/angularfourier-finite-sum--297ec2ec4fbfa880eee3ec2d.md) | 130 | `result-track:297ec2ec4fbfa880eee3ec2dd864b7ea848cdb22d77e8decda6b79bad326b619` |
| 16 | `theorem` | [finite_multipath_fourier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/finite-multipath-fourier--a0e0ee2c0164398a608d2f12.md) | 141 | `result-track:a0e0ee2c0164398a608d2f12e2c6c434471fd82f5c31b9182abfd235692ead43` |
| 17 | `theorem` | [source_fourier_recovery](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/source-fourier-recovery--ad6157d5289a63b573dd4fad.md) | 153 | `result-track:ad6157d5289a63b573dd4faddd82712f6a707f1ff62317f7879d990ca59e30b6` |
| 18 | `abbrev` | [IntegrableAcousticSignal](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/integrableacousticsignal--1dd7e02099478b1aacc1af48.md) | 163 | `declaration-track:1dd7e02099478b1aacc1af485bee5af62675a5e38fdd7d2084afe5a74ca26fd5` |
| 19 | `theorem` | [source_fourier_coefficient_descends](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/source-fourier-coefficient-descends--b05f9a37b53ed88c1ae0a5c3.md) | 166 | `result-track:b05f9a37b53ed88c1ae0a5c3fbddacb3cdc802681f0f64228b814f2ef155bb80` |
| 20 | `theorem` | [transfer_stability](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/transfer-stability--bc370727de143373f087fbea.md) | 180 | `result-track:bc370727de143373f087fbea4d6d911bb3113496e86ebebe586591caf6cb50f8` |
| 21 | `def` | [spectralObservation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/spectralobservation--fd6b1a678a0b446f6048b67b.md) | 188 | `declaration-track:fd6b1a678a0b446f6048b67b5d7a72486a52602de1044a72d751309e738b5a77` |
| 22 | `theorem` | [spectralObservation_injective](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/spectralobservation-injective--2467f9432d7b40271dccbecd.md) | 192 | `result-track:2467f9432d7b40271dccbecda9047f87d28357dc9d580bf1ecda5ac6450eaa81` |
| 23 | `def` | [notchSpectrum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/notchspectrum--fd84a3340abe94e5ff8dbec3.md) | 199 | `declaration-track:fd84a3340abe94e5ff8dbec3c828aaefad0052fbf273ee17649627838328a0d1` |
| 24 | `def` | [spectralNotchObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/spectralnotchobstruction--c20819a64ef13c65cbe8b56a.md) | 203 | `declaration-track:c20819a64ef13c65cbe8b56a1e573b78b8ac99554fd4b8e2d692f4183a67137e` |
| 25 | `def` | [twoPathTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/twopathtransfer--7c14b536642689ffb8da6481.md) | 219 | `declaration-track:7c14b536642689ffb8da6481d5818a2b4f219c3e8f703a63543958927a50a897` |
| 26 | `theorem` | [twoPathTransfer_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/twopathtransfer-formula--d05573121d95d2ad2f676b51.md) | 224 | `result-track:d05573121d95d2ad2f676b517cfb2d424971ac01ff2d89793214b26cca8cf245` |
| 27 | `theorem` | [twoPathTransfer_notch](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/twopathtransfer-notch--824e50c35fa5f4bcd3eb8679.md) | 229 | `result-track:824e50c35fa5f4bcd3eb8679f267e15cbc84f801d2bb8669d8a15bd17ad8b4a3` |
| 28 | `theorem` | [twoPathTransfer_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/twopathtransfer-zero--bc8355143f05dcf853b855f4.md) | 234 | `result-track:bc8355143f05dcf853b855f41fedd03aba3e8c9e0899de5539c12ed9bca4460c` |
| 29 | `def` | [twoBinTransfer](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/twobintransfer--f04ef7729e87e449fffccc26.md) | 238 | `declaration-track:f04ef7729e87e449fffccc26751ffe14237af9ba7528e14e67e413135c83ab67` |
| 30 | `theorem` | [twoBinTransfer_notch](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/twobintransfer-notch--0fd9176053edaa2b07602981.md) | 242 | `result-track:0fd9176053edaa2b07602981ecbbb3ec5713ee990b611599ce8db8a2d0a3bc6a` |
| 31 | `def` | [twoBinNotchObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/twobinnotchobstruction--4d0c46aafb831f565ab3a36f.md) | 246 | `declaration-track:4d0c46aafb831f565ab3a36fc584959f6608836e2b7c62a243c19f1cd8e0a758` |
| 32 | `theorem` | [no_two_bin_spectrum_decoder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticMultipath/Variant3dee90cbe359deef7099d0a6b5590e336c60f737b6fe4c841ecf09f805743c27.lean/declarations/no-two-bin-spectrum-decoder--767296f8c42ec3dcd9917436.md) | 251 | `result-track:767296f8c42ec3dcd9917436fae494394cc5d9ff57c9594cc026dcea2da17676` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
