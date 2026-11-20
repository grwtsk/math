# Prime valuation sums paid by an integer's logarithm

Local attribution: grwtsk contributors.

Maintained source: [IntegerPrimeLogBudget.lean](IntegerPrimeLogBudget.lean).
Namespace: `GRWTSK.NumberTheory.IntegerPrimeLogBudget`.

## Exact statement and arithmetic consumer

For an integer `n≠0` and a finite set `P` of primes, the module proves

\[
\sum_{p\in P}\log p\,v_p(n)\le\log|n|.
\tag{1}
\]

Here the formal valuation is Mathlib's actual `padicValInt p n`, and
`P : Finset Nat.Primes` prevents repeated counting of a prime. The
declaration `prime_log_budget` retains the exact factor order and
nonzero hypothesis of the submitted private `corG_sum_log` in
[CorGSumLog.lean][external].

The same source uses two integer witnesses because each has an excluded
auxiliary prime. The local `two_witness_log_budget` makes this deduction
explicit. Suppose `p₁≠p₂`, `c≥0`, and

\[
a(p)\le c\,v_p(n_1)\quad(p\ne p_1),\qquad
a(p)\le c\,v_p(n_2)\quad(p\ne p_2).
\]

For any finite prime set on which those hypotheses hold,

\[
\sum_{p\in P}\log p\,a(p)
\le c\bigl(\log|n_1|+\log|n_2|\bigr).
\tag{2}
\]

The source's application has `c=2`. The local theorem allows any
nonnegative `c`; it does not require `a` to be nonnegative. The
deformation estimate supplying the pointwise valuation hypotheses is
not proved here. The [trace-witness assembly](EisensteinTraceIntegerWitness.lean)
also applies (1) to its actual constructed integer, with that integer
chosen before the prime set.

## Complete proof and distinct comparison

The natural-number prime factorization gives

\[
\log m=\sum_{p\in\operatorname{supp}(m.\mathrm{factorization})}
 v_p(m)\log p.
\]

This is Mathlib's `Real.log_nat_eq_sum_factorization` in the
[pinned logarithm source][mathlib]. Every summand is nonnegative. Given
any finite set `s` of natural numbers, enlarge it to the union with the
factorization support. This only adds nonnegative terms. All terms
outside the support vanish, so the enlarged sum is exactly `log m`.
This proves `sum_factorization_mul_log_le`.

Apply this identity to `m=n.natAbs`. For primes,
`n.natAbs.factorization p = padicValInt p n`; the coercion from prime
subtype to natural numbers is injective and therefore preserves the
finite sum. Finally `(n.natAbs:ℝ)=|(n:ℝ)|`, giving (1).

The submitted argument takes a different elementary route. It proves
that the product of the selected prime powers divides `n`, using
pairwise coprimality, bounds that divisor by `|n|`, and then takes
logarithms. The local proof uses the complete factorization identity and
nonnegative truncation. It was written directly against Mathlib without
copying or importing the submitted implementation. Both arguments
ultimately use unique prime factorization; they do not give independent
RH proofs or establish novelty.

For a single pointwise supplier `a(p)≤c v_p(n)`, multiply by the
nonnegative number `log p`, sum, factor out `c`, and apply (1).
For the two-witness statement, `p₁≠p₂` ensures every prime differs from
at least one exceptional prime. The other valuation is nonnegative, so
at each prime

\[
a(p)\le c\,v_p(n_1)+c\,v_p(n_2).
\]

Multiplication by `log p`, summation, and two applications of (1) yield
(2), including both exceptional primes.

## Boundary cases and hostile controls

The general factorization and valuation inequalities also hold at
`n=0` under Mathlib's totalized conventions: its zero valuation and
logarithm values give zero on both sides. This does not make zero a
valid nonzero arithmetic witness. The exact external-correspondence
theorem retains `n≠0`, and the trace-product consumer proves it before
applying the budget.

The following controls were proved in the audit:

| Hypothesis changed | Counterexample |
|---|---|
| A list counts a prime twice | For `n=2` and `[2,2]`, the sum is `2 log 2>log 2`. |
| The two exceptional primes coincide | Take `p₁=p₂=2`, `n₁=n₂=1`, and a positive observation at two. Both outside-exception hypotheses hold, while the singleton sum is positive and the proposed budget zero. |
| The multiplier may be negative | With an empty prime set, `n=2` and `c=−1`, the pointwise premise is vacuous but `0≤−log 2` fails. |

A further mathematical check shows the sign issue also affects the
two-witness theorem: `p₁=2,p₂=3,n₁=2,n₂=3,c=−1,a≡0` satisfies each
outside-exception bound but would require `0≤−log 6`.
No positivity assumption on `a` is needed for these upper bounds.

## Declarations and source provenance

All suffixes are in `GRWTSK.NumberTheory.IntegerPrimeLogBudget`.

| Declaration | Source correspondence and role |
|---|---|
| `sum_factorization_mul_log_le` | Original finite nonnegative truncation of the Mathlib factorization identity. |
| `sum_prime_valuation_mul_log_le` | Actual `padicValInt` and absolute integer cast, allowing the totalized zero case. |
| `prime_log_budget` | Exact submitted `corG_sum_log` target and hypotheses. |
| `weighted_sum_le_log_budget` | A supplied pointwise valuation estimate pays for its weighted finite sum. |
| `two_witness_log_budget` | Generalized two-distinct-exception deduction used in `UpperTheory.V.U3.corGK`. |

The external source pin is
`Deicyde/riemann-hypothesis@a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
The mirror identifies the submitted source; its maintainer is not
attributed as the submission's author. Local source is original and MIT
licensed. Imported Mathlib retains its upstream authorship and Apache-2.0
license. The exact arithmetic context and remaining `OneCharU_s` input
are described in the [deeper route audit](../ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisArithmeticAudit.md).

## Exact-source verification

Source base: `grwtsk/math@8acc7048187539cb1bbdfd810472e3150d5d919d`.
Lean `4.34.1`, compiler `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`a5a1046c86c57de178f82bc07c56b9741cc5d25923453f47146abedc013169d7`.

- Final maintained-source compilation passed with `--trust=0` and
  warnings as errors, exit `0`, no diagnostics, in 4.540 seconds.
- The imported exact-target/controls/axiom audit passed with the same
  flags, exit `0`, in 3.547 seconds. Every one of the five transitive
  axiom lists was exactly `propext`, `Classical.choice`, and `Quot.sound`.
- Audit SHA-256:
  `bb6bac0864d3cfa529b7d82568e891e95068a5b599b83016155dc988eb843888`.
- Earlier development checks failed on two unavailable lemma names
  and a remaining integer-cast equality. The first scratch control
  audit failed on lambda type inference and singleton-sum rewriting.
  These failures were retained and corrected; no timeout occurred.
- A separate mathematical/source review found no material defect and
  verified the exact external target, zero convention, signs, and
  exceptional-prime coverage. It is not independent kernel replay.

Fresh full-dependency replay, an independently implemented kernel check,
and an external consumer build with the local theorem substituted are
`NOT_RUN`. The pointwise deformation-to-valuation supplier remains open
in this local continuation.

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/AlgebraicNumberTheoryGlobalFields/IntegerPrimeLogBudget.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[external]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/UnitaryThreeGroups/CorGSumLog.lean
[mathlib]: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean
