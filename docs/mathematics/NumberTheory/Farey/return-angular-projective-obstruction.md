# Farey mod-three angular channel: oriented versus projective observations

**Classification:** source-level finite algebraic obstruction; **NOT_RUN / NOT_KERNEL_AUDITED**.
This is repository-derived mathematics, not an external paper theorem or an
unattributed historical claim. All Lean/Mathlib upstream results retain
their existing identities and license.

**Primary source:** `GRWTSK.NumberTheory.Farey.ReturnAngularProjectiveObstruction`
(source introduced on main at commit
`94ea7f741c162ff60d93e47e54124845f29e2764`,
blob `08c7754c5116d7885613caf56e6b2005ab9a7167`).
**Direct source:** `ReturnAngularChannel`, blob
`df4c90661a7f0a6897d274604de22850b703d38b`.
All these are source-only until exact-commit compilation, kernel replay
and full transitive axiom audit actually succeed.

## Exact mathematical claim

The actual positive Farey word `[left,right]` acts by

    H = [[1,1],[1,2]]

on the integral frame, with the selected real expanding eigenchannel
`lambda_plus=(3+sqrt(5))/2`. On reduction mod 3, this SAME ordered
matrix satisfies `H^2=-I`, not `H^2=I`. Its selected nonzero vector orbit is

    v0=(1,0), v1=(1,1), v2=(2,0), v3=(2,2), v4=v0.

As vectors over `ZMod 3`, `v2=-v0` and `v3=-v1`.
The actual oriented-vector phase observable is

    phi(v0)=1, phi(v1)=i, phi(v2)=-1, phi(v3)=-i,

hence `phi(v2) != phi(v0)` and `phi(v3) != phi(v1)`.

A function on the projectivization necessarily identifies `v` with
`-v`, since `-1` is a unit in `ZMod 3`. Its pullback `f`
must satisfy the *necessary* invariance `f(-v)=f(v)`.

The theorem `no_projective_selected_phase_extension` therefore states
that **no** complex-valued readout on the vector carrier can simultaneously:
(1) be sign-invariant at every vector; and (2) agree with this exact
quarter-turn phase at all four reached Farey-orbit states.

This is stronger than rejecting a single pointwise choice of coordinates:
the contradiction applies to **every** proposed readout respecting this
necessary projective-gauge invariance, but only if it is required to
reproduce the specified oriented phase.

## Formal declarations and hypotheses

- `residueOrbit_two_eq_neg_zero`, `residueOrbit_three_eq_neg_one`:
  finite equalities of actual `ZMod 3` vectors.
- `orbitPhase_two_ne_zero`: the source-defined complex phase distinguishes
  two antipodal vectors. No positivity or spectral limit assumption.
- `SignGaugeInvariant`: **explicit necessary** invariance under `-1`.
- `AgreesWithOrbitPhase`: equality with the existing four-state
  observable at **all four** source-labelled states.
- `no_sign_invariant_orbit_phase`: contradiction from these exact two
  hypotheses, using the antipodal pair.
- `no_projective_selected_phase_extension`: quantifies over **all**
  readouts satisfying both hypotheses and refutes their existence.

## What this does and does not close

This source candidate supplies the missing **projective/gauge obstruction**:
the quarter-turn `i` character is legitimate for the selected
**oriented-vector** four-cycle but cannot simply be reinterpreted as a
projective two-cycle observable. In particular the projective action of
the selected `H` has period dividing two, because `H^2=-I`.

It does NOT refute the oriented vector spectral product
`z_n=lambda_plus^n i^n`; that observation deliberately preserves an
orientation lift. It does NOT rule out projective eigenvalues `+1`
or `-1`, a correctly constructed sign-invariant squared-phase
observation, a gauge-fixed lift, an enlarged representation, or a different
source-defined return. Those require their own source and theorems.

No global representation of `SL_2(Z)`, real/complex operator spectrum
beyond the finite return, continued-fraction asymptotic, log-correlated
Sarnak or Siegel-zero theorem, Fredholm determinant, analytic continuation,
Riemann Hypothesis or concrete empirical spiral identification is asserted.

## Independent finite checks, not acceptance

External SymPy exact modular matrix arithmetic confirmed
`H^2=-I mod 3`, `H^4=I mod 3`, the actual four-vector orbit,
and the antipodal/sign-changing phase pairs. The joint prior finite
suite additionally checked 511 Farey words lengths 0..8 and return
projector algebra. These are **NOT** Lean elaboration, kernel checks
or transitive axiom audits. The local environment has no Lean/Lake
executables. See exact-commit verification issue (queued separately).

## Next bounded supplier

Construct an **actual source-preserving projective angular channel**
(with eigenvalues constrained by the projective return action) OR an
explicit oriented lift and admissible gauge class for a nonperiodic
Farey/continued-fraction cocycle. Do not infer a physical winding
phase from the finite vector orbit without such a bridge.
