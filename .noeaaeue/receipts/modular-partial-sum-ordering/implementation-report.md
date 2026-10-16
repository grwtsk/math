# Certified modular partial sum implementation report

The deterministic acceptance target is closed under the pinned trust policy. Eight new Lean modules compile with trust zero and fatal warnings. The selected owning-module census checks 676 declarations, including 392 theorem declarations generated or authored by Lean, with only `propext`, `Classical.choice`, and `Quot.sound`. The source-range Pham–Sauermann theorem remains open; no axiom or proof hole supplies it.

## A Repository state

Starting HEAD: `e3b0e3a0a8084cb4931f41b2df2f7a4153a22113`, on `main`, ahead of its remote by one. The initial status contained 8,080 changed entries (6,241 deletions, 149 modifications, 1,690 untracked entries); the full status is retained in [initial-state.json](initial-state.json).

A concurrent merge advanced HEAD to `8e35dcd5fb4f42640aaaaf68e682a2254736f4da` during verification. This task made no commit and performed no push, remote update, reset, stash or branch switch. Existing migration edits and deletions were preserved. The aggregate import file was already modified; this task appended the eight new imports. Existing mathematical subject directories were reused, including `Combinatorics/Sequences` for the transposition module because the proposed `Permutations` directory does not exist.

New mathematical files:

- `GRWTSK/Combinatorics/Sequences/PartialSumOrdering.lean`
- `GRWTSK/Combinatorics/Sequences/DisjointTranspositions.lean`
- `GRWTSK/Combinatorics/Sequences/ZeroSumIntervalRepair.lean`
- `GRWTSK/Combinatorics/Sequences/PartialSumCertificate.lean`
- `GRWTSK/Combinatorics/Sequences/PrimeCyclicRearrangement.lean`
- `GRWTSK/Analysis/Fourier/ZModSubsetSum.lean`
- `GRWTSK/Analysis/Fourier/ZModSubsetSumCompletion.lean`
- `GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean`

Supporting changes are the additive `GRWTSK.lean` imports, `.noeaaeue/scripts/check_modular_partial_sums.py`, mathematical-layout registration, documentation-layout registration, object-source bindings, three canonical object guides, generated navigation and source-command inventory. Prior renderer preimages are retained under `.noeaaeue/.local/documentation-index-render/`. [changed-paths.json](changed-paths.json), [ending-state.json](ending-state.json), and [contribution.json](contribution.json) retain final content identities, current Git status, and attribution; unrelated paths in Git status are not attributed to this task.

## B Mathematical inventory

[mathematical-inventory.json](mathematical-inventory.json) records EVERY owned declaration's actual fully qualified Lean name, source module and SHA-256, kind, elaborated type including precise hypotheses, checked status, and transitive axioms. It includes generated declarations rather than silently omitting them. [module-inventory.json](module-inventory.json) distinguishes per-module totals. Counts are not counts of independently novel results.

The exact source-range proposition is `GRWTSK.PrimeCyclicRearrangement.PhamSauermannSourceRange`; it is a definition of an open proposition, not a theorem. The three probability-to-existence results explicitly begin with `conditional_` and retain actual event bounds in their elaborated types.

## C Verified deterministic core

All following names are in `GRWTSK.PartialSumOrdering`.

`ValidPartialSumOrder`, `RootedValidPartialSumOrder`, `DistinctNonzeroLabels` and the inclusive one-based `ZeroSumInterval` are separate predicates. Ordinary and rooted validity have exact zero-interval characterizations; arbitrary labels include singleton intervals. Nonzero-entry variants match the paper's length-at-least-two convention. Translation preserves uniqueness. Packet permutations preserve total sum, and the cyclic nonzero-label cardinality bound is proved independently of primality.

`PositionSwap`, `SwapTrace`, `replayPermutation` and `replayList` use actual finite position permutations. Theorems prove multiset preservation, disjoint commutation, order-independent composition, replay and displacement at most `5D`.

`Blocked` is the paper's exact two-endpoint condition. `GoodRepairGeometry` has positive `D` and three independent fields: tail safety, local density, repair compatibility. The admissible permutations are exactly products of disjoint ordered transpositions of length at most `5D`. No successful repair conclusion is a geometry field.

`repairWindow_available` proves actual availability from finite intersections and union-cardinality bounds. `usedRepairPositions_window_card` charges used partners injectively to original endpoints. `unblocked_swap_preserves_repair_invariant` removes the selected endpoint and creates no endpoint outside the remaining original set. `bounded_repair_trace_aux` completes the descending maximum induction.

`goodRepairGeometry_valid_permutation σ D hn hg` proves, for an arbitrary additive commutative group and nonzero labels, existence of a disjoint bounded trace whose replay is a multiset permutation with valid partial sums. `geometry_produces_accepted_certificate` composes it with the independent checker under primality and distinct nonzero original labels.

