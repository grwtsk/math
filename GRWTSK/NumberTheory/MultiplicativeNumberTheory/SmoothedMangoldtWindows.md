# Wider-window recovery of the actual Chebyshev sum

Local attribution: grwtsk contributors.

Maintained source: [SmoothedMangoldtWindows.lean](SmoothedMangoldtWindows.lean).
All declarations are in `GRWTSK.NumberTheory.SmoothedMangoldt` and build on
the unchanged [finite smoothing identities](SmoothedMangoldt.md).

## Exact result and consumer

For the actual von Mangoldt function, write

\[
S_N=\sum_{n=1}^N\Lambda(n)(N/n-1),\qquad
C_N=S_N-N\log N+cN,
\]

with an arbitrary fixed real normalization `c`. For natural numbers
`0 < h < N` and a real radius `E ≥ 0`, the principal theorem proves

\[
C_{N-h}\le E,\qquad C_N\ge-E,\qquad C_{N+h}\le E
\quad\Longrightarrow\quad
|\psi(N)-N|\le h+\frac{(2N+h)E}{h}.
\]

Here `ψ` is Mathlib's actual `Chebyshev.psi`. Only the indicated three
observations are needed. In particular, a lower observation at the center
and upper observations at the outer endpoints suffice. A corollary accepts
three absolute-value bounds instead.

This completes a finite transfer from centered observations to the
original prime-power partial sum, with a selectable separation. The
previous adjacent identity charges coefficients `N` and `N+1`; this
inequality divides the observation error by the separation `h` and retains
the baseline bias `h`. It supplies no analytic estimate for the observations.

The concrete consumer is the smoothed-sum route in
[SubmittedRiemannHypothesisRoute.md](../ZetaAndLFunctionsAnalyticTheory/SubmittedRiemannHypothesisRoute.md).
For integer arguments, `c=1+γ` matches the displayed zeta centering there.
The submitted weighted character-family quantity is a different object;
the new theorem neither identifies that family with the scalar sum nor
provides its missing estimates.

## Complete finite argument

For any nonnegative real sequence `a`, let

\[
A_N=\sum_{n=1}^N a_n,\qquad
T_N=\sum_{n=1}^N a_n/n,\qquad
S_N=\sum_{n=1}^N a_n(N/n-1).
\]

The existing identities give `S_N=N T_N-A_N` and
`S_(N+1)-S_N=T_N`. Since the summands of `T_N` are nonnegative, `T` is
monotone. Summing its values between two endpoints gives

\[
(n-m)T_m\le S_n-S_m\le(n-m)T_n.
\]

Substituting `A_n=nT_n-S_n` and multiplying by the nonnegative natural
endpoints yields the denominator-cleared secant bounds. Dividing by the
strictly positive separations then gives, for `m<n<r`,

\[
\frac{mS_n-nS_m}{n-m}\le A_n
\le\frac{nS_r-rS_n}{r-n}.
\]

These generic statements allow `m=0`. A positive lower endpoint is needed
for the logarithmic comparison below.

There is also a direct coefficient check of the finite argument. The lower
secant assigns coefficient one to indices `k≤m` and coefficient
`m(n-k)/(k(n-m))` to `m<k≤n`; the latter lies in `[0,1]` and vanishes at
`k=n`. The upper secant is `A_n` plus nonnegative terms with coefficient
`n(r-k)/(k(r-n))` for `n<k≤r`, vanishing at `k=r`. This independently checks
the indexing and the signs, without using the monotone-slope proof script.

For the von Mangoldt coefficients, the proved positivity theorem supplies
the sequence hypothesis, and the existing identity identifies `A_n` with
canonical `ψ(n)`.

## Centering, signs and error costs

The linear normalization cancels exactly:

\[
mS_n-nS_m
=mn(\log n-\log m)+mC_n-nC_m.
\]

Thus an upper bound `C_m≤U_left`, a lower bound `L≤C_n`, and an upper
bound `C_r≤U_right` give

\[
\frac{mn(\log n-\log m)+mL-nU_{\rm left}}{n-m}
\le\psi(n)
\le
\frac{nr(\log r-\log n)+nU_{\rm right}-rL}{r-n}.
\]

No absolute-value assumption is used in this version. With individual
absolute bounds `|C_k|≤ε_k`, the two error budgets are instead

\[
\frac{m\varepsilon_n+n\varepsilon_m}{n-m},\qquad
\frac{n\varepsilon_r+r\varepsilon_n}{r-n}.
\]

For real `0<x<y`, the elementary inequalities for `log(y/x)` give

\[
x\le\frac{xy(\log y-\log x)}{y-x}\le y.
\]

Apply this to the two logarithmic secants, set `m=N-h`, `r=N+h`, and use
the common error radius. The lower observation cost is `(2N-h)E/h`; the
upper cost is `(2N+h)E/h`. Since `E≥0`, the latter covers both, giving the
stated symmetric bound.

## Limits and counterexamples

Nonnegative coefficients are essential. If only `a_2=-1` is nonzero,
the lower secant at `m=1,n=2` is zero while `A_2=-1`. If only `a_3=-1`
is nonzero, the upper secant at `n=2,r=4` is `-1/3` while `A_2=0`.
Character-twisted coefficients can have signs or complex phases, so the
generic theorem cannot be applied to them without an additional positivity
argument.

