# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilOneFunctionGate.originalBasisWeilFunction_divisor`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaWeilOneFunctionGate.lean](../TauCetiThetaWeilOneFunctionGate.lean), line 83.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaWeilOneFunctionGate.lean#L83).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaWeilOneFunctionGate.originalBasisWeilFunction_divisor` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaWeilRankTwoCriterion.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compatible isolated Lean v4.36.0-rc1 only, not grwtsk/math v4.34.1.
-/

/-!
# ONE original [n]-pullback function identity completes theta=Weil

The pinned original Tau Ceti theorem
`TauCeti.Isogeny.exists_principal_eq_weilPairingDivisor`
constructs an actual g_Q with divisor
[n]^*((Q)-(O)) for every genuine n-torsion point Q.

The earlier theta-commutator source is already a biadditive
alternating pairing; pinned `torsion_addEquiv_prod`
supplies the actual rank-two torsion basis.

This source CHOOSES only the genuine original Weil DIVISOR
FUNCTION from the pinned existence theorem, not a pairing.
It eliminates the arbitrary g and hg arguments of the
previous sign return. The entire theta=Weil comparison is
therefore reduced to ONE EXACT ELLIPTIC RATIONAL-FUNCTION
identity for that chosen g_Q and ONE oriented basis pair P,Q:

    f_P tau_{-P}(f_Q)/(f_Q tau_{-Q}(f_P))
           = tau_P(g_Q)/g_Q.

This identity has NOT yet been proved in pinned Lean source.
Its reciprocal corresponds to -e_n; no sign may be chosen
from an n=2-only test. The present file is a genuine
source-bound single-function PROOF TARGET, not a proof
of the missing divisor identity by assumption.
-/

/-- Exact original [n]-pullback isogeny, with source
nonvanishing and actual n-torsion of the basis point. -/

/-- A noncomputably chosen ORIGINAL Weil rational function:
its defining source property is the pinned [n]-pullback
divisor equation, not theta=Weil equality. -/

/-- A proof of that ONE explicit, honest original
rational-function identity yields the entire
source-original theta/Weil comparison on E[n].
The function's divisor certificate is now supplied
by pinned Tau Ceti; it is not an extra h_g premise. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
