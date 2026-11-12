# GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.modified_mellin_convergent

Local attribution: grwtsk contributors. Edition 1, 2026-11-11; math#1801.
SOURCE_PROOF_CANDIDATE; novelty UNASSESSED. Source [../MellinVerticalStrip.lean](../MellinVerticalStrip.lean).
Source SHA-256 `b78202a6e418c94a43b7e9bb68021bb38e89679f2eb35f96f8a36fa5543ce66b`; Git blob `e7471c128758b41d509e22c435446d714edc4756`.

```lean
theorem modified_mellin_convergent (P : WeakFEPair ℂ) (s : ℂ) :
    MellinConvergent P.f_modif s
```

The actual modified FE kernel is integrable at every complex exponent.
Ambient variables/instances are those of the linked module; number-theory
levels carry `[NeZero N]`. Retained hypotheses are exactly the displayed header.
Consumer: `DirichletStripBounds.norm_completedHurwitz_pair_le`, via the actual modified Hurwitz kernels.
Full argument, local dependencies and hostile boundary checks: [README.md](README.md).
This is a local consequence/pinned-API adaptation, not a new paper formalization.

David Loeffler, [Mathlib/NumberTheory/LSeries/AbstractFuncEq.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/AbstractFuncEq.lean), `WeakFEPair.f_modif, toStrongFEPair, isStrongFEPair_toStrongFEPair, Λ₀; IsStrongFEPair.hasMellin`; blob `786eaf38768954576399ea35b001bff35aa7138e`. Apache-2.0.

Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Elaboration, fresh kernel replay,
transitive axiom audit and independent review NOT_RUN; prior candidate statuses
are unchanged. Proposed, NOT EXECUTED: `#print axioms GRWTSK.IntegralTransformsOperationalCalculus.MellinVerticalStrip.modified_mellin_convergent`.
