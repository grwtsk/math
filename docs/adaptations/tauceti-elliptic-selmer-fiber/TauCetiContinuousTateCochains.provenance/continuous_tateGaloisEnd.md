# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiContinuousTateCochains.continuous_tateGaloisEnd`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiContinuousTateCochains.lean](../TauCetiContinuousTateCochains.lean), line 194.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiContinuousTateCochains.lean#L194).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiContinuousTateCochains.continuous_tateGaloisEnd` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

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
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Upstream mathematics and API: The Tau Ceti contributors, Apache-2.0.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Toolchain leanprover/lean4:v4.36.0-rc1.
NOT an import into grwtsk/math Lean v4.34.1.
-/

/-!
# Continuous cochain carriers of the ORIGINAL elliptic Tate module

The source coefficient is literally TateModule p W.PointCoeff, where
W.PointCoeff = E(Ksep) with its original continuous G_K action.
Each TateModuleLevel p W.PointCoeff n is E[p^n](Ksep).
The upstream topology on TateModule is induced from ALL projections.

For any topological space X we construct the actual equivalence
  C(X, T_p E) ~= {locally constant finite cochains f_n on X,
                    p f_(n+1) = f_n}.
This works for X = G_K and X = G_K x G_K, hence degrees 1 and 2,
and degree 0 is T_p E itself. The proof uses upstream
TateModule.continuous_iff, mk, proj, proj_succ verbatim.

We also construct the ORIGINAL absolute Galois action by transporting
the source action on W.PointCoeff through TateModule.map, and identify
its finite coordinates. This is not a chosen rank-two model.

This file does NOT yet construct the inhomogeneous differentials on
the Tate module, a derived inverse limit, local completion field
restriction, the finite-S restricted product, archimedean Tate
cohomology, or the local Tate/Poitou-Tate cup-product duality.
-/

/-- Compatible, continuously varying coordinates in the ACTUAL
TauCeti finite torsion tower. The continuity is expressed as
local constancy, matching TateModule.continuous_iff. -/

/-- Turn the ORIGINAL compatible finite cochains into a continuous
Tate-module-valued map, using the source inverse-limit topology. -/

/-- SOURCE-CANONICAL inverse-limit continuous-cochain equivalence.
It does not assume lim^1=0; no cohomology or derived equivalence is
inferred from this carrier equivalence. -/

/-- The same source finite component is recovered, with NO
normalization or index changes. -/

/-! The coefficient is now fixed to the REAL elliptic object in TauCeti. -/

/-- Transport the ACTUAL source Galois action on E(Ksep) to an
additive endomorphism. -/

/-- Action on the source Tate module, obtained by the original
TateModule.map, not an arbitrary matrix representation. -/

/-- Joint continuity of the ACTUAL Galois action on T_pE follows
from local constancy of the source action on each finite torsion point
and TauCeti.TateModule.continuous_map_apply. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
