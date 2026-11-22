# Finite sampling of the complete conductor-three source

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeSourceSampling.lean](WeilConductorThreeSourceSampling.lean).
Starting revision:
[`b09f7ac564b418c51d8062844bd3c9c81e3894db`](https://github.com/grwtsk/math/commit/b09f7ac564b418c51d8062844bd3c9c81e3894db).
Coordination: [math #1839](https://github.com/grwtsk/math/issues/1839).

## Mathematical consumer and source identity

The consumer is the original conductor-three, radius-four arithmetic form,
returned through its already established integrated kernel. This module
constructs finite matrices from the **complete** source kernel. Their
identity depends only on the spatial grid. A finite gamma cutoff remains
available to compute entry enclosures and bound the spatial error, without
becoming an argument of the matrix whose sign must be certified.

All public declarations use the namespace

```lean
GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
```

The actual kernel is the existing `sourceKernel`, with its original gamma
constant, parity-one integral, mod-three character, signed prime-power
inventory, and radius-four support. Let it be denoted by `K`. The existing
midpoint representatives and complete cell assignment are denoted by
`q_N(i)` and `c_N(x)`. There are `N+1` cells on the unchanged interval
`[-4,4]`, whose Lebesgue mass is eight.

The new exact matrix is

\[
H_N(i,j)=K\bigl(q_N(i)-q_N(j)\bigr).
\]

`fullSampleMatrix N` is this real matrix and `complexFullSampleMatrix N`
embeds the same entries into the complex pairing API. The definitions
contain neither a gamma truncation nor a floating-point approximation.
They are noncomputable mathematical objects; executable certificates still
need proved rational enclosures of their entries.

## Primary analytic argument

### The complete source modulus controls both cell coordinates

The supporting
[WeilConductorThreeSourceModulus.lean](WeilConductorThreeSourceModulus.lean)
defines a nonnegative, monotone modulus `omega` satisfying

\[
|K(s)-K(t)|\le\omega(|s-t|),
\qquad
\omega(\delta)\le L_M\delta+T_M\quad(\delta\ge0),
\]

where `L_M = partialLipschitzConstant M` and
`T_M = truncationBudget M = 1/(4M+1)`. Its exact integral definition and
source comparison are documented in the
[adjacent modulus record](WeilConductorThreeSourceModulus.md).

The established grid covering theorem gives

\[
|x-q_N(c_N(x))|\le\frac4{N+1}
\]

for every `x` in the window, including both endpoints. Applying this to
both variables yields

\[
\left|(x-y)-\bigl(q_N(c_N(x))-q_N(c_N(y))\bigr)\right|
\le\frac8{N+1}.
\]

Define

\[
\eta_N=\operatorname{sourceSpatialBudget}(N)
=\omega\!\left(\frac8{N+1}\right).
\]

Monotonicity of the actual modulus proves the complete-cell error

\[
\boxed{
|K(x-y)-H_N(c_N(x),c_N(y))|\le\eta_N.
}
\]

This covers every point of the source square, rather than testing an
error only at matrix sample points. Evenness and the value `K(0)=0` also
give symmetry, zero diagonal, and the exact zero one-cell matrix. A zero
one-cell matrix does not make its approximation error vanish.

### The integral return preserves every complex moment

For an input `u` integrable and square-integrable on the window, retain the
exact complex moments

\[
v_i=\int_{\{x:c_N(x)=i\}\cap[-4,4]}u(x)\,dx.
\]

The pairing convention is conjugate-linear in its first argument. The
finite-kernel identity and the whole-square estimate imply

\[
\boxed{
\left|Q_K(u)-\sum_{i,j}\overline{v_i}H_N(i,j)v_j\right|
\le8\eta_N\int_{-4}^{4}|u(x)|^2\,dx.
}
\]

The factor eight comes from the window mass through the already proved
finite-measure Cauchy inequality. The actual source integrand and the
finite-kernel integrand are separately integrable before the difference
is taken. No phase, cell, or exterior contribution is dropped. A later
arithmetic consumer specializes to `u=f'` under its stated compact-C1 and
support hypotheses; the displayed norm then remains derivative energy.

### Eventual refinement does not change the sign target

For every auxiliary cutoff,

\[
\eta_N\le T_M+\frac{8L_M}{N+1}
=\operatorname{kernelApproximationBudget}(M,N).
\]

This is a useful comparison with the former finite-head approximation
price. It does not assert equality of the two finite matrices.

The source modulus is monotone in its nonnegative argument, so `eta_N`
is antitone in `N`. The existing joint approximation theorem supplies
some `M,N` with the displayed upper bound below any positive epsilon.
The new comparison and antitonicity consequently prove

\[
\forall\epsilon>0\;\exists N\;\forall K\ge N,
\quad\eta_K<\epsilon.
\]

Thus the exact matrices `H_K`, indexed solely by spatial resolution,
approximate the same complete source uniformly on the square. They also
approximate its integral simultaneously for every integrable,
square-integrable input, with the explicit energy scaling above. The
cutoff used in the proof estimates a fixed source; it is not an additional
index of the positivity assertion.

### Finite arithmetic still encloses the exact entries

Let `H_(M,N)` denote the existing finite-gamma sample matrix. The already
proved full gamma remainder gives the actual entry enclosure

\[
\boxed{
-T_M\le H_N(i,j)-H_{M,N}(i,j)\le0,
\qquad
|H_N(i,j)-H_{M,N}(i,j)|\le T_M.
}
\]

This identifies exactly how finite gamma computations can enclose the
new target entries. Entrywise order is not interpreted as Loewner order
or quadratic-form order. Enclosing entries and passing the rational
positivity checker remain distinct requirements.

## Declaration correspondence

All names in the table have the namespace stated above as prefix.

| Declaration | Source and mathematical role |
| --- | --- |
| `sourceKernel_zero` | Evaluate the actual gamma integrand almost everywhere on the positive lag axis; retain the source zero prime hinge. |
| `sourceKernel_neg` | Evenness from the literal absolute displacement and signed prime-hinge definition. |
| `fullSampleMatrix` | Actual full-source real samples at the existing representative differences. |
| `complexFullSampleMatrix` | Scalar embedding of those exact entries. |
| `sourceSpatialBudget` | Exact source modulus at the sum of the covering radii. |
| `sourceSpatialBudget_nonneg` | Supporting modulus nonnegativity. |
| `fullSampleMatrix_diagonal` | Actual source value at zero. |
| `fullSampleMatrix_symmetric` | Actual source evenness. |
| `fullSampleMatrix_oneCell` | Exact one-cell zero matrix. |
| `sourceSpatialBudget_le` | Every auxiliary finite head bounds the same full-source spatial price. |
| `sourceSpatialBudget_antitone` | Monotonicity of the modulus and decrease of `8/(N+1)`. |
| `fullSampleMatrix_error` | Complete two-coordinate covering and the exact source modulus. |
| `sourceKernel_fullSample_error` | Same comparison in the existing complex finite-kernel API. |
| `sourceKernelForm_full_finite_error` | Integrable full-source return, exact moments, and the original window mass. |
| `sourceSpatialBudget_eventually_lt` | Joint upper-bound selection followed by actual modulus antitonicity. |
| `fullSampleMatrix_uniform_approximation` | Eventual whole-square approximation by spatially indexed full-source matrices. |
| `sourceKernelForm_uniform_fullSample_approximation` | Simultaneous integral approximation for all stated inputs. |
| `fullSampleMatrix_sub_partial_bounds` | Exact one-sided remainder enclosure for every actual matrix entry. |
| `abs_fullSampleMatrix_sub_partial_le` | Absolute version of that same enclosure. |

The inventory consists of 19 public declarations: 16 theorems and three
definitions. These are local consequences of the maintained source and
the new modulus argument, not adaptations of an externally published Lean
proof. No novelty claim is made.

## Comparison, controls, and unresolved premises

The old approximation uses `sampleMatrix M N`, so changing the gamma
cutoff changes its matrix. Here the requested matrix is `fullSampleMatrix N`;
changing a cutoff changes only an entry enclosure or an upper estimate of
the source modulus. This is a change of the actual mathematical target
presented to the existing checker, not a renamed cutoff parameter.

The analytic proof reuses established moment and integral estimates. A
distinct check is the direct one-sided entry enclosure from the complete
gamma remainder; it confirms the exact relationship between the new and
old samples without asserting a form sign. Both routes share the same
maintained source and therefore do not constitute independent source
verification.

Symmetric zero-diagonal matrices can be indefinite on the unconstrained
space. Positivity is requested only after the appropriate exact complex
zero-sum reduction in the downstream arithmetic consumer. Finer
approximation and nonnegative error budgets do not supply that positivity.
The full family of actual accepted enclosures with vanishing combined
spatial and checker tolerance costs remains open. No fixed-window sign,
all-window or all-conductor sign, RH, or GRH conclusion follows from this
module alone.

The finite approximation retains the radius-four source. Enlarging the
window would require its own prime inventory and analytic return. No
sampling result here provides an H1 extension or a comparison of
derivative and physical energy.

## Verification evidence

This module was included in the exact-source aggregate build and separate
47-declaration transitive axiom audit recorded in
[WeilConductorThreeSourceCertificates.md](WeilConductorThreeSourceCertificates.md#verification-evidence).
The final build and audit both **PASSED** under the unchanged pinned
Lean `4.34.1` and Mathlib environment. This module's checked source SHA-256
is `ae077372173ab36eb69373bb8be53f069211736ebc5803d8292c76aa015972bf`.

The complete attempt ledger, including the initial failed elaboration and
its correction, is preserved in that source-local record. The audit found
no axioms outside `propext`, `Classical.choice`, and `Quot.sound` and no
missing public declarations. This result does not promote cache replay to
a fresh proof-term replay of all imported dependencies.

Fresh full-dependency proof replay, independent external mathematical
review, and independently implemented kernel checking remain **NOT_RUN**.
AI-assisted source review and the analytical comparison documented above
share the maintained source and do not supply independent external review.
Operational logs remain outside this mathematical checkout.
