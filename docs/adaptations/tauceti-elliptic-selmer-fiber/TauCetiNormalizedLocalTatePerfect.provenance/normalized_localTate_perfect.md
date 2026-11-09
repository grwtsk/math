# `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NormalizedLocalTate.normalized_localTate_perfect`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiNormalizedLocalTatePerfect.lean](../TauCetiNormalizedLocalTatePerfect.lean), line 66.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiNormalizedLocalTatePerfect.lean#L66).
- Declaration spelling: `GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NormalizedLocalTate.normalized_localTate_perfect` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean)
- [Pinned upstream source](https://github.com/TauCetiProject/TauCeti/blob/2bdb755239d3bd84760e99bc83166bdf7cc75a6b/TauCeti/NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean)

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

The Tau Ceti contributors: original upstream proofs, Apache-2.0.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1; NOT a grwtsk/math v4.34.1 root import.
-/

/-!
# Local Tate duality with the ACTUAL normalized Brauer invariant

The existing upstream theorem tateDualityPairing_perfect_mixed
already proves local Tate-duality perfectness for EVERY finite smooth
discrete ZMod n Galois representation in mixed characteristic.
It takes a trace identification as an argument. We specialize it
to the already-constructed h2MuEquivZMod, whose normalization is
Brauer invariant k/n -> residue k (not a freely assigned trace).

This is a genuine unconditional ARITHMETIC consumer of two upstream
theorems, for the exact GalRep n F coefficient object passed in.
It is NOT YET an elliptic E[n] specialization: that requires an
actual representation GalRep n F built from W.TorsionCoeff n,
its source Galois action transported across the separable/algebraic
closure equivalence, a comparison of Weil pairing with tateDual,
and orthogonality of the actual Kummer local-condition subgroups.

Do not conflate local perfectness with those outstanding comparisons,
global Poitou--Tate, compact/discrete derived limits, or BSD.
-/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
