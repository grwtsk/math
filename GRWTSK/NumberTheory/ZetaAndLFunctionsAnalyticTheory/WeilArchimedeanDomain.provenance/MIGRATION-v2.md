# Smooth test-domain migration v2 — 2026-11-11

Local attribution: grwtsk contributors. SOURCE_PROOF_CANDIDATE.
Base revision `c14f9934bbe83e7ff5706f6a730947fac003a412`. Coordination math#1801, discovery comment6806431858.

## Known failure and correction

At Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `ContDiff` takes order `WithTop ℕ∞`.
Its top is analytic order omega. Scoped infinity is the coerced top of ℕ∞ and
means C-infinity. Read the pinned [definitions and notation](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/ContDiff/Defs.lean).
Earlier source in this thread used `ContDiff R top f` while advertising the full
compact-smooth class. That is a KNOWN STATEMENT-FIDELITY FAILURE; the old full
smooth-domain coverage descriptions are withdrawn. A real analytic function on
the connected real line with compact support must be zero by the identity theorem;
that observation explains the severity, but no new Lean proof of that identity-theorem
corollary is claimed here.

Explicit migration: the existing canonical `WeilNegativeWitness.Admissible` now
uses scoped infinity, retaining HasCompactSupport. The existing public
`smooth_l1_lower_bound` and `smooth_fourier_correlation` hypotheses also use
scoped infinity. Add the ContDiff notation scope; their proof bodies are otherwise
unchanged because they only require continuity. This restores the requested domain,
not a weakened arithmetic target. The conditional detector and positivity consumer
keeps its complete hypotheses over the corrected class and the unchanged analytically
continued Dirichlet LFunction critical-strip conclusion.

## Exact source map

- `GRWTSK/MeasureAndIntegration/FourierCollisionBound.lean`: previous blob `6669b1cd87456ca18f5a773d50622c56a70272f5`; corrected blob `d7a7d75aea20705cdc037695c07f073e84399a76`; corrected SHA-256 `ea5121af9de0dcfee3af31119f909111897946e49c415bbac49df8046c1431af`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilCorrelationFourier.lean`: previous blob `ecc16c32221c0cc677a074758c0b22378fd7aa17`; corrected blob `8b2afb9be022253be047c4e47cbd42d51134dee1`; corrected SHA-256 `f2d0ea0a826f93a71a43f96e18bce3a5da4bd8f4c6687b818b52346ac9b944a5`.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilNegativeWitness.lean`: previous blob `35111c956a8c68047199e1fb2aab9ca24848004d`; corrected blob `abd27c24bfac7422baa4c2482ae71e684b558ff0`; corrected SHA-256 `1bf8c0ec477b51b174cc116b8a09131d8b7cd0ea84ae8d02e6311006cf135722`.

Previous bytes remain at `c14f9934bbe83e7ff5706f6a730947fac003a412` and the original publication commits.
Older adjacent records and README source hashes describe those HISTORICAL bytes;
this versioned record and the individual v2 successors supersede their smooth-domain
descriptions. No old compilation/kernel status is promoted. Original source hashes
were matched before the edits. No other declaration body in those files is changed.

The imported `WeilGaussianLocalization.conductor_bounds_of_localized_witness`
also sees the corrected Admissible predicate; its actual support, MemLp, harch,
Gaussian-tail, cutoff and source-equality premises remain explicit. Its historical
proof does not use the hadmissible field to discharge any of those premises.
The source-level consumer comparison is bounded; repository-wide downstream
compatibility, elaboration and kernel rechecking are NOT_RUN. Incomplete GitHub
search is not evidence that there are no other consumers.

## Nonvacuity and new substantive work

`WeilArchimedeanDomain.exists_admissible_one_at_zero` constructs a genuine smooth
compact bump with f(0)=1 in the corrected predicate and derives its gamma domain.
Its companion domain/tail proofs treat the original arithmetic density, not a
new form. This is not interpolation at any arithmetic zero and not a negative witness.

The RH/GRH source, primitive/nonprincipal distinction, pole components, prime
inventory, conductor, parity and all-window quantifiers are unchanged. Full arithmetic
explicit-formula identity, zero-sum convergence, interpolation, joint tails and
positivity remain unresolved. The new finite-tail bound is for the ARCHIMEDEAN
integral, not for the infinite zero divisor.

Elaboration/build, fresh kernel replay, axiom audit, independent analytic review and
all-source compatibility: NOT_RUN. The prior domain error remains a documented
failure; candidate correction is not a successful verification receipt. No novelty claim.
