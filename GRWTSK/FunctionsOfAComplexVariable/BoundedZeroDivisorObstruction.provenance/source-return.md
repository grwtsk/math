# Bounded zero divisors and escaping nonreal roots

Maintained source: [`BoundedZeroDivisorObstruction.lean`](../BoundedZeroDivisorObstruction.lean).
Source SHA-256: `3f88354e57c53aec2defe12e5770cca228987ebccff55f43edec4f96e5855f7e`.
Primary subject: zeros of entire functions (MSC2020 30D20).
Consumer: hostile control for finite spectral acceptance and the all-scale
return tracked in grwtsk/math#124.

## Exact declarations

Namespace: `GRWTSK.Analysis.ComplexAnalysis.BoundedZeroDivisorObstruction`.
The main result is `exists_same_disk_divisor_with_nonreal_zero`:
for every entire `f : Complex -> Complex` all of whose zeros are real, and every
real `R >= 0`, there exists an entire `g` whose `analyticOrderAt` agrees with
that of `f` at every point of the closed radius-`R` disk, while `g` has a nonreal
zero `w` with `R < norm w` and `f w != 0`.

Supporting declarations are `escapeFactor`, `escaped`,
`escapeFactor_differentiable`, `escaped_differentiable`,
`escapeFactor_ne_zero`, `escaped_eq_zero_iff`, `analyticOrderAt_escaped`,
`escapeFactor_at_I_mul`, and `escaped_even`.
Each has the exact input hypotheses displayed in its source; no existence
oracle, research axiom, or asserted property of actual zeta zeros is introduced.

## Complete analytic argument

Set `a = R + 1` and `g(z) = (z^2 + a^2) f(z)`. The factor is a polynomial and
hence entire. If it vanished with `norm z < a`, taking norms in `z^2 = -a^2`
would give `(norm z)^2 = a^2`, contradicting `0 <= norm z < a`.
Thus the factor is nonzero everywhere in the closed radius-`R` disk.
Its analytic order is zero there; additivity of analytic order under products
preserves every source multiplicity exactly, including zero-free points.
At `w = I*a` the quadratic vanishes, `norm w = a > R`, and `im w = a > 0`.
The original `f(w)` is nonzero because a zero there would contradict the
assumed real-rootedness of `f`. Multiplication also preserves evenness when it
is present, since `(-z)^2 = z^2`.

A distinct elementary check factors the quadratic as `(z-I*a)(z+I*a)` and
locates both new roots directly. The Lean proof instead uses norms to exclude
interior roots and an analytic-order identity to retain multiplicities. This
comparison is not independent review or a separate compiled proof.

## Dated prior-art and declaration correspondence

On 2026-11-17 this was treated as an elementary polynomial obstruction, not a
novel theorem and not a formalization of a named paper. The exact imported
analytic-order API is in
[`Mathlib/Analysis/Analytic/Order.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Analytic/Order.lean):
`analyticOrderAt_mul` and `AnalyticAt.analyticOrderAt_eq_zero` supply only the
local-order calculus. Entire-function analyticity is supplied by the pinned
complex-analysis library. No upstream source proof body is copied.
The existing canonical consumer `XiDeterminantCircleCount` uses the same
analytic-order semantics, so this control attacks its finite-evidence boundary
without redefining the zeta target.

## Nonclaims and unresolved source return

The theorem is about the class of entire functions. It does not preserve the
Euler product, gamma factor, pole data, explicit formula, growth class, or
nonzero measured values of `f`. It is not an alternative Riemann zeta function,
a counterexample to RH, a proof of logical independence, or a claim that finite
verification plus a separately proved global theorem could never suffice.
It shows that bounded zero-divisor data ALONE, even with entirety and optional
evenness, do not determine global real-rootedness. Arithmetic source identities
and universal tail/convergence theorems remain essential additional information.

## Source identity and evidence

Local attribution: grwtsk contributors. Prepared on 2026-11-17
(America/Los_Angeles; publication may have a 2026-11-18 UTC date).
Coordinating issue: https://github.com/grwtsk/math/issues/124.
Reviewed mathematics base: `bce5626050479f84c01b75fd5e40a48340bb9bfa`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. Root imports and dependency pins are unchanged.

Disposition: formal-source candidate with a written analytic argument.
Novelty: `UNASSESSED`; no new mathematical priority claim is made.
Elaboration/typechecking, targeted build, fresh kernel replay, transitive axiom
audit, full repository validation, and independent review: `NOT_RUN`.
Static source inspection is not any of those checks. Historical verification of
an imported module is not transferred to this new source or its import closure.

The required legacy `noe-proof-automation/SKILL.md` path returned HTTP 404
at `grwtsk/noeaaeue/main` revision
`4fa80985707dd5f3fac5d01ab0ee7a1bb0e96a46`; that revision's skill catalog says
former skill leaves and names have been retired. Dependent automation was
stopped. Source authoring and connector publication follow this repository's
AGENTS/CONTRIBUTING policy. The publication commit, blob identities, main
readback, and any subsequent evidence belong in the coordinating issue.
