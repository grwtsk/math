# `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaOriginalWeilSignReturn.thetaCommutator_eq_originalWeil_of_functionRatio`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaOriginalWeilSignReturn.lean](../TauCetiThetaOriginalWeilSignReturn.lean), line 68.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaOriginalWeilSignReturn.lean#L68).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaOriginalWeilSignReturn.thetaCommutator_eq_originalWeil_of_functionRatio` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Immediate local source inputs (exact pinned dependencies, not an assertion of a copied upstream theorem):

- [Local source input](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaCommutatorRootsOfUnity.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original authors and source: The Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Compile in pinned Tau Ceti Lean v4.36.0-rc1; no root math imports.
-/

/-!
# EXACT sign-sensitive return from original theta commutator to Weil e_n

Both sides now live in the SAME ORIGINAL rootsOfUnity n F:

- The left is the original rational-function theta commutator
     f_T · tau_{-T}(f_S) / (f_S · tau_{-S}(f_T)).
  Its n-th root condition is PROVED from the actual theta
  group law and central scalar kernel in the preceding adapter.

- The right is pinned
     TauCeti.Isogeny.weilPairing W n hN S T,
  defined by the original isogeny pullback function g_T
  with divisor [n]^*([T]-[O]) and the exact formula
     algebraMap(e_n(S,T)) = tau_S(g_T) / g_T.

A concrete geometric equality of THESE TWO rational-function
ratios is the required missing bridge. The return below
proves their EXACT e_n equality when that source divisor/
pullback calculation is provided. The opposite ratio has the
inverse output and therefore cannot be interchanged without
an explicit sign proof.

The hratio input is a genuine statement about ORIGINAL
rational functions and a genuine original Weil divisor.
It is NOT an unconditional theorem, a fitted rank-two
symplectic Gram matrix, or a license to choose the sign.
Proving hratio from the source [n]-pullback and elliptic
Weil reciprocity is still the next distinct GEOMETRIC step.
-/

/-- Source EXACT positive-orientation return:
if the ORIGINAL elliptic theta commutator ratio equals
tau_S(g_T)/g_T for a function whose divisor is the genuine
[n]-pullback Weil divisor, then the theta pairing equals
the actual original Weil e_n(S,T), not an abstract dual.
The full arithmetic work is proving hratio. -/

/-- A *reversed* rational-function ratio yields the
INVERSE original Weil pairing. This is the hostile
sign control required by the exact source translation
convention and prevents a silent ± correction. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
