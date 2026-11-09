# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneClassInvariant.originalThetaScalar_representativeChange`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaHOneClassInvariant.lean](../TauCetiThetaHOneClassInvariant.lean), line 160.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaHOneClassInvariant.lean#L160).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneClassInvariant.originalThetaScalar_representativeChange` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaHOneRepresentativeGauge.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaBrauerH2Transport.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Pinned Tau Ceti contributors, Apache-2.0, upstream
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Build ONLY with Tau Ceti Lean v4.36.0-rc1 and isolated adapter LEAN_PATH.
-/

/-!
# An ACTUAL theta H¹ -> continuous Brauer H² obstruction

A genuine H¹ representative change is b = a + d⁰t, not just
a change of the arbitrary scalar SECTION. The source adapter
TauCetiThetaHOneRepresentativeGauge supplies the real
t∈E[n], gauge v = thetaLift(t), and unique CONTINUOUS scalar
1-cochain k such that

    v⁻¹ s(aσ) σ(v) = scalarLift(kσ) s(bσ).

This file proves the connecting-factor identity
    c_a(σ,τ) =
      kσ σ(kτ) kστ⁻¹ c_b(σ,τ)

directly from the nonabelian theta GROUP law, original
Galois action and centrality, then passes through the
ORIGINAL Tau Ceti H2pi_eq_iff and mem_B2_iff' with
a continuous 1-cochain. It never assumes that the
desired H¹-representative independence is true.

The resulting map on actual original H¹ exists as a
quotient SET MAP, not an additive homomorphism:
the period-index theta obstruction is quadratic and
must not be treated as a linear regulator.

Its Weil commutator polarization and Brauer n-torsion
remain independent arithmetic/geometric obligations.
-/

/-- Original nonabelian boundary, with the SAME exact
σ-twist and multiplication order as the source scalar. -/

/-! ## Actual elliptic source Galois factor identities -/

/-- The original raw theta scalars of two genuine
H¹-cohomologous E[n] cocycles differ by the exact
continuous scalar 1-cochain produced from their
genuine rational-function theta lifts. This is the
source-level connection needed for Brauer H². -/

/-- The actual source H² classes of H¹-equivalent
E[n]-cocycles are equal. The continuous scalar
cochain is CONSTRUCTED from original elliptic
rational functions; the equality is derived using
Tau Ceti's original H²pi_eq_iff / mem_B2_iff',
not supplied as a circular arithmetic hypothesis. -/

/-- The original geometric theta obstruction is a
well-defined SET MAP on the ACTUAL source continuous
H¹(F,E[n]) quotient (not an additive homomorphism:
theta period-index obstructions are quadratic).
This uses the true source quotient surjection
and the PROVED representative-invariance statement. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
