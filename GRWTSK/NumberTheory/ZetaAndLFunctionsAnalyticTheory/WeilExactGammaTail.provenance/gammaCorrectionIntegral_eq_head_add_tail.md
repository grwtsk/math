# Head-plus-exact-tail decomposition of the native gamma integral

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.gammaCorrectionIntegral_eq_head_add_tail`.
MSC2020: primary 11M06; supporting 28A25.

## Statement and mathematical consumer

With the same L2 and support assumptions as `gammaTail_integrable_and_eq`,
and additionally the explicit premise

    IntegrableOn (gammaCorrectionDensity a f) (Set.Ioi 0),

the original full gamma integral equals

    integral_(0,R] gammaCorrectionDensity(a,f,r) dr
      + tailMass(a,R)*energy(f).

This identity is consumed immediately by
`primitiveArithmeticValue_eq_head_add_exact_tail`. It is not a definition of
an unrelated form that is positive by construction.

## Proof

The measurable sets (0,R] and (R,infinity) are disjoint and their union is
(0,infinity) because R>0. Full integrability supplies the head integrability;
the tail theorem independently supplies tail integrability and its value.
Mathlib's `setIntegral_union`, inspected at the pinned revision, then gives the
identity. Keeping the endpoint R in exactly one piece avoids overlap ambiguity.

## Retained premise and hostile check

L2 membership alone does not discharge near-zero gamma integrability. The
harch premise is retained explicitly; one may not split two divergent
Bochner integrals and use their totalized values as evidence. The previously
written H1 continuity argument is not formalized by this theorem. Both prime
and pole terms are outside this decomposition and remain unchanged in any
subsequent source return. No claim of a completed explicit formula, universal
positive certificate or independent mathematical review is made.

## Source identity and evidence

Local attribution: grwtsk contributors. Source date: 2026-11-11.
Canonical file: [`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilExactGammaTail.lean`](../WeilExactGammaTail.lean).
Source SHA-256: `0bdff5484e571e19e55a2e910bc33a43f1de40ad931c57e4f0d7566492398011`.
Inspected math main: `21c3956913b469693e5acaf5bc6bf05c34c78196`.
Lean: `leanprover/lean4:v4.34.1`; Mathlib:
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

This is a local analytical consequence of the native source, not a copied
Yang--Mills declaration or a direct formalization of a theorem claimed verbatim
in an external paper. Upstream context is Connes, Consani and Moscovici,
*Zeta Spectral Triples*, arXiv:2511.22755v1 (27 November 2025),
[the pinned edition](https://arxiv.org/abs/2511.22755v1), (2.1)--(2.5) for the
correlation conventions and (3.19)--(3.20) as identified by the existing
canonical gamma modules. The exact native mathematical objects, rather than
a citation, are the formal dependencies. No third-party source is copied.

The native source bindings are
[`WeilGammaData.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaData.lean),
[`WeilSourcePrimeCorrelation.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilSourcePrimeCorrelation.lean),
and [`WeilGammaTailCompensation.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilGammaTailCompensation.lean).

Status: `SOURCE_PROOF_CANDIDATE`. Written derivation: supplied here and in
source. Lean elaboration, fresh kernel replay, transitive axiom audit,
independent analytical review and repository-wide validation: `NOT_RUN`.
Static text inspection found no proof placeholders or new axiom declarations;
that does not establish elaboration or a transitive axiom result. Novelty:
`UNASSESSED`; no novelty claimed. Historical checks of imported modules do
not verify this new source. The exact-source coordination and publication
record belongs to [issue #1789](https://github.com/grwtsk/math/issues/1789).

The prescribed Noe proof-automation skill returned 404 at
`grwtsk/noeaaeue@8b50d43323f27bb13bdcae9f2e2b4a81c9895827`; dependent execution
was not dispatched. No verified local skill checkout or Lean/Lake executable
was present. This source-only publication does not change pins or root imports.
