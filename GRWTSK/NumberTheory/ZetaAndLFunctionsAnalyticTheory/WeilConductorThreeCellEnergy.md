# Mesh-scaled moment energy in the conductor-three window

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeCellEnergy.lean](WeilConductorThreeCellEnergy.lean).
Starting repository revision:
[`2bf99849996eb52b0281003945e5f75fe08dbce6`](https://github.com/grwtsk/math/commit/2bf99849996eb52b0281003945e5f75fe08dbce6).
The consumer is a certified finite quadratic evaluated on the existing
exact derivative-cell moments in the radius-four arithmetic return.

## The actual source partition

Keep the unchanged measure `kernelWindow = volume.restrict [-4,4]`, the
total cell assignment `gridCell N`, and the midpoint representatives
`gridPoint N i`. Write

\[
h_N=\frac8{N+1},\qquad
C_i=\{x:\operatorname{gridCell}(N,x)=i\},\qquad
m_i(u)=\int_{C_i}u\,d\operatorname{kernelWindow}.
\]

The already proved `gridCell_error` states that a point in the window is
at distance at most `4/(N+1)` from its assigned midpoint. Consequently

\[
C_i\cap[-4,4]\subseteq
\left[c_i-\frac4{N+1},\ c_i+\frac4{N+1}\right].
\]

Monotonicity of real-valued finite measures and the exact Lebesgue measure
of that enclosing interval give

\[
\operatorname{kernelWindow}(C_i)\le h_N.
\]

This proof accounts for the endpoint clamping through the existing
geometric coverage theorem. It does not presume that the unrestricted
fibers have finite measure. In particular, only their intersections with
the source window enter the bound.

Applying the general cell-moment inequality proves

\[
\boxed{\sum_i|m_i(u)|^2\le
\frac8{N+1}\int_{[-4,4]}|u|^2.}
\]

The hypotheses are exactly the integrability of the complex input `u`
and of `norm u ^ 2` under `kernelWindow`. No spatial parity, mean-zero,
projection, point-sampling, or differentiability assumption is needed
for this finite-energy estimate.

## Declarations and source comparison

Both public declarations are in the existing namespace
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.

| Declaration | Statement and maintained input |
| --- | --- |
| `gridCell_mass_le` | The window-restricted cell mass is at most `8/(N+1)`; uses the original `gridCell_error`. |
| `sum_gridCellMoment_sq_le` | The sum of squared exact moments is at most that mesh width times input energy; uses `CellMomentEnergy.sum_cellMoment_sq_le`. |

The source geometry is in
[WeilConductorThreeKernelSampling.lean](WeilConductorThreeKernelSampling.lean),
and `kernelWindow` and the existing source pairing are in
[WeilConductorThreeKernelEnclosure.lean](WeilConductorThreeKernelEnclosure.lean).
The generic proof and its Cauchy--Schwarz provenance are recorded in
[CellMomentEnergy.md](../../FunctionalAnalysis/CellMomentEnergy.md).
Mathlib supplies `measureReal_restrict_apply`, `measureReal_mono` and
`Real.volume_real_Icc_of_le` at the unchanged revision
`d13f23b723b8a846827a245b89c10fc7d3f11612`, under Lean `4.34.1`.
This is a local consequence of those exact sources, not a claim to have
formalized a new paper result.

## Tolerance interpretation and limits

For the identity metric on the real/imaginary split of `m(u)`, the
coordinate quadratic is `sum_i |m_i(u)|^2`. Thus a nonnegative tolerance
`tau` contributes at most

\[
\tau\frac8{N+1}\int_{[-4,4]}|u|^2.
\]

For a globally C1 compact test supported in this window, the existing
return module proves that `u=f'` has the required integrability and that
the interval derivative energy equals its whole-line energy. The
tolerance contribution is therefore at most `8*tau/(N+1) * E(f')`.
A family satisfying `tau_j/(N_j+1) -> 0` pays this term for each fixed
test, without an invalid uniform comparison `E(f') <= C*E(f)`.

The complete arithmetic budget still includes the established gamma and
spatial approximation error. Matrix source enclosures and passing sign
certificates at the corresponding indices remain separate obligations.
The identity metric cannot be substituted for a different metric in an
existing packet without proving the required relationship.

As a normalization check, constant inputs on individual cells attain the
single-cell Cauchy--Schwarz inequality. Taking `N=0` retains the full
window mass eight. Increasing `N` decreases the mass bound, but does not
by itself produce accepted certificates or a positive source form.
No arithmetic positivity, all-window sign producer, or RH/GRH claim follows
from this estimate alone.

## Verification evidence

The initial candidate build failed when automatic synthesis of the
enclosing interval's finite-measure premise did not close. The corrected
source supplies the explicit Lebesgue interval formula and the fact that
`ENNReal.ofReal` is finite. That exact replacement passed a separate small
Mathlib-only compiler probe. A subsequent full-source attempt was
interrupted without a completion record or compiled target. That attempt
is not counted as a pass. The corrected source passed its full module build
on 2026-11-20 as a dependency of the combined constrained-certificate target;
Lake reported the module built in 289 seconds and produced its compiled
artifact. The source SHA-256 is
`6e2d470cf5d43820a0ea44b95efa44a62a04b44f70b126f0c5d099ccfb18469a`.

The enclosing target's final build and aggregate transitive axiom-audit
results are recorded in
[WeilConductorThreeConstrainedCertificates.md](WeilConductorThreeConstrainedCertificates.md).
Fresh proof-term replay, independent external mathematical review, and an
independently implemented checker are **NOT_RUN** for this increment.
