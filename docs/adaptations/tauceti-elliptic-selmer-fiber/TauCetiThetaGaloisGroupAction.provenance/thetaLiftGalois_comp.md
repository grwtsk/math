# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction.thetaLiftGalois_comp`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaGaloisGroupAction.lean](../TauCetiThetaGaloisGroupAction.lean), line 136.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaGaloisGroupAction.lean#L136).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisGroupAction.thetaLiftGalois_comp` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricThetaGalois.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ORIGINAL_SOURCE_PROOF_CANDIDATE; PARSING_NOT_RUN; COMPILATION_NOT_RUN;
FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original sources: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible upstream toolchain Lean v4.36.0-rc1; NOT a grwtsk/math
Lean v4.34.1 root import. Both isolated theta adapters must be
available via the Tau Ceti LEAN_PATH.
-/

/-!
# The genuine Galois action by automorphisms of the actual theta group

Prior source already defines
  * ThetaLift (E/Fsep,n) with its REAL function-field Group law,
  * thetaLiftGalois σ x with original elliptic point and rational
    function Galois actions,
  * W.functionFieldGaloisAction_translation,
  * W.pointGaloisAction and true Galois action on E[n].

This source proves the group-action axioms directly on those exact
objects, with the translated function argument and sign preserved.
No chosen finite Heisenberg group, proxy E[n], Brauer factor or
period-index function is introduced.

This is a SOURCE PROOF CANDIDATE, not a kernel result.
Continuous Galois SMul for the entire (infinite) theta group, the
original raw scalar's finite-level continuity, its H² class and the
geometric commutator = original Weil pairing remain separate.
-/

/-- Source ORIGINAL Galois and theta translation commute,
including the actual minus sign of the theta group law. -/

/-- Genuine Galois composition on the source theta lifts;
the action convention is the ORIGINAL Tau Ceti
homomorphism into automorphisms, not its opposite. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
