# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalKummerOrthogonality.twoLocalConditions_exactOrthogonal`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiLocalKummerOrthogonalityCriterion.lean](../TauCetiLocalKummerOrthogonalityCriterion.lean), line 89.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiLocalKummerOrthogonalityCriterion.lean#L89).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.LocalKummerOrthogonality.twoLocalConditions_exactOrthogonal` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/AssociativeRingsAndAlgebras/Complement.lean)

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/LinearAlgebra/FiniteBilinearModule/Orthogonal/Complement.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Descent.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
original Tau Ceti contributors, Apache-2.0, Lean v4.36.0-rc1.
No grwtsk/math root import or toolchain migration.
-/

/-!
# Exact finite pairing criterion for local Kummer annihilator equality

The published finite local Tate pairing on H¹(E[n]) is perfect
over a nonarchimedean characteristic-zero field. The original
elliptic Weil pairing is alternating and the degree-(1,1) cup
is graded-antisymmetric; after source transport their composite
must be checked symmetric, and hence can be packaged in the
TauCeti FiniteBilinearModule (with Q/Z-valued pairing).

The present generic theorem proves the LAST algebraic step
unconditionally: if genuine local Kummer subgroups K_E and
K_(Evee), carried to the SAME symmetric nondegenerate
cohomological module by the actual principal polarization,
are orthogonal AND their order product equals the order of
the ambient H¹ group, then K_E = (K_(Evee))^orth and conversely.
For the self-dual profile, isotropy plus |K|²=|H¹| suffices.

IMPORTANT: the two upstream arithmetic suppliers
  (1) cup-product orthogonality of actual Kummer connecting maps
      (a theta/biextension/local cup compatibility theorem), and
  (2) the local point-quotient/cardinality identity
are NOT proved by finite Weil nondegeneracy alone.
Neither arithmetic fact is assumed silently by the definition
of the subgroup, and the theorem is NOT advertised as a
completed elliptic Kummer-orthogonality proof in Lean.

The original elliptic Kummer subgroup is separately named below
on TauCeti's ACTUAL continuous Galois H¹, and its existing
coefficient-kernel identity is imported without modification.
The exact conversion to canonical GalRep continuous H¹, its
symmetric Tate pairing, and the arithmetic suppliers remain
explicit source obligations.
-/

/-- This is the ACTUAL elliptic local Kummer image in the
source continuous H¹, not an arbitrary subgroup selected by rank.
It uses the original finite-level Kummer connecting map. -/

/-- Source-exact Kummer image equals the genuine coefficient
comparison kernel, prior to canonical GalRep transport.
This is the original WeierstrassCurve.range_kummerMap theorem. -/

/-- Two source-identified local conditions in the SAME finite
symmetric cohomology carrier are exact orthogonal complements
as soon as one genuine cup-vanishing theorem and the genuine
local arithmetic cardinal product are provided. -/

/-- Both directions are recovered from the same source pairing.
Symmetry reverses the zero-cup calculation without guessing
a sign from a merely alternating coefficient pairing. -/

/-- Self-dual principal-polarized local profile.
An actual source isotropy theorem plus exact size squared
turns the REAL Kummer image into a Lagrangian subgroup.
Both arithmetic inputs remain independent proof obligations. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
