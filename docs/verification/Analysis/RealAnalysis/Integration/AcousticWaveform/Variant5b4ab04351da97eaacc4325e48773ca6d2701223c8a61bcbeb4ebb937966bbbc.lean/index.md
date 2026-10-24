# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.AcousticWaveform.Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Descent` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Operations` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [volumePressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/volumepressure--17c44f7c64bee96e13b0e303.md) | 36 | `declaration-track:17c44f7c64bee96e13b0e3031a3ab4d2f37549a74966994a26c4f51159b5f1ad` |
| 2 | `def` | [retardedPressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/retardedpressure--ef7d79e695d0d426e4cfdcb7.md) | 40 | `declaration-track:ef7d79e695d0d426e4cfdcb7489cbe120f65dc748ae39ecd329b1039e584d2e4` |
| 3 | `def` | [sphereVolumeHistory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/spherevolumehistory--ef3e9c0f463bfb646cc0c338.md) | 45 | `declaration-track:ef3e9c0f463bfb646cc0c3385b2312a7c6fcdb7753cbd7f8410d82eedf98c68e` |
| 4 | `theorem` | [retarded_time_lt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/retarded-time-lt--3a29d44aa505dffa783f192f.md) | 49 | `result-track:3a29d44aa505dffa783f192fd20e862ddc8b7e1634bfa95ed3c9c631a92a09c4` |
| 5 | `theorem` | [pressure_coefficient_ne_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/pressure-coefficient-ne-zero--af8fe577dac3f0a7d5bc3139.md) | 55 | `result-track:af8fe577dac3f0a7d5bc313987b21c13968e8229570c545c61220da64c4d54f0` |
| 6 | `theorem` | [second_derivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/second-derivative-continuous--30bc5253463d66539b7d4339.md) | 61 | `result-track:30bc5253463d66539b7d4339431ca4330536fbd813af290fe30e0ecc515c1c8e` |
| 7 | `theorem` | [sphereVolumeHistory_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/spherevolumehistory-derivative--474ecf2b6d5c2a02b2724bc5.md) | 66 | `result-track:474ecf2b6d5c2a02b2724bc54fb2ef810b5544061355d244e14b58efe5c6dad7` |
| 8 | `theorem` | [sphereVolumeHistory_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/spherevolumehistory-second-derivative--4a4259bad183d1f153e0ed1d.md) | 75 | `result-track:4a4259bad183d1f153e0ed1de8f87779b63c3b59ad4c7abae5168d95e031564e` |
| 9 | `theorem` | [sphere_volume_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/sphere-volume-pressure--8beb3f1705fedb874c1da37b.md) | 92 | `result-track:8beb3f1705fedb874c1da37bdfed838eee291a0bc17f3b9ac32e2305ec06720d` |
| 10 | `theorem` | [sphere_retarded_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/sphere-retarded-pressure--21445ae92d0bf38f8ce1018d.md) | 103 | `result-track:21445ae92d0bf38f8ce1018de2f33990265aadd5fdc602dc8e01aec38c95ec68` |
| 11 | `theorem` | [reconstruction_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/reconstruction-kernel-integrable--f03dff82077317357fb6f723.md) | 113 | `result-track:f03dff82077317357fb6f72398f1011c3a6ed2717e2bb0465bc7ec412a9cd22c` |
| 12 | `theorem` | [reconstruction_primitive_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/reconstruction-primitive-derivative--602718155b208dd0328123ce.md) | 121 | `result-track:602718155b208dd0328123cebd269042e34957bb0377dba2044aa8a1e837aff9` |
| 13 | `theorem` | [history_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/history-reconstruction--bf5df5433a6cdd0ff11b9634.md) | 133 | `result-track:bf5df5433a6cdd0ff11b96341a28398eae5443b37a9feda0d9098fb7903bebd2` |
| 14 | `theorem` | [pressure_reconstruction_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/pressure-reconstruction-kernel-integrable--da24d66a02a90e5aa68aec08.md) | 144 | `result-track:da24d66a02a90e5aa68aec085640bb9dcf45415cbcf15b176d9d7485a3a4139d` |
| 15 | `theorem` | [history_reconstruction_from_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/history-reconstruction-from-pressure--bf45361461bed0d280207ea6.md) | 156 | `result-track:bf45361461bed0d280207ea6cbf99d99eb5680ecd6a539128d8d99e36e6b785d` |
| 16 | `theorem` | [equilibrium_history_reconstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/equilibrium-history-reconstruction--ca9e58a71d1ed81f12c5031d.md) | 171 | `result-track:ca9e58a71d1ed81f12c5031dc802da860b0020fc98ded4eac0826ea26dc568ab` |
| 17 | `theorem` | [retarded_compensation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/retarded-compensation--f0de68dd5d63d9e8bcb41dc6.md) | 181 | `result-track:f0de68dd5d63d9e8bcb41dc6ae5d45dea1b3d9e40e41549d0f749aef8747b4eb` |
| 18 | `theorem` | [history_reconstruction_from_retarded_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/history-reconstruction-from-retarded-pressure--b4def617f46e14bc90d92b24.md) | 187 | `result-track:b4def617f46e14bc90d92b24a89714c311b34455ef92ca54e12158593bd7ea40` |
| 19 | `theorem` | [add_affine_derivative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/add-affine-derivative--2d23f6659f494cc674410fd9.md) | 199 | `result-track:2d23f6659f494cc674410fd9bcb494327dfa19fce0dcff7d92b9f18af4aa4424` |
| 20 | `theorem` | [volumePressure_add_affine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/volumepressure-add-affine--fa74e2fc4a25eb8b12442e0e.md) | 207 | `result-track:fa74e2fc4a25eb8b12442e0ea8826122fe37fdf7626699d8e101067b8856c763` |
| 21 | `theorem` | [volumePressure_eq_iff_second_derivative_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/volumepressure-eq-iff-second-derivative-eq--c561dd9e934ca3b7726a4d07.md) | 219 | `result-track:c561dd9e934ca3b7726a4d07e1c92b5eb7806b42cf65d7bb6140c02246e397c7` |
| 22 | `theorem` | [same_waveform_iff_affine_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/same-waveform-iff-affine-difference--ad8c6df01df1dc3f5a7bd32c.md) | 234 | `result-track:ad8c6df01df1dc3f5a7bd32cb534a5763b70f1df37539f7dd6287147c654145a` |
| 23 | `theorem` | [volumePressure_constant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/volumepressure-constant--0b678e4dd00f0f02a920cdeb.md) | 258 | `result-track:0b678e4dd00f0f02a920cdebc2a13c51bec8af5630ee189738551744946e36b4` |
| 24 | `theorem` | [zero_waveform_iff_affine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/zero-waveform-iff-affine--51e65c340abadf9e6cf9493b.md) | 264 | `result-track:51e65c340abadf9e6cf9493b900e3f69912ec6e3468712d6890e610aafa64660` |
| 25 | `theorem` | [history_eq_of_waveform_initial_data](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/history-eq-of-waveform-initial-data--a222e39b4a0cf78f5b915655.md) | 273 | `result-track:a222e39b4a0cf78f5b91565548a2704bdeda76733d789cfba4cf7c10198c6942` |
| 26 | `theorem` | [same_retarded_waveform_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/same-retarded-waveform-iff--0b616ec4c663ff4ac8421f65.md) | 287 | `result-track:0b616ec4c663ff4ac8421f65069eb7b0142e9d33d6c442fbd2957f71b4a77577` |
| 27 | `theorem` | [same_retarded_waveform_iff_affine_difference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/same-retarded-waveform-iff-affine-difference--90dff09de6eba2b12973b175.md) | 301 | `result-track:90dff09de6eba2b12973b175ed1dbbc22ce01bb7d063ef44d9dcbb7e31517684` |
| 28 | `theorem` | [history_eq_of_retarded_waveform_initial_data](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/history-eq-of-retarded-waveform-initial-data--24d00a01fb0ee0d86233d5fc.md) | 313 | `result-track:24d00a01fb0ee0d86233d5fc3d9f0751f49e66696e864ce21d009c31b50003d8` |
| 29 | `theorem` | [sphereVolumeHistory_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/spherevolumehistory-contdiff--007e6ac43601ea9c55bd71b4.md) | 328 | `result-track:007e6ac43601ea9c55bd71b4346f0e3732ce29dab540d3367804cc219064533f` |
| 30 | `theorem` | [retarded_reconstruction_kernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/retarded-reconstruction-kernel-integrable--6987815d6234453e595c036e.md) | 334 | `result-track:6987815d6234453e595c036e8fcd1ce3d3753a2b562d929ac006fb9f235e87f8` |
| 31 | `abbrev` | [PositiveC2History](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/positivec2history--e995096e52c3b221c3e1aede.md) | 343 | `declaration-track:e995096e52c3b221c3e1aede2b98299e299f2c9cfd50b9ece57113c656c3cbbe` |
| 32 | `def` | [constantHistory](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/constanthistory--4b4ceba322680ae58321ec3b.md) | 346 | `declaration-track:4b4ceba322680ae58321ec3bbb02ddf52d371e5a12bc497f933bf5a33f8bc793` |
| 33 | `theorem` | [constantHistory_retarded_pressure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/constanthistory-retarded-pressure--8c972cff1ddf4b5c8f256456.md) | 350 | `result-track:8c972cff1ddf4b5c8f25645699f6c08dde93dd8a2ca568b8721d36f6cc4bbbbe` |
| 34 | `def` | [waveformHistoryObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/waveformhistoryobstruction--e1d418b99cf4285a30127a31.md) | 358 | `declaration-track:e1d418b99cf4285a30127a312c3cdb491c17b9f701ce27d856d86607c0e7f886` |
| 35 | `def` | [waveformInitialVolumeObstruction](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/waveforminitialvolumeobstruction--abba4527c8389f9680027930.md) | 372 | `declaration-track:abba4527c8389f9680027930efb9bfafca4d8708e12344e5e3effa9f9db0de74` |
| 36 | `theorem` | [no_waveform_history_decoder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/no-waveform-history-decoder--96ed6d6c510db26e88e84632.md) | 383 | `result-track:96ed6d6c510db26e88e846324a06de1e97e664b6778e4306118afa40888c0e1d` |
| 37 | `theorem` | [no_waveform_initial_volume_decoder](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/no-waveform-initial-volume-decoder--14f6a1db90536863345cc17a.md) | 389 | `result-track:14f6a1db90536863345cc17a2cfbac84ca0efed185dd2e4bd6c5dabc48ba9844` |
| 38 | `theorem` | [waveform_initial_data_descends](../../../../../../mathematics/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/declarations/waveform-initial-data-descends--c8495d836e192f37c114e008.md) | 397 | `result-track:c8495d836e192f37c114e008cff12ab48758dc71c3526596245b533230257282` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
