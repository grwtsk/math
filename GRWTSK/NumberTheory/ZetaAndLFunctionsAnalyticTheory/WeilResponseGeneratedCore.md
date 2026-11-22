# Source-response form and operator cores

Local attribution: grwtsk contributors.
Owner: [WeilResponseGeneratedCore.lean](WeilResponseGeneratedCore.lean).
Namespace: `GRWTSK.NumberTheory.WeilQuadraticForm.ResponseGeneratedCore`.
MSC2020: 47B25, 46C05, 11M06.
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837) and
[math#1258](https://github.com/grwtsk/math/issues/1258).
Consumer: [WeilResponseSignReturn.lean](WeilResponseSignReturn.lean).

## Original objects and exact target

Fix T>0 and beta real. H is `WindowPhysical T`, the original supported odd
real Lebesgue L2 space. V is the complete maximal gamma `FormDomain T`,
with its actual graph Hilbert norm. J is `windowInput T`, an injective
continuous physical inclusion. q is `sourceForm T beta`, retaining all
original gamma, prime-power, orientation and negative-pole terms.

Write lambda=`regularization T beta`, b=q+lambda<J.,J.>, E for the
canonical invertible graph-metric representer of b, W=E^{-1}J* for the
actual weak solver, R=JW for its physical response, and A for the actual
physical source operator. The imported source supplies

    b(W h,v)=<h,Jv>,
    <E u,v>=b(u,v),
    graph A = {(f,g): R(g+lambda f)=f}.

A published source candidate supplying these identities remains a candidate
until its verification is performed. This file does not change that evidence.

For each n>=0 choose the existing finite-energy lift of the original
normalized sine phi_(n+1). Its physical image is the original `sinePhysical`
class, so the choice does not create a different basis. Define

    L(c) = sum_n c_n phi_(n+1),   c : Nat ->_0 Real,
    responseCore = range(W L),
    physicalCore = range(R L).

All FINITE linear combinations are present, with arbitrary support length
and signed real coefficients. These cores are not a fixed finite matrix.

## Complete primary analytic argument

1. **Physical loads are total.** If f is orthogonal to all phi_(n+1), all
   original sine coefficients vanish. The existing Lebesgue-normalized
   Parseval identity gives ||f||_H^2=0. Thus closure(range L)=H.

2. **Form-core density is stronger and is proved separately.** Suppose z in V
   is graph-inner-product orthogonal to range(W L). Put u=E^{-1}z. For every
   finite c, symmetry of b and the weak equation give

       <L(c),Ju> = b(W L(c),u) = b(u,W L(c)) = <z,W L(c)> = 0.

   Totality of the physical sine loads gives Ju=0. Injectivity of J gives
   u=0, then z=E u=0. The orthogonal-complement characterization of closure
   in the COMPLETE V gives closure(responseCore)=V. Norm equivalence in the
   existing source also makes this a core for the regularized source norm.
   `exists_response_approx` records approximation for each z and tolerance.

3. **Operator graph density includes the output.** The bounded continuous map

       G(h)=(Rh,h-lambda Rh)

   maps all H onto graph A. The image of the dense load space is therefore
   dense in that graph: preimage of the closed span of G(range L) is closed
   and contains the dense load space, hence contains all H. Conversely graph
   A is closed and contains those image pairs. Thus their graph closure is
   exactly graph A, not merely a superset or a physical projection.

4. **Actual Mathlib core.** The graph of A restricted to physicalCore is exactly
   G(range L), by uniqueness of the physical operator output. Restriction is
   closable because A is closed. Its graph closure is graph A, so its operator
   closure equals A. This constructs `LinearPMap.HasCore`, not a substitute
   definition equating physical density with graph density.

## Declaration-level correspondence

- `sineLift`, `sineLift_input`, `sineLoad`, `sineLoad_coe`, `sineLoad_inner`:
  original-source finite-energy lifts and exact physical normalization.
- `loadMap`, `loadMap_single`, `loadSpace`, `sineLoads_total`,
  `loadSpace_closure`: arbitrary finite original loads and physical totality.
- `responseMap`, `responseCore`, `responseCore_closure`,
  `exists_response_approx`: exact response form core and qualitative density.
- `graphResponse`, `responseGraph`, `physicalCore`, `responseGraph_le`,
  `physicalCore_le_domain`: actual physical operator pairs, not model outputs.
- `graphResponse_mem_closure`, `responseGraph_closure`, `restriction_graph`,
  `sourceOperator_has_responseCore`: complete graph density and the official
  Mathlib operator-core predicate.

All declarations are in the namespace stated above. The key consumers are
the exact signed-form extension in `WeilResponseSignReturn` and subsequent
certified approximations to these exact responses.

## Distinctions, hostile checks, and unresolved work

Physical density alone does NOT imply graph/form density. The extra step here
is the actual invertible coercive source representative E. The vectors W phi_n
are generally not finite sines, and R phi_n are not claimed equal to phi_n.
Therefore the original unmodified smooth/sine form-core theorem is still open.

The exact responses are noncomputable mathematical objects in this source.
Their core property does not produce finite trial coefficients, a stopping
rule, a uniform approximation rate, or universally accepted certificates.
The residual certificates in `WeilFiniteSineSolveResidual` apply only when
their original finite rows and complete remote allowance are supplied.

The product used for graph closure is the usual topological product. No
maximum product norm is claimed to be a Hilbert norm. The form-core argument
uses the already constructed Hilbert `FormDomain` norm.

No positivity of q, zeta-zero spectral identity, RH/GRH, complex primitive
character transfer, or cofinal certificate supply follows from these cores.
A finite set of response vectors cannot replace the quantified finite support.

## Source and API provenance

Inspected canonical base: `grwtsk/math@300b564894b2c6fe44424ae4a4da9a8170d4c50d`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Canonical local inputs: `WeilFormDomainDensity` (sine lifts/Parseval return),
`WeilClosedSourceBilinear` (source symmetry and coercivity),
`WeilShiftedSourceSolve` (actual weak response), and
`WeilPhysicalSourceOperator` (closed source graph and response identity).
This is a local consequence of those declarations, not an imported paper proof.

Pinned upstream interfaces inspected: `Finsupp.linearCombination` in
`Mathlib/LinearAlgebra/Finsupp/LinearCombination.lean`;
`Submodule.topologicalClosure_eq_top_iff` in
`Mathlib/Analysis/InnerProductSpace/Projection/Submodule.lean`;
`LinearPMap.domRestrict`, `domRestrict_apply`, `mem_graph_iff` in
`Mathlib/LinearAlgebra/LinearPMap.lean` (blob
`e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8`);
`LinearPMap.HasCore` and graph closure in
`Mathlib/Topology/Algebra/Module/LinearPMap.lean` (blob
`e5da29e849e9c1471705a0a9bbe52abde1610485`).
The argument is standard Hilbert-space/resolvent theory specialized to exact
local source objects; no novelty claim. Prior-art completeness: UNASSESSED.

## Evidence

SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, fresh kernel replay,
transitive axiom audit, clean dependency replay and independent review: NOT_RUN.
No research axioms or placeholders are introduced. Imported candidates and
known historical failures keep their actual status. Static checks and exact
publication readback, when performed, are recorded separately in math#1837.
Root imports and dependency pins are unchanged.
