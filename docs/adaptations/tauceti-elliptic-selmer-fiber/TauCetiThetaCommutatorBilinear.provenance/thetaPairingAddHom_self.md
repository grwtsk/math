# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorBilinear.thetaPairingAddHom_self`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaCommutatorBilinear.lean](../TauCetiThetaCommutatorBilinear.lean), line 321.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaCommutatorBilinear.lean#L321).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaCommutatorBilinear.thetaPairingAddHom_self` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaCommutatorRootsOfUnity.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/Commutator.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Original Lean v4.36.0-rc1 only; do not import into root v4.34.1.
-/

/-!
# ACTUAL elliptic theta commutator: alternating biadditive E[n] pairing

The original geometric theta group has the REAL elliptic
rational-function law, with a faithful CENTRAL scalar kernel,
and the actual commutator has values in rootsOfUnity n F.

This source derives the alternating biadditive map

    E[n](F) ->+ E[n](F) ->+ Additive (rootsOfUnity n F)

by the REAL original theta group commutator. It does NOT
choose a rank-two Gram pairing or assume the Weil identity.
The genuine function-field scalar is independent of arbitrary
theta lifts over the SAME torsion points, using the original
fibre torsor and central kernel.

The remaining distinct arithmetic result is comparison with
Tau Ceti's independently defined Isogeny.weilPairing, using
its actual [n]-pullback divisor and the orientation of tau.
-/

/-- Centrality also makes the commutator multiplicative
in its SECOND argument; reversing the two arguments
changes the source pairing to its inverse. -/

/-- Source theta-point pairing is multiplicative in the
FIRST torsion point, independent of the theta lift chosen
for the sum s+t. -/

/-- Source theta-point pairing is multiplicative in its
SECOND torsion point, preserving the ORIGINAL order. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
