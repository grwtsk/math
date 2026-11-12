# WVL-v1-04: Test-independent source constant and cubic decay

Local source attribution: **grwtsk contributors**. Date: 2026-11-12.
Classification: MSC2020 11M41 (primary), 11M06, 30E20.
Maintained file: [WeilVerticalLimits.lean](../WeilVerticalLimits.lean).
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.exists_weilRightArithmeticIntegrand_cubic_bound`.
Source SHA-256: `40363bf277279c8ab4eaefa095c689d426fe90d6b5d771f589f427ae73dc27f3`.
Authoring base: `af9b7a05afbf79d4def070fa96f9091b2f177160`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: math#1801, scope comment `6820947210`.

## Statement, quantifiers and domains

For every primitive chi of positive level N, there exists C>0 such that for every A>=0 and admissible f with tsupport f contained in [-A,A], and every real t, the norm of the existing arithmetic integrand for the original correlation weight is at most C*derivativeL1Cost(f,2)^2*exp(3*A/2)^2/(1+abs(t))^3.
The exact typed statement is in the maintained source; no stronger variant is asserted.

## Primary sources, dependencies and mathematical consumer

WeilContourWeight: norm_correlation_contour_weight_le_strip at k=2 and strip radius 3/2; WVL-v1-02 for chi and chi inverse; WVL-v1-03.
All local dependencies are read at the authoring base. Mathlib results retain
upstream authorship and Apache-2.0 licensing. This is an original local assembly
of existing formal sources, not a claim of a new direct paper formalization.
No external proof is vendored and no upstream verification is inherited.

Absolute integrability WVL-v1-05 consumes this all-point bound. Test/support dependence is displayed, and no uniform bound for varying interpolants is claimed. Separate bounds on both vertical legs avoid a cancellation assumption.
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
