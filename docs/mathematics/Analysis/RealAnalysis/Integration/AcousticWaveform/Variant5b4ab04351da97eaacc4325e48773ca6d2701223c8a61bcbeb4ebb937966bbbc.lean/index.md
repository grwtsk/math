# GRWTSK.Analysis.RealAnalysis.Integration.AcousticWaveform.Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ac56c6c5d7715ecf7800ae8eb0b3b524d4e791c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/AcousticWaveform/Variant5b4ab04351da97eaacc4325e48773ca6d2701223c8a61bcbeb4ebb937966bbbc.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [volumePressure](declarations/volumepressure--17c44f7c64bee96e13b0e303.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [retardedPressure](declarations/retardedpressure--ef7d79e695d0d426e4cfdcb7.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sphereVolumeHistory](declarations/spherevolumehistory--ef3e9c0f463bfb646cc0c338.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [retarded_time_lt](declarations/retarded-time-lt--3a29d44aa505dffa783f192f.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [pressure_coefficient_ne_zero](declarations/pressure-coefficient-ne-zero--af8fe577dac3f0a7d5bc3139.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [second_derivative_continuous](declarations/second-derivative-continuous--30bc5253463d66539b7d4339.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sphereVolumeHistory_derivative](declarations/spherevolumehistory-derivative--474ecf2b6d5c2a02b2724bc5.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sphereVolumeHistory_second_derivative](declarations/spherevolumehistory-second-derivative--4a4259bad183d1f153e0ed1d.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sphere_volume_pressure](declarations/sphere-volume-pressure--8beb3f1705fedb874c1da37b.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [sphere_retarded_pressure](declarations/sphere-retarded-pressure--21445ae92d0bf38f8ce1018d.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [reconstruction_kernel_integrable](declarations/reconstruction-kernel-integrable--f03dff82077317357fb6f723.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reconstruction_primitive_derivative](declarations/reconstruction-primitive-derivative--602718155b208dd0328123ce.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [history_reconstruction](declarations/history-reconstruction--bf5df5433a6cdd0ff11b9634.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [pressure_reconstruction_kernel_integrable](declarations/pressure-reconstruction-kernel-integrable--da24d66a02a90e5aa68aec08.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [history_reconstruction_from_pressure](declarations/history-reconstruction-from-pressure--bf45361461bed0d280207ea6.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [equilibrium_history_reconstruction](declarations/equilibrium-history-reconstruction--ca9e58a71d1ed81f12c5031d.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [retarded_compensation](declarations/retarded-compensation--f0de68dd5d63d9e8bcb41dc6.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [history_reconstruction_from_retarded_pressure](declarations/history-reconstruction-from-retarded-pressure--b4def617f46e14bc90d92b24.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [add_affine_derivative](declarations/add-affine-derivative--2d23f6659f494cc674410fd9.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [volumePressure_add_affine](declarations/volumepressure-add-affine--fa74e2fc4a25eb8b12442e0e.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [volumePressure_eq_iff_second_derivative_eq](declarations/volumepressure-eq-iff-second-derivative-eq--c561dd9e934ca3b7726a4d07.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [same_waveform_iff_affine_difference](declarations/same-waveform-iff-affine-difference--ad8c6df01df1dc3f5a7bd32c.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [volumePressure_constant](declarations/volumepressure-constant--0b678e4dd00f0f02a920cdeb.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [zero_waveform_iff_affine](declarations/zero-waveform-iff-affine--51e65c340abadf9e6cf9493b.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [history_eq_of_waveform_initial_data](declarations/history-eq-of-waveform-initial-data--a222e39b4a0cf78f5b915655.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [same_retarded_waveform_iff](declarations/same-retarded-waveform-iff--0b616ec4c663ff4ac8421f65.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [same_retarded_waveform_iff_affine_difference](declarations/same-retarded-waveform-iff-affine-difference--90dff09de6eba2b12973b175.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [history_eq_of_retarded_waveform_initial_data](declarations/history-eq-of-retarded-waveform-initial-data--24d00a01fb0ee0d86233d5fc.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [sphereVolumeHistory_contDiff](declarations/spherevolumehistory-contdiff--007e6ac43601ea9c55bd71b4.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [retarded_reconstruction_kernel_integrable](declarations/retarded-reconstruction-kernel-integrable--6987815d6234453e595c036e.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `abbrev` | [PositiveC2History](declarations/positivec2history--e995096e52c3b221c3e1aede.md) | 343 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [constantHistory](declarations/constanthistory--4b4ceba322680ae58321ec3b.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [constantHistory_retarded_pressure](declarations/constanthistory-retarded-pressure--8c972cff1ddf4b5c8f256456.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [waveformHistoryObstruction](declarations/waveformhistoryobstruction--e1d418b99cf4285a30127a31.md) | 358 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [waveformInitialVolumeObstruction](declarations/waveforminitialvolumeobstruction--abba4527c8389f9680027930.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [no_waveform_history_decoder](declarations/no-waveform-history-decoder--96ed6d6c510db26e88e84632.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [no_waveform_initial_volume_decoder](declarations/no-waveform-initial-volume-decoder--14f6a1db90536863345cc17a.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [waveform_initial_data_descends](declarations/waveform-initial-data-descends--c8495d836e192f37c114e008.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
