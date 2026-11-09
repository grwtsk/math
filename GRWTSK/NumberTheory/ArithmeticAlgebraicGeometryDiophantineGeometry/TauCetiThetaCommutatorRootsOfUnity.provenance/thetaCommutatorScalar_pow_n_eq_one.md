# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorRootsOfUnity.thetaCommutatorScalar_pow_n_eq_one`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaCommutatorRootsOfUnity.lean](../TauCetiThetaCommutatorRootsOfUnity.lean), line 144.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaCommutatorRootsOfUnity.lean#L144).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorRootsOfUnity.thetaCommutatorScalar_pow_n_eq_one` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/Commutator.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original mathematical API: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compile with Tau Ceti Lean v4.36.0-rc1 only; the grwtsk/math
Lean v4.34.1 root must not import this adapter.
-/

/-!
# Original geometric theta commutator is a true n-th root of unity

In Tau Ceti's ACTUAL rational-function theta group the projection to
E[n] is additive, the scalar kernel is CENTRAL, and every lift of
an original n-torsion point has central n-th power. The source
commutator-power theorem therefore gives

    [x,y]^n = [x^n,y] = 1.

The ORIGINAL theta commutator is not assigned an abstract Heisenberg
scalar. Its rational-function numerator/denominator was independently
defined as

    f_x tau_{-x.point}(f_y)/(f_y tau_{-y.point}(f_x)),

and the source zero-principal-divisor theorem had already extracted
the UNIQUE original nonzero constant from this function.
The lemmas below compare that actual constant with the group
commutator and prove it lies in the genuine rootsOfUnity n F.

This is a real arithmetic/structural bridge to the *coefficient*
of Tau Ceti's Isogeny.weilPairing; it is NOT YET an equality
with the specific original Weil pairing. Establishing that requires
the explicit source [n]-pullback/divisor comparison and its sign.
-/

/-- The REAL theta commutator now lands in the ORIGINAL
roots-of-unity coefficient group, of EXACT order dividing
n, before source Weil-pairing comparison. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
