# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AcousticWaveform.Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11eca7b2cf811baab5e0a310d19108edbe815d76",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11eca7b2cf811baab5e0a310d19108edbe815d76`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [volumePressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/volumepressure--184331e4c5105df55b12fe99.md) | 28 | `declaration-track:184331e4c5105df55b12fe993b3aea01c3b03bcf553a42b75ada0f624b1c7a6b` |
| 2 | `def` | [retardedPressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/retardedpressure--cfe193ebec5ccef5a4b2552a.md) | 32 | `declaration-track:cfe193ebec5ccef5a4b2552ad4be921a2009a16ac0eb876d24bec49a658b8f1f` |
| 3 | `def` | [sphereVolumeHistory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/spherevolumehistory--ad068c02a953593ebaee7cbf.md) | 37 | `declaration-track:ad068c02a953593ebaee7cbff4f9d705a971f86bc79526237d1f83f13a4c3ac5` |
| 4 | `theorem` | [retarded_time_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/retarded-time-lt--fd47c331861f4d4b95938b78.md) | 41 | `result-track:fd47c331861f4d4b95938b78662088c14d6200cad23aeead0c6a4d372b37be49` |
| 5 | `theorem` | [pressure_coefficient_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/pressure-coefficient-ne-zero--33a1873aaee8deecfa5bc7a6.md) | 47 | `result-track:33a1873aaee8deecfa5bc7a6045607efce18e70b2e298905578fb905d2d19a34` |
| 6 | `theorem` | [second_derivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/second-derivative-continuous--0c4b44800615ad1979bec82c.md) | 53 | `result-track:0c4b44800615ad1979bec82c6b972d2bca3279cf4ab3ef2cff7f166de2ad4736` |
| 7 | `theorem` | [sphereVolumeHistory_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/spherevolumehistory-derivative--c0c65355b646c943493a7d58.md) | 58 | `result-track:c0c65355b646c943493a7d58dc73a3fb8d88e56ecde7990377dfe69a28c8c613` |
| 8 | `theorem` | [sphereVolumeHistory_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/spherevolumehistory-second-derivative--0ad927e7f2be30d67f4f64b1.md) | 67 | `result-track:0ad927e7f2be30d67f4f64b18133a9ae9a82b85e774abfa7b196ff0c9ccf9839` |
| 9 | `theorem` | [sphere_volume_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/sphere-volume-pressure--96b73e3aa4051498d2f71acc.md) | 84 | `result-track:96b73e3aa4051498d2f71acc7919bff637d80d3432ceea4f3c103760bc13eef6` |
| 10 | `theorem` | [sphere_retarded_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/sphere-retarded-pressure--a97fb3d1b1a38b0e347cfc22.md) | 95 | `result-track:a97fb3d1b1a38b0e347cfc22ebc56b29c7196be618ef6d5e284182359e9a7ad7` |
| 11 | `theorem` | [reconstruction_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/reconstruction-kernel-integrable--2e91755338a06ff7f651bef3.md) | 105 | `result-track:2e91755338a06ff7f651bef342dfa8b925f1590e5e99b0311ee4000281e8b4ba` |
| 12 | `theorem` | [reconstruction_primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/reconstruction-primitive-derivative--b7bfb55a44d80c9c8197cc2d.md) | 113 | `result-track:b7bfb55a44d80c9c8197cc2d10de705649b6c851725518cbdbb718acba84f491` |
| 13 | `theorem` | [history_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/history-reconstruction--2dabc4821df7da71804bd949.md) | 125 | `result-track:2dabc4821df7da71804bd94964b1741454bbef0dc5b14b4efa997aa0656f0598` |
| 14 | `theorem` | [pressure_reconstruction_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/pressure-reconstruction-kernel-integrable--8e0ca2640743825f33712af5.md) | 136 | `result-track:8e0ca2640743825f33712af518be3c01290856db2d3871ec94dd5ccdbe95afc6` |
| 15 | `theorem` | [history_reconstruction_from_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/history-reconstruction-from-pressure--08f9942e69253fce9b80fc9f.md) | 148 | `result-track:08f9942e69253fce9b80fc9f948ce0fcf2aaab15d88e1a03342de0a55e69eba2` |
| 16 | `theorem` | [equilibrium_history_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/equilibrium-history-reconstruction--e2c30890dc0b1ddd6e8b1626.md) | 163 | `result-track:e2c30890dc0b1ddd6e8b1626fa5d13380f91b41057f6983d8874954e1e1e2f17` |
| 17 | `theorem` | [retarded_compensation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/retarded-compensation--d0cc84d63996d8c268d13794.md) | 173 | `result-track:d0cc84d63996d8c268d1379472ebc97050a5fe510dc0934fd537e21e1dc2bfa4` |
| 18 | `theorem` | [history_reconstruction_from_retarded_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/history-reconstruction-from-retarded-pressure--da8e67311b741e21ddd5d2f4.md) | 179 | `result-track:da8e67311b741e21ddd5d2f47b482bd1878e2fe88dffc2a6967b20bd30dc1ff9` |
| 19 | `theorem` | [add_affine_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/add-affine-derivative--6f8a66fb4fb19c0b9a6896d5.md) | 191 | `result-track:6f8a66fb4fb19c0b9a6896d53257735d26a4463266c5e8a66ebbce72bf8718eb` |
| 20 | `theorem` | [volumePressure_add_affine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/volumepressure-add-affine--5a2b1a8dbbda494169a1241b.md) | 199 | `result-track:5a2b1a8dbbda494169a1241bcb2527ac700fe7765eb15e620cf2fb9a8ba9485e` |
| 21 | `theorem` | [volumePressure_eq_iff_second_derivative_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/volumepressure-eq-iff-second-derivative-eq--de284208ce0eea2a5883a122.md) | 211 | `result-track:de284208ce0eea2a5883a1229dbef6197b9af78924cc33cd5bed2681f8bcf034` |
| 22 | `theorem` | [same_waveform_iff_affine_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/same-waveform-iff-affine-difference--28891d66c077b3e6aa969b54.md) | 226 | `result-track:28891d66c077b3e6aa969b54b5152e3783af8f7d224e165f7b32547c1328d15a` |
| 23 | `theorem` | [volumePressure_constant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/volumepressure-constant--8dffb3678e6666d8a2e77ad8.md) | 250 | `result-track:8dffb3678e6666d8a2e77ad8e552d0f09433fc17be4db7a72378cb72da83a553` |
| 24 | `theorem` | [zero_waveform_iff_affine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/zero-waveform-iff-affine--bc69a79a480087e706a3d3ec.md) | 256 | `result-track:bc69a79a480087e706a3d3ecfd126638bf2102b58fddc1c01885db43fbeb2e9d` |
| 25 | `theorem` | [history_eq_of_waveform_initial_data](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/history-eq-of-waveform-initial-data--5e330cae6a16fed142fc6745.md) | 265 | `result-track:5e330cae6a16fed142fc674569c358bdc46e5502a1b1d26c4b8861c040ef4ebe` |
| 26 | `theorem` | [same_retarded_waveform_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/same-retarded-waveform-iff--14be7870ac665e8205a52e3b.md) | 279 | `result-track:14be7870ac665e8205a52e3b469a62c2995fb44f09c7f1db8abf6e9160514fb9` |
| 27 | `theorem` | [same_retarded_waveform_iff_affine_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/same-retarded-waveform-iff-affine-difference--494825578510feb6bd69171c.md) | 293 | `result-track:494825578510feb6bd69171c59440b63f6571bd49ccc23bba3a48095afe21dc7` |
| 28 | `theorem` | [history_eq_of_retarded_waveform_initial_data](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/history-eq-of-retarded-waveform-initial-data--30090eba04b991c53327a530.md) | 305 | `result-track:30090eba04b991c53327a5301fe2482d936ac08ccb7c8ad1b7e11765d944b8aa` |
| 29 | `theorem` | [sphereVolumeHistory_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/spherevolumehistory-contdiff--a295246cb0791b75c877070f.md) | 320 | `result-track:a295246cb0791b75c877070f92e1739606c45835c57a8b1c15c5e03d46edc2fd` |
| 30 | `theorem` | [retarded_reconstruction_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/retarded-reconstruction-kernel-integrable--2c4b94f395697831e964ff2e.md) | 326 | `result-track:2c4b94f395697831e964ff2e93f04c08e2f66ce779d6b1a99fc929df29b93b12` |
| 31 | `abbrev` | [PositiveC2History](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/positivec2history--05a1d5a2428a1ab926f3a0a6.md) | 335 | `declaration-track:05a1d5a2428a1ab926f3a0a6976da6307417f31d5436c117e56f5c6c6443e38c` |
| 32 | `def` | [constantHistory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/constanthistory--684caa2b6ad9a65d093f9864.md) | 338 | `declaration-track:684caa2b6ad9a65d093f9864142b4689046c9d71050d9d3f08215ec84853f0c3` |
| 33 | `theorem` | [constantHistory_retarded_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/constanthistory-retarded-pressure--6792c7887b2883b7f58e71de.md) | 342 | `result-track:6792c7887b2883b7f58e71de03d94aeff8ac2e50ace2a4702311a36a6428b462` |
| 34 | `def` | [waveformHistoryObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/waveformhistoryobstruction--9ee3656016e17ae5b72ec936.md) | 350 | `declaration-track:9ee3656016e17ae5b72ec936ff37a9d3f8bd207eb3ce7404ce5a1079e403684c` |
| 35 | `def` | [waveformInitialVolumeObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/waveforminitialvolumeobstruction--01f9249cfbd894c9988c1519.md) | 364 | `declaration-track:01f9249cfbd894c9988c1519ac81af2c97883dcd732f5c57c31f4b12f5359f28` |
| 36 | `theorem` | [no_waveform_history_decoder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/no-waveform-history-decoder--c1f6f196368079bdae963119.md) | 375 | `result-track:c1f6f196368079bdae963119dbde348b5e5a1f1c8abf0663eb71391f3c554d2c` |
| 37 | `theorem` | [no_waveform_initial_volume_decoder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/no-waveform-initial-volume-decoder--ebdab98a85e9c33379a70b87.md) | 381 | `result-track:ebdab98a85e9c33379a70b870e5941d14b3ae75bdb8727f1ed0ee3cbe61828fe` |
| 38 | `theorem` | [waveform_initial_data_descends](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variantb47153cd97255304ae0df0cbd6fa0cce9d3648f34d3b302936a8be139e6e8a5c.lean/declarations/waveform-initial-data-descends--6fb4e72f3954947b9c61ba69.md) | 389 | `result-track:6fb4e72f3954947b9c61ba69285da69a2f6a694ede02100688ef45be0c16c75b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
