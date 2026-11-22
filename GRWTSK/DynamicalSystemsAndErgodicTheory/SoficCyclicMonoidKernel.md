# Finite cyclic monoid: minimal ideal and group kernel

Local mathematical attribution: grwtsk contributors.

## Scope and owning sources

Mathematical owner: `GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCyclicMonoidKernel.lean`
within `grwtsk/math`. The construction consumes the **original**
`SoficCyclicMonoidCayley.CyclicLassoMonoid`, including its `CommMonoid`,
`reduceExp`, `generator`, and Cayley graph. No Lean code is duplicated
in the research repository or this record.

The mathematics adapts the user's November 17, 2026 finite cyclic-monoid
minimal-ideal blueprint. The bijection with `ZMod p` subtracts the
common onset `μ` from exponents in `[μ, μ+p)`, cancels `μ` modulo
`p`, and uses injectivity of residues on the resulting offsets in
`Fin p`. Its classical context is the
structure theory of finite monogenic semigroups / the
Suschkewitsch–Rees description of finite semigroup kernels. These
standard facts are not claimed as novel.

The source uses `p > 0` and arbitrary `μ : ℕ`.
Relevant prior source on main (before this increment):
`SoficCyclicMonoidCayley.lean` blob
`dbbfd6b6f427e203ffe336e9d30ecf5da7c82fcc`.
Root pins: Lean `leanprover/lean4:v4.34.1`;
mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact declarations and return

- `LassoKernel` is the actual subtype of normal monoid powers
  whose exponent belongs to `[μ, μ+p)`.
- `kernelOffsetEquiv`, `kernel_card`, `residue_injective`,
  and `kernelResidueEquiv` exhibit exactly `p` states and a
  bijection with residues modulo `p`.
- `kernelMultiplicativeEquiv`, the transported `CommGroup`
  instance, and `kernelIsoZMod` construct a group isomorphism
  `LassoKernel μ p hp ≃* Multiplicative (ZMod p)`,
  without a new axiom or unproved inverse arithmetic.
- `rightAbsorb`, `leftAbsorb`, and `kernelCarrier_*_ideal`
  retain the original monoid multiplication and establish both
  absorption directions.
- `kernel_mul_toMonoid` proves that the transported group product
  is exactly the original ambient multiplication on cycle states.
- `kernel_one_exp_dvd`, `kernel_eq_one_iff_dvd`,
  `kernelOneFormula_eq_one`, and `kernel_idempotent_iff_one`
  identify the unique internal idempotent: its normal exponent
  is `μ + ((p - μ % p) % p)`, generally different from `μ`.
- `kernel_le_nonempty_right_ideal` proves the kernel lies in
  **every nonempty right ideal**, so it is the least nonempty
  two-sided ideal of this commutative finite monoid.
- `cayley_kernel_edge` is the explicit consumer at the
  original Cayley graph's source-labeled edge. The pre-existing
  `minimumExactRoot_iso_monoidCayleyGraph` connects any
  *minimum exact rooted presentation* to this monoid under its
  original `ExactRoot`, `LeastLassoParams` and cardinality
  hypotheses.

## Mathematical distinctions and hostile checks

The kernel is a cyclic **time-shift** group. It does not show
that the full alphabet-letter transition monoid or the syntactic
monoid of a complete DFA recognizing a prefix language is cyclic.
Sink-completed automata may have noncommuting letter maps.

The statement that *every finite semigroup's minimal ideal has a
unique idempotent* is false: a finite nontrivial rectangular band
has several idempotents in its minimal ideal. The unique idempotent
proved here is specific to the cycle group of a monogenic monoid.
The transient stem is not generally a nilpotent subsemigroup
without an additional quotient construction.

The module establishes no source configuration recurrence, no
multi-generator group/Cannon cone-type transfer, and no RH/GRH
or arithmetic zero-location theorem. Those require separate
source-preserving hypotheses and proofs.

The following non-formal finite enumeration was actually run:
for `0 ≤ μ < 13`, `1 ≤ p < 13`, every carrier multiplication
was checked for associativity/commutativity/identity, the
kernel for two-sided absorption, inverse existence, unique
idempotent and minimal right-ideal containment. All 156
parameter pairs passed; this finite test is *not* universal
verification or a substitute for Lean.

## Evidence status

The statuses below record the initial source increment. See the
coordinating issue for checks on the revised source.

The initial source was a **SOURCE_PROOF_CANDIDATE**.
Source contains no `sorry`, `admit`, or new research axioms.
Lean elaboration: **NOT_RUN**.
Expected statement types: **NOT_RUN**.
Fresh Lean kernel replay: **NOT_RUN**.
Transitive axiom audit: **NOT_RUN**.
Full clean import-closure replay: **NOT_RUN**.
Independent mathematical review: **NOT_RUN**.

Suggested exact-pin check (not executed here):
`lake env lean GRWTSK/DynamicalSystemsAndErgodicTheory/SoficCyclicMonoidKernel.lean`,
followed by exact declaration signature and axiom queries, then
clean dependency replay. The existing Noe proof automation
was not invoked and no execution receipts are claimed.

Coordinating issue: [grwtsk/math#1832](https://github.com/grwtsk/math/issues/1832).
