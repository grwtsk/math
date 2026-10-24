# Verification target: GRWTSK.NumberTheory.PrimeCounting.PrimeShellEnergyGrowth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54eb6c8e72cf7de387ab346af6815393151e057f",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54eb6c8e72cf7de387ab346af6815393151e057f`.

Source path: `GRWTSK/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/PrimeCounting/PrimeShellEnergyGrowth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.PrimeCounting.PrimeIntervalResponseEnergyGrowth`](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeIntervalResponseEnergyGrowth.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.PrimeShellDecomposition`](../../../../../../mathematics/NumberTheory/Moebius/PrimeShellDecomposition.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chosenWidth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/chosenwidth--e5505c7bc1304e0271b82cbc.md) | 26 | `declaration-track:e5505c7bc1304e0271b82cbc9240aa007907c54486debe1661d5cf5da7dff72d` |
| 2 | `def` | [binWidth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/binwidth--cc309cb78ab517ad281e334f.md) | 27 | `declaration-track:cc309cb78ab517ad281e334fe764a24595d262e5e9d6005c9e3d4eefbdef4ef7` |
| 3 | `def` | [binOrigin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/binorigin--63d69ce3196b81e5383e9455.md) | 28 | `declaration-track:63d69ce3196b81e5383e94555f85186df86f9199c064c77adba47d467698390c` |
| 4 | `def` | [binHorizon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/binhorizon--2c2725229d31043691c744de.md) | 29 | `declaration-track:2c2725229d31043691c744dea40f1703af0466f72dc141d116f3a288ab08f2df` |
| 5 | `def` | [primeBin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/primebin--27fe0dac9f92303a7a460bf8.md) | 31 | `declaration-track:27fe0dac9f92303a7a460bf8bdf13ec83d5f4c4fe19cf0142ed65eaeeac475e8` |
| 6 | `theorem` | [binWidth_positive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/binwidth-positive--d1a5dd7d3edcf1fbe9dd86e9.md) | 36 | `result-track:d1a5dd7d3edcf1fbe9dd86e9e4744df93d2757ec91469e638ad811c123118e99` |
| 7 | `theorem` | [chosenWidth_valid](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/chosenwidth-valid--62e87d7924f73bfdebcfb46a.md) | 39 | `result-track:62e87d7924f73bfdebcfb46a0d5655bbb974cc04fe42392f44d2c7dfa89b384e` |
| 8 | `theorem` | [interval_has_bin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/interval-has-bin--b3d0bef57e47005f70164600.md) | 44 | `result-track:b3d0bef57e47005f701646001e76fe23bda5a987e3df449e32e35a9113a771c1` |
| 9 | `theorem` | [wideBand_log_bounds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/wideband-log-bounds--bfa962e5af89cc5f6537e305.md) | 55 | `result-track:bfa962e5af89cc5f6537e305a5f39cc36d110bca64f855397fa89dbf0404e930` |
| 10 | `theorem` | [wideBand_bin_cover](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/wideband-bin-cover--3b9092cc341c6266afdca9c0.md) | 71 | `result-track:3b9092cc341c6266afdca9c0b59efd1fd6f7c67685872537b75a6af73904ca06` |
| 11 | `theorem` | [heavy_bin_exists](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/heavy-bin-exists--39aeca35ad0803c185f1e9fa.md) | 79 | `result-track:39aeca35ad0803c185f1e9fa3a5292aa060753a336d91809584c70d372d9d82a` |
| 12 | `theorem` | [binHorizon_bounds](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/binhorizon-bounds--99fbbc774bb900fbc1fbd6c3.md) | 97 | `result-track:99fbbc774bb900fbc1fbd6c3aa8e2ee380cd4d368df28577f8aad9a5c8cce3c7` |
| 13 | `def` | [shellEnergy](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/shellenergy--c29380df0a54cda8a106fcf9.md) | 107 | `declaration-track:c29380df0a54cda8a106fcf9beb907e101ef215641219a4b1edd364044ba97bd` |
| 14 | `def` | [atomGain](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/atomgain--6609954caeb6bf32fe3acb56.md) | 110 | `declaration-track:6609954caeb6bf32fe3acb56536090cab831cfe1c1d82d4678304748eb85b4e4` |
| 15 | `def` | [terminalWidth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/terminalwidth--2fea8d457d50d26c92e2f58e.md) | 111 | `declaration-track:2fea8d457d50d26c92e2f58e8f89040663620a197ee56d0cd7d69d9263195556` |
| 16 | `def` | [growthConstant](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/growthconstant--0580d683f6fbbe12cef6896d.md) | 112 | `declaration-track:0580d683f6fbbe12cef6896d6677533b9cbdea38f81e2cca63836a25d713d6dc` |
| 17 | `theorem` | [atomGain_positive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/atomgain-positive--c653d97089994869318f03fe.md) | 114 | `result-track:c653d97089994869318f03fe7852e2da42e4364f5a6cd34dac2b6a6352aa269b` |
| 18 | `theorem` | [growthConstant_positive](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/growthconstant-positive--ab92e6c4b85879eece6b4bf3.md) | 120 | `result-track:ab92e6c4b85879eece6b4bf31489c33df3a8e342273169bd1bfb1337e14fd655` |
| 19 | `theorem` | [primeBin_upper](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/primebin-upper--e45f8244dfa991e7edbadbeb.md) | 125 | `result-track:e45f8244dfa991e7edbadbebccad16219b3e76b889b7067e0ba33e8fa3cd3956` |
| 20 | `theorem` | [primeBin_subset_shell](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/primebin-subset-shell--b7d58c979484a0af9a7b4630.md) | 134 | `result-track:b7d58c979484a0af9a7b4630724e6a0f81592f00411a7df954b5628f36c2e7b7` |
| 21 | `theorem` | [atom_tail_lower](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/atom-tail-lower--5e3a72c0ecca29c2c400a920.md) | 149 | `result-track:5e3a72c0ecca29c2c400a92077eadbd8b6021199034baf74bbd45037ea71bdcd` |
| 22 | `theorem` | [binHorizon_large](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/binhorizon-large--400f8f83c2023ac79a3bf050.md) | 178 | `result-track:400f8f83c2023ac79a3bf050108e1f7a3e14d5737f379f398a2ddea54031f739` |
| 23 | `theorem` | [heavy_bin_count_at_horizon](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/heavy-bin-count-at-horizon--ad0ffc6390bceb44e512b56d.md) | 188 | `result-track:ad0ffc6390bceb44e512b56de4d3a9226c498e9c9dfb9199d52eb0ee0a3b2c39` |
| 24 | `theorem` | [shell_mass_lower](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/shell-mass-lower--aa5d66017cc2ef12da47601a.md) | 205 | `result-track:aa5d66017cc2ef12da47601a84b5a2d40df55950cd13b33062e022891168506c` |
| 25 | `theorem` | [shellEnergy_from_amplitude](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/shellenergy-from-amplitude--beca8a393d6fdfc99be874af.md) | 239 | `result-track:beca8a393d6fdfc99be874afdc86ed1d7ad846c9a5bdc36654020ab31621f0ec` |
| 26 | `theorem` | [actual_horizon_shell_energy_growth](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/actual-horizon-shell-energy-growth--ec2abd2f5f61a7039fd0f958.md) | 269 | `result-track:ec2abd2f5f61a7039fd0f95871e275832492d0e09a9aa85ee6f8408a1d06a4fa` |
| 27 | `theorem` | [exp_binOrigin](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/exp-binorigin--64c26743c9e1b72e4ac845c1.md) | 303 | `result-track:64c26743c9e1b72e4ac845c11eaadae1af0e6e2479452c148a317c5c1360777e` |
| 28 | `theorem` | [horizon_shell_energy_not_polynomial](../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/PrimeDistribution/PrimeCounting/PrimeShellEnergyGrowth.lean/declarations/horizon-shell-energy-not-polynomial--adbe440e1ab1f5da7b1e7855.md) | 312 | `result-track:adbe440e1ab1f5da7b1e7855b969e9e58e22b6eba3b303cc986a1c2c53ff0328` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
