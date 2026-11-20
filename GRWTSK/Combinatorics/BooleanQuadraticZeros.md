# Boolean zeros of a nonnegative quadratic

Local source attribution: grwtsk contributors.

## Maintained mathematical consumer

`BooleanQuadraticZeros.lean` formalizes the discrete-zero part of the positive-generator forest proposal. It gives an exact finite-subset interpretation of one nonnegative real quadratic polynomial and a proved separation between its zero and nonzero Boolean values. These statements can be consumed by a future finite certificate or perturbation checker without assuming that the checker can find a witness efficiently.

Namespace: `GRWTSK.Combinatorics.BooleanQuadraticZeros`.

For natural weights `a : ι → ℕ`, natural target `B`, and arbitrary real coordinates `x`, the maintained expression is

\[
E(x)=\left(\left(\sum_i a_i x_i\right)-B\right)^2.
\]

This is the square of an affine linear expression. A homogeneous quadratic-form representation additionally fixes a leading coordinate to one; that representation is not required by this module.

## Principal declarations

| Declaration | Mathematical statement |
|---|---|
| `energy_nonneg` | The actual real quadratic polynomial is nonnegative at every real vector. |
| `booleanEnergy_eq_square` | Restricting the real coordinates to zero or one gives the square of the exact selected natural sum minus the target. |
| `booleanEnergy_eq_zero_iff` | A supplied Boolean assignment has energy zero exactly when its selected sum equals the target. |
| `one_le_booleanEnergy_of_ne` | Every false integer equation has Boolean energy at least one. |
| `no_boolean_zero_iff_unit_lower` | Excluding every Boolean zero is equivalent to a unit lower bound covering every assignment. |
| `booleanEnergy_zero_iff_estimate_lt_half` | For a supplied assignment, a certified absolute error strictly below one half preserves the zero test. |
| `exists_boolean_zero_iff_subsetSum` | Existence of a Boolean zero is equivalent to existence of an actual finite subset of indices summing to the target. |
| `not_subsetSum_iff_unit_lower` | The corresponding exclusion predicate retains its universal quantifier. |
| `real_zero_and_no_boolean_zero` | The nonnegative polynomial `(2*x-1)^2` has a real zero at one half but no Boolean zero. |

Distinct indices with the same weight remain distinct selectable items. The proofs allow zero weights as well as positive weights. Natural and integer arithmetic are exact and carry no fixed-width overflow assumption.

## Primary mathematical argument and hostile check

The positivity and zero equivalence follow from elementary square identities in the real field. On Boolean coordinates the unsquared difference is an integer. If it is nonzero, its integer square is positive and therefore at least one; the proof transports that integer inequality to the real energy. The half-unit perturbation result follows directly from this gap and the two inequalities supplied by an absolute-error bound.

The finite-subset theorem constructs the selected subset by filtering the full index set. Conversely, a finite subset supplies the Boolean membership assignment. It therefore proves a correspondence between the actual mathematical objects, rather than declaring a new proposition definitionally equal to the sought conclusion.

The final real-relaxation example is an explicit hostile check: replacing Boolean constraints by arbitrary real coordinates changes zero existence. The pointwise perturbation result does not certify the minimum over all assignments.

## Scope and unresolved work

This module does not formalize NP-completeness, a polynomial-time solver, `P = NP`, `NP = coNP`, a complexity bound for certificate search, or an encoding of these energies into the actual Weil kernel. Such claims require their own definitions and proofs. It also does not assume an arbitrary real input can be accessed by a computable procedure.

The encoding and separation proofs are local elementary consequences for the requested proposal. They are not claimed as new complexity-theoretic results or as a formalization of a Cook/Karp theorem.

## Source and evidence

- Lean: `4.34.1`, compiler commit `5045d0056413266e57c625dcd7c365b10e377c52`.
- Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Initial direct source check: passed with a deprecated-import warning and one unused-section-instance warning. Both warnings were corrected without changing the mathematical statements.
- Final module target: `lake build GRWTSK.Combinatorics.BooleanQuadraticZeros` passed, exit 0, with no warnings; the reported target compilation time was 183 seconds.
- Transitive axiom audit: PASSED. Fresh kernel replay: INCOMPLETE (runtime limit reached); see the coordinated check below.
- No `sorry`, `admit`, custom axiom, or `native_decide` is used.
- AI-assisted mathematical review and compilation are recorded separately from independent external mathematical review, which is `NOT_RUN`.

## Coordinated source-bound verification

Lean source SHA-256: `fd74837169a38cbb5b8a1799bd3157bec8534ef00bdba0daab8bf07291ca63d8`.

The completed audit explicitly checked all 106 authored declarations in the
five new modules, plus an independently named comparison theorem with the
exact `GRWTSK.RiemannHypothesis.Target.Statement` conclusion: 107 targets.
This module contributes 23 of those source declarations. Every expected
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