Upper observations alone also do not suffice, even for nonnegative
coefficients. For `a_n=0` and `c=0`, the centered values are
`C_N=-N log N≤0` for `N≥1`, while `A_N=0` and `|A_N-N|=N`.
The required central lower observation is absent. This is a counterexample
to a generic transfer that drops that hypothesis, not a counterexample to
the submitted Landau theorem with its actual L-function and pole hypotheses.

The error tradeoff is of size `h+NE/h`. Balancing the two costs suggests
`h` of size `sqrt(NE)` when that width is admissible. Consequently a
hypothetical centered bound of order `N^θ` would give an elementary bound
of order `N^((1+θ)/2)` by this route: at `θ=1/2`, the resulting exponent is
`3/4`. This explanation is an analytic consequence of the finite inequality;
integer rounding and a big-O theorem are not formalized in this module.
When observations are known only on a source power window, all three
chosen integers must lie within that window.

## Declaration provenance

These are original finite arguments, without an import from the submitted
RH project. The source comparison motivates the consumer; it does not
establish novelty over the classical method of recovering monotone sums
from smoothed observations. Mathlib dependencies retain their upstream
authorship and Apache-2.0 license.

| Declaration | Exact role |
|---|---|
| `reciprocalSum_monotone` | Nonnegative coefficients give monotone reciprocal prefixes. |
| `weightedSum_difference_bounds` | Finite differences lie between endpoint slopes. |
| `weightedSum_secant_lower_scaled` | Lower prefix enclosure before division. |
| `weightedSum_secant_upper_scaled` | Upper prefix enclosure before division. |
| `partialSum_secant_bounds` | Both generic secants, with positive separations. |
| `psi_secant_bounds` | Return to the actual von Mangoldt and `Chebyshev.psi` objects. |
| `centered_secant_identity` | Exact cancellation of the arbitrary linear normalization. |
| `centered_secant_error_le` | Complete absolute endpoint error. |
| `psi_centered_one_sided_secant_bounds` | Upper outer observations and a lower central observation. |
| `psi_centered_secant_bounds` | Logarithmic enclosure from individual absolute errors. |
| `logarithmic_secant_bounds` | Baseline lies between the positive real endpoints. |
| `psi_window_bounds` | Canonical psi enclosure with all individual error costs. |
| `psi_one_sided_window_bounds` | Enclosure from a common one-sided observation radius. |
| `psi_symmetric_window_of_one_sided_bounds` | Principal finite-width bound from the weaker three observations. |
| `psi_symmetric_window_abs_le` | Corollary from three absolute centered bounds. |

## Exact source and verification

Source base: `grwtsk/math@2bf99849996eb52b0281003945e5f75fe08dbce6`.
Lean: `4.34.1`, compiler commit `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
All nine dependency revisions matched the manifest and had no tracked edits
when inspected for this pass.

Maintained source SHA-256:
`8d10909a8830c99b50b9990dbc97682a5c924e678188fc04093fe1b37cbb94a1`.
Imported `SmoothedMangoldt.lean` SHA-256:
`691ed58b3dc686c48cd21858fa3ff391f0691207866b2f3d0ca965c0cfe`.

The final maintained module compiled with `--trust=0` and warnings
treated as errors, exit `0`, no diagnostics, in 118.909 seconds. This
checks all 15 new declarations against the pinned dependencies and the
already checked base module.

A successful imported audit queried the two final endpoints
`psi_symmetric_window_abs_le` and `psi_window_bounds`. These queries
traverse the one-sided and absolute-error proof paths, respectively;
each reports exactly `propext`, `Classical.choice`, and `Quot.sound`.
No `sorryAx` or added mathematical axiom appears in those endpoint
dependencies. This audit uses the compiler's ordinary trust setting and
passed with warnings treated as errors, exit `0`, in 112.789 seconds.

The same run checked an independently spelled raw von Mangoldt sum with
the actual `Chebyshev.psi` conclusion. It also compiled both signed
counterexamples above, the nonnegative zero-sequence upper-only control,
and its concrete failure of a small prefix-error bound. Its SHA-256 is
`46de2e2fb957c56cf2f1843f29f19f7f22c2aff87873bb8eee16c566f896bcc3`.
An independent source review checked the secants coefficient by coefficient,
the needed observation signs, and the width/error tradeoff. It shares the
Mathlib foundation and is not a second kernel implementation.

The following earlier attempts remain part of the actual evidence:

- A full inline audit with all 15 individual axiom queries timed out at
  150.178 seconds with `--trust=0` and at 150.461 seconds with ordinary
  trust. Neither produced a verdict. The successful reduced audit above
  uses two final endpoint queries and retains all five controls.
- An initial maintained-module check exited `1` because the base
  `SmoothedMangoldt.olean` was missing from the new test search path.
  Restoring the already verified base object, whose SHA-256 is
  `d3aae7b805a46e0dd9fb65f7943bfffe24e17c44dffb3782c07e247ceef33dab`,
  repaired that environment error. The maintained source was unchanged
  before the successful check.

Fresh full-import replay and an independently implemented kernel check of
this new module are `NOT_RUN`. The earlier base module's fresh-replay
timeout remains recorded in [its own source record](SmoothedMangoldt.md).

To reproduce the maintained-source check with pinned dependencies and the
base module built:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/MultiplicativeNumberTheory/SmoothedMangoldtWindows.lean
```

Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).
