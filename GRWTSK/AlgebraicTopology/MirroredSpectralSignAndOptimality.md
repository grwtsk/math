# Mirror no-go, signed-source identity, and a global placement certificate

Source: [MirroredSpectralSignAndOptimality.lean](MirroredSpectralSignAndOptimality.lean).
Issue: [math #1846](https://github.com/grwtsk/math/issues/1846).

## Mathematically proven implication

For an equivalence J:S≃S and any original real source readout Q:S→ℝ,

  (∀s, Q(Js)≥0) ↔ (∀s, Q(s)≥0),

and

  (∃s, Q(Js)<0) ↔ (∃s, Q(s)<0).

The second implication explicitly retains negative witnesses via
the inverse J⁻¹. Thus even an involutive mirrored heat construction
does not independently establish global positivity of an actual
signed Weil functional. It can move observations but not create
missing source analytic evidence.

For genuine unitary involution on a Hilbert space, conjugated
operators also have the same spectra. This spectral statement
is NOT formalized here: the existing mirrored semigroup interface
has no Hilbert structure, unitarity, self-adjoint generator or
continuity assumptions. Do not manufacture those properties.

## Optimality contract

`Placement` is exactly a bijection Fin4096≃Beacon4, not a new
graph carrier. `PairwiseScore` combines a specified arithmetic
weight matrix with a specified geometric score.
`OptimalityCertificate` contains an exact lower bound valid for
EVERY permitted placement and a candidate attaining that bound.
Only that evidence justifies the returned globally optimal theorem.
A positive spatial kernel, a local permutation improvement, or
floating-point score alone cannot populate those proof fields.

`FeatureEnergy` is an actual finite sum of squares. Its
nonnegativity is a real proof, but an equality between this
computational form and the source Weil form is NOT provided.

## Systems and theoretical feedback

- Frozen identities and mathematical proofs are authoritative;
  arbitrary neural embeddings, heat diffusion and physical GPU/SSD
  layout are not formal proof objects.
- Merkle content hashes establish integrity, not correctness.
- Deep GNN heat-like propagation can oversmooth, requiring
  residual identity paths and an explicit information-loss guard:
  https://www.jmlr.org/papers/v27/25-0890.html .
- A proof-carrying mathematical claim differs from a cryptographic
  proof of model inference: Anthropic November 2026 research,
  https://www.anthropic.com/research/provable-inference .
- Genuine prismatic cohomology is p-adic arithmetic geometry,
  Bhatt–Scholze 2022,
  https://annals.math.princeton.edu/2022/196-3/p05 .
- No RH/GRH or P=NP conclusion follows from these finite contracts.

Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
New Lean build, transitive axiom audit, fresh kernel replay and
independent review NOT_RUN.


## Source boundaries
The complete Walsh eigenvalue theorem is proved algebraically in the adjacent mathematical exposition and exhaustively checked by independent finite integer computation. The newly authored Lean source proves a smaller kernel-translation invariant and square-addressing result, not the full positivity theorem. For Lean status, record NOT_RUN until the pinned toolchain executes.
