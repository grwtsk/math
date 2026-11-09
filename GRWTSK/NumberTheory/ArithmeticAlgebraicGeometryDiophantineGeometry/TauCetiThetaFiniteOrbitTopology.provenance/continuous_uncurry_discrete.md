# `GRWTSK.ArithmeticGeometry.EllipticCurves.IsolatedThetaFiniteOrbitTopology.continuous_uncurry_discrete`

Local attribution: grwtsk contributors.

## Local theorem identity

- Source: [TauCetiThetaFiniteOrbitTopology.lean](../TauCetiThetaFiniteOrbitTopology.lean), line 59.
- Pinned source: [exact local revision](https://github.com/grwtsk/math/blob/1b193e2bd2acf3a7eaf1bb71f59918a1ae666be4/docs/adaptations/tauceti-elliptic-selmer-fiber/TauCetiThetaFiniteOrbitTopology.lean#L59).
- Declaration spelling: `GRWTSK.ArithmeticGeometry.EllipticCurves.IsolatedThetaFiniteOrbitTopology.continuous_uncurry_discrete` (theorem). Namespace spelling is a lexical source observation; elaboration is not asserted.

## Origin and references

This file records the local theorem’s source lineage. A pinned dependency or module reference does not assert that the local conclusion is an unchanged upstream theorem. The exact local hypotheses and proof are in the source above.

Source-local origin comments (verbatim; their historical paths and statuses retain their original scope):

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE / LEAN_PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/

/- Pure topology; intentionally built with the original Tau Ceti toolchain.
Original Tau Ceti contributors, Apache-2.0,
TauCetiProject/TauCeti@2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Original code/math sources are not edited by this isolated adapter.
The equivalent native grwtsk Mathlib source is separately UNCOMPILED;
the two editions are NOT independent arithmetic theorems. -/

/-!
# Continuity of a REAL scalar connecting factor from orbit maps

The actual elliptic theta factor is not a freely chosen
continuous cocycle. Its value c(sigma,tau) is determined
by the exact original group equation
    i(c(sigma,tau)) =
      s(a(sigma)) * sigma(s(a(tau))) * s(a(sigma*tau))^-1,
where i is the injective inclusion of actual nonzero
separable-closure constants into the genuine theta group.

If a is an ORIGINAL continuous E[n]-valued 1-cocycle
and every selected theta lift s(t) has a continuous
Galois ORBIT map sigma |-> sigma(s(t)), then c is
automatically continuous in the original DISCRETE
coefficient topology. This avoids treating global
continuity of an arbitrarily chosen theta section
as an independent mysterious arithmetic hypothesis.

No full continuous action on the infinite theta group
is assumed. The orbit condition is only on the
selected genuine E[n] lifts; E[n] is finite in the
original pinned Tau Ceti arithmetic source.
The actual orbit continuity still requires original
elliptic rational-function finite Galois descent.

This isolated source edition is pure topology of discrete cochains, NOT a
proof of that arithmetic finite-descent supplier,
geometric theta commutator=Weil, n-torsion, Tate
separation or BSD.
-/

/-- The ORIGINAL discrete Galois 1-cocycle a, a
function assigning a real torsion coefficient
to each Galois element, determines a continuous
central factor when:
* a is continuous in its actual torsion topology;
* the selected theta lift of EVERY torsion
  coefficient has a continuous Galois orbit;
* the scalar inclusion is faithful and gives the
  EXACT source nonabelian boundary equation.

This is the complete topological return from a
finite list of arithmetic orbit-continuity facts.
Continuity of the entire theta group action is
NOT required for this conclusion. -/
```

## Evidence scope

This provenance transcription ran no Lean compilation, statement-equivalence check, fresh kernel replay, transitive axiom audit or independent mathematical review: `NOT_RUN`. Existing source-bound evidence and unresolved premises quoted above are preserved; this record neither supersedes them nor promotes a candidate or conditional result to accepted mathematics.
