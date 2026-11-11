# Displacement-preserving radial-to-height cutoff

Local attribution: grwtsk contributors.

## Exact source identity

Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.ConductorProfiles.radial_cutoff_forces_height`.
Canonical source: `../DirichletConductorProfileBounds.lean`.
Source candidate revision: `613790e5aa55e2408d6db9fb1befbc0f8ec5fc5d`; Git blob `de5e4060dcc86e920cb0b8da85f544828126c831`; SHA-256 `275c39e404fc2ae0c91a23637b4960bc5ee5968dc03a4b2f0af8073a5c998619`.
Dependency baseline: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`; Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: https://github.com/grwtsk/math/issues/1804.

## Mathematical-source correspondence

Source: grwtsk contributors, *RP-OC-07 v1: conductor-uniform bounds and a backward Dirichlet-GRH reduction*, 2026-11-10-v1, section 2, paragraph "Radial versus height cutoffs" after equation (4).
Exact edition: https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/9364603bb5453e3d71f4739ef04ba609fa541504/research/06-weil-spectral/source-exact-cofinal-transfer/dirichlet-conductor-uniform-v1.md.
Source SHA-256: `5ee31c36bbf282a56e6a9870d91974fc23653f49c4ef3d9a35895c5f9ecf14b8`.
Program source: *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, Edition 1.0, November 10, 2026, section 20.3, by grwtsk contributors; SHA-256 `ad73ead982fb2bb80c89e4c0a0373edf37385b8716ac6c4a71481c68faebca15`.
Relation: local consequence in squared real coordinates. The source uses z=gamma+i*(1/2-beta); the Lean theorem does not silently replace the complex divisor by ordinates.

## Statement and primary argument

Assume 0<=beta<=1, T>=0, T^2+1/4<=R^2 and R^2<gamma^2+(1/2-beta)^2. Then T<|gamma|. The strip bounds give (1/2-beta)^2<=1/4 from beta*(1-beta)>=0. If |gamma|<=T, squaring the two nonnegative numbers gives gamma^2<=T^2, contradicting the strict radial hypothesis and the cutoff allowance.

The consumer is the passage from a radial tail |z|>R to a height tail |gamma|>T. To instantiate T=sqrt(R^2-1/4), separately prove its square identity and T>=4 for the arithmetic counting input. The squared theorem itself makes no assumption on an L-function and no assertion that a given complex point is an arithmetic zero.

## Hostile example

Take beta=0, gamma=0 and R=1/4. Then R^2<gamma^2+(1/2-beta)^2 but |gamma|>R is false. Thus equating radial and height cutoffs fails even inside the closed strip. This rational example is an analytic counterexample to the uncorrected implication, not a claimed zero of an L-function. Central and exceptional-real-zero configurations must remain visible. No statistical or finite zero search is used.

## Evidence

SOURCE_PROOF_CANDIDATE. The elementary argument and rational hostile example were inspected, not executed in Lean. Lean elaboration, fresh kernel replay, transitive axiom audit and independent analytical review: NOT_RUN. Novelty: UNASSESSED; none asserted. This record does not assert main publication or a completed arithmetic tail theorem.
