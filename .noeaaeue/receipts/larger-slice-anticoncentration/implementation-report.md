# Source-bound larger-slice anti-concentration implementation report

Theorem 1.3 was published in the coordinated mathematical commit `2b83489548f69af8b3ef70205443d02cffe68474`, followed by publication record `b558869a97fcbc346ce5cc0f1a28119d26abd6ba`. Source Corollary 1.4 is now independently kernel checked from its proved dependencies, with no new analytical assumption.

For every `0 < ε < 1`, prime `p`, finite `S ⊆ ZMod p` with `n = |S| ≥ 2`, positive natural `m ≤ (1−ε)n`, and target `z`, the uniform `m`-subset sum has probability at most

`1/p + (128000 · 2²⁴ / ε²) · √(log n)/(n √m)`.

## A. Repository state

Work began on existing `main` at `b558869a97fcbc346ce5cc0f1a28119d26abd6ba`. The separately owned cache-only commit `8913a0a303962e0d202f9d69ce1fe5eedf70ff34` was preserved and pushed before the strict integration checkpoint. Its 209 paths are entirely under `.noeaaeue/cache/`; it changes no formal source or acceptance asset. This batch's validated parent is that commit. Final mathematical commit and remote readback identities are recorded separately in `publication-record.json` after publication.

Exactly seven Lean files are new: four library modules and three controls. The only change to an earlier Lean file is one public import in `GRWTSK.lean`. All other 870 earlier formal source files retain their previous bytes. Shared guide registries, generated navigation, the current source observation and generated catalog receive explicit new bindings; historical intake, catalogs embedded in source records, contracts, failed receipts and expected hashes remain intact. The checkpoint directory retains byte-identical copies of the prior observation, catalog and actual latest contract.

Unrelated process directories, earlier scratch work, and the cache chat's uncommitted publication evidence remain preserved and excluded from this batch's staging. No branch, worktree, reset, stash, clean or force push is used.

## B. Mathematical inventory

The complete [inventory](mathematical-inventory.json) records all 117 declarations owned by the five new source modules in the selected environment, with actual Lean names, full types, source modules, axioms and admission status: 101 library declarations and 16 positive-control declarations, including generated and private declarations. The selected complete local closure contains 761 owned declarations. The global replay adds 100 declaration names with none removed. One shared generated theorem, `GRWTSK.ZModSubsetSum.subsetSumProbability.congr_simp`, already existed globally and is assigned to its first using module; its type is identical in all receipts. The [count reconciliation](owned-count-reconciliation.json) records this ownership distinction without rewriting any receipt.

| New module | Principal checked objects |
|---|---|
| `Combinatorics/Sequences/FixedSizeSubsetExposure` | `exposurePairs`, exact first and union fibers, positivity of conditioning events, `conditional_residual_probability`, `exposure_first_marginal_probability`, `mean_union_exposure`, `sum_union_exposure` |
| `Analysis/Fourier/ZModLargerSliceParameters` | `sourceConstant`, `sliceThreshold`, `largerSliceConstant`, auxiliary and retained sample sizes, explicit logarithmic threshold, floor bounds and `residualSliceSize_source_range` |
| `Analysis/Fourier/ZModLargerSliceBounds` | completion bound under the epsilon margin, small-cardinality/sample comparisons and `slice_error_le` |
| `Analysis/Fourier/ZModLargerSlice` | `subsetSumProbability_exposure`, conditional averaging, `subsetSumProbability_le_largerSlice`, prime-only facade and `exists_larger_slice_anticoncentration_constant` |

The generic finite law needs only a finite set and `a+b ≤ |S|`; its translated sum law works in any additive commutative group. Every conditioning denominator is proved positive. The final prime-cyclic theorem has exactly the hypotheses displayed above, without a residual size condition, logarithmic sample restriction, probability field, analytical interface or unproved published theorem.

## C. Deterministic core

