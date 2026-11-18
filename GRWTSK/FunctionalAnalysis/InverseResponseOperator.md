# Shifted inverse of a symmetric bounded physical response

Local attribution: grwtsk contributors.
Owner: [InverseResponseOperator.lean](InverseResponseOperator.lean).
Namespace: `GRWTSK.FunctionalAnalysis.InverseResponseOperator`.
MSC2020: 47B25, 47A05.
Consumer: `WeilPhysicalSourceOperator.lean` in the canonical number-theory tree.

## Statement and full argument

Let H be a complete real Hilbert space, R:H->H bounded linear, injective,
symmetric, and with dense range. For arbitrary a in R define the relation

    G_a = {(x,y) : R(y+a x)=x}.

It is the kernel of a continuous linear map H x H -> H, hence closed.
If (0,y) belongs to it then R y=0, so y=0. Thus it is a genuine graph
and Mathlib's `Submodule.toLinearPMap` represents an operator A, not a
multivalued relation or a totalized inverse. Its domain is exactly range R:
a graph pair gives x=R(y+a x), while h gives the graph pair
(Rh,h-a Rh). Consequently A(Rh)=h-a Rh and its domain is dense.

Symmetry: for x,y in the domain set h=Ax+a x and k=Ay+a y. Then Rh=x,
Rk=y, and symmetry of R gives <x,k>=<h,y>. Cancel the two equal shift
terms to get <Ax,y>=<x,Ay>.

Maximality: let u belong to D(A*) and v=A*u. Testing the adjoint equation
against Rh for arbitrary h gives

    <v,Rh>=<u,h-a Rh>.

Symmetry of R rewrites this as <R(v+a u),h>=<u,h> for all h. Thus
R(v+a u)=u, so (u,v) belongs to G_a. Hence A* is contained in A.
The reverse inclusion follows from dense-domain formal symmetry.
Therefore A*=A in Mathlib's actual `LinearPMap.adjoint` sense.
No spectral theorem, inverse boundedness, or coercivity assumption is used.

## Declaration map

`relation`, `mem_relation`: exact closed linear equation.
`operator`, `operator_graph`, `mem_operator_graph`: actual partial operator
and its full graph, guarded by injectivity.
`operator_domain`: range R, not all H.
`operator_isClosed`, `operator_dense_domain`: topology and domain scope.
`value_relation`, `response_mem_domain`, `operator_on_response`: exact
left/right inverse identities with the physical shift.
`operator_formalAdjoint`: symmetry on the operator domain.
`operator_isSelfAdjoint`: equality with the maximal adjoint.

## Source provenance and hostile checks

Local standard operator-theoretic argument, not a novelty claim or an
imported paper theorem. The pinned Mathlib API is by Yury Kudryashov,
Moritz Doll and the listed contributors:

- `Mathlib/LinearAlgebra/LinearPMap.lean`, blob
  `e8141c16f5dd94b7fa7e010c9b0487c5b40cecc8`, `toLinearPMap_graph_eq`,
  `mem_graph`, `mem_domain_iff`, `image_iff`, `le_of_le_graph`.
- `Mathlib/Analysis/InnerProductSpace/LinearPMap.lean`, blob
  `d23a4b7eb98846403de0228106bbaeb022b85a21`,
  `adjoint_isFormalAdjoint`, `IsFormalAdjoint.le_adjoint`, and the
  actual Star instance for unbounded operators.
- `Mathlib/Topology/Algebra/Module/LinearPMap.lean`, blob
  `e5da29e849e9c1471705a0a9bbe52abde1610485`, `LinearPMap.IsClosed`.

Without injectivity the relation can have a nonzero vertical fiber;
without dense domain Mathlib's adjoint uses a junk branch. Both hypotheses
are therefore retained, and the arithmetic consumer proves them from its
actual source. Symmetry alone is not called self-adjointness. No complex
character transfer or eigenvalue/zeta identification is made.

## Pins and evidence

Integration base: `grwtsk/math@3b56f8e26f3d39baa3df8b1fda882dc2f03ae690`.
Lean `leanprover/lean4:v4.34.1`; mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Direct API source reference:
https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/InnerProductSpace/LinearPMap.lean

SOURCE_PROOF_CANDIDATE. Elaboration, exact signature checks, fresh kernel
replay, transitive axiom audit, clean dependency replay and independent
review: NOT_RUN. No new axiom or proof placeholder. Novelty not claimed;
prior-art completeness UNASSESSED. Publication/readback evidence belongs
in math#1837 and does not change mathematical verification status.
