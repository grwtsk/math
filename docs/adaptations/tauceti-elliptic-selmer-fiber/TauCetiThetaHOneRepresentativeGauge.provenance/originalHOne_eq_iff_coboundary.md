# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneRepresentativeGauge.originalHOne_eq_iff_coboundary`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaHOneRepresentativeGauge.lean](../TauCetiThetaHOneRepresentativeGauge.lean), line 86.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaHOneRepresentativeGauge.lean#L86).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaHOneRepresentativeGauge.originalHOne_eq_iff_coboundary` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaFunctionFieldOrbitContinuous.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaGaloisScalarFactor.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
The original Tau Ceti contributors, Apache-2.0, pinned
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible Tau Ceti Lean v4.36.0-rc1 ONLY, not root math v4.34.1.
-/

/-!
# Original H¹ cocycle representatives: actual theta gauge and scalar correction

For genuine original a,b in Z¹(G_F,E[n]) with the SAME H¹
class, the PINNED Tau Ceti H1pi_eq_iff says there is an
ACTUAL 0-cochain t∈E[n] satisfying

    bσ = aσ + σt - t.

Choose v = geometricLift(t), and write s(aσ),s(bσ) for
the ORIGINAL rational-function theta lifts. Then

    gσ = v⁻¹ s(aσ) σ(v)

has underlying elliptic point bσ. The previously proved
source scalar-torsor theorem supplies the UNIQUE
kσ ∈ (Fsep)× with

    gσ = scalarLift(kσ) · s(bσ).

Because the original theta scalar boundary is central,

    b_g(σ,τ) = b_a(σ,τ).

The above equation gives the exact normalized 2-coboundary

    c_a(σ,τ) = kσ σ(kτ) kστ⁻¹ c_b(σ,τ).

This file makes the H¹ representative change and the
source kσ precise. Continuity of kσ is not arbitrary:
it follows from the ALREADY PUBLISHED function-field
finite Galois orbit theorem for the selected s(t), the
fixed lift v=s(t), and the faithful original scalar
inclusion, without changing the Krull topology.

This is NOT a new theta/Weil-pairing identification.
The exact function-field commutator comparison with
Tau Ceti's Isogeny.weilPairing remains independent.
-/

/-- The exact pinned H¹ quotient theorem gives a genuine
E[n]-VALUED 0-cochain, with its original signed d⁰
formula. This is a theorem from source equality of
continuous H¹ classes, not an assumed representative
correspondence or selected gauge element. -/

/-- The exact nonabelian gauge lift of a source 0-cochain. -/

/-- A gauge of a TRUE source representative has exactly
the projected E[n] point of the target representative. -/

/-! ## Continuity is derived from source-selected function orbits -/

/-- The genuine source scalar 1-cochain kσ is CONTINUOUS
for the ORIGINAL Krull topology. This theorem consumes
the pinned polynomial/RatFunc/{1,y} finite-coefficient
orbit proof; it does not assume continuity of an
arbitrary scalar correction. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
