# The positive-generator forest conjecture

Authors: grwtsk contributors

## Mathematical consumer and source status

`WeilPositiveGeneratorForest.lean` formalizes the proposed certificate statement
and proves its conditional return to positivity of an actual integral kernel.
Its namespace is
`GRWTSK.RiemannHypothesis.PositiveGeneratorForest`.
This is a local formulation and consequence of the November 20, 2026 research
proposal, not a claimed new proof of RH or a direct formalization of a published
Weil criterion. There is no new axiom asserting the conjecture.

The construction was developed from math commit
`417156d807dda632ef6cbf08dc5958037f9e6dd0`, using Lean `4.34.1`
(compiler `5045d0056413266e57c625dcd7c365b10e377c52`) and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
It retains the existing `complexQuadratic` and `kernelForm` conventions. The
new finite algebra and cell-normalization proofs have their own adjacent
provenance records:

- [PositiveGeneratorForest](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PositiveGeneratorForest.md).
- [PositiveForestKernelTransfer](../../FunctionalAnalysis/PositiveForestKernelTransfer.md).

The pre-existing
[WeilPositiveLimitCore.lean](NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilPositiveLimitCore.lean)
provides the `WeilCriterionForZeta` proof-record interface. It does not construct
the arithmetic zeta form or prove the criterion for a concrete form.

## Exact objects

`radius A = A + 1` ranges over positive integer radii. `windowMeasure A` is
Lebesgue measure restricted to the whole interval of that radius. A
`WindowCertificate K A` contains:

- a finite measurable partition with strictly positive cell masses;
- a real rational symmetric approximating matrix interpreted on normalized cell
  indicators, preserving the complex conjugate-first quadratic;
- a finite forest whose leaves have nonnegative rational weights and rational
  real coefficient rows;
- nonnegative rational kernel and matrix error budgets;
- an actual pointwise kernel enclosure on the whole product interval and an
  all-complex-vector quadratic residual certificate.

`UniformWindowCertificate` additionally requires the literal equal-width
interval partition, its exact cell masses, and the mass-weighted relation
`H = h * rawSample`. All equalities and enclosures are proof obligations of a
certificate. They are not obtained merely by naming the fields. The residual
predicate is an exact mathematical inequality, not an implemented finite
decision procedure.

The field named `rawSample` is not required to equal kernel values at specified
nodes. The full-square enclosure is the actual approximation specification.

The pointwise estimate includes cell interiors and boundaries. The finite
moments integrate the complete input function on each cell; the test function
is not replaced by a sampled or projected function. The proved Bessel bound
charges their total squared magnitude to the complete input energy.

## Primary argument and declarations

For a support radius `R`, matrix residual `r`, and whole-square kernel error
`epsilon`, `WindowCertificate.lower` proves

\[
 -(r+2R\epsilon)\int_{-R}^{R}|u(t)|^2\,dt
 \le \operatorname{Re}Q_K(u).
\]

The forest gives a nonnegative finite quadratic. Its signed discrepancy from
the original matrix costs at most `r` times the moment energy. The normalized
cell Bessel bound controls that energy by the full integral of `|u|^2`.
The existing integral-kernel perturbation theorem charges the remaining kernel
error by `2R*epsilon` times the same full energy. Adding the two estimates proves
the displayed inequality. Actual integrability of the signal, its squared norm,
and the kernel integrand is retained in every application.

`ForestConjecture K` requires such a uniform-grid certificate for every window
and every dyadic precision, with total budget at most `(1/2)^k`. This is a
proposition about one fixed kernel at all stages. Its existence is unresolved
for the intended zeta source. It is not an axiom or a computable producer.
The development proves a sufficient implication from this family to kernel
positivity; it does not prove the converse or claim an equivalent reformulation.

`kernel_nonneg_of_forestConjecture` fixes a window and an input function, applies
the finite lower bound at every precision, and uses the existing proved dyadic
limit lemma to obtain nonnegativity of the actual kernel integral.
`no_forestConjecture_of_negative_kernel` gives the contrapositive obstruction:
one admissible negative kernel witness excludes the proposed family.

