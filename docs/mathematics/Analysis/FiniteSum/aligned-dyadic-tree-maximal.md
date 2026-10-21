# Aligned dyadic-tree control of every finite prefix

Issue: #437. Direct mathematical parent: #410 / draft PR #411.
Witness predecessor: #430 / draft PR #432.

Evidence state: **SOURCE_DRAFT**. No Lean or Lake execution, elaboration,
kernel acceptance, trust audit, external replay, or arithmetic supplier is
claimed.

## Repository audit

The inspected default branch is

```text
main revision: 5abfeefa6ee8dd9b02077cc77239d17f32f1fd6c
main tree:     8aa3904165d91f97952789fa6c0042636a40cc10
```

The selected RH-facing path is provisional and stacked. Its direct source
parent remains draft PR #411:

```text
parent branch: research/rh-maximal-chowla-energy-410-20261021
parent head:   4628cc379363efeee79f717f11423ba8e036345f
parent tree:   99830f35f7648c0a5259bcd45d3e97ca7c8f3f48
```

The parent head was re-read before branch creation and had not moved. This
increment uses one dedicated branch:

```text
research/rh-dyadic-block-maximal-437-20261021
```

The first source commit is

```text
8660fef4f22a3cc192512b04ee7a9869ae2f24f0
```

with tree

```text
2e0979e073c65b557e0deb5d7f04f7581f6755e3
```

and source blob

```text
a373eab806fcc8c88387ff92ff344a47c1a0ede5.
```

No existing source, public-root import, dependency pin, workflow, executor, or
held branch is modified. The branch is stacked directly from PR #411, not from
the witness PR #432. The witness is a hostile control and provenance edge, not
a logical dependency of the deterministic theorem.

The relevant source region is deliberately narrow:

```text
GRWTSK/Analysis/FiniteSum/DyadicBlockSquareMaximal.lean
GRWTSK/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean
```

The inherited toolchain is Lean 4.33.0 with Mathlib revision
`db584cd6d46c92f209a44c0f1c829460d327499d`.

## Exact terminal consumer

The downstream RH-facing declaration remains

```lean
GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.
  riemannHypothesis_of_subpolynomialDyadicMaximalMertensTwoPointEnergy
```

with conditional type

```lean
SubpolynomialDyadicMaximalMertensTwoPointEnergy →
  _root_.RiemannHypothesis.
```

It is RH-implying, not asserted RH-equivalent. Its missing arithmetic premise
is an all-scale subpolynomial upper bound for the sum over positive shifts of
the squares of all-prefix maxima.

The present theorem does not prove that premise. It supplies one generic
finite comparison needed before a richer block-energy estimate could inhabit
that interface.

## Selected missing comparison

Witness #430 proves that a terminal correlation can vanish after an earlier
nonzero excursion. A valid comparison must retain intermediate information.
The selected observable is therefore the complete signed aligned-dyadic tree
of block sums.

For a real sequence `a : ℕ → ℝ`, define

```text
S_a(N) = sum_(0 ≤ n < N) a(n),

B_a(r,q) = sum_(q 2^r ≤ n < (q+1)2^r) a(n).
```

The source explicitly defines `alignedDyadicBlockSum a r q` as `B_a(r,q)`.
It then defines a recursive tree energy:

```text
E_0(a) = B_a(0,0)^2,

E_(m+1)(a)
  = B_a(m+1,0)^2
    + E_m(a)
    + E_m(a shifted by 2^m).
```

This recursively enumerates the root block and the complete left and right
aligned dyadic subtrees on `[0,2^(m+1))`.

The canonical finite prefix maximum is

```text
P_m(a) = max_(0 ≤ N ≤ 2^m) |S_a(N)|.
```

It is represented by `partialSups` and includes the zero prefix.

## Mathematical statement

The source proves the pointwise comparison

```lean
theorem finitePrefixSum_sq_le_dyadicTreeSquareEnergy
    (m : ℕ) (a : ℕ → ℝ) (N : ℕ) (hN : N ≤ 2 ^ m) :
    finitePrefixSum a N ^ 2 ≤
      ((m : ℝ) + 1) * dyadicTreeSquareEnergy m a
```

and the consumed maximal form

```lean
theorem dyadicPrefixMaximum_sq_le_dyadicTreeSquareEnergy
    (m : ℕ) (a : ℕ → ℝ) :
    dyadicPrefixMaximum m a ^ 2 ≤
      ((m : ℝ) + 1) * dyadicTreeSquareEnergy m a.
```

Every hypothesis is finite and explicit. There is no boundedness,
independence, mean-zero, multiplicativity, stationarity, probability, or
asymptotic premise.

## Proof classification

The proof is repository-authored exact finite algebra.

At depth zero the claim is the singleton identity. At a successor depth set
`H=2^m`.

If `N≤H`, the induction hypothesis controls the left prefix. The nonnegative
root and right-subtree energies permit inclusion into the larger tree, and
`m+1≤m+2` pays the extra level.

If `H<N≤2H`, split exactly

```text
S_a(N) = S_a(H) + S_(shift_H a)(N-H).
```

The full left sum is the top block of the left subtree, while the right prefix
is controlled by the induction hypothesis. The scalar inequality used is

```text
y^2 ≤ kE,  k>0
  ⇒ (x+y)^2 ≤ (k+1)(x^2+E).
```

After multiplication by `k`, the difference is the sum

```text
(kx-y)^2 + (k+1)(kE-y^2),
```

