# All-pairs physical mass-matrix correction

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.gammaTail_matrix_eq_smul_mass`.
MSC2020: primary 11M06; supporting 46C05.

## Exact statement and consumers

For an arbitrary indexed family f_i in L2(R;C), each zero outside the same
[-A,A], and R>0 with R>=2A, the matrix-valued function

    (i,j) -> integral_(R,infinity) K_a(r)
      * integral_R conjugate(f_i(t+r)-f_i(t))*(f_j(t+r)-f_j(t)) dt dr

is exactly tailMass(a,R) times the physical mass matrix

    G(i,j) = integral_R conjugate(f_i(t))*f_j(t) dt.

The statement permits every complex coupling and arbitrary indexed families,
so applies to each finite Galerkin family without requiring linear independence,
real-valuedness, orthogonality or unit normalization. The intended consumer is
an exact tail correction in source-bound finite arithmetic matrix assembly.

## Proof and subordinate declarations

`integrable_shiftPairing` first proves that every inner polarized shift
integral is integrable. The private pairing helper uses Young's bound
|conj(f)g|<=(|f|^2+|g|^2)/2 and square integrability; translated differences are
again L2. Thus no inner totalized divergent integral is used.

`shiftPairing_eq_two_of_cutoff` proves, for r>=2A,

    <tau_r f-f,tau_r g-g> = 2<f,g>.

Outside the null endpoint, either t is outside both original supports or t+r
is outside both supports. The two mixed terms vanish pointwise there. The
remaining translated product integrates to the unchanged product by Lebesgue
translation invariance. This retains conjugation and complex phases.

`gammaTail_pairing_integrable_and_eq` proves outer-tail integrability and
integrates that equality against the genuinely integrable K_a. The matrix
theorem applies this all-pairs result entry by entry. Real scalar action on C
is merely notation for multiplication by the corresponding real complex
number, not projection to real parts.

A separate written verification is the complex polarization identity applied
to the already established diagonal cutoff-energy equality for f+g, f-g,
f+i g and f-i g. Those combinations preserve support. It is not an independent
machine or referee check.

## Falsification of the identity-matrix shortcut

Take a nonzero supported test h and choose f_1=f_2=h. The mass matrix has all
four entries equal to E(h), and so does its scalar tail correction. Replacing
G by the identity loses nonzero off-diagonal terms. The theorem also allows
linearly dependent or zero test vectors; they must not trigger an unjustified
matrix inverse or strict positive-definiteness claim. Only an independently
proved orthonormality theorem allows G=I. Tail positivity is not positivity
of the full Weil matrix or coverage of infinitely many windows/tests.

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
