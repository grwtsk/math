# Exact finite obstruction connections: Farey, Sturmian, projective channels, bounded gauges, Heisenberg

**Scope:** four standalone Lean **SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED**
increments on the existing `grwtsk/math` main branch, integrated on 2026-10-23.
This note records mathematical identities, exact hypotheses, source identity,
source-to-paper boundaries, and missing suppliers. It is not a compiler/kernel receipt.

## 1. Farey-to-free-Sturmian fixed-frame conjugacy

**Actual mathematical supplier:** `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel.returnMatrix`,
defined from the ordered Farey left and right shears:
`H=[[1,1],[1,2]]`, an exact positive Farey return on endpoint frames
via `farey_return_frame`.
The other supplier is
`GRWTSK.LinearAlgebra.Sturmian.zero_coupling_transfer`,
the SOURCE definition of a Schrödinger transfer in state order
`(current,previous)` with energy `E=3`, potential `V=0`:

    T0(3) = [[3,-1],[1,0]], C = [[1,-2],[0,1]], Cinv = [[1,2],[0,1]].
    C*Cinv = Cinv*C = I, H*C = C*T0(3).
    H^n*C = C*T0(3)^n  for ALL n:N.

These exact source-level proof candidates live in
`GRWTSK.Spectral.FareySturmianFreeConjugacy.frameChange_mul_inverse`,
`frameChange_inverse_mul`, `farey_free_intertwines`,
`farey_free_conjugate`, `farey_free_power_intertwines`,
`sturmian_free_intertwines`, `sturmian_free_power_intertwines`,
`freeTransfer_ne_returnMatrix`, and `free_energy_three_not_elliptic`.
Main introduction **`f7d8dd922f763c786b61d436f16dba5bf955865f`**;
source blob **`f854110d2c099b97094505063eee3e8399f35e2f`**.
Dependencies: `GRWTSK.NumberTheory.Farey.ReturnSpectralChannel`
blob `de3d52cd221bdf2334bcacccff43fafde4d52db9`,
`GRWTSK.LinearAlgebra.Sturmian`
blob `9bb5e76caaab1c4cd0a9df067e791f9996c42d48`,
and `GRWTSK.LinearAlgebra.SchrodingerTransfer`.

