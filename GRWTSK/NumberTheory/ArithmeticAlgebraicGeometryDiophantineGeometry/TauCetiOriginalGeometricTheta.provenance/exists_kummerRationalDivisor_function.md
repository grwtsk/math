# `GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta.exists_kummerRationalDivisor_function`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiOriginalGeometricTheta.lean](../TauCetiOriginalGeometricTheta.lean), line 516.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean#L516).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta.exists_kummerRationalDivisor_function` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/TorsionDivisor.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Translation/Place.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/FieldTheory/FunctionField/Divisor/Automorphism.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/FieldTheory/FunctionField/Divisor/Principal.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/Divisor/Sum.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original arithmetic and code sources: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Lean v4.36.0-rc1; NEVER a grwtsk/math v4.34.1 root import.
-/

/-- Original function-field translation by -T; the original
point-place source makes its divisor action R ↦ R+T. -/

/-! ## The actual theta GROUP law and central scalar kernel

Prove associativity/inverses in the original rational function
field using the original translation composition law. The
scalar kernel is the actual constant field by the source
principal-divisor-zero criterion.
-/

/-- Original translations act associatively, in the
source pullback order. -/

/-- Source-level associativity of the actual theta products. -/

/-! ## Function-level ratio and scalar torsor of two theta lifts

The actual theta lifts above one ORIGINAL elliptic torsion point
differ by one and only one base-field unit. Unlike a choice of
a perfect pairing, this uniqueness comes from the previous
source divisors and the faithful scalar algebra map.
-/

/-- The group-theoretic quotient x*y^-1 of theta lifts over
the SAME original elliptic torsion point has the LITERAL
rational-function quotient f_x/f_y as its function field unit.
The source minus-translation is crucial for cancellation. -/

/-- Hence the source-geometric scalar kernel is CENTRAL,
as required by a Mumford theta extension. -/

/-! ## Source-level centrality of the actual theta group commutator

The projection of the genuine theta group to its original
elliptic n-torsion points is additive. Its kernel consists of
scalar rational functions, already proved central above.
This supplies exactly the commutator centrality hypotheses
needed by BOTH published theta-polarization orientations,
without postulating a perfect pairing or choosing a scalar.
-/

/-- The commutator really lies in the ORIGINAL constant
field; this is the nontrivial source geometric scalar
fact, prior to identifying it with e_n. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
