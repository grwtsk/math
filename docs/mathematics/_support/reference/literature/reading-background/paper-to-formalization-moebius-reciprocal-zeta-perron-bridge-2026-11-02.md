# Paper-to-formalization: reciprocal-zeta and truncated Perron bridge

Date: 2026-11-02. Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

## External theorem source

The fixed zero-free boundary comes from:

- repository `GTimG/QuasiRiemannTracker`;
- merge commit `8b1a0167c8e324099884152181e3fb2206510e88`;
- path `submissions/2026-11-01-closest-fraction-contact/src/Candidate/Main.lean`;
- blob `808d04cec892449707d23e81f94179e2738fdf1a`;
- theorem `Candidate.bound`.

That theorem supplies nonvanishing of every complex Dirichlet-character L-function strictly to the right of the exact displayed rational boundary, except for the principal-character pole pair. The local modulus-one adapter already specializes it losslessly to the Riemann zeta function. The theorem does not export a quantitative lower bound for the L-function or an upper bound for its reciprocal.

## Classical method source

Classical comparison:

- E. C. Titchmarsh, revised by D. R. Heath-Brown,
  *The Theory of the Riemann Zeta-function*, second edition,
  Oxford University Press, 1986.

The relevant classical mechanism is the reciprocal Möbius Dirichlet series, a half-integer Perron integral, contour displacement, reciprocal-zeta estimates on the shifted contour, and a power estimate for the Mertens summatory function.

The present increment does not claim this method as new analytic number theory. It records the source-exact version required by the maintained causal Möbius programme and preserves all quantitative losses.

## Published local formalization

Published source:

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusReciprocalZetaPerronBridge.lean`;
- merge `0251ce9dc0c2a06f312a6681f3712a59216bc6cc`;
- blob `69ae2587f1f6e30adec21b9d7dcf43eeffa2a499`.

Supporting review:

- [`docs/mathematics/_support/reviews/moebius-reciprocal-zeta-perron-bridge-2026-11-02.md`](../../../reviews/moebius-reciprocal-zeta-perron-bridge-2026-11-02.md);
- blob `5ff1dfb76df5869146ee6d5b5d71879cf838d5f5`.

Source ledger:

- [`docs/mathematics/_support/reference/literature/reading-background/moebius-reciprocal-zeta-perron-bridge-references.md`](moebius-reciprocal-zeta-perron-bridge-references.md);
- blob `ad1f71f0e1b6152c4dc84533b9627c21dbed3d23`.

## Formalized connection

The local source formalizes, at source-proof-candidate level:

1. the pole-regularized reciprocal
   \[
   R(s)=\frac{s-1}{\zeta_1(s)};
   \]
2. `R(1)=0` and `R(s)=1/ζ(s)` away from the pole in a zero-free region;
3. holomorphy of `R` on the entire positive zero-free half-plane;
4. the Perron kernel
   \[
   P_x(s)=x^sR(s)/s;
   \]
5. an exact normalized Cauchy-Goursat shift between the right vertical line, the inner vertical line, and both horizontal orientations;
6. the half-integer cutoff `x=N+1/2` and quadratic height `T=x^2`;
7. explicit reciprocal-growth and truncated-Perron interfaces;
8. the complete strict-margin choice
   \[
   b=\max(\theta_0,1/2),\quad
   \sigma=(b+\theta)/2,\quad
   \eta=(\theta-b)/8;
   \]
9. the resulting integer estimate
   \[
   |M(N)|\le C_\theta N^\theta;
   \]
10. the exact return to the maintained real cutoff and the existing `ZeroFreeToMertensPowerBridge`.

The explicit conditional constant is

\[
C_\theta=
2\left[
K\left(1+\frac1\eta\right)
+2B\left(\frac1\sigma+\frac1\eta\right)
+4B
\right].
\]

## Formalization boundary

The following remain visible and unproved:

- `RegularizedReciprocalSubpower`;
- `ReciprocalSubpowerSegmentIntegration` in pinned Lean;
- `HalfIntegerMertensTruncatedPerron`.

The external nonvanishing theorem cannot by itself supply the first item. The entire zero-free function

\[
f(z)=\exp(-\exp(-iz))
\]

has

\[
|f(it)^{-1}|=\exp(e^t),
\]

so generic nonvanishing does not imply subpower reciprocal growth. The missing theorem must use zeta-specific structure.

Stable method obstruction:

```text
rh-zero-free-alone-no-reciprocal-growth-v1
```

## Consumer impact

Once the reciprocal-growth, segment-integration, and truncated-Perron inputs are proved, the source discharges the existing `ZeroFreeToMertensPowerBridge`. The already-published PR103 chain then gives its conditional fixed-power causal-energy, literal-endpoint, complete-strong-packet, weighted-integrability, and energy-abscissa consequences.

This remains separate from the RH-strength terminal supplier. A fixed positive zero-free boundary does not yield the all-positive-rate endpoint estimate on one fixed affinely covering scale set.

## Verification status

- ordinary contour reduction and exponent bookkeeping: `WRITTEN/PROVED`;
- source publication and immutable blob readback: `DONE`;
- Lean compilation: `NOT_RUN`;
- expected types: `NOT_RUN`;
- fresh-kernel replay: `NOT_RUN`;
- transitive axiom audit: `NOT_RUN`;
- native execution: `NOT_RUN`;
- reciprocal subpower theorem: `UNPROVED`;
- truncated Perron theorem: `UNPROVED`;
- all-positive-rate endpoint supplier: `UNPROVED`;
- Riemann Hypothesis: `UNPROVED`.
