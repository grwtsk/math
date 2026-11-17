# Erdős 289: related work and source-actual dependency map

Local documentation attribution: **grwtsk contributors**. The proof itself is an **exact licensed upstream adaptation**, not local discovery. The canonical [Lean module](ErdosProblem289.lean) retains the original **Copyright 2025 The Formal Conjectures Authors**, Apache License 2.0, and all 29 theorems without modification.

## Mathematical target and distinct prior art

The final `Erdos289.erdos_289` states that for **all sufficiently large** `k` there are `k` finite intervals of natural numbers, each of length at least two, **pairwise non-overlapping and non-adjacent**, whose reciprocals sum to exactly **1**. The separation clause is essential.

- **Erdős and Graham (1980), _Old and New Problems and Results in Combinatorial Number Theory_, p. 34:** source of the question, stated without the modern separation clause; not a source for the auxiliary LEAP theorems.
- **Hahn, _American Mathematical Monthly_ 85 (1978), p. 47; Montgomery's solution, _American Mathematical Monthly_ 86 (1979), p. 224:** related separated-interval examples with sum **2**, not the target sum 1.
- **Kovač, [Erdős #289 discussion](https://www.erdosproblems.com/forum/thread/289), September–December 2025:** affirmative elementary argument for overlapping/repeating intervals; does **not** establish the separated statement.
- **[Erdős Problems #289](https://www.erdosproblems.com/289) and its [2026 proof-claim discussion](https://www.erdosproblems.com/forum/thread/289/proof-claims):** separate claims by Johan Land, Yuren Tang, and David Budden must not be conflated with independent validation of this script. Indexed copies disagree on current page status; the exact problem statement is more stable than the label.
- **Kung et al., [LEAP (2026), arXiv:2606.03303](https://arxiv.org/abs/2606.03303) and [released project](https://github.com/google-deepmind/superhuman/tree/main/leap):** upstream formal-proof attribution. The [Formal Conjectures #289 declaration](https://github.com/google-deepmind/formal-conjectures/blob/main/FormalConjectures/ErdosProblems/289.lean) links the full proof but itself uses a placeholder `sorry`.
- **[Original LEAP proof](https://github.com/lfsong-google/formal-conjectures/blob/ff33e501bb78a90ae4703e22e052f8bb38e10146/FormalConjectures/ErdosProblems/289.lean)** pinned at commit `ff33e501bb78a90ae4703e22e052f8bb38e10146`, Git blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`. The uploaded `answer (3).lean` is exactly the upstream file **minus** its 580-byte license header; restoring the header yields that exact upstream Git blob. We preserve it without replacing it with a restatement or wrapper.

## Existing proof structure and actual consumers

Each theorem has an [individual source-local provenance record](ErdosProblem289.provenance/) recording its exact type and direct source consumer. The following decomposition is the ordering **already present in the Lean proof**, not a new analytic proof.

| Stage | Actual declarations | Role |
|---|---|---|
| Packet identity | `packet_switch_interval_extension` | Exact anchor and four-/five-interval change of count |
| Window sieving | `smooth_sieve_* `, `smooth_pruned_packet_pool_existence` | Exceptional sets and separated candidate packet pool |
| Prime-power residues | `lcm_jump_prime_power_structure` through `prime_power_digit_reservoir_existence` | LCM jumps, prime cofactors, inverse-residue and digit reservoirs |
| Simultaneous thinning | `bounded_degree_simultaneous_independent_thinning` through `coherent_digit_reserve_existence` | Coherent non-colliding interval selection |
| Lacunary rigidity | `universal_lacunary_gadget_sequence_existence` through `lacunary_rigidity_and_combined_reserve_merge` | Exact integral rigidity of auxiliary interval gadgets |
| Analytic extraction | `complete_period_gaussian_sine_kernel_bound` through `fejer_limit_density_and_low_freq_positivity` | Sine-energy controls, Fejér positivity and density |
| Arithmetic compiler | `coherent_reserve_fourier_profile_existence`, `finite_fourier_subset_sum_extraction`, `coherent_reserve_and_subset_sum_compiler` | Finite exact subset-sum construction |
| Final return | `scale_window_packet_reserve_existence`, `erdos_289` | Exact reciprocal sum and every sufficiently large block count |

The four exact anchor intervals `[2,3]`, `[14,15]`, `[84,85]`, `[492,493]` sum to `1188/1189`. The remaining `1/1189` is obtained by the separate packet/reserve construction. Switching the 2t/3t/6t packet preserves weight using `1/(2t)=1/(3t)+1/(6t)`, while changing the number of intervals. The window-to-eventual-count step is **needed**, not implied by isolated finite examples.

### Direct theorem-consumer index (lexical, not an axiom audit)

| Theorem | Direct downstream source reference(s) |
|---|---|
| [`packet_switch_interval_extension`](ErdosProblem289.provenance/packet_switch_interval_extension.md) | `erdos_289` |
| [`smooth_sieve_pow_bad_bound`](ErdosProblem289.provenance/smooth_sieve_pow_bad_bound.md) | `smooth_pruned_packet_pool_existence` |
| [`smooth_sieve_prime_bad_bound`](ErdosProblem289.provenance/smooth_sieve_prime_bad_bound.md) | `smooth_pruned_packet_pool_existence` |
| [`smooth_pruned_packet_pool_existence`](ErdosProblem289.provenance/smooth_pruned_packet_pool_existence.md) | `scale_window_packet_reserve_existence` |
| [`lcm_jump_prime_power_structure`](ErdosProblem289.provenance/lcm_jump_prime_power_structure.md) | `prime_power_digit_reservoir_existence` |
| [`dyadic_prime_supply_bound`](ErdosProblem289.provenance/dyadic_prime_supply_bound.md) | `single_prime_power_cofactor_reservoir_construction` |
| [`prime_cofactor_selection_and_bad_prime_bound`](ErdosProblem289.provenance/prime_cofactor_selection_and_bad_prime_bound.md) | `single_prime_power_cofactor_reservoir_construction` |
| [`single_prime_power_cofactor_reservoir_construction`](ErdosProblem289.provenance/single_prime_power_cofactor_reservoir_construction.md) | `prime_power_digit_reservoir_existence` |
| [`inverse_residue_phase_distribution_bound`](ErdosProblem289.provenance/inverse_residue_phase_distribution_bound.md) | `prime_power_digit_reservoir_existence` |
| [`prime_power_digit_reservoir_existence`](ErdosProblem289.provenance/prime_power_digit_reservoir_existence.md) | `coherent_digit_reserve_existence` |
| [`bounded_degree_simultaneous_independent_thinning`](ErdosProblem289.provenance/bounded_degree_simultaneous_independent_thinning.md) | `finite_horizon_simultaneous_thinning_existence` |
| [`simultaneous_good_subset_thinning_existence`](ErdosProblem289.provenance/simultaneous_good_subset_thinning_existence.md) | `finite_horizon_simultaneous_thinning_existence` |
| [`finite_horizon_simultaneous_thinning_existence`](ErdosProblem289.provenance/finite_horizon_simultaneous_thinning_existence.md) | `coherent_digit_reserve_existence` |
| [`coherent_slice_enumeration_and_reserve_compilation`](ErdosProblem289.provenance/coherent_slice_enumeration_and_reserve_compilation.md) | `coherent_digit_reserve_existence` |
| [`coherent_digit_reserve_existence`](ErdosProblem289.provenance/coherent_digit_reserve_existence.md) | `nested_reserve_with_sine_energy_existence` |
| [`universal_lacunary_gadget_sequence_existence`](ErdosProblem289.provenance/universal_lacunary_gadget_sequence_existence.md) | `lacunary_rigidity_and_combined_reserve_merge` |
| [`pruned_digit_and_gadget_reserve_merge`](ErdosProblem289.provenance/pruned_digit_and_gadget_reserve_merge.md) | `lacunary_rigidity_and_combined_reserve_merge` |
| [`lacunary_gadget_integer_rigidity_lock`](ErdosProblem289.provenance/lacunary_gadget_integer_rigidity_lock.md) | `lacunary_rigidity_and_combined_reserve_merge` |
| [`lacunary_rigidity_and_combined_reserve_merge`](ErdosProblem289.provenance/lacunary_rigidity_and_combined_reserve_merge.md) | `nested_reserve_with_sine_energy_existence` |
| [`complete_period_gaussian_sine_kernel_bound`](ErdosProblem289.provenance/complete_period_gaussian_sine_kernel_bound.md) | `nested_reserve_with_sine_energy_existence` |
| [`nested_reserve_with_sine_energy_existence`](ErdosProblem289.provenance/nested_reserve_with_sine_energy_existence.md) | `coherent_reserve_fourier_profile_existence` |
| [`fejer_kernel_nonneg_and_exterior_bound`](ErdosProblem289.provenance/fejer_kernel_nonneg_and_exterior_bound.md) | `fejer_limit_density_and_low_freq_positivity` |
| [`rational_grid_fejer_peak_existence`](ErdosProblem289.provenance/rational_grid_fejer_peak_existence.md) | `fejer_limit_density_and_low_freq_positivity` |
| [`fejer_limit_density_and_low_freq_positivity`](ErdosProblem289.provenance/fejer_limit_density_and_low_freq_positivity.md) | `coherent_reserve_fourier_profile_existence` |
| [`coherent_reserve_fourier_profile_existence`](ErdosProblem289.provenance/coherent_reserve_fourier_profile_existence.md) | `coherent_reserve_and_subset_sum_compiler` |
| [`finite_fourier_subset_sum_extraction`](ErdosProblem289.provenance/finite_fourier_subset_sum_extraction.md) | `coherent_reserve_and_subset_sum_compiler` |
| [`coherent_reserve_and_subset_sum_compiler`](ErdosProblem289.provenance/coherent_reserve_and_subset_sum_compiler.md) | `scale_window_packet_reserve_existence` |
| [`scale_window_packet_reserve_existence`](ErdosProblem289.provenance/scale_window_packet_reserve_existence.md) | `erdos_289` |
| [`erdos_289`](ErdosProblem289.provenance/erdos_289.md) | Final exported target |

## What this can and cannot supply

Reusable **methodology**: exact finite packet identities; separated rational-residue selection; independent thinning; coherent nested reserves; Fejér-based finite subset-sum extraction; explicit final return to the original arithmetic statement. Splitting these into smaller modules later requires preserving each consumer and proving statement equivalence at the repository pin.

**Not** established: a source-identical implication to the Riemann Hypothesis or primitive Dirichlet GRH. Any proposed RH/GRH consumer must provide a proved bridge from these combinatorial objects to the **full** pole-inclusive Weil or appropriate character explicit formula, retaining prime powers, phases, conductor, gamma/parity terms, zero multiplicity, tests and all-scale uniformity. This module contains no such bridge.

## Verification and provenance limits

- Input upload: 9,544 lines, SHA-256 `e7df3c352462180032508add95be943f999db0692bf698da114aee155d15f8f4`. Licensed restored upstream file: SHA-256 `2095f9925419b83a9c9fecca756a54679bd62b3ad50dd771e6df08ca5c9d5c15`, Git blob `547472bd9fdcc63acf5637f9db8ff6d2f26ce781`.
- Static inspection finds 29 `theorem` declarations and no `sorry`, `admit` or research `axiom` tokens in this imported file. This does **not** audit mathlib, tactics or transitive axioms.
- Exact rational preflight checked the anchor sum and packet-count switch at `t=6,12,39651,475602`. Finite checks establish neither universal arithmetic bounds nor Lean correctness.
- Original upstream Lean pin: **4.33.1**. Local repository pin: Lean **4.34.1**, mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. No root imports or pins were changed.
- Local native Lean compilation, pinned statement elaboration, independent kernel replay, transitive axiom audit and independent mathematical review: **NOT_RUN** / **UNASSESSED**. Source acceptance and publication are not theorem acceptance.
- Tracking issue: [#1831](https://github.com/grwtsk/math/issues/1831). No Noe execution, cross-chat handoff or automated publication other than the authorized GitHub source update.