This batch preserves the existing partial-sum, disjoint-transposition, deterministic repair and certificate sources byte for byte. Their original assumptions and verification records remain unchanged. The separate public-census review also confirms that every retained declaration name preserves its type, ownership, axioms and safety/admission flags. The new result is analytical infrastructure for the existence argument; it does not substitute a sampled witness or an unchecked Boolean for repair or certificate soundness. Global integration acceptance is recorded in section G separately from the selected proof.

## D. Probabilistic proof state

Source Theorem 1.3 is closed with uniform absolute constant `2²⁴`. Its actual balanced-partition exposure, hypergeometric tails, Lemmas 3.1 and 3.3, expected Fourier layers and Fourier decomposition are recompiled in this batch's fresh selected dependency closure.

Corollary 1.4 is closed with explicit `Cε = 128000 · 2²⁴/ε²`. The small-cardinality and small-sample cases use the proved completion estimate. Otherwise `k = min(m, floor(εn/(1000 log n)))` leaves a residual set of size `r = n−m+k ≥ εn` satisfying every literal Theorem 1.3 restriction. An actual uniformly sampled first subset and conditional uniform residual subset have a uniform union by exact fiber counting. Apply Theorem 1.3 at the translated target, then average. No independence of nested subsets is used. The case `k=m`, with an empty first exposure, is included.

Source Corollary 4.2's joint chain law and bound, Lemma 4.3's gap summation, the Section 5 local-collision/admissible-permutation estimates, Lemmas 5.1–5.3 and source Theorem 1.2 remain open. The union-bound good-event probability and source-range rearrangement theorem are not claimed. The full Graham conjecture also requires additional formalized published dependencies.

## E. Clock and guarded execution

No physical clock, modular checkpoint, quota, no-starvation, controller, revision ledger, budget-reset counterexample or restart-accounting source is changed. Cost and phase retain their separate meanings and all prior hypotheses. Corollary 1.4 grants no source rights, runtime permission, mathematical discharge, fairness or deterministic search-termination guarantee. Existing completed history and accounting are preserved.

## F. Executed controls

The positive control consumes the exact all-target theorem, prime-only facade and epsilon-uniform existential theorem. It proves that the two-stage singleton exposure on three labels has six pairs and two pairs per prescribed two-element union. Individually valid singleton choices may overlap and have a one-element union, refuting the stronger independent-choice cardinality assertion.

For `{0,1} ⊆ ZMod 5`, the empty sample has point mass one; the displayed bound with `m=0` has right side `1/5`, even though the epsilon margin at `ε=1/2` holds. For the full packet, the point mass at one is one; extending the explicit formula to `ε=0` gives coefficient zero and fails. This second example concerns that explicit coefficient extension, not every conceivable existential coefficient.

Both invalid theorem applications—missing the density margin and missing positive sample size—reject with exactly one intended type mismatch, the expected-type marker and required target fragments. Initial and intermediate failed compiler diagnostics, including the equality-decision conversion issue, are retained under `development/`; they are not relabelled passed. Earlier Theorem 1.3 and deterministic counterexample records retain their original verified scope.

## G. Trust and verification receipt

The pinned toolchain is `leanprover/lean4:v4.33.0`, compiler commit `d8b18978322de05a8f3dba51ef03cf5461676c17`. Mathlib is clean at `db584cd6d46c92f209a44c0f1c829460d327499d`. The primary source is Pham and Sauermann, arXiv:2602.15797v1, February 17, 2026; retained HTML SHA-256 is `f2cb2cf8d155cf8940aaa7443db223b43419413bc9cbc5c25f25e453cd33a74b`. The source proof's opening reference to Theorem 1.2 for its constant is treated as its apparent typo: the applied Lean dependency is Theorem 1.3.

The selected receipt `.noeaaeue/evidence/Analysis/fourier/larger-slice-checks-2026-10-16.json`, SHA-256 `57684bb8c5a03f552ee6a1942461046fd20b46a0709ffcf47c76fb0c7dd26654`, freshly elaborates 22 local project modules, the positive consumer and complete owned audit, then verifies both intended rejections. All 761 declarations are safe, nonpartial and admitted using only `propext`, `Classical.choice` and `Quot.sound`. Canonical project cache objects are excluded, sources are immutable, and complete imported object families are fingerprinted and rechecked. The paper's exact retained v1 hash is required. Independent source, verifier and observation reviews are retained separately; these reviews do not substitute for kernel checking.

