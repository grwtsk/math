# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor.originalThetaFactor_twoCocycle`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaGaloisScalarFactor.lean](../TauCetiThetaGaloisScalarFactor.lean), line 193.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaGaloisScalarFactor.lean#L193).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGaloisScalarFactor.originalThetaFactor_twoCocycle` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaGaloisGroupAction.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ORIGINAL_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti authors/contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
This must be compiled in the isolated Tau Ceti Lean v4.36.0-rc1
toolchain, not grwtsk/math native Lean v4.34.1.
-/

/-!
# The original theta raw scalar IS its genuine Galois group boundary

The previous raw `thetaObstructionScalar` was extracted from
a quotient of REAL elliptic rational functions with zero divisor.
The source now proves that its actual scalar theta lift equals
the nonabelian connecting factor of the actual Galois theta group:

  scalarLift(c(σ,τ)) =
     lift(aσ) * (σ • lift(aτ)) * lift(a(στ))^-1.

The proof uses the genuine theta group `Group` instance,
the ORIGINAL elliptic torsion point quotient, the true
function-field ratio lemma and the injective constant-field
algebra map. It does not define c to fit a desired cocycle.
No abstract replacement coefficient module, chosen perfect
pairing, or assumed Brauer H² theorem is used.

From this source identity and the genuine Galois group action,
the multiplicative 2-cocycle law follows by central group
algebra. This discharges the missing ALGEBRAIC factor-law
input of TauCetiThetaBrauerH2Transport, but DOES NOT yet
prove the raw theta scalar CONTINUOUS or the full class
independent of arbitrary Galois one-cocycle representatives.
Those must be provided separately before Brauer H².
-/

/-- Exact equality of the source original theta-product point
and the source original E[n] cocycle's `σ τ` point.
It is the TRUE Weil coefficient cocycle, not a coordinate proxy. -/

/-- A SOURCE-EXACT original Galois scalar factor,
not a separate arbitrary function. -/

/-- The actual theta scalar source uniquely records
the group boundary; no further choice of scalar is possible. -/

/-- Only the centrality commutation is needed to
derive the source exact nonabelian group-word identity. -/

/-- Exact algebraic boundary identity with CENTRAL scalar
factor and the original Galois action on the real theta
group. This is the same group algebra as the independently
authored root module, now instantiated on the original
source Galois theta action. -/

/-- The REAL original elliptic theta scalar satisfies the
FULL multiplicative 2-cocycle identity with the ORIGINAL
absolute-Galois action. This is derived by centrality of
the actual rational-function scalar kernel and the
previous source group-boundary identification. No
`ThetaScalarFactorLaw` proposition is assumed. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
