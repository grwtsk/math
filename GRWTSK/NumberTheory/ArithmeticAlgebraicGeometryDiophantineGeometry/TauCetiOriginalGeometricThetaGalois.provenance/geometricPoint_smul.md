# `GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricPoint_smul`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiOriginalGeometricThetaGalois.lean](../TauCetiOriginalGeometricThetaGalois.lean), line 81.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricThetaGalois.lean#L81).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricThetaGalois.geometricPoint_smul` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0, at
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1, not an import into grwtsk/math root v4.34.1.
This isolated adapter must import TauCetiOriginalGeometricTheta
from the SAME adapter directory on LEAN_PATH.
-/

/-!
# Original E[n] theta Galois boundary and a STRICT Kummer trivialization

Original theta lifts are actual functions in K(E) where K=Fsep.
The scalar boundary
  U_a(σ,τ) = f_(aσ) τ_(-aσ)^*(σ f_(aτ)) / f_(aστ)
has divisor zero and therefore lies in K^×. For a rational
P=nQ choose the authentic function h_Q satisfying
  div(h_Q)=n(Q)-(P)-(n-1)(O).
Then
  f_σ=τ_Q^*(σh_Q/h_Q)
is a theta lift of a_σ=σQ-Q and satisfies
  f_σ τ_(-aσ)^*(σf_τ)=f_(στ) EXACTLY.
Thus its actual nonabelian theta factor equals 1.

This proves the geometric function-level vanishing mechanism,
not a standalone accepted continuous H² Brauer class:
continuity, independence of arbitrary theta lifts, and
the commutator=original Weil pairing/polarization comparison
still require exact source proofs in Tau Ceti's cochain category.
-/

/-- Same genuine E(Fsep)[n] as in the original local Selmer
Kummer sequence, moved across the source point equivalence. -/

/-- Actual geometric point is n-torsion by the source coefficient. -/

/-- An actual function-field lift for an authentic source
E[n] point. -/

/-- Original source principal divisor for nQ=P. -/

/-- Exact source Galois/translation cancellation for the
genuine original function-field automorphisms. -/

/-- Source EXPLICIT identity with no missing scalar:
fσ τ_{-aσ}^*(σ fτ) = fστ, as functions in original Fsep(E). -/

/-- The original geometric Kummer theta boundary is
literally 1, not just cohomologous to 1.
A continuous H²/Brauer statement still needs the
chosen-lift independence and continuity source checks. -/

/-! The scalar factor of an arbitrary chosen E[n]-cocycle
can now be constructed with the original geometric lifts
and the function-field constant theorem. Its H² class and
polarization with the source Weil e_n still require
continuity and the theta-commutator/Weil reciprocity bridge.
-/

/-- A genuine scalar-valued RAW theta boundary cochain
from the source original elliptic function field. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
