# WVL-v1-06: Actual two-ended vertical limit

Local source attribution: **grwtsk contributors**. Date: 2026-11-12.
Classification: MSC2020 11M41 (primary), 11M06, 30E20.
Maintained file: [WeilVerticalLimits.lean](../WeilVerticalLimits.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.tendsto_weilRightArithmeticIntegral`.
Source SHA-256: `40363bf277279c8ab4eaefa095c689d426fe90d6b5d771f589f427ae73dc27f3`.
Authoring base: `af9b7a05afbf79d4def070fa96f9091b2f177160`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment `6820947210`.

## Statement, quantifiers and domains

For every primitive chi, supported admissible f and ANY real sequence T_n tending to +infinity, the existing weilRightArithmeticIntegral chi W_f (T_n) tends to the normalized whole-line integral of the unchanged arithmetic integrand. No monotonicity or horizontal avoidance is required for this vertical-only statement.
The exact typed statement is in the maintained source; no stronger variant is asserted.

## Primary sources, dependencies and mathematical consumer

WVL-v1-05; Mathlib.MeasureTheory.Integral.IntegralEqImproper: intervalIntegral_tendsto_integral; tendsto_neg_atTop_atBot; continuity of multiplication by the fixed normalization.
All local dependencies are read at the authoring base. Mathlib results retain
upstream authorship and Apache-2.0 licensing. This is an original local assembly
of existing formal sources, not a claim of a new direct paper formalization.
No external proof is vendored and no upstream verification is inherited.

WVL-v1-07 consumes this convergence at source-selected heights. Compare Anthropic Zeta23/WeilEF/FullLine.lean, tendsto_interval_Fline, at 16a5ce41304fcdaea4e0be7c132e1c361dc26da5. The local proof uses the three-argument theorem at our Mathlib pin, not the older call or its verification status.
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
