# Uniform absorption of the power-window error budget

Local attribution: grwtsk contributors.

Maintained source: [PowerExponentialBudget.lean](PowerExponentialBudget.lean).
Namespace: `GRWTSK.Analysis.PowerExponentialBudget`.

## Exact statement and consumer

For every `ε,K,C : ℝ` with `ε>0`, the module proves that there is a real
cutoff `x₀` such that every `x≥x₀` and every `u≥1` satisfying
`log u≤2x^(ε/4)` obey

\[
e^{x^{4\varepsilon/5}}\log2
+K e^{8x^{\varepsilon/4}}
+u^C+C e^{x^{4\varepsilon/5}}
\le\sqrt{e^{x^\varepsilon}}.
\]

Both `K` and `C` are unrestricted real numbers. The cutoff depends on
`ε,K,C`, and is chosen before `u`; it is uniform over all admissible `u`.
No cutoff uniform as `ε` tends to zero is asserted.

The fully qualified main declaration is
`GRWTSK.Analysis.PowerExponentialBudget.error_terms_le_sqrt_exp_rpow`.
It proves the exact mathematical statement of
`UpperTheory.V.error_terms_le_sqrt_exp_rpow` in the submitted source at
revision `a172c464fd4bcfc4f53e394dcba45d742b1409a6`.
[Pinned source statement][source].

The concrete consumer is `UpperTheory.V.vwinAt_of_joint` in
[AdmissibleOfPageN.lean][consumer]. It applies the inequality with
`u=condF(E)*t(x)`, after separately proving the logarithmic conductor-height
bound. Its `vwin_of_joint` specialization uses `Ct=401` and retains the
premises `JointWin 401` and `ThmBc 401`. The local proof supplies the
elementary numerical statement; it does not construct those arithmetic
premises, the character data, or the power windows. The source connection
is explained in the [submitted-route walkthrough](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisRoute.md).

## Complete independent argument

First prove a general fact: for arbitrary real `A,D`, exponents
`0≤p<q`, and `b>0`,

\[
A e^{D x^p}\le e^{b x^q}
\quad\text{eventually as }x\longrightarrow+\infty.
\]

Put `Q=|A|+1`, so `Q≥1`. Since `x^(q-p)` tends to infinity, eventually

\[
b x^{q-p}\ge |D|+\log Q+1.
\]

For `x≥1`, also `x^p≥1`, and hence

\[
\log Q+D x^p
\le (\log Q+|D|)x^p
\le b x^q.
\]

Exponentiation and `A≤Q` prove the general lemma. This argument handles
negative coefficients and negative exponent multipliers without adding
sign restrictions to the statement.

Next, `u≥1` ensures `log u≥0`, so

\[
u^C=e^{C\log u}
\le e^{|C|\log u}
\le e^{2|C|x^{\varepsilon/4}}.
\]

Apply the general lemma four times with `q=ε`, `b=1/2` and the following
parameters:

| Term being bounded | `A` | `D` | `p` |
|---|---:|---:|---:|
| `exp(x^(4ε/5)) log 2` | `4 log 2` | `1` | `4ε/5` |
| `K exp(8x^(ε/4))` | `4K` | `8` | `ε/4` |
| The upper bound on `u^C` | `4` | `2 abs(C)` | `ε/4` |
| `C exp(x^(4ε/5))` | `4C` | `1` | `4ε/5` |

Because `ε>0`, both smaller powers lie strictly below `ε`. Each of the
four terms is eventually at most one quarter of `exp(x^ε/2)`. The common
cutoff is chosen before the variable `u` is introduced. Summing the four
bounds and using `exp(t/2)=sqrt(exp t)` proves the stated budget.

## Comparison, hypotheses and limits

The submitted proof gives an explicit cutoff and first combines the four
terms under a single exponential envelope. This local proof instead uses
the power-limit theorem and assigns a separate quarter of the budget to
each term. It gives an existential eventual cutoff, which is all the
stated consumer requests. No submitted Lean implementation was copied or
imported. The exact theorem correspondence is not a claim of prior-art
novelty or independent acceptance of the external RH argument.

The strict power gap is essential to the generic lemma: with `p=q`,
`A=2`, and `D=b=1`, the proposed conclusion would be
`2 exp(x^p)≤exp(x^p)`, which fails because the exponential is positive.
The lower bound on `u` also matters when `C<0`: allowing arbitrarily
small positive `u` would make `u^C` arbitrarily large while leaving a
one-sided upper bound on `log u` satisfied.

No arithmetic counting bound, `JointWin`, `ThmBc`, `VWin`, analytic
prime-sum estimate, RH, or GRH is proved by this module. The local
declaration has not been installed into or used to rebuild the external
source environment, whose Lean and Mathlib pins differ from this repository's.

## Declaration provenance

The local source attribution is `grwtsk contributors`; Mathlib retains its
upstream authorship and Apache-2.0 license. The external locator is the
pinned submitted source mirrored by the verification project, not an
attribution of the mathematical submission to the mirror's maintainer.

| Fully qualified declaration suffix | Source correspondence and role |
|---|---|
| `eventually_mul_exp_rpow_le_exp` | Original general power-growth argument from Mathlib's `tendsto_rpow_atTop`; arbitrary `A,D` and explicit `0≤p<q`, `b>0`. |
| `rpow_le_exp_of_log_le` | Original order argument using the actual real power and logarithm, with `u≥1`. |
| `error_terms_le_sqrt_exp_rpow` | Exact correspondence to the pinned external numerical lemma, through the distinct four-term proof above. |

## Exact source and verification

Source base: `grwtsk/math@2bf99849996eb52b0281003945e5f75fe08dbce6`.
Lean: `4.34.1`, compiler commit `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`c225783bbc48eeeebf9e553f7b84b1d01026ffe0c8a457b71b7c7c35613a5841`.

The maintained source compiled with `--trust=0` and warnings treated as
errors, exit `0`, no diagnostics, in 128.956 seconds. A subsequent audit
imported that compiled module and printed the transitive axiom lists for
all three public declarations. Each list contains exactly `propext`,
`Classical.choice`, and `Quot.sound`; no `sorryAx` or added mathematical
axiom appears.

The same audit proved an independently spelled version of the exact
external numerical statement, including the cutoff before the universal
`u`, and the strict-power-gap counterexample `not (2 exp(x)≤exp(x))`.
It passed with the compiler's ordinary trust setting and warnings treated
as errors, exit `0`, in 31.553 seconds. Its SHA-256 is
`c0370b7155c5690b6021b38dccec877f500a399a04ef36bf270076bc166d0536`.

An earlier attempt at that imported audit with `--trust=0` timed out at
180.448 seconds without a verdict. The source compilation at trust level
zero and the successful ordinary imported audit are distinct checks; the
timeout is not a pass or `NOT_RUN`.

Fresh full-import replay, an independently implemented kernel check, and
compilation of the external arithmetic consumer with the local theorem
are `NOT_RUN`. The source-level comparison and the independent elementary
argument do not extend the external project's acceptance status.

To reproduce the maintained-source check with the pinned dependencies:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/SequencesSeriesSummability/ConvergenceAndDivergenceOfInfiniteLimitingProcesses/PowerExponentialBudget.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).

[source]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/ErrorTermsLeSqrtExpRpow.lean
[consumer]: https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Development/AutomorphicArithmetic/AutomorphicVarieties/CMFieldExponentialBounds/AdmissibleOfPageN.lean
