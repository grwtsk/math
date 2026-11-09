# `GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalThetaGalois.kummerThetaUnit_divisor`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiGeometricThetaKummerBoundary.lean](../TauCetiGeometricThetaKummerBoundary.lean), line 358.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiGeometricThetaKummerBoundary.lean#L358).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalThetaGalois.kummerThetaUnit_divisor` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/TorsionDivisor.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Translation/Place.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Galois/Divisor.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_ORIGINAL_TAUCETI_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Original Tau Ceti authors/contributors, Apache-2.0:
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1. Not an import into grwtsk/math Lean v4.34.1.
-/

/-!
# Genuine geometric theta functions and the Kummer obstruction boundary

For the ORIGINAL elliptic W/F and its ORIGINAL function field
F(W), a theta lift above T ∈ E[n] consists of an actual nonzero
function f with divisor n([T]-[O]). The source EXISTENCE theorem
W.exists_principal_eq_zsmul_ofPoint_sub_infinity supplies f.

Its multiplication is the true translated-function product
  (T,f) * (S,g) = (T+S, f * tau_(-T)^*g).
Its commutator is a nonzero CONSTANT by the source theorem
Divisor.principal_eq_zero_iff, not by a chosen symplectic matrix.

Over Fsep, if P ∈ E(F), nQ=P, the original principal-divisor
criterion supplies h with div(h)=n[Q]-[P]-(n-1)[O].
The functions u_sigma=tau_Q^*(sigma h/h) give actual theta lifts
above a_sigma=sigma Q-Q and satisfy the STRICT crossed identity
  u_sigma * tau_(-a_sigma)^*(sigma u_tau) = u_(sigma*tau).
This is the geometric vanishing mechanism Delta_n(delta_n P)=0.

For arbitrary source Galois one-cocycle a, dividing
  lift(a_sigma) * sigma(lift(a_tau))
by lift(a_(sigma*tau)) gives a nonzero scalar function
with zero divisor: the original theta obstruction RAW cochain.

The remaining ACCEPTANCE obligations are the continuous H2
cocycle/independence lemmas and the geometric commutator comparison
with TauCeti's actual W.torsionCoeffWeilPairing, including its
argument order. No source-verified Weil polarization, Brauer-class
equality, local Kummer orthogonality or BSD theorem is claimed.
-/

/-- Genuine translated divisor law; source translation
moves point places and fixes the underlying field constants. -/

/-- The divisor n[Q]-[P]-(n-1)[O] is of degree zero and
sum nQ-P. The source divisor-sum criterion makes it principal
precisely when Q is a genuine n-division point of P. -/

/-- The source H² scalar obstruction cochain of the actual
E[n] cocycle, before the continuity/cocycle-class audit. -/

/-! Main remaining type-level gates:
1. show the raw scalar uniquely lies in Ksep× and its
   Galois two-cochain is continuous and a 2-cocycle;
2. show u_sigma has the thetaDivisor of σQ−Q from the
   original point-place/Galois divisor computation,
   so strict crossed identity implies Delta_n(delta P)=0
   in the actual nonabelian continuous H²;
3. use central polarization group-word theorem and prove
   the theta commutator equals the ORIGINAL source e_n
   with its correct sign. These are NOT claimed solved
   by this isolated, uncompiled source candidate.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
