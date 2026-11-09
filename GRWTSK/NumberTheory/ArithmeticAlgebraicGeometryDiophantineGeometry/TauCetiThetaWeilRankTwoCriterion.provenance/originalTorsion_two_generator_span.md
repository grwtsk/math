# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilRankTwoCriterion.originalTorsion_two_generator_span`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaWeilRankTwoCriterion.lean](../TauCetiThetaWeilRankTwoCriterion.lean), line 72.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaWeilRankTwoCriterion.lean#L72).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilRankTwoCriterion.originalTorsion_two_generator_span` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaCommutatorBilinear.lean)
- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaOriginalWeilSignReturn.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Isolated Tau Ceti Lean v4.36.0-rc1, NOT grwtsk/math root v4.34.1.
-/

/-!
# Exact theta commutator/Weil comparison reduced to ONE oriented basis value

The earlier source now derives the REAL original theta commutator
as an alternating biadditive E[n]-pairing valued in the true
Additive (rootsOfUnity n F). The pinned Tau Ceti Isogeny.weilPairing
is an INDEPENDENT alternating biadditive map on that SAME torsion
carrier; the pinned source nonempty_basis_torsionBy /
torsion_addEquiv_prod proves the group is (ZMod n)^2.

Pure alternating biadditive algebra shows that equality of the
two pairings is equivalent to equality on ONE ORDERED
generating pair (P,Q). Reversing the order inverts the
multiplicative μ_n value and cannot be silently done at odd n.

This is a strictly stronger and more efficient geometric
PROOF TARGET than proving the original rational function
identity for every pair of n-torsion points. The remaining
arithmetic supplier is the specific single source
[n]-pullback/Weil function ratio at the oriented basis pair.
No arbitrary Gram matrix, perfectness assumption, or
external theta pairing is substituted for the ACTUAL ones.
-/

/-- The original torsion `E[n]` has TWO honest additive
generators from pinned source `torsion_addEquiv_prod`.
Their existence is a theorem of elliptic torsion geometry,
not a newly assumed basis. -/

/-- The strongest source-exact arithmetic reduction:
the REAL original theta rational-function commutator
equals the INDEPENDENT pinned Isogeny.weilPairing on
ALL of E[n] if and only if the two maps agree at
the ONE oriented source basis pair P,Q.

There is NO unproved perfectness premise in this theorem:
the alternating property and actual ZMod n rank-two
generation come from their original geometric sources.
The basis-evaluation condition remains the true missing
[n]-pullback/divisor-function theorem. -/

/-- The remaining ONE basis-pair geometric identity may
be supplied directly using the earlier exact signed
source function-ratio return. This theorem does not
assume the pairing equality globally or introduce
a second arithmetic pairing. -/

/-! ## One ACTUAL [n]-pullback divisor/function ratio now suffices

The prior positive and inverse source sign consumers work pointwise
with the original `Isogeny.algebraMap_weilPairing`. These two
theorems combine them with the rank-two detector.

To finish geometric source acceptance it is sufficient to prove
just ONE source-divisor identity for the selected oriented
(P,Q) torsion basis. The conditions below are statements
about the actual original rational functions `f_P,f_Q,g_Q`,
not an assumed theta-vs-Weil pairing equality.

The inverse-ratio branch is RETAINED explicitly because
choosing it would yield the NEGATIVE original Weil pairing.
-/

/-- EXACT orientation-positive endpoint for the genuine
original theta and Weil pairings on ALL of E[n], under ONE
basis-pair rational-function identity. Nothing is assumed
about the pairing itself; the remaining premise is the
genuine source [n]-pullback function identity for P,Q. -/

/-- An inverse source function-ratio at the same oriented
basis pair would identify the ACTUAL theta commutator
with the NEGATIVE of the pinned Weil pairing globally,
not the positive pairing. This is an explicit sign test,
especially needed at odd n. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