`checkCertificate_sound` proves ordinary validity, full packet permutation, exact replay, bounded swaps, disjoint support and bounded resulting position displacement. `checkCertificate_packet_sum` proves total conservation. Diagnostic equivalence is kernel checked by `diagnoseCertificate_none_iff`. The reference collision detector is finite-list `Nodup`; no optimized detector, random success, hash or external solver substitutes for validation. The checker is total on its typed certificate domain. Out-of-range indices cannot inhabit `Fin originalOrder.length`.

## D Probabilistic proof state

| Result | Actual status |
| --- | --- |
| Uniform fixed-size subset law | Defined by `powersetCard`; normalization and binomial denominator proved |
| Uniform finite bijections | Explicit `Finset.univ` of finite permutations; nonempty |
| Nested exposed prefixes | Defined with proved nesting; no independence assumption |
| Discrete Fourier inversion | Proved using pinned Mathlib `ZMod.dft` |
| Trivial/nontrivial frequency split | `fourier_nontrivial_mass_bound` proved |
| Source Lemma 4.1 | FULLY PROVED as `GRWTSK.ZModSubsetSum.subsetSumProbability_le_one_div_remaining`, for `1 ≤ m ≤ S.card` and `NeZero p` |
| Complement slice law | Exact fiber/image/cardinality/probability symmetry proved |
| Source Theorem 1.3 | OPEN: required quantitative character and partition estimates not proved |
| Source Corollary 1.4 | OPEN: logarithmic-loss estimate not proved |
| Chain Corollary 4.2 and Lemma 4.3 | OPEN: conditional exposure bounds and summation estimates not proved |
| Section 5 events B1/B2/B3 | Exact finite events defined, and complement equivalent to geometry when `D > 0` |
| Source Lemmas 5.1–5.3 numerical bounds | OPEN: `1/100`, `3/100`, `1/25` remain explicit premises |
| Union bound and positive-mass extraction | Proved; good mass at least `23/25` from those three actual bounds |
| Probability-to-rearrangement reduction | `conditional_rearrangement_from_failure_bounds` proved, explicitly conditional |
| Source Theorem 1.2 | OPEN; the source-range proposition is defined without an asserted inhabitant |
| Full Graham conjecture for every prime | NOT CLAIMED; additional published and formal dependencies are outside this closure |

Finite exhaustive search is total and has soundness/completeness and factorial candidate-count proofs. It does not assert existence on all inputs or a bound for randomized discovery.

## E Clock and execution integration

`GRWTSK.ModularCheckpoint` maintains natural cost independently of modular labels. `physicalTime_eq_batchClock`, `physicalTime_strict`, `terminal_cost_conserved`, `terminal_phase_conserved`, and `terminal_checkpoint_conserved` preserve the old clock semantics. Existing unique batch coverage and no-starvation results are reused with their original hypotheses.

`Address` stores revision, epoch, absolute lift, cumulative cost and modular phase. The source, epoch and lift coordinates are retained exactly. Repeated residues are distinguished by full checkpoint addresses. Checker acceptance is linked to actual current source/epoch binding by `checked_certificate_adapter`. `checked_item_packet` additionally uses injective item labeling and exact label-list bindings to recover the original work identities, item permutation, cost conservation and valid phases.

`ExchangeablePacket` requires dependency-order preservation and semantic commutation separately. `PacketAdmission` additionally requires current source binding, label conditions, budget feasibility and the old guards at actual intermediate states. `Executes` preserves safety, source, absolute lift, immutable receipt prefixes and exact cost accounting. Modular validity cannot discharge a missing mathematical proposition or grant operational permission or rights.

`SearchAttempt` retains an explicit candidate, optional seed, source, epoch, and generation/repair costs. Attempt count, repair expenditure and total expenditure are monotone under history extension. Restarts retain them and previous lift, preserve the revision ledger, and append a distinct fresh-funding event. Funding sufficiency is an explicit separate hypothesis. `BudgetResetCounterexamples` is imported unchanged; there is no global funding or randomized termination theorem without additional premises.

## F Positive and negative controls

| Control | Checked evidence |
| --- | --- |
| Zero label causes repeated post-step sums | `zero_label_can_repeat_postSum` and rejected `zeroLabelCertificate` |
| Duplicate labels can have distinct sums but violate contract | `duplicateLabel_distinct_sums`; `duplicateLabelCertificate_rejected` |
| Ordinary validity need not be rooted | `[1,4]` modulo 5 valid with terminal zero, rooted invalid; accepted certificate |
| Displacement too large | `excessive_displacement_rejected`; `excessiveSwapCertificate_rejected` |
| Intersecting supports not independent | `intersecting_supports_do_not_commute`; `intersectingSwapCertificate_rejected` |
| Insufficient window | `zero_capacity_has_no_partner` |
| Local swap introduces a defect | `[1,2,6]` modulo 7 valid, swap gives invalid `[2,1,6]` |
| Dependency and semantic failures | `dependency_breaking_reversal`, `antichain_not_exchangeable` |
| Stale source | `accepted_stale_certificate_rejected` uses an actually accepted revision-7 certificate against revision 8 |
| Residue does not determine checkpoint identity | `repeated_phase_distinct_address`, `repeated_phase_distinct_lift_address` |
| Restart erases expenditure | `restart_cannot_erase_expenditure` and exact retention theorems refute the reset |
| Conditional bound promoted to existence | `ConditionalBoundPromotion.lean` deliberately fails: the actual reduction still requires three probability-bound arguments |

