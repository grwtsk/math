# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeilCupKummerCocycle.originalWeilCup_kummer_eq_class`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiWeilCupKummerCocycle.lean](../TauCetiWeilCupKummerCocycle.lean), line 142.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiWeilCupKummerCocycle.lean#L142).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeilCupKummerCocycle.originalWeilCup_kummer_eq_class` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/GRWTSK/CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Product.lean)

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Descent.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Product.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Comparison.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE /
LEAN_PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Original upstream mathematical and code authors: The Tau Ceti contributors,
Apache-2.0, TauCetiProject/TauCeti
@ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
Lean v4.36.0-rc1. Not an import into grwtsk/math v4.34.1.
-/

/-!
# The exact original E[n] Weil/Kummer cup as a continuous 2-cocycle

This file instantiates the ALREADY-PROVED original Tau Ceti
`ContCohomology.explicitCup11_mk` with the genuine source elliptic
Weil pairing and the original Kummer difference
    κ_Q(τ) = τ Q - Q,  n Q = P ∈ E(F).

For an actual E[n]-valued cocycle a, the resulting 2-cocycle is
    z_a,Q(σ,τ) = e_n(a_σ, σ(τ Q - Q)).
It is the precise finite-coefficient side of Fisher's local
Poincare/Kummer comparison, NOT a freely chosen bilinear form.

The next GEOMETRIC theorem must build a divisor/function
cocycle for the locally defined Poincare pairing and prove that
its difference from z_a,Q is a continuous 2-COBOUNDARY.
A theorem saying that the equality is true, or a chosen
local Tate pairing, is not substituted for that witness.
No BSD or local Weil--Chatelet vanishing conclusion follows.
-/

/-- Source Galois equivariance, with both twisted arguments
and all coefficient actions retained. -/

/-- The ORIGINAL Weil pairing is skew: alternating in
the real elliptic source, not a property imposed on a
chosen matrix. When combined with source graded cup
commutativity in degree (1,1), the two minus signs
cancel in the local Weil H¹-cup orientation. -/

/-- The original source Weil pairing on finite discrete
coefficient modules is jointly continuous. -/

/-- The ORIGINAL e_n(a_σ,σ(τQ-Q)) is an ACTUAL continuous
two-cocycle, by the upstream explicitCup11 construction.
No new cohomology/cocycle axiom is added. -/

/-- Source-level return: the cohomology class of that exact
2-cocycle IS the original Weil cup of the original elliptic
H¹ class against the true rational-point Kummer map. -/

/-! ## Explicit independent divisor/Poincare COCYCLE certificate

Fisher's geometric calculation constructs a second genuine
two-cocycle from divisor evaluation, and a CONTINUOUS
one-cochain witnessing that its difference from the
above original Weil/Kummer cup is a coboundary. The source
theorem H2pi_eq_iff is exactly the cohomology quotient
criterion, including the required continuous primitive.

This certificate is NOT obtained by choosing the desired
abelian pairing: the witness must come from the actual
divisor/rational-function construction and must satisfy
the signed pointwise equation below.
-/

/-- Exact signed geometric certificate obligation:
give an actual continuous divisor-evaluation two-cocycle
and a continuous one-cochain whose d¹ is the difference
between the REAL Weil/Kummer cocycle and that divisor cocycle.
The equality of cohomology classes is then PROVED by the
source original H2pi_eq_iff, not assumed.

The geometric divisor cocycle and its witness have not
yet been constructed in Lean. This lemma only discharges
their genuine homological-algebra consequence. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
