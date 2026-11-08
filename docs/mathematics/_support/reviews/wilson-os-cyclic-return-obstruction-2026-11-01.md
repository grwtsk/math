# Quantitative Wilson OS six-periodic return obstruction

Local mathematical attribution: grwtsk contributors.
Date: 2026-11-01.

## Mathematical question and source pin

The requested target is either (i) a genuinely positive strict contraction
constant on the COMPLETE source-supported Wilson OS excitation Hilbert, or
(ii) an actual global boundary-corrected contraction on the FULL Wilson OS
Hilbert, including the positive-time boundary and temporal crossing sectors.

The current finite-period Wilson sources DO NOT already prove either.
They construct a TRUE complex OS reflection-positive Hilbert completion,
a first-time contraction only from the completed two-step-supported
subspace K into the full completed OS Hilbert H, a unit vacuum and
complete supported vacuum/excitation decomposition, and an exact
source-squared first-time defect. The source first shift is not an
endomorphism of H. The separate regulated spatial-slice transfer
semigroup is an entirely different construction, not yet unitarily
identified with the complete complex OS quotient.

This increment uses the source's ORIGINAL finite *period-six* time
circle to derive a new **quantitative obstruction to lifting the raw
cyclic shift as a globally contractive physical time evolution**.
It does NOT introduce an artificial zero extension of the source
operator, claim an actual global S was constructed, or import a
numerical spectral gap from another Hilbert space.

Inspected grwtsk/math/main mathematical source at
243870dbf54b13d3efac596079afcda89585afe9.
Before final publication the main complete tree must be refreshed
and direct dependencies compared again.

## Actual source identities retained

- .../FinitePeriodicLattice.lean and
  .../PeriodicTimeTranslation.lean,
  PeriodicTimeTranslation blob
  d6b2d24c2534f637199d049200c29f04432410f3:
  timeTranslation is literally the full-link permutation
  U(x,mu) -> U(x+e0,mu), with time coordinate in ZMod L.
  For L=6, the SIXTH raw shift is the identity on every
  original full Wilson configuration by the original ZMod6
  arithmetic, with no discarded crossing link.
- .../WilsonReflectionQuotient.lean:
  exact source normalized complex reflection pairing and radical.
- .../WilsonReflectionHilbertCompletion.lean blob
  3ff069823e00810afc73d784258f561e8e178af0:
  completed entire actual complex OS quotient H.
- .../WilsonThreeSliceOSBoundedTranslation.lean blob
  00c7493d44f09fc226978de144481efc0c94583b:
  actual period-six first-time transfer on K only,
  A=completedRestrictedTranslation:K->H, with ||Ax||<=||x||.
- .../WilsonThreeSliceOSVacuum.lean blob
  6a24a41bdd2dd502cce0e425739673a006a1855e:
  genuine unit source vacuum, not a freely normalized vector.
- .../WilsonThreeSliceOSExcitationIntertwining.lean blob
  b7bd185e4754f1c7b04cd0b8c90ae5d18d6ad601:
  actual complete vacuum-orthogonal supported
  excitation Hilbert K_exc and excitationTransfer.
- .../WilsonThreeSliceOSTwiceShift.lean blob
  48a4995f03a985a8e4618df4984167fe988a510a:
  original first/second supported shift identities, true
  isometric inclusion J:K->H and true twice shift J2:K->H,
  and full source quantitative equality

      ||x||² - ||Ax||² = (1/2)||Jx-J2x||².       (SOURCE)

  The source comparison is exactly the normalized full
  4D SU(2) Wilson reflection integral, preserving all
  original conjugations, signed complex mixed terms,
  both temporal boundary layers and all links.
- .../WilsonThreeSliceOSDefect.lean:
  true bounded positive self-adjoint source deficit
  D=I_K-A* A, NOT a full physical Hamiltonian.
- Root toolchain Lean v4.34.1; Mathlib
  d13f23b723b8a846827a245b89c10fc7d3f11612.

These Lean sources have no new verified native/kernel
receipts. Source fidelity and proof status are separate.

## Real time-circle geometry vs forward physical semigroup

The raw full Wilson positive-link time translation is a permutation
of a finite period-six (L=6) lattice. The uncorrected physical source
does have the exact field equation

    timeTranslation^6(U)=U                       (1)

for every original configuration U, because six additions
of the ZMod6 time direction equal zero.

Equation (1) is a statement about ORIGINAL finite Euclidean
field configurations. It does NOT supply a well-defined
endomorphism of the full complex OS reflection quotient:
time translation can cross the positive-time support boundary,
so quotient null preservation, full-domain support and
operator boundedness do not follow from (1).

Suppose one tries to introduce a global complex-linear operator

    S:H -> H

that simultaneously:
(a) is a norm contraction, ||S y||<=||y|| for every y∈H;
(b) agrees with ACTUAL source first-time transfer on supported states,

    S(Jx)=Ax for every x∈K;                    (2)