The executable checker accepts the nontrivial `[1,2,3] → [2,1,3]` repair modulo 5 and rejects the original colliding order. Small exhaustive-search execution controls are also recorded separately from theorem proofs.

## G Trust and source receipt

Primary mathematical source: Huy Tuan Pham and Lisa Sauermann, *On Graham's rearrangement conjecture*, [arXiv:2602.15797v1](https://arxiv.org/html/2602.15797v1), February 17, 2026. Secondary source: Shalma Wegsman, [Quanta Magazine](https://www.quantamagazine.org/mathematicians-harness-randomness-to-crack-a-55-year-old-conjecture-20260928/), September 28, 2026. Downloaded source identities are recorded in [sources.json](sources.json); the paper has priority for every formal condition.

Lean: `leanprover/lean4:v4.33.0`, compiler `d8b18978322de05a8f3dba51ef03cf5461676c17`. Mathlib: `db584cd6d46c92f209a44c0f1c829460d327499d`. Full dependency pins are retained in `lake-manifest.json`; [dependencies.json](dependencies.json) records the entire repository import-source closure and its emitted or reused object hashes. [selected-replay.json](selected-replay.json) records all source hashes, compile commands, logs and exact owned-declaration audit. Dependency objects are reused; no cold Mathlib reconstruction is claimed.

All eight modules pass `lake env lean --trust=0 -DwarningAsError=true`. The selected audit examines owning modules, including generated declarations, and rejects every unsafe, partial or axiom declaration and every transitive axiom outside the three permitted ones. Two initial audit-harness elaboration failures were fixed; failed logs and receipts are retained under `previous-runs/` rather than erased. The mathematical source proofs did not need trust exceptions.

`lake build GRWTSK` passed both before and after all eight aggregate imports (9,126 jobs in the expanded build). The official repository-wide trust driver failed its preflight on an unrelated exact-intake mismatch in `GRWTSK/Analysis/Asymptotics/LogarithmicGrowth.lean`. Its earlier BUSY result is separately retained. Neither result is represented as a repository-wide proof pass.

The initial math-layout check had 176 findings. The later check has unrelated concurrent findings and none attributed to the eight additions. Documentation projections were regenerated, retaining preimages. Full documentation validation remains blocked by the concurrent unregistered page `docs/mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/moments.md`; earlier render collisions named `PrimitiveAdditiveTriples/Moments.lean` and `GRWTSK/LinearAlgebra/SchrodingerTransfer.lean`. Normal and optimized documentation unit tests both passed 109 tests. All links in the three new guides passed a scoped check against the complete registry. Complete commands, results and diagnostics are in [final-verification.json](final-verification.json). Documentation structure checks do not establish mathematical acceptance.

## H Open obligations

1. Reconstruct the uniform fixed-size subset law from a balanced random partition followed by one independent uniform selection from each part. The existing law normalization and deletion counting do not prove this partition identity.
2. Prove the paper's character distance and exponential estimates and concentration bounds for the random partition; then bound the total nontrivial-frequency mass with the constants and logarithmic restrictions of Theorem 1.3. The immediate checked reduction is `fourier_nontrivial_mass_bound`.
3. Close Theorem 1.3 with an absolute positive constant and `C log |S| ≤ m ≤ 10⁻³ |S|/log |S|`. Neither a supplied interface nor the finite Fourier identity discharges this estimate.
4. Derive Corollary 1.4 for each `0 < ε < 1`, including small-set and large-slice cases and the `√log |S|` loss.
5. Prove conditional successive disjoint-selection exposure and the exact chain product estimates of Corollary 4.2, then Lemma 4.3's summation. Nested subsets must not be treated as independent.
6. Prove the actual finite `tailFailure`, `densityFailure`, and `compatibilityFailure` bounds with the source's parameter choices. These are the three exact missing inputs of `conditional_rearrangement_from_failure_bounds`.
7. Prove the real asymptotic threshold/constant inequalities for `D = ⌈3/α⌉` and extract the source-range theorem with `0 < α < 1`, prime `p`, nonzero distinct set, and `Cα ≤ |S| ≤ p^(1-α)`.
8. A serialized or deployed checker needs a parser and execution-refinement bridge. The present checker is a total Lean function on typed finite certificates; it does not certify an external JSON parser, PRNG or controller runtime.
9. Full documentation acceptance needs registration of the concurrently added `PrimitiveAdditiveTriples/moments.md` and a stable whole-repository render/check. Its content and registration belong to the concurrent work; this task does not overwrite them.
10. Repository-wide trust acceptance remains blocked by the exact-intake mismatch above and other preserved layout failures. These must be resolved by their owners and freshly rechecked; source hash rebinding alone is not proof replay.

No deterministic repair or selected checker proof obligation remains open. No source analytical bound is asserted unconditionally. Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex; original paper and Mathlib credit and licensing retained.
