# From bounded traces to one integer and all finite prime budgets

Local attribution: grwtsk contributors.

Maintained source: [EisensteinTraceIntegerWitness.lean](EisensteinTraceIntegerWitness.lean).
Namespace: `GRWTSK.NumberTheory.EisensteinTraceIntegerWitness`.

## The combined theorem

Fix natural `q≥7`, `e≥1`, finite types `O,S`, and actual complex families
`z : O → ℂ`, `t : S → ℂ`. The retained hypotheses are:

1. For every `o`, some positive natural `k` satisfies `(z o)^k=1`.
   The order may depend on `o`.
2. Every trace satisfies `‖t s‖≤sqrt(q)+2`.
3. Every `q^e t s` is integral over `ℤ`.
4. Every abstract complex field automorphism permutes the indexed root
   family and, separately, the indexed trace family. Both equivalences
   preserve multiplicities.

Write

\[
E(q,e,z)=q^{-e}z+1+q^ez^{-1},\qquad
B=|O|\,|S|\,(2e\log q+1).
\]

The theorem `exists_int_trace_product_prime_budget` proves

\[
\boxed{\exists N\in\mathbf Z:\quad
N=\prod_{o\in O}\prod_{s\in S}q^e(t_s-E(q,e,z_o)),\quad
N\ne0,\quad \log|N|\le B,}
\]

and, for that same `N`,

\[
\boxed{\forall P\subseteq\{\text{primes}\}\text{ finite},\qquad
\sum_{p\in P}\log p\,v_p(N)\le B.}
\]

The quantifier order is **one integer first, then every finite prime
set**. Its exact complex-cast equality identifies the integer with the
literal product. It is not an unrelated small integer or a choice that
can vary with `P`. Both index families may be empty; then the product is
one and the cardinality budget zero.

## Proof walkthrough

For each pair `(o,s)`, define

\[
f_{o,s}=q^e(t_s-E(q,e,z_o)).
\]

The [trace-separation theorem](EisensteinTraceSeparation.md) proves
`f_{o,s}≠0`, integrality of `f_{o,s}`, and
`log ‖f_{o,s}‖≤2e log q+1`. In fact its quantitative lower bound is
`‖f_{o,s}‖≥5/2`. This uses the actual trace-size and integral-trace
hypotheses, rather than assigning those properties to an abstract factor.

For an arbitrary `σ : ℂ ≃+* ℂ`, natural numbers, powers, sums,
products, and inverses are preserved. Therefore

\[
\sigma(E(q,e,z))=E(q,e,\sigma(z)).
\]

Let `u` and `v` be the root and trace index equivalences supplied for
this same `σ`. Then

\[
f_{u(o),v(s)}=\sigma(f_{o,s}).
\]

The [integral Galois-product theorem](GaloisInvariantIntegerProduct.md)
now applies to the complete product on `O × S`. It derives, rather than
assumes, the existence of an integer equal to the product. Nonzero
factors give `N≠0`, and summing the logarithmic bound over every pair
gives

\[
\log|N|\le\sum_o\sum_s(2e\log q+1)=B.
\]

Choose that integer once. For each finite prime set `P`, the
[integer prime-log budget](IntegerPrimeLogBudget.md) gives
`Σ log p v_p(N)≤log|N|≤B`. This last step establishes the stated
uniformity in `P` without changing the witness.

## Return to the submitted arithmetic route

The source comparison is with
`UpperTheory.GalN.V.Win.frobenius_trace_norm_nonzero_log_bound` in the
[pinned submitted file][external]. Its `TrData q e` contains the actual
finite trace family and the trace bound, scaled integrality, and
automorphism permutations. Its orbit parameter supplies `z` and the
root/permutation hypotheses. Choosing `Fintype` instances for those
finite carriers identifies the local `card(S)` with its `Nat.card D.S`.