`lake build GRWTSK` passed (9157 jobs). All five documentation gates passed for 184 maintained pages, including normal and optimized checks and 109 hostile-control tests in each mode. The fresh catalog check and `check_math_layout.py` passed with 451 library modules and zero findings. The earlier layout failure is retained: new-source membership drift invalidated the old current observation, causing a historical-catalog fallback; no earlier Lean bytes were corrupted.

The new observation has 878 sources, a 451-module public closure and 68 unchanged candidate classifications; all observation admission flags remain false. Identity: `20d22365fdcecde85ba5b67460cfc79153aa6d6c3dd8a6ac8e253f79a12939cf`. Its installation was independently reviewed, rederived, guarded by two pointer-collision checks and read back exactly. The explicit fresh application contract has 454 modules and 24 assets, SHA-256 `e60cc296162a8291d840aad93a50c2c5a625117b7d74b4b836e803e86d6d6c73`; it remains an unaccepted input observation even after separate native replay succeeds.

Fresh public replay passed for 451 modules and 12,257 owned declarations. Its receipt is `.noeaaeue/.local/math-trust/20261016T094325Z-e250254225/receipt.json`, SHA-256 `f03a78461181eae1bbbe22cafa12f0abe25bb57521a3d3aecb0a09bb58d506de`. All seven acceptance theorems are present, safe, nonpartial and admitted with only the standard three axioms. The global census adds 100 names and removes none; its five existing qualified partial runtime helpers remain excluded from mathematical admission.

The separate application replay passed all 454 modules, its complete census of 12,259 owned declarations, all six runtime-profile rejection controls and all ten public/private custom-axiom rejection controls. Both terminal control validators recomputed the strict oracles; final source, dependency and asset integrity passed. The sealed receipt is `.noeaaeue/.local/checks/moebius-response-20261016T102519Z-4c50c642fbbb/receipt.json`, SHA-256 `147e89138c733fc81e8411a52e832cbe9006a088b47cc1b2d088dae7c01a3f3c`. Its legacy namespace audit count of 2230 is distinct from the complete owner census. The two additional application declarations are `P04Audit.check` and `P04Audit.check.match_1`. The [native archive index](native/archive-index.json) binds lossless copies of the actual public, application, self-test and input-validation receipt bytes; compression is transport, not proof validation.

Final editorial documentation checks initially rejected an unregistered link to this raw Markdown report. The link was changed to the native JSON receipt index; the failed receipt is retained under `documentation-final-checks/`. No formal source or bound application asset changed during these edits. Final documentation results and exact source-custody checks are recorded in `final-verification.json`. The raw Lake build log retains whitespace-only diagnostic lines; all other staged files pass whitespace checks with that log and its exact diagnostic transcript excluded. The full finding and byte-preservation reason are retained under `staging-checks/`.

Cached pinned dependency objects are kernel checked, but dependency source rebuilds and cached object-to-source provenance are outside the claimed scope. The selected checker fingerprints dependency objects after the audit and rechecks them afterward; it does not claim their pre-import byte custody. No `sorry`, `admit`, unauthorized axiom, native-decide shortcut or extra analytical assumption is introduced.

## H. Open-obligation register

The [register](open-obligations.json) states the smallest remaining independently meaningful problems: actual iterated conditional chain exposure, Corollary 4.2's joint-sum product estimate, Lemma 4.3's gap sum, the precise three Section 5 events and bounds, extraction of good geometry and source Theorem 1.2, and the extra dependencies for the full Graham conjecture. These results remain open; they are not represented as fields of an inhabited structure or promoted by a test or an external citation.

Original mathematical argument: Huy Tuan Pham and Lisa Sauermann. Human mathematical direction: R.A. Jacob Martone. Lean implementation: OpenAI Codex. Mathlib authorship and licensing retained; no originality claim.
