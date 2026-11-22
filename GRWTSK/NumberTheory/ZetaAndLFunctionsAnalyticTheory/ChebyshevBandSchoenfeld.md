# From the explicit theta estimate to the exact band predicate

Local attribution: grwtsk contributors.

Maintained source: [ChebyshevBandSchoenfeld.lean](ChebyshevBandSchoenfeld.lean),
namespace `GRWTSK.NumberTheory.ChebyshevBandSchoenfeld`.
Consumer: the exact `BandBound` definition in
[ChebyshevBandReduction.lean](ChebyshevBandReduction.lean).

## Statement and retained analytic premise

Let

\[
E(n)=n-\theta(n),\qquad B(n)=\sqrt n(\log n)^2,
\]

using Mathlib's actual `Chebyshev.theta`. The module proves

\[
\left(\forall n\ge4^7,\quad |E(n)|\le\frac{B(n)}{8\pi}\right)
\quad\Longrightarrow\quad
\forall j\ge7\;\forall n\in[4^j,4^{j+1}]\cap\mathbb N,
\quad E(n)-E(4^j)\le\frac16B(4^j).
\]

The antecedent is the explicit proposition `SchoenfeldAboveAnchor`. The
conclusion is the literal unfolded body of the existing `BandBound`, with
the same function, constants, closed endpoints and unbounded quantifiers.
This is a conditional theorem for every required band, not a test of
finitely many bands. The source has no RH assumption hidden in its
definitions and no import from the submitted external RH formalization.

The mathematical analytic supplier is Lowell Schoenfeld, *Sharper Bounds
for the Chebyshev Functions theta(x) and psi(x). II*, Mathematics of
Computation 30 (1976), 337-360, Theorem 10, equation (6.3). That theorem
assumes RH and gives the strict real-argument theta estimate for `x ≥ 599`.
The integer range here starts at `4^7=16384`, and the order of the two
terms inside the absolute value does not change it.
[Publisher source](https://www.ams.org/mcom/1976-30-134/S0025-5718-1976-0457374-X/S0025-5718-1976-0457374-X.pdf)
and [scan of the original paper](https://electronicsandbooks.com/edt/manual/Magazine/M/Mathematics%20of%20Computation/1960-2002/pdf/1976_v030_n134/2005976.pdf).

The local module **does not formalize Schoenfeld's analytic theorem** or
produce `SchoenfeldAboveAnchor` from an accepted RH proof. It proves the
remaining explicit comparison and coverage implication once that supplier
has been provided. This completes the constants part of the analytic
comparison previously recorded in [ChebyshevBandCryptids.md](ChebyshevBandCryptids.md).

## Complete comparison argument

Fix `j ≥ 7` and `4^j ≤ n ≤ 4^(j+1)`, and write `a=4^j`.
Both `sqrt` and the nonnegative logarithmic square are monotone on the
range in question. Hence

\[
B(n)\le B(4^{j+1})
=2^{j+1}((j+1)\log4)^2.
\]

Since `j+1 ≤ (8/7)j`, the last quantity is at most

\[
2\left(\frac87\right)^2B(4^j)=\frac{128}{49}B(a).
\]

The bound at `n` controls `E(n)` from above, and the bound at `a`
controls `E(a)` from below. Both costs are needed:

\[
E(n)-E(a)
\le\frac{B(n)+B(a)}{8\pi}
\le\frac{177}{392\pi}B(a)
<\frac16B(a).
\]

The exact coefficient inequality follows already from `π>3`:
`1062 < 392*3 < 392*π`. The final source uses a weak inequality, matching
the original consumer. It never drops the anchor's error, uses a sampled
height argument, or assumes that the observed integers cover later bands.

## Declaration provenance

| Declaration | Role and source |
|---|---|
| `scale_ratio` | Original elementary consequence of monotonicity, logarithms of powers and `j+1 ≤ (8/7)j`; exact `128/49` constant. |
| `endpoint_constant_lt` | Original rational comparison using Mathlib's `Real.pi_gt_three`; exact `177/(392π) < 1/6`. |
| `theta_band_bound_of_schoenfeld` | Original combination of two endpoint bounds and `scale_ratio`; the analytic estimate remains an argument. |

The private helpers `scale_mono` and `scale_four_pow` express the
monotonicity and power identities used in `scale_ratio`. Mathlib's
foundations retain their upstream authorship and Apache-2.0 license.
No external submitted-proof source was copied or ported.

## Source identities and verification

Source base: `grwtsk/math@5624239ab1a35db87d6eb8aa7771f68ad7117b74`.
Lean: `4.34.1`, compiler commit `5045d0056413266e57c625dcd7c365b10e377c52`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Maintained source SHA-256:
`3a51fbd1d2987875b178a86725d0342a9eec4a614107bed49010683766dc0f8e`.

The final maintained source compiled at trust level zero with warnings
treated as errors, exit `0`, no diagnostics, in 49.308 seconds. A second
check appended the unchanged original `deficit`, `scale` and `BandBound`
definitions to the exact maintained source and proved an example with
result type `BandBound` by applying `theta_band_bound_of_schoenfeld`.
This verifies the original target rather than relying on its prose name.
The same run queried the transitive axioms of all three public theorems;
each reports exactly `propext`, `Classical.choice` and `Quot.sound`, with
no `sorryAx` or added mathematical axiom. That combined audit passed at
trust level zero, exit `0`, in 57.385 seconds.

The final inline audit SHA-256 is
`2d03fa44169554951b3d6c747508eea2097b902dffb81917fc4a37685cd94da7`.
The original target file SHA-256 is
`47878ae15a6c5b112001027dfbc76c40c5d5a2890f5403ff791a179969f1e1e9`;
the copied definition block SHA-256 is
`82c08320f5934543077505be52d41213986b2bbce5f4274097215ad88ecb6d77`.
Earlier bounded checks of preceding source variants were interrupted or
timed out; they are not counted as successful verification.

To reproduce the maintained-source compilation with the pinned dependencies:

```sh
lake env lean --trust=0 -DwarningAsError=true \
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ChebyshevBandSchoenfeld.lean
```

The original large-anchor module and the isolated Cryptids environment
were not rebuilt in this pass (`NOT_RUN`). Fresh full-import replay and an
independently implemented kernel check for this new module are `NOT_RUN`.
The existing anchor and Cryptids claims retain their original evidence
scope. Coordination: [math #1828](https://github.com/grwtsk/math/issues/1828).
