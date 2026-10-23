# Threshold-graded Fejér bandwidth/arithmetic gain split

The corrected Fejér gain budget requires total power saving

\[
\gamma \ge 1-\rho+\frac{\beta}{2}
\]

for threshold \(\rho\) and bandwidth exponent \(\beta\).

This packet separates the total gain into

\[
\gamma=\underbrace{\frac{\beta}{2}}_{\text{bandwidth gain}}
       +\underbrace{\alpha}_{\text{arithmetic gain}}.
\]

The first term neutralizes the raw square-root bandwidth loss in the naive
Fourier reconstruction. After that cancellation, the smoothed-value exponent is

\[
\rho+\frac{\beta}{2}
-\left(\frac{\beta}{2}+\alpha\right)
=\rho-\alpha.
\]

The quadratic target is \(Q(\rho)=2\rho-1\). Therefore

\[
\rho-\alpha\le 2\rho-1
\quad\Longleftrightarrow\quad
\alpha\ge1-\rho.
\]

This is the exact arithmetic obligation left after complete bandwidth
neutralization. A maximal theorem that only removes the factor corresponding to
the number of active frequencies still leaves exponent \(\rho\), which is
strictly larger than \(2\rho-1\) whenever \(\rho<1\).

The corrected Fejér boundary term imposes

\[
\beta\ge2(1-\rho).
\]

At the boundary-minimal bandwidth

\[
\beta_{\min}=2(1-\rho),
\]

the bandwidth gain is \(1-\rho\), the residual arithmetic gain is another
\(1-\rho\), and the total gain is \(2(1-\rho)\).

At the first descent threshold \(\rho=7/8\), this becomes

\[
\beta_{\min}=\frac14,\qquad
\frac{\beta_{\min}}2=\frac18,\qquad
\alpha\ge\frac18,\qquad
\gamma\ge\frac14.
\]

Thus the quarter-power total obligation has two equal components at the
boundary-minimal cutoff:

\[
\boxed{\frac14=\frac18_{\mathrm{bandwidth}}
                  +\frac18_{\mathrm{arithmetic}}.}
\]

The source introduces

```lean
ThresholdGradedPrimeFejerSplitSupplier ρ β
```

with separate fields for the nonnegative bandwidth exponent, the arithmetic
gain, boundary closure, value closure, and the graded-prime-Fourier-to-partial-
discrepancy readout. Every such split supplier converts canonically to the
previous `ThresholdGradedPrimeFejerSupplier`.

No split supplier instance, maximal inequality, arithmetic cancellation
estimate, \(7/8\to3/4\) descent, or Riemann Hypothesis result is proved.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
BANDWIDTH_ARITHMETIC_GAIN_SPLIT_SOURCE_PROVED
SEVEN_EIGHTHS_ARITHMETIC_EIGHTH_REQUIRED
SPLIT_SUPPLIER_INTERFACE_TYPED
SEVEN_EIGHTHS_SMOOTHED_VALUE_SUPPLIER_OPEN
```