so no analytic inequality or limit is hidden. This is the weighted two-term
Cauchy step that pays exactly one new dyadic level.

The maximal theorem first proves the pointwise square bound, then uses
`partialSups_le_iff` and the nonnegative square root of the bound. The final
squaring is justified by nonnegativity of both sides.

Classification:

```text
imported results: finite sums, order, square root, `partialSups`
new theorem:     exact deterministic finite comparison
computation:     none required by the proof
analytic input:  none
conditional RH:  inherited downstream only
```

## Positivity classification

The source proves only the sign properties needed by the finite comparison:

```text
0 ≤ dyadicTreeSquareEnergy m a,
0 ≤ dyadicPrefixMaximum m a.
```

These are nonnegativity statements for finite sums of squares and a finite
absolute maximum. They are not:

- strict positivity for every nonzero source;
- positive semidefiniteness of a separately specified bilinear form;
- positivity of a kernel, measure, trace, state, or spectral measure;
- averaged or asymptotic arithmetic positivity;
- finite-height Weil positivity;
- positivity after an analytic truncation;
- global positivity.

The comparison preserves the exact finite order relation by multiplying a
nonnegative block-square energy by the positive depth factor `m+1`. No
positivity is assumed as a substitute for the arithmetic estimate required by
the RH consumer.

## Exact finite controls

At depth zero,

```text
E_0(a) = a(0)^2.
```

At depth one,

```text
E_1(a)
  = (a(0)+a(1))^2 + a(0)^2 + a(1)^2.
```

This records the full signed parent block and both singleton children. It is
not the termwise absolute-energy expression

```text
(|a(0)|+|a(1)|)^2.
```

The source also proves that the root block square is one summand of every tree
energy. These controls reject deletion of a subtree, replacement of signed
block sums by termwise absolute values, and a terminal-only statistic.

## Candidate comparison and selection

Three nearby increments were considered:

| Candidate | Conclusion | Distance | Value |
|---|---|---:|---|
| Recursive aligned-tree maximal comparison | `P_m(a)^2 ≤ (m+1)E_m(a)` | zero analytic bridges | selected; exact and reusable |
| Explicit `(r,q)` double-sum identity plus comparison | identify `E_m` with the full coordinate sum and prove the same bound | one additional indexing layer | next generic compatibility theorem |
| Direct Möbius block-energy estimate | all-scale subpolynomial arithmetic bound | major open analytic supplier | too broad for this increment |

The recursive theorem was selected because its conclusion directly controls a
maximal-prefix observable, the proof is finite, and failure would still expose
a concrete algebraic obstruction. No sophisticated abstraction is introduced
for its own sake.

## Relation to witness #430

The witness says

```text
terminal endpoint ≠ faithful summary of all earlier prefixes.
```

The new energy retains every scale recursively. The comparison therefore does
not attempt to repair the terminal endpoint. It changes the observable to one
that preserves enough intermediate signed sums for a deterministic maximal
bound.

The witness does not imply the theorem, and the theorem does not invalidate
the witness. Their relationship is:

```text
#430 refutes terminal compression
  motivates
#437 aligned-tree observable
  supplies
finite maximal comparison.
```

## Information boundary and nonclaims

The theorem does not yet prove that the recursive energy equals the explicit
double sum

```text
sum_(0≤r≤m) sum_(0≤q<2^(m-r)) B_a(r,q)^2.
```

That equality is mathematically expected from the recursion but remains an
explicit compatibility obligation until written and checked. The theorem also
does not yet identify a Möbius two-point sequence with this generic source,
prove the zero-padding adapter, sum over shifts, or absorb the logarithmic
factor into a requested power.

It proves no Chowla, Elliott, Sarnak, large-sieve, dispersion, Möbius-randomness,
pickup-damping, zero-free-region, finite-height RH, or RH theorem
unconditionally.

Quintic, interpolation, spectral, topological, Hodge-theoretic, elliptic, and
K-theoretic machinery is absent. No theorem currently maps those objects to
this finite tree energy.

## Evidence states

Established:

```text
SOURCE_DRAFT
```

Not established:

```text
LITERATURE_REVIEWED
ELABORATED
KERNEL_CHECKED
TRUST_AUDITED
EXTERNALLY_REPLAYED
ANALYTIC_PREMISES_DISCHARGED
```

The theorem contains closed source proof scripts and `#print axioms` commands,
but those commands have not been run. Source presence is not elaboration or
kernel evidence.

## Provenance graph

```text
Mathlib finite sums/order/square-root/partial-supremum APIs
  imported by
DyadicBlockSquareMaximal.lean

grwtsk contributors
  mathematical direction and dependency selection

OpenAI ChatGPT
  proof decomposition and formalization assistance

witness #430
  refutes
terminal-only recovery
  motivates but does not prove
aligned-dyadic-tree comparison

PR #411 maximal Möbius-prefix energy
  is the future consumer after an exact arithmetic adapter
```

No scalar contributor weights are assigned.

## RH consequence and next obstruction

RH consequence: the increment supplies a reusable **generic finite comparison
interface**. It does not discharge the Möbius arithmetic premise of the
conditional RH theorem.

The exact next obstruction is:

> Prove that `dyadicTreeSquareEnergy m a` equals the explicit sum of
> `alignedDyadicBlockSum a r q ^ 2` over `0≤r≤m` and
> `0≤q<2^(m-r)`, then instantiate the theorem for the zero-padded two-point
> Möbius sequence at one scale and shift.

Only after that compatibility may a summed arithmetic block-energy supplier be
stated without changing the observable.