The new local theorem therefore reconstructs the **actual integer
equality, nonvanishing, archimedean size bound, and finite-prime budget**
from those data. It does not reconstruct the whole external theorem:
that theorem additionally uses an admissible-representation classifier
and an injective class map to compare the integer's `ℓ`-adic norm with
selected trace differences. Those representation and local-norm parts
remain explicit verification obligations.

The further source chain in [FPropGKU.lean][valuation] uses `OneCharU_s`
to bound deformation lengths by twice a sum of valuations. The finite
product alone supplies no such estimate. The private `vl_bound` there
converts a norm-product inequality to a valuation sum, and is the next
small local target. The `ℓ∤q` hypothesis in the original construction
justifies the exact cancellation `‖q‖_ℓ=1`; a weaker inequality must be
proved separately before weakening that source hypothesis.

The [two-witness theorem](IntegerPrimeLogBudget.md) handles the two
distinct auxiliary-prime exceptions once the pointwise valuation
suppliers are available. Subsequent `CountI`, other count cases,
`JointWin`, `VWin`, and the full character-window construction retain
their own hypotheses. No RH or Dirichlet-GRH endpoint is concluded by
this finite arithmetic assembly.

## Declaration provenance and comparison

All suffixes are in `GRWTSK.NumberTheory.EisensteinTraceIntegerWitness`.

| Declaration | Role |
|---|---|
| `map_eisensteinTrace` | Exact source expression commutes with abstract complex automorphisms. |
| `exists_int_trace_product` | Constructs the actual nonzero integer and full indexed logarithmic bound. |
| `exists_int_trace_product_prime_budget` | The same witness, selected before all finite prime sets, pays for their valuation sums. |

The three imported local modules record the full mathematical
arguments, alternative elementary comparisons, hostile checks, and
individual source correspondences. This assembly composes those
arguments; it is not a further independent proof of them. A separate
agent reviewed the complete assembly and confirmed the exact expression,
index multiplicities, quantifier order, empty-family behavior, and the
remaining representation/deformation premises.

Local source is original, MIT licensed, and attributed to
`grwtsk contributors`. Mathlib retains upstream authorship and licensing.
No submitted Lean implementation or external build dependency is
imported. The correspondence pin remains
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`;
the verification mirror is not attributed as the submission's author.

## Exact-source verification

Source base: `grwtsk/math@8acc7048187539cb1bbdfd810472e3150d5d919d`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`16197a58163702f8da7058c7840e5e97d2f7323f7eb95f6330bde94860569934`.

- Maintained compilation passed with `--trust=0` and warnings as
  errors, exit `0`, no diagnostics, in 3.926 seconds. It imported
  the exact compiled objects of the three source modules documented
  above.
- An imported audit with the same flags passed in 4.089 seconds.
  All three transitive axiom lists were exactly `propext`,
  `Classical.choice`, and `Quot.sound`.
- The audit restated the endpoint using the raw three-term expression,
  with no local definition hiding the target, and retained
  `∃ N, ... ∀ P`. It also instantiated one root `z=1` and one trace
  `t=0` at `q=7,e=1`; the returned integer was proved to be exactly
  `−57`, with the advertised nonzero/logarithmic/prime budgets.
- Audit SHA-256:
  `bc9d34082d123c3ff6433f03858da3f2aa76c4253f80d58c366b93b48b6a2331`.
- Both assembly checks passed on their first attempts. The component
  source records retain their earlier development and control failures.

Fresh full-dependency replay, an independently implemented kernel check,
and compilation of the external automorphic consumer with these local
declarations substituted are `NOT_RUN`. Local elaboration, exact-target
comparison, axiom auditing, and mathematical review are distinct from
those unperformed checks and from acceptance of the entire submission.

With the pinned dependencies and imported modules built:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/AlgebraicNumberTheoryGlobalFields/EisensteinTraceIntegerWitness.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/AdmissibleResidues/FrobeniusTraceCountBoundOfRatEigensystemCount.lean
[valuation]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/ModularityArgument/ThresholdArguments/DenseThresholdCases/FPropGKU.lean
