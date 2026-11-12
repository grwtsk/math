# WVL-v1-08: Literal pole-inclusive zeta specialization

Local source attribution: **grwtsk contributors**. Date: 2026-11-12.
Classification: MSC2020 11M41 (primary), 11M06, 30E20.
Maintained file: [WeilVerticalLimits.lean](../WeilVerticalLimits.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_zeta_weil_full_line_limit`.
Source SHA-256: `40363bf277279c8ab4eaefa095c689d426fe90d6b5d771f589f427ae73dc27f3`.
Authoring base: `af9b7a05afbf79d4def070fa96f9091b2f177160`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment `6820947210`.

## Statement, quantifiers and domains

There exists a source-selected sequence n+2<T_n<n+3 before every supported admissible f and A>=0. The literal zeta gamma/von-Mangoldt line is absolutely integrable, and the original conductor-one zero-window sum minus BOTH W_f(0) and W_f(1) converges to its integral divided by 2*pi.
The exact typed statement is in the maintained source; no stronger variant is asserted.

## Primary sources, dependencies and mathematical consumer

WVL-v1-07 with chi=1 modulo 1 and DirichletCharacter.isPrimitive_one_level_one; gammaParity; MulChar.one_apply for ZMod 1; original LFunction_modOne_eq/completedLFunction_modOne_eq correspondence.
All local dependencies are read at the authoring base. Mathlib results retain
upstream authorship and Apache-2.0 licensing. This is an original local assembly
of existing formal sources, not a claim of a new direct paper formalization.
No external proof is vendored and no upstream verification is inherited.

Consumer: the eventual zeta physical explicit formula, without a pole-neutral test restriction. The finite-window zero type is retained, with its known literal zeta correspondence. No absolute-square replacement, simplicity assumption or exclusion of real/central strip zeros is made.
The [complete primary analytical proof, comparison and hostile checks](README.md)
explain the source correspondence and limits of the result. The derivation does
not assume RH/GRH, an external seven-eighths result, all-test positivity or a
numerically certified constant. No originality claim; novelty **UNASSESSED**.

## Evidence and unresolved obligations

**SOURCE_PROOF_CANDIDATE**. Manual analytical/source comparison only.
Elaboration, dependency build, fresh kernel replay, transitive axiom audit,
printed-statement comparison, independent analytical review, numerical
certification and repository-wide checks: **NOT_RUN**. Imported candidate
statuses remain unchanged. Required proof automation was not started after the
canonical skill returned 404; ordinary source publication is separately authorized.
Source text checks and publication readback have only their stated scope.
The unordered absolute zero sum, prime/gamma physical evaluation and all-test
arithmetic sign theorem are not supplied by this declaration.
