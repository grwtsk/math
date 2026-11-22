# One-sided certificates for the actual conductor-three arithmetic source

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeOneSidedCertificates.lean](WeilConductorThreeOneSidedCertificates.lean).
Starting revision:
[`06a747e6244febf917e797a672c5ea8f6e07064a`](https://github.com/grwtsk/math/commit/06a747e6244febf917e797a672c5ea8f6e07064a).
The source is developed in the unchanged Lean `4.34.1` environment, compiler
`5045d0056413266e57c625dcd7c365b10e377c52`, with Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Coordination: [math #1839](https://github.com/grwtsk/math/issues/1839).

The mathematical consumer is the existing conductor-three, radius-four
`primitiveArithmeticValue`. The complete omitted gamma source is proved
nonnegative on compact C1 derivatives. This allows a lower certificate
return to charge only spatial sampling and its actual packet metric. The
original two-sided approximation and its complete error budget remain
unchanged. The same previously accepted two-cell packet consequently has a
stronger arithmetic lower estimate. Its remaining conservative spatial
budget is still bounded away from zero.

## Source objects, carrier, and prior declarations

All new public declarations are in the outer namespace

```lean
GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen
```

Retain the original complex-valued source test and hypotheses:

```lean
f : ℝ → ℂ
ContDiff ℝ 1 f
HasCompactSupport f
tsupport f ⊆ Icc (-4 : ℝ) 4
```

Write the following expressions as mathematical notation:

\[
u=f',\qquad E(u)=\int_{\mathbb R}\|u(x)\|^2\,dx,
\]

```lean
A(f) := primitiveArithmeticValue modThreeQuadratic
  modThreeQuadratic_isPrimitive modThreeQuadratic_nonprincipal 4 f
```

This notation does not introduce a replacement Lean source definition.
The character, conductor, parity, prime inventory, gamma constant, and
all signs are the maintained ones. The kernel pairing is conjugate-linear
in its first input:

\[
Q_B(u)=\int_{\mathbb R^2}\overline{u(x)}B(x,y)u(y)\,d(x,y).
\]

The following prior declarations carry the exact source identity and
coordinate conventions into this increment:

| Maintained source | Reused result |
| --- | --- |
| [WeilConductorThreeKernelTruncation.lean](WeilConductorThreeKernelTruncation.lean) | `sourceKernel_sub_partial_eq` identifies the entire omitted gamma integral; `gammaRemainder_majorant` pays its positive-lag endpoint and infinite tail. |
| [WeilConductorThreeKernelReturn.lean](WeilConductorThreeKernelReturn.lean) | `kernelForm_neg_minimum_deriv` identifies the original translation energy; `wholeline_sourceKernel_deriv` returns to `A(f)`; compact support supplies derivative integrability, the zero integral, and the window energy identity. |
| [WeilConductorThreeKernelSampling.lean](WeilConductorThreeKernelSampling.lean) | `sampleMatrix_error` bounds every point of every cell using the unchanged midpoint samples and `partialLipschitzConstant`. |
| [WeilConductorThreeConstrainedCertificates.lean](WeilConductorThreeConstrainedCertificates.lean) | The exact complex reduction and `reducedDerivativeMoments_energy_le` preserve the original zero-sum moments and their cell-energy bound. |
| [WeilConductorThreeTwoCellCertificate.lean](WeilConductorThreeTwoCellCertificate.lean) | The actual `M=8,N=1` packet, source enclosure, and acceptance supply the concrete finite consumer. |

The two new supporting modules are
[WeilConductorThreeGammaRemainder.lean](WeilConductorThreeGammaRemainder.lean)
and
[WeilConductorThreePartialSampling.lean](WeilConductorThreePartialSampling.lean).
Their source identities, analytic arguments, and verification evidence
are recorded beside their sources.

## Primary argument: the complete gamma remainder has a favorable form sign

Use the actual rate and weight

\[
\alpha_M=2M+\frac32,\qquad
R_M(r)=\frac{e^{-\alpha_Mr}}{1-e^{-2r}}\quad(r>0).
\]

The existing finite decomposition gives

\[
K(t)-K_M(t)
=-\int_0^\infty R_M(r)\min(|t|,r)\,dr.
\]

The gamma constant and every signed prime hinge cancel in this difference.
For positive lag the weight is nonnegative, and the already proved
majorant is

\[
0\le R_M(r)\min(|x-y|,r)
\le\frac12e^{-(\alpha_M-1)r}.
\]

Since `alpha_M - 1 = 2*M + 1/2 > 0`, the right side is integrable on the
entire positive half-line. For a complex L1 input `u`, multiplication by
`norm(u x) * norm(u y)` gives an integrable majorant on the actual triple
product measure. The remainder module proves joint measurability and
absolute integrability, then applies Fubini. No finite lag cutoff or
infinite-series interchange is substituted for this argument.

For the actual compact C1 derivative, the maintained integration-by-parts
identity is

\[
Q_{-\min(|x-y|,r)}(f')
=E\bigl(f(\cdot+r)-f\bigr)\ge0.
\]

The expression on the right is the full translation energy. In particular
it already contains the factor two from
`E(shift f - f) = 2*E(f) - 2*Re(correlation f r)`.
Multiplication by `R_M(r)` and the justified interchange consequently give

\[
\boxed{
A(f)-\Re Q_{K_M}(f')
=\int_0^\infty R_M(r)E\bigl(f(\cdot+r)-f\bigr)\,dr\ge0.
}
\]

The remainder module establishes both integrability of this density and
its exact arithmetic return. Its bare nonnegativity declaration uses
Lean's integral convention for arbitrary functions; the compact C1
consumer separately has the proved genuine integrability needed here.

This sign comes from squared translation norms. A pointwise inequality
between arbitrary kernels would not alone imply the form comparison.
The present source-order theorem is on compact C1 derivatives; an H1
extension or a theorem for every arbitrary mean-zero L1 input requires its
own argument.

`partialKernelForm_deriv_le_arithmeticValue` restricts this whole-line
identity to the original window. Outside that window the derivative
vanishes, so the two product variables are removed exactly. The function,
its derivative, and its source expression are unchanged.

## Finite spatial comparison and complex constrained coordinates

Let

\[
L_M=\operatorname{partialLipschitzConstant}(M),\qquad
\delta_{M,N}=\frac{8L_M}{N+1}.
\]

The new partial-sampling module defines
`spatialApproximationBudget M N = delta_(M,N)` and pairs the actual
finite-gamma kernel on Lebesgue measure restricted to `[-4,4]`. Its
whole-square pointwise estimate is

\[
\left|K_M(x-y)
-K_M\bigl(q_N(x)-q_N(y)\bigr)\right|
\le\delta_{M,N}.
\]

Here `q_N` is the existing midpoint assigned by the exact cell map. The
bound covers both cell variables, including their endpoint conventions.
It is not merely an estimate at sampled points.

The exact moments are

\[
v_i=\int_{\mathrm{cell}_i}u(x)\,dx.
\]

The established finite-kernel pairing and finite-measure Cauchy--Schwarz
bound give

\[
\left|\Re Q_{K_M}(u)-Q_{H_{M,N}}(v)\right|
\le 8\delta_{M,N}E(u)
=\frac{64L_M}{N+1}E(u).
\]

The outer factor eight is the measure of the original window. For `u=f'`,
compact-support FTC gives `sum v = 0`. The same exact complex coordinate
reduction as before gives

\[
Q_{H_{M,N}}(v)=Q_{\widetilde H_{M,N}}(v_{\mathrm{red}}).
\]

Both real and imaginary coordinates remain present. Combining the lower
half of the spatial error inequality with the favorable full-remainder
sign proves `arithmeticValue_reduced_spatial_lower`:

\[
Q_{\widetilde H_{M,N}}(v_{\mathrm{red}})
-\frac{64L_M}{N+1}E(f')\le A(f).
\]

## Accepted packets: retain the metric before specializing it

Let `P` enclose the realification of this actual reduced sample matrix,
and let `C` pass the existing rational `intervalCheck`. Write
`tau = (P.tolerance : Real)`, let `G` be the real cast of `P.metric`, and
let `z = splitVector v_red`.

The unchanged checker gives

\[
Q_{\widetilde H_{M,N}}(v_{\mathrm{red}})
\ge-\tau\,z^{\mathsf T}Gz.
\]

`checked_reduced_arithmeticValue_lower_oneSided` retains that exact
metric term:

\[
\boxed{
A(f)\ge-\tau\,z^{\mathsf T}Gz
-\frac{64L_M}{N+1}E(f').
}
\]

Entry uncertainty was paid by the accepted enclosure and checker. The
source comparison removes the omitted gamma integral from the negative
error charge; it leaves the arithmetic terms and the remaining spatial
loss explicit.

For the separate specialization `P.metric = 1`, the accepted packet guard
supplies `tau >= 0`. The actual reduced moment-energy bound gives

\[
\|z\|^2\le\frac8{N+1}E(f').
\]

Multiplication by the nonnegative tolerance and reversal under negation
then produce

\[
\boxed{
A(f)\ge-B_{\mathrm{one}}(M,N,\tau)E(f'),\qquad
B_{\mathrm{one}}(M,N,\tau)
=\frac{64L_M+8\tau}{N+1}.
}
\]

This is `checked_identity_reduced_arithmeticValue_lower_oneSided`.
Identity-metric control is not assumed for arbitrary packet metrics.

### Exact relationship with the previous budget

The new `oneSidedApproximationBudget` is a separate definition. The old
`constrainedApproximationBudget` and all earlier symmetric error theorems
retain their original statements. The new comparison is the exact identity

\[
B_{\mathrm{old}}(M,N,\tau)
=B_{\mathrm{one}}(M,N,\tau)
+8\operatorname{truncationBudget}(M).
\]

The previous bound still controls an absolute approximation error. The
improved lower bound uses the newly established sign of the entire
omitted source. Neither budget is identified with the actual error, and
the identity alone would not justify changing an error theorem.

## Concrete accepted packet and remaining fixed-grid price

The actual two-cell packet from the starting revision uses `M=8,N=1`,
zero tolerance, center `(1/8) I_2`, radius `(1/16) I_2`, and Gram factor
`(1/4) I_2`. Its source enclosure and checker acceptance are reused.
The new `TwoCellCertificate.arithmeticValue_lower_oneSided` proves

\[
\boxed{A(f)\ge-32L_8E(f').}
\]

The preceding return had coefficient `8/33 + 32*L_8`. The exact gain is
the removed `8/33` gamma-tail error charge. The favorable remainder itself
continues to be part of `A(f)`.

There is also a proved control against interpreting this packet as an
arbitrary-accuracy construction. The maintained Lipschitz price is

\[
L_M=\frac{|c|}{2}
+\sum_{m<M}\alpha_m^{-1}
+\operatorname{primeLipschitzConstant}.
\]

The last two terms are nonnegative. The actual scalar enclosure from
[WeilConductorThreeScalarBounds.lean](WeilConductorThreeScalarBounds.lean)
gives `c <= -1131/1000`, hence

\[
L_M\ge\frac{1131}{2000}>\frac12
\qquad\text{for every natural cutoff }M.
\]

`partialLipschitzConstant_half_lt` states the final strict inequality.
It implies `TwoCellCertificate.oneSidedBudget_gt_sixteen`:

\[
B_{\mathrm{one}}(8,1,0)=32L_8>16.
\]

This is a lower bound on the chosen conservative budget. It is not a
lower bound on the actual approximation error of a particular test or on
every possible approximation method. It rules out repeating this
unchanged packet as a producer of vanishing budgets under this accounting.
The old symmetric-budget obstruction remains true as well.

The original full-space matrix also retains its strict negative direction
from `TwoCellCertificate.original_indefinite`. The exact zero-sum
constraint used by the matrix certificate cannot be dropped.

## The joint all-precision obligation remains explicit

`arithmeticValue_nonneg_of_oneSided_certificates` proves the conditional
limit implication. For every `k`, the producer must supply the same-stage
data appearing together in the following conditions:

```lean
∃ M N r : ℕ,
  ∃ P : Packet (Fin N ⊕ Fin N),
  ∃ C : Certificate ℚ (Fin N ⊕ Fin N) Empty Empty (Fin r),
    P.metric = 1 ∧
    Encloses P (realification (reducedSampleMatrix M N)) ∧
    intervalCheck P C = true ∧
    oneSidedApproximationBudget M N (P.tolerance : ℝ) ≤ (1 / 2 : ℝ)^k
```

For a fixed admissible `f`, its derivative energy is nonnegative and
finite. The checked lower bounds then approach zero and imply `A(f) >= 0`
through the existing scaled-dyadic limit theorem. The producer premise is
uniform in the test class and remains an input to the theorem.

This increment supplies no family satisfying that premise. Approximation
indices alone do not supply the enclosures or passing certificates. The
finite two-cell packet and its improved return therefore establish neither
the complete fixed-window positivity target nor an all-window,
all-conductor, RH, or GRH conclusion.

## Historical comparison and separate research lane

[WeilConductorThreeRadiusFourScrewGreen.lean](WeilConductorThreeRadiusFourScrewGreen.lean),
Section 4 at the starting revision, gives a written analytical Fourier
argument for the favorable entire gamma tail. Its multiplier is

\[
2\sum_{m\ge M}\frac{\xi^2}{\alpha_m(\alpha_m^2+\xi^2)}\ge0.
\]

The direct source proof here uses minimum kernels, actual translated
energies, and product-measure Fubini. Both routes concern the same gamma
source. They share the source definitions and supporting mathematics, and
do not constitute independent verification of the new Lean source.

The historical section additionally states an H0^1 extension, monotone
finite-head convergence, and the stronger upper error estimate

\[
Q_4(f)-Q_{4,M}(f)
\le\frac{2}{(4M+1)^2}\|f'\|_2^2.
\]

Those stronger statements retain their original written-evidence scope;
they are not newly formalized by this increment. The present formal
consumer uses compact C1 tests and the one-sided remainder sign.

Section 7 of the same historical source gives a written simultaneous
negative-test argument for the exact finite-cutoff range
`0 <= M <= 10^19`, retaining the actual signed prime inventory. Its
quantifier and evidence scope remain unchanged. It is consistent with a
favorable full omitted gamma contribution and is not a theorem of
continuous negativity for every natural cutoff.

The neighboring submitted-route work remains coordinated in
[math #1828](https://github.com/grwtsk/math/issues/1828). Its latest
reviewed algebraic checkpoint is
[`46dac5ff500f690d2e68b2cbdf302f06bebb5b2a`](https://github.com/grwtsk/math/commit/46dac5ff500f690d2e68b2cbdf302f06bebb5b2a):
dehomogenization, post-slice localization, and finite-image nilpotence are
established at their recorded scopes. The Euler point derivation and
actual slice/reducedness/length-one suppliers remain in that separate
lane. They are not inputs to the remainder-energy proof or the finite
source certificate used here.

## Public declaration correspondence

The outer namespace is the fully qualified namespace given above.
Declarations in `TwoCellCertificate` extend its existing nested namespace.

| Declaration | Mathematical role |
| --- | --- |
| `partialKernelForm_deriv_le_arithmeticValue` | Restrict the exact favorable remainder comparison to the original derivative window. |
| `arithmeticValue_reduced_spatial_lower` | Combine the actual spatial error with exact complex zero-sum reduction and the arithmetic source order. |
| `checked_reduced_arithmeticValue_lower_oneSided` | Return an accepted enclosure to `A(f)` while preserving the packet's arbitrary metric. |
| `oneSidedApproximationBudget` | Define the separate spatial and identity-metric lower price. |
| `oneSidedApproximationBudget_eq` | Express that price as `(64*L_M + 8*tau)/(N+1)`. |
| `constrainedBudget_eq_oneSided_add_tail` | Identify the old price as the new price plus the original complete gamma-tail charge. |
| `checked_identity_reduced_arithmeticValue_lower_oneSided` | Pay the explicit identity metric with the original complex moment-energy bound. |
| `arithmeticValue_nonneg_of_oneSided_certificates` | Deduce source nonnegativity from a jointly supplied all-dyadic accepted family. |
| `partialLipschitzConstant_half_lt` | Use the actual certified gamma constant to prove a positive baseline for the conservative spatial price at every cutoff. |
| `TwoCellCertificate.arithmeticValue_lower_oneSided` | Reuse the actual accepted packet to obtain `A(f) >= -32*L_8*E(f')`. |
| `TwoCellCertificate.oneSidedBudget_gt_sixteen` | Prove the remaining fixed-packet budget stays above sixteen. |

The module contains ten public theorems and one definition. These are local
consequences and source returns built from maintained mathematics. No new
paper theorem, external formalization equivalence, or prior-art novelty is
claimed.

## Subsequent certificates for the full source matrix

The later [full-source certificate construction](WeilConductorThreeSourceCertificates.md)
samples the complete `sourceKernel` at the same spatial representatives.
Its matrix depends only on the spatial resolution; an auxiliary gamma
cutoff controls entry enclosures and spatial error without changing the
matrix whose sign is certified. The signed remainder interval gives a
single-tail allowance for differences of kernel values, while the exact
full gamma integral supplies a sharper fixed continuity modulus. This
provides a separate source comparison and certificate return while
preserving the one-sided finite-head result above.

The same two-cell rational packet also encloses that full-source reduced
matrix, using the previously proved `sourceKernel_four_bounds`. Each
construction retains its own target matrix and complete budget. The new
explicit arithmetic coefficient is `32*L_0 + 16/3`, at least sixteen less
than the preceding `32*L_8`; its exact fixed-grid budget still exceeds
sixteen. The all-precision accepted family remains an explicit missing producer; the
new construction does not infer it from approximation indices or this
single packet. Its declarations, comparison, and actual check outcomes
are recorded at the linked source. All earlier verification evidence
below remains at its original scope.

## Verification evidence

The exact target
`GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeOneSidedCertificates`
passed `lake build` on its first attempt, with exit 0 in
371.957 seconds. This compiled the three new modules
with their maintained import closure. It is not a repository-wide build.

The checked environment is unchanged: Lean `4.34.1`, compiler
`5045d0056413266e57c625dcd7c365b10e377c52`, and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The source and dependency-pin
files were unchanged throughout the completed build and audit.

| Checked source | SHA-256 |
| --- | --- |
| `WeilConductorThreeGammaRemainder.lean` | `89d54b8e0b9a39a65605492269b5baaca654e7c57b83c08973d2fb2f312d4a8b` |
| `WeilConductorThreePartialSampling.lean` | `de065e16766b07d9225840a5ca51da9ba619e1cd45ec60f9fa2fd3b910bb6452` |
| `WeilConductorThreeOneSidedCertificates.lean` | `fff61845cb44e2e7ef1914ad618aff1c8fd1743a321fecc5183781ccf27d4652` |

A separate `#print axioms` audit in a fresh Lean process passed with exit 0
in 135.680 seconds. It covered every public declaration
in these modules: **39 declarations, comprising
32 theorems and 7 definitions**. No declaration was missing.
All transitive axiom sets were subsets of `propext`, `Classical.choice`,
and `Quot.sound`. The private gamma-kernel negation helper is covered
transitively through the public consumers. The audit used the same exact
source and dependency-pin hashes as the build.

The new Lean sources contain no `sorry`, `admit`, added axiom, or
`native_decide`. The existing rational packet and checker acceptance are
reused at their recorded source identities. Source inspection, compilation,
and an imported transitive axiom inventory are distinct evidence categories.

| Current increment attempt | Actual result | Exit | Seconds |
| --- | --- | --- | --- |
| `gamma_order_build_1` | PASSED | 0 | 371.957 |
| `gamma_order_axioms_1` | PASSED | 0 | 135.680 |

The successful build reported one nonfatal `linter.unnecessarySeqFocus`
notice in the concrete packet proof, concerning `norm_num ... <;> ring`.
The inherited import-closure warning messages were also retained in the
build output. Lake's cached-warning label `Replayed` is not a fresh
proof-replay claim. No failed, interrupted, or timed-out formal attempt
occurred in this increment. Earlier increments retain their own attempt
histories and exact source scopes in their adjacent records.

An AI-assisted read-only mathematical/source review checked the actual
remainder sign, complete triple-integral majorant, source subtraction,
complex zero-sum coordinates, factors eight and sixty-four, packet metric,
producer quantifiers, and the fixed-budget control. This review shares the
maintained source mathematics and is not independent external review.

Fresh proof-term replay of the entire dependency closure, independent
external mathematical review, and checking with an independently implemented
kernel remain **NOT_RUN** for this increment. The historical written
Fourier argument and the previously checked two-cell packet keep their
original evidence scopes; neither supplies those missing checks.
