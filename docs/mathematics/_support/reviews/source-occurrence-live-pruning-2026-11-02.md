# Exact original source-occurrence live pruning and periodic admission

Review date: 2026-11-02. Mathematical direction: grwtsk contributors. Source-level formalization assistance: OpenAI ChatGPT.

**Source disposition:** SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / ACTUAL_EXTRACTOR_REFINEMENT_NOT_PROVED. The source-level proof candidates have not been kernel accepted. A full real Noe+Math selected-index run is still NOT_RUN.

## New provider and exact original imports

New Lean candidate: `GRWTSK/Combinatorics/GraphTheory/SourceOccurrenceLivePruningBridge.lean`, Git blob `63f688a1d3bba24739d826168f1d0a0a44914876`, 152 source lines. The source imports **exactly**:

1. `SourceOccurrenceShiftConjugacy.lean`, original blob `23956354b4226bc3d0b614ad13ab208a3bd70762`: existing `ObservedKey ≃ Fin n` extension to Nat-indexed streams, original RunsOnGraph and original `Function.IsPeriodicPt` shift periodicity.
2. `SoficLiveRepresentationIntegration.lean`, original blob `18e08be9ad44069a9da2b53a9114824565780624`: actual q-round right-live pruning, exact run equivalence and all-finite-factor transport, preserving the original graph edge relation.

Their original transitive source inputs, inspected on 2026-11-02, include `SourceOccurrenceKeyRefinement.lean` (`cec5dc7cc4cef60e6a789a00c45385eb4f138360`), `SourceOccurrenceSoficBridge.lean` (`b2e0cb4919a5e73246c29c7f7769fe459949e73c`), `SoficDeadEndPruning.lean` (`7cd2b48cf6f29b8ea779666bd57cbc4ea887b1f5`), `SoficRightLivePeriodicInvariant.lean` (`c5472ba92348a988e1dc12b870ca8973cfa20bf7`), `SoficFiniteTraceCompactness.lean` (`325cc0ae7185215e0d95285c97f4455a698e0f19`), and `ExactSoficLanguageCover.lean` (`f50489eaf6c7277993a08925a58b7765f9e10ec9`). Separately relevant `SoficTopologicalLanguageBoundary.lean` (`516f991a66ff7f5f0599261b14f78fecf769e21a`) and `SoficExactPeriodicTraceLedger.lean` (`b3f5b7ce5e0b7eb0a4c1081dce166815824b6bac`) retain their original realization and missing/surplus-cycle-lift obligations. Not every semantically related source is a direct import.

## Connection formalized at source level

For the **original** `FiniteSourceOccurrenceTable State Owner Payload n`, with explicit `[Fintype State]` and `[DecidableEq State]`:

1. `finiteSourceEdgeDecider` constructs the **exact** `SoficDeadEndPruning.SourceEdgeDecider` from `table.source slot = start ∧ table.target slot = finish`. This uses only decidable equality of the actual source state type. It does not infer or assume a guessed endpoint relation or use a heuristic Python link resolver.
2. `finiteSourcePrunedGraph` instantiates the **original** `SoficLiveRepresentationIntegration.finitePrunedGraph`, q-round right-live graph on the actual original `Fin n` occurrence labels. It does not quotient or deduplicate parallel edge slots, even with identical printed payloads and equal endpoints.
3. `observedKeyRuns_iff_finitePruned` composes **two original equivalences**: the checked-conditional raw original owner/ordinal key trace to original occurrence-slot graph `RunsOnGraph`, then the original graph `RunsOnGraph` to its q-round pruned representation. Infinite label sequences are unchanged except for the existing exact original-key encoding. The pruned graph's state type is an actual retained-state subtype.
4. `observedKeyAdmittedPeriodic_iff_finitePruned` simultaneously preserves original graph-run admission and `Function.IsPeriodicPt` of the genuine one-sided shift at each natural period n. That **does not** imply the original graph-state sequence has period n or that every periodic label has one unique graph-cycle lift.
5. `occurrenceAllFiniteFactors_iff_finitePruned` specializes the existing complete-factor predicate theorem under the exact source-edge decider. This concerns **all finite factors of one fixed infinite trace** and is not an assertion that `GraphLanguage` of the original finite graph equals the pruned graph's finite-path language. Terminal-edge-only finite words can be removed by live pruning.
6. `originalSourceRealizedFactor_iff_pruned` now specializes the original updated `SoficLiveRepresentationIntegration.isRealizedFactor_true_iff_pruned_true` theorem using the exact source-occurrence edge decider. This proves source-level equivalence of the **Boolean realized-factor test** before and after one complete q-round prune, including empty and terminal cases. The provider now also contains separate source-level fixed-point/idempotence statements for the pruned graph; those facts remain conditional on the same original edge decider and are not claims about execution of the Noe index or a theorem application.

The proof of graph-pruning semantics relies on the original `SoficLiveRepresentationIntegration` source candidate and its transitive dependencies; this increment does not replace them, their edges, or their premises.

The corresponding Noe source graph is **selected, finite and bounded**. Its `SearchIndex.sofic_walks` does not establish a universal all-prefix trace or a formally checked `FiniteSourceOccurrenceTable` from actual pinned Git/SQLite bytes. The earlier `ExactSourceRefinement` remains a conditional typed input. Source-slot owner/ordinal uniqueness, `audit_snapshot`, `audit_git_objects`, the independent PW3 FTS5 storage replay and kernel checking are **different** evidence categories. No source-to-runtime proof, all Math source coverage, entire graph-language equality, zeta result or RH implication is inferred.

## Bounded independent diagnostics

The local independent `test_source_live_pruning_reference.py` suite passed **5/5** groups: 1,400 randomly generated exact source endpoint/parallel-slot comparisons; 1,600 checks that q=card(State) pruning stabilizes and matches finite right-live states; 1,600 checks that original owner/ordinal periodic key-run admission agrees with pruned occurrence runs; 750 random finite-horizon whole-factor predicate comparisons; and a terminal-edge example proving that original finite-path words may disappear while no infinite run is lost. The previously created local independent source shift/original occurrence suites bring the combined standalone reference suite to **78/78**. These finite checks are NOT Lean compiler/kernel tests.

**Required native acceptance:** Check the new module under `leanprover/lean4:v4.34.1` and pinned Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; inspect exact expected theorem types, fresh kernel replay, and transitive axioms. Separately run registered Noe tests and a real pinned two-repository `audit`/`audit-git`, PW3 FTS replay, and source-key table refinement review. No runtime completeness or production certification is claimed by publication.
