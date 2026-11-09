# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiLocalKummerCone.cone_cycle_iff_lift`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiLocalKummerCone.lean](../TauCetiLocalKummerCone.lean), line 117.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiLocalKummerCone.lean#L117).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TauCetiLocalKummerCone.cone_cycle_iff_lift` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/LowDegree.lean)

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Selmer/Basic.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/ExplicitFunctoriality.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_ADAPTER_SOURCE_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Original upstream sources: Tau Ceti contributors, Apache-2.0.
Requires TauCetiProject/TauCeti at
  2bdb755239d3bd84760e99bc83166bdf7cc75a6b
with Lean v4.36.0-rc1; deliberately NOT imported into the local
grwtsk/math Lean v4.34.1 root build.
-/

/-!
# The ACTUAL local elliptic Kummer cone in degrees 0, 1 and 2

For genuine W/K, m invertible in K and G=Gal(Ksep/K), set
  A = W.TorsionCoeff m    = E[m](Ksep),
  B = W.PointCoeff        = E(Ksep),
  j = W.torsionCoeffIncl m : A -> B.

The actual source Tau Ceti low-degree continuous cochain groups
and d0,d1 are used without replacing G, E[m], or E by an arbitrary
same-dimensional vector space.

Define U := Cone(C_cont(G,A) -> C_cont(G,B))[-1]:
  U0=A
  U1=C_cont^1(G,A) x B
  U2=C_cont^2(G,A) x C_cont^1(G,B)
  dU0(a) = (dA0 a, j a)
  dU1(c,b) = (dA1 c, j c - dB0 b).
The true source differential and actual equivariance of j give
dU1(dU0 a)=0. A closed source c has a local cone lift iff its
image class under H1(j) vanishes; by Tau Ceti's ACTUAL
WeierstrassCurve.range_kummerMap, this is the real local
Kummer condition.

Because this adapter is not typechecked in its incompatible external
toolchain, no successful Lean proof is asserted. It is a concrete
source-bound candidate rather than an imported mathematics theorem.

There is no claim that H1(U) -> H1(G,A) is injective, and no BSD
rank, p-adic height, or complex L-jet comparison is assumed.
-/

/-- The ACTUAL source d1∘d0=0 plus equivariance of the elliptic
torsion inclusion give the cone square-zero identity. -/

/-- Degree-one Kummer cone cycles are EXACTLY actual source
cocycles with E-coefficient nullhomotopies. -/

/-- Actual Kummer image = actual local condition. It is the source
theorem WeierstrassCurve.range_kummerMap, not a newly assumed rank. -/

/-- The source H1 class is in the actual local Kummer condition iff
its representative admits a genuine continuous E-coefficient
nullhomotopy. This is exactly the degree-one projection of U_v^+. -/

/-! ## Exact return to the REAL elliptic SelmerStructure, at every place

For a chosen family of local extension fields L_i and separable-closure
embeddings τ_i, the upstream actual elliptic source defines the local
condition as ker(H¹(E[m]) -> H¹(E)). The local cone identified above
returns exactly THAT subgroup, not a newly chosen proxy.
-/

/-- Literal equality with Tau Ceti's ACTUAL elliptic local subgroup.
The mathematical input is its source definition
WeierstrassCurve.selmerStructure_localCondition. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
