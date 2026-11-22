# Positive generator forests

Local attribution: grwtsk contributors.

## Mathematical source and consumer

This is a local formalization of the finite algebra in the positive-generator
forest conjecture formulated on November 20, 2026. It is not an adaptation of a
paper theorem and makes no novelty claim for weighted square decompositions.
The maintained consumer is
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilPositiveGeneratorForest.lean`,
which combines this algebra with
`GRWTSK/FunctionalAnalysis/PositiveForestKernelTransfer.lean`.

The source was developed against math commit
`417156d807dda632ef6cbf08dc5958037f9e6dd0`, Lean `4.34.1` (compiler
`5045d0056413266e57c625dcd7c365b10e377c52`) and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. It reuses
`RationalEnclosureCertificates.complexQuadratic`; the original complex pairing
and its realification are unchanged.

## Primary argument

For a nonnegative real weight `w` and complex row `a`, the generator energy is
`w * norm(sum_i a_i*c_i)^2`. Its matrix has entry `w * conj(a_i) * a_j`.
Expanding both finite sums proves the exact equality with the existing
conjugate-first complex quadratic. Each such matrix is Hermitian, and each
energy is nonnegative. Structural induction propagates both facts through
binary addition nodes and finite lists of roots. Splitting an addition node
into two roots preserves the entire matrix and every quadratic value.

The separate rationality predicates require rational weights and real rational
coefficient rows; `Generator.ofRational` constructs these cases. Positivity is
proved for all complex rows, but the rational restriction prevents a proposed
finite rational certificate from silently using arbitrary real coefficients.

`QuadraticResidual H forest r` bounds the absolute difference of the original
matrix quadratic and the forest energy by `r * sum_i norm(c_i)^2` for every
complex vector. The lower half of that inequality, together with forest
positivity, proves `quadratic_lower_of_residual`. This is an all-vector
quadratic inequality. The default coefficient-matrix norm is never identified
with a Euclidean induced operator norm.
The residual is an explicit proof obligation, not an implemented executable
decision procedure for rational matrix certificates.

## Independent obstruction and scope

The two-coordinate control matrix with diagonal entries one and off-diagonal
entries `1+d` has value `-2*d` on `(1,-1)`. For positive `d`, the value is
strictly negative. Thus positive diagonal entries do not establish the required
quadratic positivity, and a genuine negative direction rules out any exact
positive forest representation. This control is a generic matrix example,
not an arithmetic counterexample.

No forest for the actual zeta Weil kernel, all-precision forest producer,
source normalization, global positivity criterion, RH proof, complexity bound,
or P = NP proof is supplied here. Those remain separate obligations of the
corresponding consumers. Algebraic forest syntax does not encode assignment
alternatives or justify efficient Boolean zero search.

## Formal evidence

- Initial elaboration/typechecking attempt: completed with a finite double-sum
  ordering error; corrected by explicitly exchanging the dummy indices.
- Second elaboration/typechecking attempt: completed with a real-scalar star
  normalization error and doc-comment placement error; both corrected.
- Final source-bound compilation: PASS, direct pinned `lake env lean -o`
  invocation completed with exit code 0 and no diagnostics, observed on
  November 20, 2026 at 22:56 UTC. This was a direct Lean check, not a separate
  Lake target build.
- Final Lean source SHA-256:
  `761a69f2463e7de53e31a237d2911f29f22d8b518b64c50a5d8e8bf4de9e957b`.
- Emitted `.olean` SHA-256:
  `9f3d9f61ad275b4192e023753d2009cd32abbbdfa922d9bce2a7c7673ca45468`.
- Fresh kernel replay: INCOMPLETE (runtime limit reached); see the coordinated source-bound verification below.
- Transitive axiom audit: PASSED; see the coordinated source-bound verification below.
- Independent external mathematical review: NOT_RUN.

The remaining evidence fields report only checks actually performed for this
module; they do not assert verification of any missing arithmetic source or
all-precision certificate family.

## Coordinated source-bound verification

The completed audit explicitly checked all 106 authored declarations in the
five new modules, plus an independently named comparison theorem with the
exact `GRWTSK.RiemannHypothesis.Target.Statement` conclusion: 107 targets.
This module contributes 38 of those source declarations. Every expected
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
