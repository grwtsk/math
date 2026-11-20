# Exact finite smoothing and return to the Chebyshev function

Local attribution: grwtsk contributors.

Maintained source: [SmoothedMangoldt.lean](SmoothedMangoldt.lean), namespace
`GRWTSK.NumberTheory.SmoothedMangoldt`.

## Mathematical consumer and source correspondence

This module proves the finite weighted-sum identity requested by the project
RH addendum, section 23.6.1, and a return to Mathlib's actual
`ArithmeticFunction.vonMangoldt` and `Chebyshev.psi`. It also quantifies the
error introduced by smoothing and by recovering the original prefix.
These are unconditional finite mathematical results. They do not assume RH
or a theorem from the submitted external proof.

The motivating quantity is the finite sum in the November 20, 2026
[announcement](https://alpo.ge/remark.pdf), page 3, item 5, SHA-256
`3fc97784b71ddd44ff8aa0a177e99622a1c61b13cfa843a0989ee4a7a0cfeb8d`.
The pinned submitted [StatementOC.lean](https://github.com/Deicyde/riemann-hypothesis/blob/a172c464fd4bcfc4f53e394dcba45d742b1409a6/src/Formalism/StatementOC.lean)
defines `Formalism.Sz` and `Formalism.Gz`. This module has no import from that
submission and copies none of its proof code. The derivation below uses
finite summation by parts and elementary real inequalities. Mathematical
correspondence is asserted at integer arguments; no cross-environment Lean
identity with an external declaration has been checked.

The formal foundations are Mathlib's
[`Finset.sum_range_by_parts`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Algebra/BigOperators/Module.lean),
[`Chebyshev.psi`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/Chebyshev.lean),
and [`ArithmeticFunction.vonMangoldt`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/ArithmeticFunction/VonMangoldt.lean).
Those results retain the Mathlib contributors' attribution and Apache-2.0
license. The local proof is an original consequence of those foundations,
not an adaptation of the external submitted proof.

## Exact finite argument

For arbitrary real coefficients, set

\[
A_N=\sum_{n=1}^N a_n,\qquad
T_N=\sum_{n=1}^N\frac{a_n}{n},\qquad
S_N=\sum_{n=1}^N a_n\left(\frac Nn-1\right).
\]

The source indexes these sums by `i ∈ Finset.range N` and `n=i+1`.
All denominators are therefore positive. Natural subtraction in
`range (N-1)` also makes the cases `N=0` and `N=1` empty, as required.

Distributing the finite sum gives `S_N = N T_N - A_N`. At the next
endpoint, the added coefficient has weight zero, so
`S_(N+1) - S_N = T_N`. Combining the two equalities gives the exact inverse:

\[
\boxed{A_N=N(S_{N+1}-S_N)-S_N.}
\]

A further difference yields

\[
S_{N+2}-2S_{N+1}+S_N=\frac{a_{N+1}}{N+1}.
\]

Independently, finite summation by parts gives

\[
\boxed{S_N=N\sum_{k=1}^{N-1}\frac{A_k}{k(k+1)}.}
\]

One can see this by writing
`1/k - 1/(k+1) = 1/(k(k+1))` and interchanging finite sums. The formal
proof uses Mathlib's finite Abel identity and proves the denominator
conditions. These two descriptions share elementary finite algebra; they
are not claimed as independent proofs of an analytic theorem.

On the summation support `N/n-1 ≥ 0`. Its positive part therefore agrees
exactly with the same weight. No positivity assumption on `a_n` is needed.

## Original arithmetic and exact normalization

Specializing to the genuine von Mangoldt function proves
`A_N = Chebyshev.psi N`, using Mathlib's finite-sum representation and
the zero value at index zero. The module does not introduce a substitute
prime function.

For any real `c`, put

\[
C_N=S_N-N\log N+cN,\qquad
b_N=N(N+1)(\log(N+1)-\log N).
\]

The announcement's normalization is `c=1+γ_E`. Exact recovery gives

\[
\boxed{\psi(N)-b_N=NC_{N+1}-(N+1)C_N.}
\]

The linear normalization cancels; the logarithmic main term does not.
Applying `log t ≤ t-1` once to `(N+1)/N` and once to its reciprocal proves
`N ≤ b_N ≤ N+1` when `N ≥ 1`.

## Error transport and a necessary limitation

If `|A_k-B_k| ≤ ε_k` for `1 ≤ k < N`, then positivity of the finite
kernel and the triangle inequality prove

\[
\left|S_N-N\sum_{k=1}^{N-1}\frac{B_k}{k(k+1)}\right|
\le N\sum_{k=1}^{N-1}\frac{\varepsilon_k}{k(k+1)}.
\]

Conversely, if `|S_N-B_N| ≤ ε_N` and
`|S_(N+1)-B_(N+1)| ≤ ε_(N+1)`, then

\[
\left|A_N-\bigl(N(B_{N+1}-B_N)-B_N\bigr)\right|
\le N\varepsilon_{N+1}+(N+1)\varepsilon_N.
\]

For centered bounds `|C_N| ≤ ε_N` and `|C_(N+1)| ≤ ε_(N+1)`, this gives

\[
\boxed{|\psi(N)-N|\le
N\varepsilon_{N+1}+(N+1)\varepsilon_N+1.}
\]

The factor of order `N` is material. Separate estimates on neighboring
centered values do not prove cancellation of their signed combination.
For a concrete control, take `a_2=1` and all other coefficients zero:
`S_2=0`, `S_3=1/2`, and `A_2=1`. One smoothed observation loses the
endpoint coefficient, and dropping the inverse amplification would fail.

This does not obstruct the submitted proof's separate Landau route. That
route uses a one-sided bound on a weighted character family on complete
large windows, rather than this two-sample absolute-error estimate.
The [source walkthrough](../ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisRoute.md)
retains that distinction.

## Declaration-level record

All declarations below are under `GRWTSK.NumberTheory.SmoothedMangoldt`.

| Declaration | Mathematical content and retained scope |
|---|---|
| `weightedSum_eq_positive_part` | Same finite kernel on positive integer support; arbitrary real coefficients. |
| `weightedSum_eq_scaled_reciprocal_sub_partial` | Finite distributivity `S_N=N T_N-A_N`. |
| `weightedSum_step` | Exact first difference, all natural `N`. |
| `partialSum_eq_weighted_difference` | Exact prefix recovery, all natural `N`. |
| `weightedSum_second_difference` | Recovery of coefficient `a_(N+1)/(N+1)`. |
| `weightedSum_eq_partial_sum_transform` | Finite Abel identity, including empty endpoint cases. |
| `weightedSum_error_le` | Forward kernel error, with every finite prefix error retained. |
| `partialSum_error_le` | Inverse error, with coefficients `N` and `N+1`. |
| `mangoldt_partialSum_eq_psi` | Identification with Mathlib's actual `ψ`. |
| `mangoldtWeightedSum_eq_psi_transform` | Exact smoothed von Mangoldt / `ψ` relation. |
| `psi_eq_mangoldtWeightedSum_difference` | Exact return to canonical `ψ`. |
| `mangoldtWeightedSum_second_difference` | Exact return to canonical von Mangoldt coefficients. |
| `psi_sub_log_increment_eq_centered_difference` | Centered identity, with arbitrary explicit real normalization. |
| `psi_sub_log_increment_abs_le` | Full cost of independent neighboring centered bounds. |
| `logarithmic_increment_bounds` | `N ≤ b_N ≤ N+1`, requiring `N ≥ 1`. |
| `psi_sub_self_abs_le` | Actual `ψ(N)-N` bound, with the final baseline correction `+1`. |

## Verification and remaining obligations

Source base: `grwtsk/math@5624239ab1a35db87d6eb8aa7771f68ad7117b74`.
Lean: `4.34.1`, compiler commit `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Final source SHA-256:
`691ed58b3dc686c48cd21858fa3ff391f0691207866b2f65b2f3d0ca965c0cfe`.

| Check | Actual result |
|---|---|
| Maintained-source compilation | Trust level zero, warnings treated as errors, exit `0`, no diagnostics. |
| Transitive axiom audit | All 16 theorems report exactly `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx` or new mathematical axiom. |
| Raw-sum target comparison | An explicit target written with the canonical `Chebyshev.psi` and raw sums compiled. |
| Information-loss control | The exact `a_2=1`, `S_2=0`, `S_3=1/2`, `A_2=1` control compiled. |
| Final inline audit | The unchanged maintained source followed by the axiom queries and both controls compiled at trust level zero, exit `0`, in 111.203 seconds. |
| Fresh same-kernel import replay | `leanchecker --fresh` was attempted and timed out after 300 seconds; no replay verdict. This is not a pass and not `NOT_RUN`. |
| Independently implemented kernel | `NOT_RUN`. |

The final inline audit SHA-256 is
`8016dc3e7c9a1c0061c7fa400d1a7b3c08403564058e7a00c72c97d1ab94761e`.
Earlier audits importing the newly compiled module timed out at 120 and
300 seconds; the successful inline check used the exact maintained source
bytes and avoided that additional import. These timeouts gave no
mathematical verdict. A separate source review checked indexing, centering,
positive-part agreement and the full forward/inverse error costs; it found
no blocking issue. It shares the Mathlib foundation and is not a second
independent analytic proof or an external referee report.

To reproduce the source check in a checkout with the pinned dependencies:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/MultiplicativeNumberTheory/SmoothedMangoldt.lean
```

The audit appends `#print axioms` for the 16 declarations listed above to
the same source. Fresh replay remains a distinct, unresolved check.

No all-real-argument integral identity, character-family `Gm` identification,
uniform analytic centered bound, all-scale positivity, RH, or GRH is proved
by this module. The next arithmetic supplier must control the required
signed combination or the source's actual Landau-window quantity with the
stated quantifiers. Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).
