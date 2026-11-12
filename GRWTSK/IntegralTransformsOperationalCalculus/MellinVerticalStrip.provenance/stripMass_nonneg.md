# GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.stripMass_nonneg

Local attribution: grwtsk contributors. Edition 1, 2026-11-11; math#1801.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Source [../MellinVerticalStrip.lean](../MellinVerticalStrip.lean).
Source SHA-256 `b78202a6e418c94a43b7e9bb68021bb38e89679f2eb35f96f8a36fa5543ce66b`; Git blob `e7471c128758b41d509e22c435446d714edc4756`.

```lean
theorem stripMass_nonneg (f : ℝ → ℂ) (a b : ℝ) : 0 ≤ stripMass f a b
```

Each defining integral is nonnegative; this alone is not a convergence assertion.
Ambient variables/instances are those of the linked module; number-theory
levels carry `[NeZero N]`. Retained hypotheses are exactly the displayed header.
Consumer: `DirichletStripBounds.norm_completedHurwitz_pair_le`, via the actual modified Hurwitz kernels.
Full argument, local dependencies and hostile boundary checks: [README.md](README.md).
This is a local consequence/pinned-API adaptation, not a new paper formalization.

David Loeffler, [Mathlib/Analysis/MellinTransform.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/MellinTransform.lean), `mellin, MellinConvergent, HasMellin`. Apache-2.0.

Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN; prior candidate statuses
are unchanged. Proposed, NOT EXECUTED: `#print axioms GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.stripMass_nonneg`.
