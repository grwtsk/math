# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaFunctionFieldOrbitContinuous.ratFuncOrbit_isLocallyConstant`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaFunctionFieldOrbitContinuous.lean](../TauCetiThetaFunctionFieldOrbitContinuous.lean), line 133.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaFunctionFieldOrbitContinuous.lean#L133).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaFunctionFieldOrbitContinuous.ratFuncOrbit_isLocallyConstant` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaSelectedLiftContinuity.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE; LEAN_PARSING_NOT_RUN; COMPILATION_NOT_RUN;
UPSTREAM_PINNED_BUILD_NOT_RUN; FRESH_KERNEL_NOT_RUN;
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original source authors: The Tau Ceti contributors (Apache-2.0),
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible isolated Lean v4.36.0-rc1; the grwtsk/math root v4.34.1
and its umbrella imports MUST NOT be changed.
-/

/-!
# Actual elliptic function-field Galois orbits are locally constant

The earlier revision incorrectly declared an indiscrete (⊥) units
topology while claiming DiscreteTopology. The correct discrete
TopologicalSpace is (⊤); this revision fixes that defect.

This discharges the genuine original *arithmetic* finite-descent
premise that the prior theta/Brauer H² adapter retained:
    SelectedThetaFunctionOrbitsContinuous W n.

The argument is on the ACTUAL separable-closure elliptic function
field K(E), not on a proxy polynomial, matrix theta, or selected
arbitrary scalar. K=Fsep, G=Gal(K/F).

1. For each p in K[X], p has FINITE coefficient support.
   The original Tau Ceti IsIntegral.isLocallyConstant_apply says
   the Galois orbit of EVERY coefficient in algebraic K/F is
   locally constant. A finite intersection yields local constancy
   of sigma |-> p.map sigma.
2. RatFunc K has an ORIGINAL normalized numerator and denominator.
   The pinned num_mapRingHom/denom_mapRingHom identities transfer
   the two polynomial orbit results to every rational function.
3. The ACTUAL Weierstrass function field has the ORIGINAL
   Fin 2 basis {1,y} over RatFunc K, and pinned
   functionFieldGaloisAction_basis_repr transports each coordinate
   by the genuine RatFunc coefficient action. Only two locally
   constant coordinates must be compared.
4. Finally a genuine function-field unit has locally constant
   Galois orbit in the DISCRETE units topology, using Units.ext.
   Apply this theorem to each ORIGINAL selected theta function,
   giving the previous SelectedThetaFunctionOrbitsContinuous
   with NO extra arithmetic premise.

Consequences:
- originalThetaScalar_continuous_of_functionOrbits now produces
  ThetaScalarContinuous W n a for every original continuous
  E[n]-valued 1-cocycle a;
- originalThetaBrauerH2_of_continuous thereby constructs the
  source-genuine continuous H²(G_F, UnitsCoeff F) theta class
  without a separately assumed theta scalar continuity;
- original local mu_n/ZMod n normalization STILL requires
  separate n-torsion of the genuine theta Brauer class.

None of this proves the original theta commutator=Weil identity,
class invariance under a CHANGE OF E[n] 1-cocycle representative,
local abelian Tate separation, derived Selmer duality or BSD.
-/

/-- The ACTUAL nonzero function-field unit has locally
constant absolute-Galois orbit, as a UNIT, not just
as an element of a substitute coefficient vector space.
The original source function-field automorphisms
preserve units and the unit inclusion is faithful. -/

/-- The entire prior source-typed selected-function
orbit premise is discharged, using only actual
pinned elliptic rational functions and their original
Galois action. No arbitrary theta scalar or local
Brauer class is supplied as a hypothesis. -/

/-- ONE common OPEN Krull fixing set for all selected
ORIGINAL theta-function units. The genuine E[n] coefficient
group is finite (source `finite_torsionCoeff`), so finitely
many individual open unit stabilizers can be intersected.
This is a finite Galois descent input on the actual
elliptic functions, not a selected Brauer regulator. -/

/-- The actual theta scalar 2-cochain is now
unconditionally CONTINUOUS for every original
elliptic n-torsion Galois 1-cocycle, at the
source-candidate mathematical level.
The separate scalar 2-cocycle LAW has already
been derived from the source theta group. -/

/-! Not proved here: n-torsion of this Brauer class,
choice/representative independence in Galois H²,
original Mumford commutator=TauCeti.Isogeny.weilPairing,
and the local abelian Tate separating/adjunction theorem.
These are distinct genuine arithmetic obligations. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
