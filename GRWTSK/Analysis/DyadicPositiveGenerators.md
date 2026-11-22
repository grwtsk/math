# Dyadic rational approximants and positive square generators

Local source attribution: grwtsk contributors.

## Mathematical consumer and exact scope

`DyadicPositiveGenerators.lean` supplies the elementary scalar-limit statement requested by the positive-generator forest proposal. It uses the existing Mathlib real numbers and square root; it does not reconstruct the real field from foundational axioms or assume that arbitrary real inputs are computable.

Namespace: `GRWTSK.Analysis.DyadicPositiveGenerators`.

For a real number `x` and natural number `n`, the actual finite approximation is

\[
q_n(x)=\frac{\lfloor x2^n\rfloor_{\mathbb N}}{2^n}.
\]

For nonnegative `x`, the module proves

\[
0\le x-q_n(x)<2^{-n},\qquad q_n(x)\longrightarrow x.
\]

Each finite approximation is explicitly the cast of a rational number. On the unit interval it remains in the unit interval. Applying the approximation to `sqrt x` gives

\[
s_n(x)=q_n(\sqrt x)^2\ge0,
\qquad s_n(x)\le x,
\qquad s_n(x)\longrightarrow x
\]

for `x ≥ 0`; each term is the square of a rational number. Finally,

\[
s_n(\max(x,0))-s_n(\max(-x,0))\longrightarrow x
\]

for every real `x`. Thus signs remain explicit when extending nonnegative square generators to signed real coordinates.

## Principal declarations

| Declaration | Meaning |
|---|---|
| `lower_rational` | Every finite floor approximation has a rational representative. |
| `lower_error` | The full signed error is nonnegative and strictly below `(1/2)^n`. |
| `lower_mem_unitInterval` | Unit-interval inputs have unit-interval approximants. |
| `tendsto_lower` | Convergence for each fixed nonnegative real input. |
| `squareLower_rational_square` | Every positive generator is an actual rational square. |
| `squareLower_le` | The square generator is a lower approximant to a nonnegative target. |
| `tendsto_squareLower` | Positive rational-square generators converge to every nonnegative real. |
| `tendsto_signedSquareLower` | Differences of positive generators converge to every real. |

## Source comparison and proof

The dyadic error bound follows from Mathlib's `Nat.floor_le` and `Nat.lt_floor_add_one` after division by the positive denominator. The convergence proof reuses `tendsto_nat_floor_mul_div_atTop` from `Mathlib/Analysis/SpecificLimits/Basic.lean`, composed with `tendsto_pow_atTop_atTop_of_one_lt`. Continuity of squaring and `Real.sq_sqrt` prove the positive-square limit. The identity `max x 0 - max (-x) 0 = x` gives the signed extension.

The pinned upstream source is
[Mathlib/Analysis/SpecificLimits/Basic.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecificLimits/Basic.lean).
Its file authors are Sébastien Gouëzel, Johannes Hölzl, Yury Kudryashov and Patrick
Massot; the upstream Apache-2.0 attribution is retained. The inspected file's
SHA-256 is `99612bce858ecc7b474b279ac386b7b5955d303efff374518064d05db534831d`.

These are applications and elementary consequences of existing Mathlib results. No new theorem about the construction of the real numbers, Weil positivity, RH, or computational complexity is claimed. In particular, `lower` is defined in a noncomputable section and requires the mathematical real input. This is not an algorithm that enumerates every real number or obtains its infinitely many bits for free.

The restriction `x ≥ 0` in the natural-floor convergence theorem is necessary: for negative input the natural floor is truncated at zero. The signed extension explicitly handles negative targets rather than silently dropping that restriction.

## Source and evidence

- Lean: `4.34.1`, compiler commit `5045d0056413266e57c625dcd7c365b10e377c52`.
- Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- First direct check: **FAILED** at the three `Tendsto` declarations because `simp only` did not expose partially applied definitions. Explicit function `change` steps corrected these elaboration failures without changing the statements.
- Final module target: `lake build GRWTSK.Analysis.DyadicPositiveGenerators` **PASSED**, exit 0, no warnings; reported target compilation time 10 seconds.
- Transitive axiom audit: PASSED. Fresh kernel replay: INCOMPLETE (runtime limit reached); see the coordinated check below.
- No `sorry`, `admit`, custom axiom, or `native_decide` is used.
- AI-assisted mathematical review is separate from independent external mathematical review, which remains `NOT_RUN`.

## Coordinated source-bound verification

Lean source SHA-256: `f2402b4ea3688b83c758089f95fa6349fd0f2e68a599ed7837297e16d211c845`.

The completed audit explicitly checked all 106 authored declarations in the
five new modules, plus an independently named comparison theorem with the
exact `GRWTSK.RiemannHypothesis.Target.Statement` conclusion: 107 targets.
This module contributes 14 of those source declarations. Every expected
name was reported exactly once. The transitive axiom union is exactly
`propext`, `Classical.choice`, and `Quot.sound`; no unapproved axiom occurred.
All five source hashes remained unchanged during the audit.

Fresh full-dependency kernel replay is INCOMPLETE. The standard
`leanchecker --fresh -v ForestPublicAudit` invocation reached its 600-second
runtime limit; a direct invocation of the same `replayFromFresh` function
from the pinned `LeanChecker` module reached its 300-second limit. Both
returned exit 124, so neither supplies a passing fresh replay result.
The successful compilation and exact axiom audit are separate completed
observations and are not relabeled by these incomplete replay attempts.

`ForestPublicAudit` is a temporary aggregate importing the five new modules
and the independent target statement. Its compiled SHA-256 is
`8606075bdd60be84918d94c3f6bc06d784d066233b013ddfc644b69d8e1523eb`.
The replay operation checks the imported and newly defined constants in a
fresh environment using Lean's own kernel. It is not a separately implemented
verifier; that independent check remains `NOT_RUN`.

AI-assisted cross-review checked the exact finite matrix interpretation,
normalization, complete-square error allowance, fixed-test limit and
explicit arithmetic premises. It found no blocking mathematical issue.
Independent external mathematical review remains `NOT_RUN`. The formal
checks do not supply the unresolved arithmetic source or certificate
family. Publication and exact source evidence are tracked in
[math issue 1841](https://github.com/grwtsk/math/issues/1841).
