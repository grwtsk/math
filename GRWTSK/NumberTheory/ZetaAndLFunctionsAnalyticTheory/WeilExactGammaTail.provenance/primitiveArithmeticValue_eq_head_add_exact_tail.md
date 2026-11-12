# Exact return to the original primitive arithmetic value

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.primitiveArithmeticValue_eq_head_add_exact_tail`.
MSC2020: primary 11M06.

## Original source and complete hypotheses

The target is the existing `WeilQuadraticForm.primitiveArithmeticValue`, not a
new GRH predicate or surrogate Gram form. Fix a positive modulus q (expressed
by `[NeZero q]`), a native `DirichletCharacter C q`, and proofs that it is
primitive and nonprincipal. Retain the original support parameter A, whole-line
L2 function f, zero extension outside [-A,A], R>0, 2A<=R, and integrability of
the complete native gamma density on (0,infinity).

The theorem proves exactly

    primitiveArithmeticValue(chi,hprimitive,hnonprincipal,A,f)
      = (gammaConstant(q,gammaParity chi)+tailMass(gammaParity chi,R))*energy(f)
        + integral_(0,R] gammaCorrectionDensity(gammaParity chi,f,r) dr
        - twistedPrime(A,chi,n -> correlation(f,log n)).

The existing signed `twistedPrime` retains Re(conj(chi(n))*C_f(log n)),
all active von Mangoldt prime powers, and the strict cutoff. Neither conductor,
character phase nor norm is redefined. The primitive proof prevents silently
inflating the conductor by using an inducing modulus.

## Proof, consumer and unresolved arithmetic step

Unfold only the existing arithmetic value, substitute
`gammaCorrectionIntegral_eq_head_add_tail`, and collect the two energy
coefficients. This is the source return for the preceding nontrivial integral
derivation. Consumers include the exact signed-source inequalities coordinated
in issues #1789 and #1804. It improves tail assembly, not the sign of the
remaining head-minus-prime response.

The all-window signed-prime/gamma comparison remains unresolved. The
identification with the analytically continued Dirichlet L-function explicit
formula, criterion/test-domain transfer, and universal certificate existence
are also not supplied by this theorem. `RiemannHypothesis` and the canonical
Dirichlet GRH target are not changed or proved.

## Zeta and convention boundary

The canonical primitive arithmetic definition is expressly nonprincipal;
the conductor-one zeta sector is not silently treated as nonprincipal. The
underlying gamma-tail theorem applies at a=0, but both signed zeta pole
orientations must be retained in a separate full zeta return. No theorem here
removes those poles or replaces them by absolute squares. The previous chat's
character convention is not used to overwrite the native conjugated-character
source; a convention change would require its own exact transform identity.

The source expression being returned is
[`WeilConductorFrontier.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorFrontier.lean),
with prime convention in
[`CharacterWeilWindowBounds.lean`](https://github.com/grwtsk/math/blob/21c3956913b469693e5acaf5bc6bf05c34c78196/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/CharacterWeilWindowBounds.lean).

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