(c) carries the raw periodic return to the physical Hilbert:

    S^6=I_H.                                    (3)

The following no-go is exact even for abstract Hilbert
spaces, and becomes a source-specific obstruction via (2).

## A cyclic contraction is necessarily an isometry

Using (a) repeatedly on the same actual Hilbert vector y:

    ||y||=||S^6 y||<=||S^5 y||<=...<=||S y||<=||y||.

All inequalities are equalities, giving

    ||S y||=||y|| for every y∈H.                 (4)

In fact S is invertible with inverse S^5 and hence
a surjective isometry (unitary complex-linear operator).
A positive-energy physical transfer semigroup typically
has excited singular values strictly less than one;
(4) forbids that structure for a raw cyclic lift.

The maintained source J is an isometry K->H. Combining
(2),(4) returns

    ||Ax||=||S(Jx)||=||Jx||=||x|| for ALL x∈K.   (5)

The ACTUAL original Wilson squared defect then gives

    ||Jx-J2x||²=0 for every x∈K,
    so J=J2 on K.                                (6)

Therefore if ONE source-supported state x with Jx≠J2x
exists, a globally cyclic contractive S agreeing with A
cannot exist. The current source has not yet certified a
nonvacuum witness Jx≠J2x, so (6) is a conditional
incompatibility, NOT an unconditional no-existence
theorem for physical boundary correction.

## A quantitative REQUIRED periodicity defect

The stronger discovery removes assumption (3) and asks:
how much must a globally contractive extension S of the
actual source first step violate the finite-circle return?

For every x∈K, contractivity along the five further steps gives

    ||S^6(Jx)|| <= ||S(Jx)|| = ||Ax||.            (7)

Since J is isometric, the triangle inequality gives

    ||x||
      =||Jx||
      <=||Jx-S^6(Jx)|| + ||S^6(Jx)||
      <=||Jx-S^6(Jx)|| + ||Ax||.

Consequently,

    ||x|| - ||Ax|| <= ||Jx-S^6(Jx)||.              (8)

The complete original one-step OS squared defect is
source-exact, not a guessed delta. Factor it and apply
||Ax||<=||x||:

    ||Jx-J2x||²
      =2(||x||²-||Ax||²)
      =2(||x||-||Ax||)(||x||+||Ax||)
      <=4||x|| ||Jx-S^6(Jx)||.                    (9)

This is an **UNCONDITIONAL quantitative inequality given
only a hypothetically defined global contractive extension S
agreeing with the real supported source A**. It does NOT
claim S exists, nor that any Jx-J2x is nonzero.

It specifies the minimum full-H boundary/periodicity
correction any physical extension would have to pay:
for x≠0,

    ||Jx-S^6(Jx)||
      >= ||Jx-J2x||²/(4||x||).                   (10)

This bound uses the same full normalized finite Wilson
reflection measure and all source excitation components.
No abstract off-diagonal error, positive constant or
partial state truncation was supplied as a new hypothesis.

In particular, a source state with Jx≠J2x
necessarily has nonzero six-step return error under
ANY actual global contraction that agrees with A.
Thus a physically dissipative forward-time extension
cannot also be the literal six-periodic Euclidean
configuration rotation.

## Conflict with a hypothetical strict global source gap

Suppose the source-supported vacuum complement K_exc
contains at least one NONZERO x and one has a strict
uniform gap delta>0:

    ||A_exc v||² <= (1-delta)||v||²
    for EVERY v∈K_exc.                           (11)

If a global S satisfies contraction, source agreement,
and S^6=I, equation (5) gives equality of the
squared norms for this nonzero x, while (11)
requires a strict decrease, a contradiction.

The proof is an obstruction to simultaneously imposing
the proposed global cyclic lift and (11). It does not
prove (11), does not construct a nonzero excitation,
and does not infer a nonzero full-continuum mass gap.

Even WITHOUT exact cyclicity, combining (9) with (11)
gives a quantitative lower bound for every supported
excitation x (including the zero vector):

    delta * ||x|| <=
        2 ||Jx - S^6(Jx)||.                          (12)

A future boundary-corrected global semigroup that
genuinely has a positive source excitation gap
must therefore pay a NONZERO period-return defect
on every nonzero excited state. The factor 2 is
derived from the original source square and the
norm-one bound, not supplied as a boundary parameter.

## Why this advances beyond the previous conditional criteria

The prior finite source gave one-step loss in terms of
J-J2 and a criterion for a positive delta on K_exc.
This increment proves a **quantitative lower bound
on the unavoidable failure of sixth-step return**
for any source-compatible global contraction,
without even hypothesizing delta>0.

This is a new concrete return that informs the actual
architecture of the missing boundary-corrected
global OS semigroup: it must not simply extend the
finite-circle cyclic permutation as a dissipative
unitary-return operator. The boundary correction
or thermal-to-forward-time reconstruction must
alter that return in precisely the source-observable
amount required by (9).

