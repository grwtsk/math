# Checked successor selection: mathematical source record

Attribution: grwtsk contributors.

## Identity and consumer

- Repository: `grwtsk/math`.
- Path: `GRWTSK/ComputerScience/AlgorithmsInComputerScience/CheckedSuccessorSelection.lean`.
- Namespace: `GRWTSK.ComputerScience.CheckedSuccessor`.
- Source SHA-256: `a69663faaa4eef6daeb7cc23a4ef7a2553dfae0677768fddaaca1d5435d6cdc2`.
- Consumer: PGATN AT-008; safe finite successor selection after optional heuristic ordering, with a separately established canonical fallback.

## Statements and hypotheses

For every candidate type, Boolean checker, fallback candidate and finite candidate list, `select` returns the first candidate whose check is true, or the fallback if none passes. The recursion terminates by decreasing list length. `select_valid` quantifies over an arbitrary validity predicate, requires `∀ c, check c=true → Valid c` and `Valid fallback`, and concludes validity of the selected result. `all_rejected_returns_fallback` requires every list entry to check false and proves that the returned result is exactly the fallback.

No statement assumes validity of the heuristic candidates. No statement proves a fallback exists for every mathematical problem. Instantiating `Valid` with exact arithmetic semantics, history preservation and representation coherence requires proof of the actual checker and the actual canonical construction for that operation.

## Complete analytical argument and comparison

Induct on the finite candidate list. An empty list returns the separately valid fallback. For a nonempty list, a successful first check implies validity by checker soundness; a failed first check recurses to the induction hypothesis. For the rejection theorem, the head is rejected and the hypothesis restricts to the tail, so induction returns the fallback. Thus arbitrary failure or arbitrary scoring of proposed candidates cannot remove the preserved constructive solution.

The set-theoretic comparison is that the available checked outputs contain the canonical fallback and every alternative admitted by the same invariant. Selecting any member preserves validity. The recursive implementation supplies the finite terminating selection policy; the abstract nonempty-set statement alone would not establish effective selection or real-weight comparison.

Counterexamples to stronger claims are immediate. A bounded empty search for an auxiliary prime proves no existence. An interval comparator for equal computable real weights can refine forever without a finite tie policy. A checker that is merely named `Valid` but lacks soundness transfers no correctness. This theorem retains the exact premises instead of hiding those open suppliers.

## Canonical sources and verification

The source uses Lean's ordinary finite lists and Boolean conditionals through `Mathlib.Data.List.Basic` at `d13f23b723b8a846827a245b89c10fc7d3f11612`. The proof is a finite structural induction and claims no mathematical novelty.

On 2026-11-28, the exact source compiled at its canonical module identity with Lean 4.34.1, binary commit `5045d0056413266e57c625dcd7c365b10e377c52`. The selector definition uses no axioms; the two named theorem audits report only `propext`. No placeholder occurs. Fresh Lean kernel replay of the five-module PGATN bundle exited 0.

Package verification manifest SHA-256: `8c47a3c1016ccd44d83cf53a881788f03141de41e731f31d913c89a876967b5f`. Operational logs remain in that package, not in the pure mathematical source tree. The result is a checked selection theorem, not a proof of global optimization, concurrency liveness, auxiliary-prime existence, Weil positivity or RH. Rust verifier and canonical-operation refinements remain open.
