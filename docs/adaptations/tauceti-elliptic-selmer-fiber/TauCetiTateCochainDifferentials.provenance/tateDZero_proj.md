# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiTateDifferentials.tateDZero_proj`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiTateCochainDifferentials.lean](../TauCetiTateCochainDifferentials.lean), line 152.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiTateCochainDifferentials.lean#L152).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiTateDifferentials.tateDZero_proj` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/Algebra/Module/Torsion/TateModule.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream source: The Tau Ceti contributors, Apache-2.0.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1. This is NOT an import into the independent
grwtsk/math Lean v4.34.1 root build.
-/

/-!
# Original continuous Galois differentials on the elliptic Tate module

Fix the ACTUAL elliptic Galois module W.PointCoeff = E(Ksep) and its
finite torsion subgroups W.TorsionCoeff (p^n). This file does not
assign an abstract representation to an arbitrary two-dimensional
module: G_K acts on the literal TateModule p W.PointCoeff through
the original coefficient action via TauCeti.TateModule.map.

The source supplies genuine d0/d1 continuous cochain differentials.
We prove their squared-zero identity and compare BOTH maps to their
actual finite torsion-coefficient differentials under every original
TateModule.proj. The finite p-power transition commutes with both
differentials by equivariance, with NO invented quotient transition.

No derived inverse-limit equivalence, number-field localization map,
restricted product, archimedean duality, local Tate pairing on H^i,
higher Bockstein, regulator, or BSD consequence is asserted here.
-/

/-- The source TateModule.map sends the actual point action to its
compatible, p-adically continuous inverse-limit action. -/

/-- Genuine d0 restricted to continuous one-cochains via the upstream
source theorem continuous_d0_apply. -/

/-- Genuine d1 restricted from continuous one- to two-cochains via
the upstream source theorem continuous_d1_apply. -/

/-- The genuine degree-zero cochain differential commutes with
EVERY source torsion projection. This is the exact d0 bridge
between continuous T_pE and finite E[p^n] cochains. -/

/-- The true d1 also commutes with EVERY source torsion projection.
The right side uses the actual Galois action on E[p^n]. -/

/-- The ORIGINAL p-multiplication transition on geometric torsion
is equivariant under the actual Galois action. The source degree is
n+1 -> n, not multiplication on the rational-point quotient. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
