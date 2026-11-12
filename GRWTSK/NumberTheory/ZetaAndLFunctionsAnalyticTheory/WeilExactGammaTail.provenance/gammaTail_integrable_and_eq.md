# Exact diagonal physical gamma tail

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ExactGammaTail.gammaTail_integrable_and_eq`.
MSC2020: primary 11M06; supporting 28A25.

## Exact statement and consumer

For every natural a, complex-valued f with `MemLp f 2 volume`, real A,R
with R>0 and 2A<=R, assume f(t)=0 whenever t is outside [-A,A]. Then
`gammaCorrectionDensity a f` is integrable on (R,infinity), and

    integral_(R,infinity) gammaCorrectionDensity(a,f,r) dr
      = tailMass(a,R) * SourcePrimeCorrelation.energy f.

Here energy is the original whole-line Lebesgue squared L2 norm and the
original density is K_a(r)*energy(t -> f(t+r)-f(t)). No test, norm or kernel is
replaced. This is the diagonal supplier for the unchanged head-plus-tail and
primitive arithmetic source identities in this module.

## Analytical proof and exact dependencies

The already-existing
`GammaTailCompensation.shiftEnergy_eq_two_of_cutoff` proves
energy(t -> f(t+r)-f(t))=2*energy(f) for r>=2A. At equality of shift and support
width, the overlap is a Lebesgue-null endpoint, not a positive-measure error.
This theorem is reused without duplication. Thus the original density equals
K_a(r)*(2*energy f) on the tail. `parityKernel_integrableOn_tail` proves actual
integrability of K_a. Constant multiplication then proves integrability and
linearity evaluates the tail exactly. No full-density integrability hypothesis
at r=0 is required for this tail result.

A cross-check expands the shift energy as 2E-2 Re C_f(r), using translation
invariance and the original correlation. The canonical
`SourcePrimeCorrelation.correlation_eq_zero_of_cutoff` makes the correlation
term zero at r>=2A. This is a written alternative derivation, not an independent
review or a new elaboration result.

## Scope and hostile cases

The support is on the real line, not on a periodic quotient; wrapping a
periodic function would invalidate the support argument. Complex f is allowed.
No continuity or differentiability is assumed, and no inference about the head
integral at zero is made. No positive lower bound uniform across support radii
is asserted. The generic gamma statement can be applied at zeta parity zero,
but it supplies neither the two zeta pole contributions nor an RH criterion.

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
