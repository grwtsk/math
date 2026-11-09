# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaSelectedLiftContinuity.originalThetaScalarContinuous_of_selectedLiftOrbits`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaSelectedLiftContinuity.lean](../TauCetiThetaSelectedLiftContinuity.lean), line 198.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaSelectedLiftContinuity.lean#L198).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaSelectedLiftContinuity.originalThetaScalarContinuous_of_selectedLiftOrbits` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaBrauerH2Transport.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaFiniteOrbitTopology.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original mathematics and code: The Tau Ceti contributors,
Apache-2.0, TauCetiProject/TauCeti
@ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Lean v4.36.0-rc1, isolated from grwtsk/math v4.34.1.
-/

/-!
# Exact finite selected-lift continuity -> ORIGINAL theta Brauer H²

Pinned Tau Ceti already proves
* W.TorsionCoeff n is a genuine finite Galois module E[n](Fsep),
* its action is continuous for the DISCRETE coefficient topology,
* the original rational-function theta factor is exactly
      scalarLift(c(sigma,tau)) =
          s(a(sigma)) * sigma(s(a(tau))) * s(a(sigma*tau))^-1,
* the central scalar factor satisfies the 2-cocycle law,
* UnitsCoeff F is a DISCRETE continuous Galois module,
* H²(G_F,UnitsCoeff F) is the actual Brauer cohomology.

This file DERIVES continuity of the REAL theta scalar
2-cochain from orbit continuity of ONLY the selected
geometric theta lifts s(t), one for each genuine
torsion coefficient t in E[n]. There are n² such
coefficients for n invertible in F.

Unlike the earlier theta-Brauer adapter, neither
continuity of the scalar factor itself, nor global
continuity of the infinite theta group action,
nor the cocycle law is inserted as an extra premise.

This source edition uses ⊤ for its locally discrete topology;
the earlier ⊥ declaration was mathematically indiscrete
and could not support the asserted discrete topology instance.

The remaining source arithmetic supplier is now
the specific assertion that each chosen actual
elliptic rational function s(t).function has an
open Galois stabilizer (finite algebraic descent).
That follows classically because each function is
a rational expression in finitely many algebraic
coefficients. Its precise proof using original
Tau Ceti Weierstrass function-field basis and
polynomial numerator/denominator is still OPEN in Lean.

No unconditional Brauer theta class, original Weil
commutator, local abelian Tate separation, or
BSD theorem is claimed.
-/

/-! Only the SOURCE theta lift and its coefficients receive
the DISCRETE (⊤), not the indiscrete (⊥), topology. This does NOT change the imported
topology of F or assert that F is a discrete local field. -/

/-- Source pinned `W.PointCoeff.instContinuousSMul`
already proves continuity of the POINT coordinate.
Consequently, continuity of the selected real
RATIONAL FUNCTION coordinates alone proves
continuity of all selected theta lift orbits.

The proof uses a faithful coordinate embedding of
the actual geometric theta group into the original
point coefficients and the real function field.
No substitute Heisenberg group appears. -/

/-- The genuine original raw theta scalar is continuous
in the real `(Fsep)ˣ` discrete topology. This uses
only the selected genuine torsion theta lift orbits,
the ORIGINAL continuous E[n] cochain, source group
boundary equality, and faithful scalar inclusion. -/

/-- REAL original canonical Brauer H² is constructed from
the geometric theta scalar under only the smaller
original selected-lift orbit continuity premise.
The source multiplicative cocycle law is already
PROVED in the prior theta Galois scalar module. -/

/-! ## Return to the ORIGINAL local Brauer invariant

The actual source normalized `h2MuEquivZMod`, not an
independently chosen residue character, is now available
conditional on the selected elliptic rational-function
orbits and n-torsion of the genuine Brauer class.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
