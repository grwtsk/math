# Physical self-adjoint realization of the original signed odd Weil form

Local attribution: grwtsk contributors.
Owner: [WeilPhysicalSourceOperator.lean](WeilPhysicalSourceOperator.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.PhysicalSourceOperator`.
MSC2020: 11M06, 47B25, 47A07. Coordination: math#1837, math#1258.

## Original objects and complete primary argument

Fix T>0 and beta real. H is the ORIGINAL supported odd physical Lebesgue
L2 space; V is the maximal finite-gamma-energy graph domain. Its complete
Hilbert norm, source correspondence, injective inclusion J:V->H and
physical density are supplied by canonical source modules. Let q be the
whole signed source bilinear form, including all active prime powers,
both orientations, the gamma term, physical shift beta and negative pole.
Let lambda=perturbationBound(T,beta)+1 and b=q+lambda<J(.),J(.)>_H.

The prepared solver constructs the unique W h in V with

    b(W h,w)=<h,Jw>_H   for every w in V.

Its physical response R=J W is bounded, symmetric, injective and has dense
range. Define the unbounded physical A=R^{-1}-lambda I. The general
`InverseResponseOperator` theorem proves closedness and actual maximal
self-adjointness, not merely formal symmetry. D(A)=range R.

The source association is then proved in BOTH directions. A graph pair
(f,g) satisfies R(g+lambda f)=f. Set z=W(g+lambda f). Then Jz=f, and
subtracting the physical shift in the weak equation gives

    q(z,w)=<g,Jw>_H   for every w in V.

Conversely, if a form-domain z with Jz=f has this equation for a physical
g, its b-equation is the weak problem with load g+lambda f. Uniqueness
forces z=W(g+lambda f), hence R(g+lambda f)=f. This proves

    (f,g) in graph A
      iff exists z in V, Jz=f and forall w in V, q(z,w)=<g,Jw>_H.

The literal-source theorem substitutes the already proved off-diagonal
source identity, rather than accepting a model form with the same diagonal.
D(A) is precisely those physical inputs that have a finite-energy lift and
a PHYSICAL L2 representer of the full source pairing. It is not asserted
to equal V, nor all H. Testing only finite sines is not enough here.

The exact response identity is

    (Rh,h-lambda Rh) in graph A.

The source lower bound is retained as

    (1-lambda)||f||_H^2 <= <Af,f>_H.

Indeed b(z,z)>=||z||_V^2>=||Jz||_H^2 and
b(z,z)=<Af,f>+lambda||f||_H^2. Removing the construction shift does NOT
prove nonnegativity. Lambda can grow with the window and is not a
vanishing cofinal defect.

## Declaration map and consumers

- `sourceOperator`, `sourceOperator_graph`, `sourceOperator_domain`:
  canonical inverse graph and exact physical domain.
- `response_dense`, `sourceOperator_dense_domain`,
  `sourceOperator_isClosed`, `sourceOperator_isSelfAdjoint`: verified-in-source
  hypotheses of the generic construction and actual adjoint identity.
- `sourceOperator_form_iff`, `sourceOperator_graph_iff`,
  `sourceOperator_domain_iff`, `sourceOperator_literal_graph_iff`: complete
  source association and representer criterion on ALL maximal-domain tests.
- `sourceOperator_resolvent_graph`: exact response/inverse law.
- `sourceOperator_lower`: the original fixed-window semibounded sign scope.

This is the missing physical-operator consumer of `WeilShiftedSourceSolve`,
not a second independent form domain. It prepares operator-domain checks
for existing literal finite-sine outputs and spectral/variational analysis.
The smooth/sine form-core proof, compactness/discrete-spectrum results,
complex primitive-character transfer, exact zero-spectrum identification,
fully paid corrected matrix signs, and cofinal certificate existence remain
separate obligations. No RH or GRH conclusion is asserted.

## Provenance and comparison

Local assembly of the canonical source form and the standard inverse-
response argument, not formalization of a newly claimed external theorem.
Reopened input: the user's attached `weil-source-advance.zip`, containing
`WeilFormDomainDensity.lean`, `WeilClosedSourceBilinear.lean`, and
`WeilShiftedSourceSolve.lean` with individual source provenance. The original
prepared source was authored against `71a70edea2007e6f5c1c408189e10862499139e9`;
publication is reconciled against `3b56f8e26f3d39baa3df8b1fda882dc2f03ae690`.
The underlying translation-domain blob is
`ab7b89b34076f496e502fbfcc2571dd1bd37cfef`, literal mixed-source blob
`d3d6722b8d86995059f2c626479f03a986171761`, and semibounded comparison blob
`becde980e515c1909cdb1d52fa3cdbc1fec1f8a7`.

A separate reference argument uses the representation theorem for closed
semibounded forms. The proof here does not import that theorem as an
axiom: it constructs the response through pinned Lax--Milgram and proves
maximality by testing the adjoint against every response Rh. These are
related operator-theoretic arguments, not independent verification receipts.

The key hostile cases are a noninjective response, a nondense domain, a
shift applied to graph mass instead of physical mass, and a finite-test
representer substituted for the all-test equation. The source retains the
conditions that exclude each substitution. The operator remains real odd
zeta source mathematics; no conductor-one-to-all-character transfer is implied.

## Evidence

Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. No root-import or pin change.
SOURCE_PROOF_CANDIDATE. Elaboration, exact types, fresh kernel replay,
transitive axiom audit, full import replay and independent review: NOT_RUN.
No numerical certificate, new research axiom, or proof placeholder. Novelty
not claimed; prior-art completeness UNASSESSED. Actual publication and
file readbacks are recorded separately in math#1837.
