# GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**28 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54eb6c8e72cf7de387ab346af6815393151e057f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [chosenWidth](declarations/chosenwidth--e5505c7bc1304e0271b82cbc.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [binWidth](declarations/binwidth--cc309cb78ab517ad281e334f.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [binOrigin](declarations/binorigin--63d69ce3196b81e5383e9455.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [binHorizon](declarations/binhorizon--2c2725229d31043691c744de.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [primeBin](declarations/primebin--27fe0dac9f92303a7a460bf8.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [binWidth_positive](declarations/binwidth-positive--d1a5dd7d3edcf1fbe9dd86e9.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [chosenWidth_valid](declarations/chosenwidth-valid--62e87d7924f73bfdebcfb46a.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [interval_has_bin](declarations/interval-has-bin--b3d0bef57e47005f70164600.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [wideBand_log_bounds](declarations/wideband-log-bounds--bfa962e5af89cc5f6537e305.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [wideBand_bin_cover](declarations/wideband-bin-cover--3b9092cc341c6266afdca9c0.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [heavy_bin_exists](declarations/heavy-bin-exists--39aeca35ad0803c185f1e9fa.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [binHorizon_bounds](declarations/binhorizon-bounds--99fbbc774bb900fbc1fbd6c3.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [shellEnergy](declarations/shellenergy--c29380df0a54cda8a106fcf9.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [atomGain](declarations/atomgain--6609954caeb6bf32fe3acb56.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [terminalWidth](declarations/terminalwidth--2fea8d457d50d26c92e2f58e.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [growthConstant](declarations/growthconstant--0580d683f6fbbe12cef6896d.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [atomGain_positive](declarations/atomgain-positive--c653d97089994869318f03fe.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [growthConstant_positive](declarations/growthconstant-positive--ab92e6c4b85879eece6b4bf3.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [primeBin_upper](declarations/primebin-upper--e45f8244dfa991e7edbadbeb.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [primeBin_subset_shell](declarations/primebin-subset-shell--b7d58c979484a0af9a7b4630.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [atom_tail_lower](declarations/atom-tail-lower--5e3a72c0ecca29c2c400a920.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [binHorizon_large](declarations/binhorizon-large--400f8f83c2023ac79a3bf050.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [heavy_bin_count_at_horizon](declarations/heavy-bin-count-at-horizon--ad0ffc6390bceb44e512b56d.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [shell_mass_lower](declarations/shell-mass-lower--aa5d66017cc2ef12da47601a.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [shellEnergy_from_amplitude](declarations/shellenergy-from-amplitude--beca8a393d6fdfc99be874af.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [actual_horizon_shell_energy_growth](declarations/actual-horizon-shell-energy-growth--ec2abd2f5f61a7039fd0f958.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exp_binOrigin](declarations/exp-binorigin--64c26743c9e1b72e4ac845c1.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [horizon_shell_energy_not_polynomial](declarations/horizon-shell-energy-not-polynomial--adbe440e1ab1f5da7b1e7855.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
