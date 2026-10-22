# Boundary-minimal seven-eighths Fejér cutoff schedule

The corrected Fejér boundary condition at threshold \(\rho\) requires

\[
\beta \ge 2(1-\rho).
\]

At \(\rho=7/8\), the smallest admissible bandwidth exponent is therefore

\[
\beta_{\min}=\frac14.
\]

The new source constructs the integer cutoff at dyadic scale
\(X_j=\operatorname{dyadicScale}(j)\) by

\[
N_j=\left\lceil X_j^{1/4}\right\rceil.
\]

It proves the exact schedule obligations

\[
0<N_j,
\qquad
X_j^{1/4}\le N_j\le X_j^{1/4}+1,
\qquad
N_j<4X_j.
\]

The last inequality places every cutoff inside the corrected period-\(4X_j\)
non-aliasing regime. The proof uses only the elementary facts that
\(X_j\ge1\), \(X_j^{1/4}\le X_j\), and \(X_j+1\le4X_j\).

The resulting declaration is

```lean
sevenEighthsBoundaryMinimalFejerSchedule :
  DyadicFejerPowerCutoffSchedule (1 / 4)
```

so the schedule component of the exact-correlation supplier is no longer open.

The source isolates the two remaining substantive obligations:

```lean
SevenEighthsBoundaryMinimalExactCorrelationBound
SevenEighthsBoundaryMinimalExactCorrelationReadout
```

The first is the exact-power arithmetic theorem

\[
\mathcal C_{X,N,m}
  \ll X^{3/2}(\log X)^4
\]

for the explicit period-\(4X\) Fejér weighted prime-atom quadratic correlation,
uniformly over the octave endpoints. The second is the deterministic passage
from that exact correlation estimate, together with the already closed Fejér
boundary estimate, to the finite partial-prime discrepancy bound of order
\(X^{3/4}(\log X)^2\).

These two fields form

```lean
SevenEighthsBoundaryMinimalExactCorrelationData
```

which converts to the existing exact-correlation supplier and hence to
`SevenEighthsPrimePartialDiscrepancy` once the threshold-graded premise is
provided.

No exact correlation estimate or readout is proved by this increment.

Status:

```text
SOURCE_DRAFT
NOT_RUN
NOT_KERNEL_AUDITED
BOUNDARY_MINIMAL_FEJER_CUTOFF_SCHEDULE_SOURCE_PROVED
SEVEN_EIGHTHS_CUTOFF_NONALIASING_SOURCE_PROVED
EXACT_CORRELATION_FRONTIER_REDUCED_TO_BOUND_AND_READOUT
SEVEN_EIGHTHS_EXACT_CORRELATION_BOUND_OPEN
```
