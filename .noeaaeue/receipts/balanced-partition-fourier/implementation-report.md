# Balanced partition sampling and Fourier proof progress

The requested sampling identity is proved for every event, with the actual uniform partition marginal and independent uniform choices verified by finite counting. The Fourier argument now includes equations (3.1)–(3.4), the deterministic spectral bound in Lemma 3.4, its auxiliary Lemmas 3.5–3.7, and the deterministic tail estimate in Lemma 3.2. No new analytical assumption, axiom, proof hole or unchecked computational shortcut supplies any result.

Theorem 1.3 itself remains open at the random-partition concentration estimates of Lemmas 3.1 and 3.3 and their remaining quantitative combination. This report distinguishes those open probability bounds from the deterministic Fourier statements now proved.

## Repository and source identities

Work stayed in the existing checkout on `main`, starting at `8e35dcd5fb4f42640aaaaf68e682a2254736f4da`. The initial status had 8,130 changed entries and is retained in [initial-state.json](initial-state.json). No commit, push, reset, stash, branch switch or worktree was performed. Existing clock, repair, checker and controller sources were preserved. The mathematical taxonomy was unchanged; all new modules use existing directories.

Primary source: Huy Tuan Pham and Lisa Sauermann, [On Graham's rearrangement conjecture, arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026. [source-identity.json](source-identity.json) binds its retained HTML bytes and the actual Lean version. Lean is `4.33.0`, compiler `d8b18978322de05a8f3dba51ef03cf5461676c17`; Mathlib is `db584cd6d46c92f209a44c0f1c829460d327499d`.

## Exact sampling law

`GRWTSK.BalancedPartitionSampling.Partition sizes` includes every part-index function with the prescribed fiber sizes. `Selection P` is its full product of part fibers. The joint sample space retains the partition and every coordinate choice.

The implementation proves feasibility from positive part sizes summing to the population size. It then proves the exact sample cardinality, the constant number of selections per partition, uniformity of the partition marginal, and the rectangular-event product formula for conditional independence. Explicit relabeling equivalences show that every possible output subset of the same size has equally many samples.

The acceptance declarations are:

- `sampleSigmaEquiv`, `selection_card`, `sample_card`, `partition_nonempty`, `sample_nonempty`.
- `partition_probability`, `selection_rectangle_probability`, `jointProbability_eq_partition_average`.
- `output_probability` and `output_event_probability`, proving both singleton and arbitrary-event uniformity.
- `balancedSizes`, `balancedSizes_sum`, `balancedSizes_pos`, `balanced_sample_nonempty`, `balanced_output_probability`.

The balanced sizes are exactly `n/m + if i < n%m then 1 else 0`. Thus `0 < m ≤ |A|` discharges all feasibility conditions; the desired distribution is not an assumed structure field. The quotient/remainder identity fixes the larger parts first and proves that their total size is exactly `n`.

`GRWTSK.ZModBalancedPartition.subtype_fixedSize_eq_subsetSum` transports the subtype law back to the existing finite set `S ⊆ ZMod p`. `subsetSumProbability_eq_balanced_average` proves the actual point-mass identity against the existing `subsetSumProbability`. The bridge checks that the selected modular sum equals the sum of the unordered output set.

## Fourier statements now checked

| Source step | Actual checked declarations and hypotheses |
| --- | --- |
| Character orthogonality and exact product Fourier formula | `ZModIndependentSelection.independent_fourier_formula`; finite full Cartesian product, `NeZero p` |
| Independence | `uniform_product_factorization` and `independent_cylinder_probability`; proved by finite sums and product cardinalities |
| Equation (3.1) | `independent_mass_bound` and its concrete finite-part specialization |
| Source modular distance | `ZModCharacterEnergy.modularDistance`, nearest-integer attainment and comparison, nonnegative and at most `1/2` |
| Facts 2.2, 2.3, 2.5 | Both cosine/character bounds with constants `20` and `2`, squared finite-sum distance inequality |
| Equation (3.2) | Exact character-average norm-square identity, `characterAverage_norm_le_exp_neg_pairEnergy`, `prod_characterAverage_norm_le` |
| Equation (3.3) | `ZModPartitionEnergy.partitionEnergy_lower_bound`, plus `ZModBalancedPartition.balanced_partition_energy_lower_bound` on actual balanced parts |
| Equation (3.4) | `FiniteExponentialLayers.sum_exp_neg_le_layers`, exact logarithmic cutoff, and `source_slice_mass_le_balanced_layers` on the actual uniform partition space |
| Source numerical feasibility | `source_upper_range_gives_quarter`, `source_range_size_bounds`, `source_range_large`; derived from original Section 3 restrictions |
| Lemma 3.2 | `ZModConcentratedFrequencies.tail_center_sum_ge_244`, source `200` weakening, normalized form and actual concentrated-frequency wrapper |
| Lemma 3.4 | `ZModSmallEnergySpectrum.smallEnergyFrequencies_card_le`; prime modulus, `|S| ≥ 10`, real `m,t > 0`, `t ≤ m/2000` |
| Lemma 3.5 | `ZModSmallEnergySets.smallEnergyPoints_card_lower`; actual low-energy frequencies, finite averaging and Markov counting |
| Lemma 3.6 | `smallEnergyPoints_card_le`; Parseval and proved lower character bound, valid for any nonempty frequency set |
| Lemma 3.7 | `sum_mem_smallEnergyPoints` and actual iterated sumset containment |
| Fact 2.4 | `CyclicSumsetGrowth.prime_card_lower_bound_of_ne_univ`, from pinned Mathlib Cauchy–Davenport |
| Universal summation constant | `FiniteExponentialLayers.sum_exp_dyadic_le_two`, finite sum at most `2`, with proved geometric domination |

For the integrated source-range theorem, the hypotheses are precisely `|S| ≥ 2` and `2²⁴ log |S| ≤ m ≤ |S|/(1000 log |S|)`. The proof derives `0 < m`, `4m ≤ |S|`, `m ≥ 2²⁴` and `|S| ≥ 2²⁶`. Feasible balanced partitions and every part's nonemptiness and size bounds are then proved. No new feasibility or analytical hypothesis is appended to the source range.

The actual spectral-cardinality bound is `|B_t| ≤ 1 + 200p√t/(|S|√m)`. Its floor parameter `⌊√(m/(2000t))⌋`, positivity, energy and lower bounds are constructed and checked. The real-parameter formulation and `|S| ≥ 10` are weaker restrictions than the paper's positive-integer, large-population setup.

The source's printed `265` in the interval-square computation is recorded explicitly. The formal proof uses `16² = 256`, giving the stronger universal-center constant `244 = 2000/4 − 256`, hence the stated `200`. No incorrect arithmetic is imported from the text.

## Mathematical inventory and changed modules

[mathematical-inventory.json](mathematical-inventory.json) gives every owned declaration's actual Lean name, source module, SHA-256, kind, elaborated type with precise hypotheses, and transitive axioms. The audit covers 349 owned declarations, including 305 generated or authored theorem declarations; these counts are not claims of independent novelty.

The ten new modules are:

- `GRWTSK/Combinatorics/Sequences/BalancedPartitionSampling.lean`
- `GRWTSK/Combinatorics/Sequences/CyclicSumsetGrowth.lean`
- `GRWTSK/Analysis/Fourier/ZModCharacterEnergy.lean`
- `GRWTSK/Analysis/Fourier/ZModIndependentSelection.lean`
- `GRWTSK/Analysis/Fourier/FiniteExponentialLayers.lean`
- `GRWTSK/Analysis/Fourier/ZModPartitionEnergy.lean`
- `GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean`
- `GRWTSK/Analysis/Fourier/ZModSmallEnergySets.lean`
- `GRWTSK/Analysis/Fourier/ZModSmallEnergySpectrum.lean`
- `GRWTSK/Analysis/Fourier/ZModConcentratedFrequencies.lean`

Supporting changes append their aggregate imports, add a selected verification driver, register exact source/evidence bindings, add two canonical object guides, update the existing subset-sum guide and regenerate navigation/inventory. [changed-paths.json](changed-paths.json) records the explicit writes and renderer preimages; unrelated Git changes remain separate.

## Verification and failed checks

All ten sources compile with `lake env lean --trust=0 -DwarningAsError=true`. The exact owning-module census includes generated declarations and rejects partial, unsafe and axiom declarations and all transitive axioms outside `propext`, `Classical.choice`, and `Quot.sound`. [selected-replay.json](selected-replay.json) binds every command, log and source hash. [dependencies.json](dependencies.json) records the repository import closure and package pins. Cached dependency objects are reused; no cold dependency-source reconstruction is claimed.

The initial native audit rejected the compiler-generated `iteratedSumset._unsafe_rec`. The mathematical sumset definition was made noncomputable, retaining its recursion and all theorem statements, so the helper disappeared. The failed source variant and rejection log are retained. No runtime-profile exception or trust-policy relaxation was added. An ordinary build during active source editing also failed on a new geometry helper; after the proof was completed and sources frozen, the full target passed with 9,141 jobs.

The current mathematical layout check passes with zero findings. Normal and optimized documentation unit tests each pass 109 tests. The new guides' links and exact source/evidence bindings pass a scoped check against the complete documentation registry.

Full documentation rendering wrote the projections but structural validation is blocked by the concurrently added, unregistered `docs/mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/divisor-sectors.md`. Its content was preserved. The repository-wide trust driver reports `BUSY`: another full trust replay holds the project lock. That lock was left intact; no repository-wide proof pass is claimed.

The expected-negative `Theorem13NotClosed.lean` verifies that the proved averaged layer bound cannot be used as the final numerical Theorem 1.3 inequality without the missing estimates. The [final verification manifest](final-verification.json) records actual statuses, failed logs and ending state.

## Exact remaining mathematical obligations

1. **Conditional part exposure law.** Under the uniform prescribed-size partition, conditional on a fixed element lying in a given part, prove that the other elements of that part form the uniform subset of the remaining population of the required cardinality. The proved one-choice-per-part law does not substitute for this conditional fiber law.
2. **Finite hypergeometric lower tails.** Prove the quantitative sampling-without-replacement Chernoff estimates used in source Lemmas 3.1 and 3.3, with their exact fractions and exponents. Neither Markov's inequality nor the deterministic energy bounds prove these exponentially small probabilities.
3. **Source Lemma 3.1.** For nonzero `χ ∉ D_t`, prove the actual uniform partition probability `Pr[ψ(χ) < 2t] ≤ |S|⁻⁹` under the source range.
4. **Source Lemma 3.3.** For `χ ∈ D_t \ B_(2000t)`, prove the same lower-tail probability, using the now checked tail-energy and far/near geometry.
5. **Expected layer cardinalities.** Combine the two proved probability bounds with the now proved deterministic `B_t` cardinality estimate, checking the `2000t`, `m/2000²` and `m/2²²` thresholds and zero-frequency contribution.
6. **Final quantitative combination.** Use the checked dyadic bound and universal series constant, then prove the remaining parameter-dependent exponential-tail and arithmetic estimates needed for `1/p + 2²⁴/(|S|√m)`. Until these are discharged, Theorem 1.3, Corollary 1.4 and the source-range rearrangement theorem remain open.

Human mathematical direction: R.A. Jacob Martone. Lean implementation: OpenAI Codex. Mathematical argument: Huy Tuan Pham and Lisa Sauermann. Mathlib authorship and licensing retained; no originality claim.