`integratedKernel Psi` is the literal expression
`Psi(t) + Psi(s) - Psi(t-s)`, cast from real to complex values.
`IntegratedForestConjecture Psi` specializes only this syntax; it does not
identify `Psi` with an arithmetic function, prove evenness or an explicit
formula, or import numerical zero data.

`SourceRealization T W K` requires an exact diagonal identity between the
original target form `W` and the actual integral kernel for every admitted
test. Each test carries its finite integration window, signal and integrability
proofs. The record does not itself require the global signal to vanish outside
that window. In the intended compactly supported derivative representation,
identifying that signal with the derivative, proving its support condition and
proving the source identity are additional source work.

`source_nonneg_of_forestConjecture` transports kernel positivity through that
exact identity. `riemannHypothesis_of_forestConjecture` then returns Mathlib's
actual `_root_.RiemannHypothesis` only when supplied with all three of:

1. that exact source realization;
2. `WeilCriterionForZeta T W`, including its proved positivity equivalence;
3. the all-window, all-precision forest conjecture for the same kernel.

`no_forestConjecture_of_negative_source` excludes the family from a genuine
negative target test. The source equality and criterion are explicit arguments,
not conclusions of the finite algebra or undisclosed assumptions.

## Comparison, hostile checks and unresolved bridges

The analytical argument combines an elementary finite sum-of-squares identity,
Cauchy--Schwarz on cells, the whole-square integral perturbation bound, and a
real limit. It does not depend on checking a finite list of zeta zeros. The
matrix control in the companion forest module proves that positive diagonal
entries can coexist with a negative direction; therefore forest notation
cannot erase the need to bound the signed residual.

The separate Boolean module proves an exact Subset Sum zero encoding and the
failure of real relaxation to preserve Boolean zero existence. It supplies no
reduction into this kernel and no complexity theorem. Existence of arbitrarily
accurate certificates here supplies neither a terminating certificate-search
program nor a polynomial bound on size, arithmetic precision or running time.
No 95-state machine or halting equivalence is implemented in this file.

The missing analytic suppliers are the actual arithmetic kernel/source identity,
its admissible test space and exact Weil criterion, and the certificate family
at every window and precision. Source publication does not discharge them.
No novelty or independence claim is made for the reused analytical route.

## Formal verification

- Source elaboration and compilation: PASSED, direct pinned `lake env lean`
  invocation with `.olean` and `.ilean` output, exit 0 and no diagnostics.
  The profiler reported 149 seconds for imports and 221 milliseconds for the
  principal elaboration phase.
- Source SHA-256:
  `bf37c41399bfdcc3af1ece20aa5fee20bd9ae6a57c7e6c1b7769b9bf9defccf8`.
- Fresh kernel replay: INCOMPLETE (runtime limit reached); see the coordinated source-bound verification below.
- Transitive axiom audit: PASSED; see the coordinated source-bound verification below.
- Independent external mathematical review: NOT_RUN.

The coordinating record is [math issue 1841](https://github.com/grwtsk/math/issues/1841).
The completed source-bound outcomes are recorded below.

## Coordinated source-bound verification

The completed audit explicitly checked all 106 authored declarations in the
five new modules, plus an independently named comparison theorem with the
exact `GRWTSK.RiemannHypothesis.Target.Statement` conclusion: 107 targets.
This module contributes 18 of those source declarations. Every expected
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

An earlier audit that scanned the whole imported environment was interrupted
before emitting any report (exit 130). It supplied no audit evidence.
The completed explicit 107-target audit above replaced that tooling attempt.
Existing local import-source hashes were compared across the concurrent
main update from `d056f19d2d16f427eee3092401d217d980e61cd4` to
`ca2d421e974ca6da8e30b3d64c3410108a81e5a7`; none of the 14 existing
local dependencies changed.