**Paper comparison, not direct theorem import:** **Ram Band, Siegfried Beckus,
Raphael Loewy**, *The Dry Ten Martini Problem for Sturmian Hamiltonians*,
2024 preprint (arXiv [2402.16703](https://arxiv.org/abs/2402.16703)),
**equation (1.1)** supplies the normalized binary rotation potential
and Schrödinger recurrence model reflected in `Sturmian.lean`.
Theorem **1.1** establishes all labelled gaps open for **irrational
`alpha` and NONZERO coupling `V`**, using periodic approximation
and an infinite-tree representation. The local Farey construction uses
**zero coupling**, so Theorem 1.1's hypotheses do **not** hold.
The fixed-frame two-by-two algebra does not construct the paper's
spectral tree, infinite operator, IDS, gap labels, zero-free interval,
or operator-spectrum identification. `E=3` also fails the source
free trace criterion `|trace|<=2`, without upgrading that trace
criterion to a spectral theorem.

**Classification:** `source-proof-candidate` for fixed-frame
conjugacy; existing `Sturmian` model follows a specific paper
equation; Theorem 1.1 is **methodological comparison only**;
Sturmian nonzero-potential gap transport is **unresolved**.

## 2. Projective Koopman eigenvalue and observable recovery

**Source objects:** `ReturnAngularChannel.modThreeReturn` is the
SAME integral Farey LR word in `ZMod 3`; `H_3^2=-I`.
The reached selected vector cycle is
`(1,0)->(1,1)->(2,0)->(2,2)->(1,0)`.
The oriented readout has values `1,i,-1,-i`; pairs at distance two
are antipodal and cannot be identified by a sign-invariant
projective readout (previous `ReturnAngularProjectiveObstruction`).

**New exact abstract theorem:** for `T,gauge:X->X`,
`f:X->C`, `omega:C`, **one actual basepoint `x`**
with `T(T x)=gauge x`, `f(gauge x)=f x`, both separate
one-step eigenvalue equations at `x` and `T x`, and
`f x != 0`, the new
`eigenvalue_sq_one_of_gauge_two_step` states `omega^2=1`.
The source specialization
`farey_projective_eigenvalue_sq_one` retains a **global**
sign-invariance premise, a global eigen-relation on the full
finite vector carrier, and **nonzero output at the selected
source vector**. It refutes `omega=i` under those premises.

**Exact positive repair:** a full-vector sign-invariant observable
`projectiveParityReadout(v)= if v(1)=0 then 1 else -1`
agrees with **the SQUARE** of the oriented four-state phase
on the selected orbit, and has eigenvalue `-1` **on that
orbit**, not necessarily on all nonzero vectors.
The parity-label map `parityProfile : Fin4->Fin2` identifies
the antipodal pairs: the original phase cannot factor through
it, whereas the squared phase does factor through it via
`parityPhase`. This proves the exact observation-fiber
loss and a restricted decoder.

Fully qualified declarations have prefix
`GRWTSK.NumberTheory.Farey.ProjectiveKoopmanEigenvalue.`.
Introduction **`9872d0c70b2c16c4efefaa57060fd53875239606`**,
source Git blob **`f82dfdb4aa2cded519e6d06abefe25405144c030`**.
Direct imports: `ReturnAngularProjectiveObstruction`,
blob `08c7754c5116d7885613caf56e6b2005ab9a7167`,
and `GRWTSK.Logic.InformationLoss.FactorizationFiber`,
blob `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd`.

**Comparison boundaries:**
- The characteristic-two Polynomial Freiman–Ruzsa theorem of
  **W. T. Gowers, Ben Green, Freddie Manners, Terence Tao**,
  *On a conjecture of Marton*, **2025**,
  DOI [10.4007/annals.2025.201.2.5](https://doi.org/10.4007/annals.2025.201.2.5);
  source/verification project [teorth/pfr](https://github.com/teorth/pfr),
  including `Marton.pfr_conjecture`, is a **formalization-method
  analogy** for reconstruction under explicit hypotheses and
  axiom/implicit-parameter audit, not a paper theorem imported here.
  The finite fiber result has **no** small-doubling hypothesis,
  polynomial bounds or Freiman structural theorem.
- **Larry Guth, Hong Wang, Joshua Zahl**, *A streamlined proof of the
  Kakeya conjecture in R3*, **2026**, with a formalization
  [project-numina/kakeya-3d](https://github.com/project-numina/kakeya-3d)
  separating `StickyFrostmanHypothesis` from its later
  `stickyFrostmanHypothesis_of_pureWZ2` supplier; this is a
  **proof-architecture analogy**, not a tube-cover or
  Hausdorff-dimension result.
- **Peter Sarnak**, *Three Lectures on the Mobius Function:
  Randomness and Dynamics*, **2011**,
  [IAS source](https://publications.ias.edu/sarnak/paper/506),
  **Definition 3 and Conjecture 4**: actual bounded continuous
  flow observations, zero topological entropy and genuine
  Möbius-correlation `o(N)` remain **unresolved** here.
  A finite periodic Koopman character does not prove it.

## 3. Bounded gauge versus unconstrained cocycle similarity

**Exact local source:** `GRWTSK.LinearAlgebra.CocycleProduct.cocycleProduct_gauge`
gives the actual endpoint-telescoping law
`P^B_n(x)=B(T^[n]x)^(-1)*P_n(x)*B(x)` for
`T:S->S`, `A,B:S->G`, **`[Group G]`**.

For a **supplied** nonnegative height `h:G->R` with
`h(g*k)<=h(g)*h(k)`, and a global constant `0<=C`
such that **BOTH**
`forall y, h(B y)<=C` and
`forall y, h((B y)^(-1))<=C`, the new source
`GRWTSK.LinearAlgebra.BoundedGaugeHeight.cocycle_gauge_height_sandwich`
states, at **every finite n and basepoint x**,

    h(P^B_n(x)) <= C^2 h(P_n(x)),
    h(P_n(x)) <= C^2 h(P^B_n(x)).

Related helper declarations: `height_triple_le` and
`height_triple_of_bounded_ends`. Main introduction
**`41a63bc678e1a1ede0915bfd03619a85385c9e26`**,
source blob **`26e1067482cfe6d6af732c7336b73f256e75e150`**;
direct dependency `CocycleProduct.lean` blob
`464093299328bd804948a8959e603224418264f7`.

**Comparison:** **OpenAI**, *Unitarizability implies amenability for
discrete groups*, **2026**,
[OpenAI formalization scope](https://github.com/openai/math/blob/main/lean/docs/251.md),
is a **methodological analogy** about controlling a
uniformly bounded representation with a bounded invertible similarity.
No statement about amenability, Hilbert-space operator algebras,
existence of a unitarizing similarity or exact transfer to OpenAI's
formal definitions is imported or proved. A normed-operator
instantiation of the abstract `height` assumptions and
any uniform Lyapunov exponent, Floquet spectral equivalence
or admissible gauge class for nonperiodic arithmetic dynamics
remain **unresolved**. An unrestricted gauge from `GaugeState`
does not satisfy these bounds automatically.

## 4. Nonabelian Heisenberg center versus abelian information loss

**Exact source:** the repository's integral Heisenberg
`H(Z)` with law `(a,b,c)*(a',b',c') =
(a+a',b+b',c+c'+a*b')` and the actual elements
`X=(1,0,0)`, `Y=(0,1,0)`,
`Z=[X,Y]=(0,0,1)!=1`. The existing
`IntegralHeisenbergPrimitive.Z_abelianization_eq_one`
is the genuine Mathlib abelianization, not a selected
coordinate projection.

The new `GRWTSK.GroupTheory.Words.HeisenbergObservationLoss.`
declarations `abelianized_commutator_eq_identity`,
`isIdentityFlag`, `central_flag_differs`,
`identity_flag_not_factorsThrough_abelianization`,
`commutative_character_kills_central_memory` and
`commutative_character_cannot_separate`
give a complete **obstruction at the stated group/observation
scope**: abelianization identifies `Z` with `1`
and no decoder of just that quotient can recover even the
identity query, and every homomorphism to a commutative group
also kills `Z`.

Main integration **`d9b5736a739e00e7739c5c04fbf0d3055ce70924`**,
new blob **`1082ac7d954d2fcb1ba7fddd1a21343f0ee5d436`**;
imports `IntegralHeisenbergPrimitive` blob
`a9d7b5c27435d2d55d7500a77e26142629b6d366`
and `FactorizationFiber` blob
`3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd`.

This is **not** non-residual finiteness. It does not assert
that **every finite quotient** kills `Z` (false in general
for the integral Heisenberg group). It establishes blindness
only for **abelian/commutative images**. It also does not
construct a nilmanifold, a Heisenberg skew product,
zero-entropy flow, or Möbius-disjointness theorem.
The latter is only a method analogy to Sarnak's conjecture,
with its own explicit dynamical/analytic premises outstanding.

## 5. Other recently closed/open results remain comparison-only

- **OpenAI**, *Uniform exclusion of Landau–Siegel zeros* (2026),
  [formalization scope](https://github.com/openai/math/blob/main/lean/docs/003.md):
  requires an analytic Dirichlet L-function and **primitive real**
  character hypotheses. The source Farey nonunit Dirichlet
  obstruction and selected mod-three matrix cycle cannot furnish
  a zero-free estimate, primitive conductor normalization or
  zeta/Dirichlet analytic continuation. `ANALOGY_ONLY`.
- **Project Numina / Wang–Zahl / Guth–Wang–Zahl** Kakeya
  formalization as above is an example of discharging an exact
  supplier. No `KakeyaDimensionThree` or `PureWZ2Theorem5_2Unconditional`
  declaration is imported by our source. `ANALOGY_ONLY`.
- The source's `CyclicResidueHodge` module concerns a **finite
  graph coboundary** and an actual mod-four nonunit cutoff whose
  projector fails to commute with translation. It is not a
  classical algebraic Hodge cycle or a solution of the Hodge
  conjecture. That application retains its own pending
  verification [#1103](https://github.com/grwtsk/math/issues/1103).
- The algebraic Farey/sturmian/Heisenberg constructions
  do not import a non-residual-finiteness theorem for
  a hyperbolic group and do not settle a new general
  unitarizability, PFR, Kakeya, Siegel-zero, Sarnak, Hodge
  or Riemann-Hypothesis theorem.

## 6. Preflight and remaining kernel gate

Independent exact symbolic checks before Lean replay:
`H*C=C*T0(3)`, `C*Cinv=Cinv*C=I`, and
`H^n*C=C*T0(3)^n` for `0<=n<100` passed;
all nine `F_3^2` vectors obeyed the chosen readout's
sign invariance; the four source orbit values were
`+1,-1,+1,-1` and acquired a factor `-1`
on every selected step. These are finite computations only.
The gauge theorem is a symbolic group-height inequality
with explicit submultiplicativity and gauge bounds,
NOT a numerically sampled claim.

All four **new** Lean leaves are unimported by
`GRWTSK.lean` and remain `SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED`. The local tool environment has no
`lean`, `lake` or `leanchecker` executable. Earlier
kernel-verified finite Farey parent modules retain
their independently documented **exact eight-module
source scope**, but that old acceptance does not
include or prove these four new declarations.
The full import closure, warning-clean leaf
builds, fresh kernel and transitive axiom/unsafe audit
are to be pinned and queued in a separate verification issue
on the final main commit. Any failure must be corrected
without weakening the original mathematical hypotheses
or replacing an unproved premise with a silent axiom.
