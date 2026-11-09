# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiPointKummerTower.localH0_transition`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiPointKummerTower.lean](../TauCetiPointKummerTower.lean), line 100.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiPointKummerTower.lean#L100).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiPointKummerTower.localH0_transition` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Selmer/Basic.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/TateModule/Basic.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_ADAPTER_SOURCE_CANDIDATE /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream: The Tau Ceti contributors, Apache-2.0.
Revision 2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
Lean v4.36.0-rc1. NOT a root grwtsk/math Lean v4.34.1 import.
-/

/-!
# Source-typed real local E(F) Kummer point fiber and its H0 Tate tower

At level n, m=p^(n+1), with P=E(F), A=E[m](Fsep),
B=E(Fsep), G=Gal(Fsep/F).

U0=A x P, U1=C_cont^1(G,A) x B,
U2=C_cont^2(G,A) x C_cont^1(G,B).
The point correction is -W.basePointCoeff P, not zero.

The actual local H0 is E(F)[m], and its inverse system is
TauCeti.TateModule p W.toAffine.Point using the authentic
tateModuleTransition. This is NOT the geometric T_pE:
TauCeti.TateModule p W.PointCoeff.

All actual cochain and Galois coefficient objects below are sourced
from Tau Ceti; this is an uncompiled adapter candidate.
-/

/-- The ACTUAL invariant-point equivalence, upstream theorem of
Galois descent, rather than an arbitrary chosen point section. -/

/-- Actual source-defined H0 inverse limit of the rational-point
torsion tower. It need NOT vanish at real or complex places. -/

/-- The H0 transition is literally multiplication by p, as
proved by upstream TateModule.tateModuleTransition_apply. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