It also gives a hostile test for any future purported
full Hamiltonian construction:
- If it is norm contractive, source-compatible and
  S^6=I, it MUST preserve every supported norm and
  make J=J2. Any claimed strict gap contradicts that.
- If it has norm loss on a supported state, its S^6
  MUST deviate from identity there by (10).
- If S is defined by setting unsupported sectors to
  zero, this might meet a formal norm bound but
  does not establish correspondence to the original
  full Wilson boundary observables. Source agreement
  on K is necessary, not sufficient for physical
  reconstruction.
- If K_exc=0 (as may happen in a degenerate zero-coupling
  quotient), a uniform gap is vacuous and cannot be
  marketed as a physical excitation mass gap.

## Analytic comparison and independent checks

1. Simple two-state model: H=K=C², J=I,
   S=diag(1,r) for 0<r<1. Its global
   forward-time contraction has S^6≠I on the
   excited state; both sides of (8) are nonzero.
   This illustrates how a true dissipative
   transfer can fail cyclic return.
   The model is NOT the original Wilson source.
2. Global cyclic unitary model:
   S=diag(1,e^(2πi/6)) has S^6=I
   and ||Sx||=||x||, so it has no strict
   contraction anywhere. This checks (4).
3. False hypothesis warning:
   contractivity alone with S^6=I does not
   construct the existing original source
   embedding J or prove S(Jx)=Ax. All
   source-observable claims (5)-(10) retain
   that explicit compatibility.
4. The real spatial-slice Wilson regulator
   semigroup U(n) is noncyclic and has a
   finite-regulator full-excitation contraction
   from its separate positive compact kernel.
   This is compatible with the no-go.
   A source-defined isometric complex OS
   intertwiner to that semigroup is still OPEN.
5. The T>=4 raw source has separate coordinate
   support problems and analytical two-slice
   obstructions in grwtsk/math#1449. The
   T=3 cyclic argument is not a proof of
   the general T>=4 physical transfer.
6. The full continuum four-dimensional
   Yang--Mills physical Hamiltonian and
   regulator-uniform mass gap remain OPEN.

The proof is elementary repeated contractivity,
the original source-exact squared defect,
and the triangle inequality. It does not
constitute an independently novel theorem
of functional analysis or establish
prior-art priority. Its research value is
the specific original Wilson return map and
quantitative source-bound obstruction.

## Lean source targets and acceptance

New module:
GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/
QuantumFieldTheoryOnLattices/WilsonThreeSliceOSCyclicReturnObstruction.lean.

Namespace:
GRWTSK.Geometry.GaugeTheory.WilsonThreeSliceOSCyclicReturnObstruction

New declarations:
sixStepReturn, sixStep_norm_le_first,
cyclic_contraction_is_isometric,
AgreesWithOriginalSource,
cyclic_lift_forces_supported_isometry,
cyclic_lift_forces_twice_shift_equality,
sixStep_return_ge_source_norm_loss,
original_twice_shift_le_four_times_return_error,
nontrivial_source_difference_forces_noncyclic_return,
uniform_excitation_gap_forces_period_error,
positive_excitation_gap_forbids_cyclic_lift.

The source Q, K, H, A, J and J2 remain
the unchanged original Wilson definitions.
No imported source, root toolchain, theorem
hypothesis or original observable normalization
was edited to make the new argument easier.

At the final immutable Git source commit:

    git rev-parse HEAD
    lake env lean GRWTSK/QuantumTheory/QuantumFieldTheoryRelatedClassicalFieldTheories/QuantumFieldTheoryOnLattices/WilsonThreeSliceOSCyclicReturnObstruction.lean
    lake build GRWTSK.QuantumTheory.QuantumFieldTheoryRelatedClassicalFieldTheories.QuantumFieldTheoryOnLattices.WilsonThreeSliceOSCyclicReturnObstruction

Check expected exact types, fresh Lean kernel
replay, complete imported dependency closure
and transitive #print axioms, reject sorryAx
and unapproved research axioms. Operational
receipts belong in grwtsk/noeaaeue.

Current source status: mathematical derivation
INSPECTABLE, new Lean code SOURCE_PROOF_CANDIDATE.
Parsing/elaboration NOT_RUN; Lake build NOT_RUN;
fresh kernel replay NOT_RUN; expected types NOT_RUN;
transitive axiom audit NOT_RUN;
native/remote proof execution NOT_DISPATCHED.

**Next noncircular source supplier:**
either a true original-Wilson lower bound on
||Jx-J2x|| uniformly for ALL nonzero K_exc
(or an explicit physical nonzero witness for
strict contraction), or a global positive-time
boundary-corrected semigroup that is not
identified with the period-six cyclic return,
with source-exact agreement on every
physical positive-time boundary sector.
