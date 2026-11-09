# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGroupExtension.genuineThetaFactorSet_section_independent`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaGroupExtension.lean](../TauCetiThetaGroupExtension.lean), line 252.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaGroupExtension.lean#L252).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGroupExtension.genuineThetaFactorSet_section_independent` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiOriginalGeometricTheta.lean)

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/GroupTheory/GroupExtension/FactorSetOfSection.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/GroupTheory/GroupExtension/Cohomology.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/Algebra/GroupAction/Trivial.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ORIGINAL_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original mathematics and source tools: The Tau Ceti contributors,
Apache-2.0, TauCetiProject/TauCeti
@ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Build ONLY in isolated Tau Ceti Lean v4.36.0-rc1 with the
theta adapter directory on LEAN_PATH; not grwtsk/math root v4.34.1.
-/

/-!
# ORIGINAL elliptic function-field theta group as an exact GroupExtension

Pinned Tau Ceti has a COMPLETE reusable group-extension/factor-set
API, including:
  GroupExtension.factorSet, .isMulCocycle₂_factorSetFun,
  .sectionDiff, .isMulCoboundary₂_div,
  .cohomologyClass_factorSet_eq.

Earlier grwtsk source candidates rebuilt the relevant abstract
nonabelian group algebra. This file instead binds the ACTUAL
Mumford theta group, constructed from original elliptic
rational functions, directly to Tau Ceti's original
Mathlib-compatible GroupExtension object

  1 -> (Fsep)× -> Theta(E[n]) -> E[n](Fsep) -> 1.

The projection is the literal elliptic point in the theta
lift, not an abstract rank-two module. The kernel is precisely
the genuine scalar function-field units by the source
principal-divisor-zero theorem. The projection is onto
by the original torsion-divisor principality theorem.
No arbitrary pairing, isomorphism to a Heisenberg matrix,
finite test or BSD assertion is substituted.

IMPORTANT: This is the extension of the POINT GROUP E[n]
over the separable closure. Its FactorSet H²(E[n],Fsep×)
is NOT the same as the GALOIS/Brauer H²(F,Fsep×) obstruction
of a class a∈H¹(F,E[n]). A genuine equivariant Galois
action, a pulled-back twisted factor, and original
continuous cochains are still necessary for that transfer.
-/

/-- Faithful REAL scalar function-field inclusion, true
elliptic point quotient, and source-exact equality
im(scalar)=ker(projection), packaged in Tau Ceti's
existing GroupExtension API. -/

/-- The true original geometric theta extension has a
CENTRAL scalar kernel, by actual translation invariance
of constants and the faithful source scalar injection. -/

/-- A genuine section of the ORIGINAL elliptic theta
group, normalized at the identity by the pinned source
GroupExtension.normalizeSection theorem. -/

/-- The factor set OF THE ACTUAL elliptic theta group,
constructed from the pinned Tau Ceti group-extension API.
Its cocycle proof is inherited from the original source
factorSetFun_mul and inducesTrivialAction theorems. -/

/-- The real theta extension is equivalent to the
twisted product of its source-constructed factor set.
This is the original Tau Ceti equivalence theorem
instantiated on the REAL geometric function-field group. -/

/-! The pinned GroupExtension.factorSetFun,
Section.factorSetFun_mul, sectionDiff, and
GroupExtension.isMulCoboundary₂_div now become available
for ANY normalized section of THIS actual elliptic
extension, once the trivial action of E[n] on
the scalar centre is supplied. None of these
algebraic facts alone proves a Galois/Brauer H²
class or identifies the theta commutator with
the genuine source Weil pairing. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
