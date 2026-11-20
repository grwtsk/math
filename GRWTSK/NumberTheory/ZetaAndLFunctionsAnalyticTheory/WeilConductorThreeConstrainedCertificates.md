# Constrained finite certificates for the conductor-three arithmetic source

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeConstrainedCertificates.lean](WeilConductorThreeConstrainedCertificates.lean).
Starting revision:
[`grwtsk/math@2bf99849996eb52b0281003945e5f75fe08dbce6`](https://github.com/grwtsk/math/tree/2bf99849996eb52b0281003945e5f75fe08dbce6).
The unchanged pins are Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.
Publication and exact-source verification are coordinated in
[issue #1839](https://github.com/grwtsk/math/issues/1839).
Concurrent updates through
[`d398a7cbc4e86691a1fdf5cf2cacf958e6568786`](https://github.com/grwtsk/math/commit/d398a7cbc4e86691a1fdf5cf2cacf958e6568786)
were reconciled without changing this increment's maintained inputs,
toolchain, dependency pins, or source statements.

## Exact source, domain, and consumer

Write `A(f)` for the existing real arithmetic value

```lean
primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
  modThreeQuadratic_nonprincipal 4 f
```

The input `f : ℝ → ℂ` satisfies exactly

```lean
ContDiff ℝ 1 f
HasCompactSupport f
tsupport f ⊆ Icc (-4 : ℝ) 4
```

The new declarations are in the existing namespace
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.
[WeilConductorThreeKernelReturn.lean](WeilConductorThreeKernelReturn.lean)
already proves the actual source equality, complete gamma interchange,
and derivative mean-zero condition. These are reused here, not left as
unproved bridges or replaced with definitions. No real-valuedness or
spatial parity is required of `f`.

Let `I = [-4,4]`, `u = deriv f`, and let `C_i` be the measurable
`gridCell N` cells inside `kernelWindow`. Their coordinates are exact
complex moments

\[
m_i=\int_{C_i}u(x)\,dx,\qquad i\in\operatorname{Fin}(N+1).
\]

The source matrix is precisely `H = complexSampleMatrix M N`, with
entries `partialSourceKernel M (gridPoint N i - gridPoint N j)`.
The original gamma constant, finite gamma head, conductor-three character,
prime cutoff, and signed prime hinges remain unchanged. The generic
positive Green example below is not substituted for this source.

## Complete zero-sum reduction, with pivot zero

`sum_derivativeCellMoments_eq_zero` gives `sum_i m_i = 0`. Delete
coordinate zero and set `z_i = m_(i.succ)` for `i : Fin N`.
[ZeroSumQuadraticReduction.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ZeroSumQuadraticReduction.lean)
defines `tailVector`, `zeroSumExtension`, and `reducedMatrix`. The extension
sets the first coordinate to `-sum z`. Its two reconstruction identities
show that these coordinates cover the entire complex zero-sum subspace.
They are not a trial subspace or an approximate nullspace.

The exact reduced source is

\[
\widetilde H_{ij}
=H_{i+1,j+1}-H_{i+1,0}-H_{0,j+1}+H_{00}.
\]

Expand the original double sum after substituting `m_0 = -sum z`.
The tail-tail terms give `H_(i+1,j+1)`, the two cross terms give the two
negative anchor terms, and the pivot square gives `H_00`. Finite-sum
distributivity and conjugation prove the full complex identity

\[
\sum_{i,j}\overline{m_i}H_{ij}m_j
=\sum_{i,j}\overline{z_i}\widetilde H_{ij}z_j.
\]

Taking real parts gives the equality in the existing `complexQuadratic`
convention. The generic identity works for complex matrices and retains
imaginary coupling. Complex zero-sum is two real equations. One equation
on the combined real/imaginary coordinate sum would be insufficient.

The local definitions `reducedSampleMatrix` and `reducedCellMoments`
specialize this exact construction to the source and its moments. When
`N = 0`, the reduced type is empty and the sole original moment is zero;
the formulas still hold. The source approximation cost does not vanish
merely because the reduced matrix is empty.

## The unchanged source error and arbitrary packet metric

`arithmeticValue_reduced_finite_error` applies the preceding identity to
the already proved finite error theorem:

\[
\left|A(f)-\operatorname{Re}(z^*\widetilde H z)\right|
\le8\Delta_{M,N}E(f'),
\qquad E(f')=\int_{\mathbb R}|f'(x)|^2\,dx,
\]

\[
\Delta_{M,N}=\frac1{4M+1}+\frac{8L_M}{N+1},
\qquad L_M=\mathrm{partialLipschitzConstant}(M).
\]

Reduction is performed on the exact finite quadratic after the source
estimate. No new continuous kernel approximation is made, so the error
remains exactly `8*Delta`.

For a rational packet `P` on `Fin N ⊕ Fin N` and a certificate `C`, the
two separate requirements are

```lean
Encloses P (realification (reducedSampleMatrix M N))
intervalCheck P C = true
```

The unchanged realification has blocks `Re H`, `-Im H`, `Im H`, `Re H`.
With `v = splitVector z`, the existing checker pays its full radius row
penalty and gives

\[
\operatorname{Re}(z^*\widetilde H z)\ge-\tau Q_G(v),
\qquad\tau=(P.\mathrm{tolerance}:\mathbb R),
\]

where `G` is exactly the real cast of `P.metric`. Combining inequalities
proves `checked_reduced_arithmeticValue_lower`:

\[
A(f)\ge-\tau Q_G(v)-8\Delta_{M,N}E(f').
\]

No identity metric, nonsingularity, or upper norm bound on `G` is implicit.
The guard proves nonnegative tolerance, not a metric comparison. Source
enclosure and checker acceptance remain different obligations. Entry
rounding is already paid by the checker and is not charged again in
`Delta`.

If a future producer derives reduced enclosures from ambient enclosures,
it must propagate radii with absolute coefficients. A valid radius for
the anchored entry is the sum of the four ambient radii. Signed
cancellation is valid for centers but not for error allowances. The
present theorem requires enclosure of the complete reduced matrix itself.

## Cell-energy control and identity metric

The existing grid covering estimate puts each restricted cell in an
interval of length `h_N = 8/(N+1)`. Its actual measure is therefore at
most `h_N`, including endpoint cells. For each cell the integral norm
bound and Cauchy--Schwarz give

\[
\left|\int_{C_i}u\right|^2
\le |C_i|\int_{C_i}|u|^2.
\]

The cells are disjoint and cover the restricted measure. Summing gives

\[
\sum_i|m_i|^2\le\frac8{N+1}\int_I|u|^2.
\]

This holds for every complex L1/L2 input, including inputs outside the
span of cell indicators. It divides by no cell mass. The general proof
is in [CellMomentEnergy.lean](../../FunctionalAnalysis/CellMomentEnergy.lean);
the source grid's measure bound is in
[WeilConductorThreeCellEnergy.lean](WeilConductorThreeCellEnergy.lean).

Deleting coordinate zero cannot increase the sum of squared norms, and

\[
Q_{I_{2N}}(\operatorname{splitVector}z)=\sum_i|z_i|^2
\]

has no extra factor of two. For `u=f'`, the existing support theorem
identifies interval and whole-line derivative energy. This proves
`reducedDerivativeMoments_energy_le`.

When the packet has the explicit rational identity `P.metric = 1`, its
nonnegative tolerance permits multiplication of the energy estimate.
`checked_identity_reduced_arithmeticValue_lower` consequently gives

\[
A(f)\ge-B(M,N,\tau)E(f'),
\qquad B(M,N,\tau)=8\Delta_{M,N}+\frac{8\tau}{N+1}.
\]

The definition is `constrainedApproximationBudget`. An arbitrary packet
cannot use this scalar budget without a separate comparison of its actual
metric. The coordinate identity is not relabeled as a physical Green metric.

## Unconditional parameter selection

For every real `cap >= 0` and `epsilon > 0`,
`exists_constrainedApproximationBudget_lt` proves

\[
\exists M,N\in\mathbb N\;\forall\tau\in[0,\mathrm{cap}],
\qquad B(M,N,\tau)<\epsilon.
\]

First choose `M` with `8/(4M+1) < epsilon/2`; the implementation extracts
such a cutoff from the existing approximation-index theorem. Now `L_M`
is a fixed finite nonnegative real. Choose `N` with

\[
\frac{64L_M+8\mathrm{cap}}{N+1}<\frac\epsilon2.
\]

The exact algebraic theorem `constrainedApproximationBudget_eq` states

\[
B(M,N,\tau)=\frac8{4M+1}+\frac{64L_M+8\tau}{N+1},
\]

which completes the uniform selection. The indices depend on the cap
and accuracy, not on the test or the tolerance chosen within that cap.

This theorem selects approximation parameters. It neither constructs
source enclosures and accepted certificates nor bounds the tolerance
required by any actual certificate. A tolerance growing proportionally
to `N+1` would not acquire a vanishing price merely from mesh refinement.

## Conditional joint production and the sign limit

`arithmeticValue_nonneg_of_reduced_certificates` has one joint hypothesis.
For every natural `k`, it requires natural `M,N,r`, a rational packet `P`,
and a certificate with Gram rows indexed by `Fin r`, such that

1. `P.metric = 1`.
2. `P` encloses the realification of the actual `reducedSampleMatrix M N`.
3. `intervalCheck P C = true`.
4. `B(M,N,P.tolerance) <= (1/2)^k`.

All four facts concern the same indices and packet. Separate existence
of accurate approximations and unrelated accepted packets is insufficient.
These finite data are independent of the eventual compact C1 test.

For any fixed admissible `f`, the stage bound then gives

\[
-2^{-k}E(f')\le A(f)\qquad\text{for every }k.
\]

The energy is nonnegative and finite. The existing
`RationalEnclosureCertificates.nonneg_of_scaled_dyadic_lower` implies
`0 <= A(f)`, including zero energy without division. This is a conditional
return to the original arithmetic value. Its universal joint-production
hypothesis is not established by coordinate reduction, parameter selection,
or the examples in this increment. It is not an implemented all-accuracy
sign producer.

## Hostile controls and remaining production

The generic `ZeroSumQuadraticReduction.TwoPointGreen` matrix is
`[[0,-1],[-1,0]]`. It is negative on `(1,1)` and positive on `(1,-1)`.
Pivot-zero reduction gives `[2]`, whose realification is `2 I_2`.
Two copies of each rational unit row give an explicit Gram certificate
with zero radius and tolerance. This demonstrates concrete checker
acceptance on the complete complex constrained space while the ambient
matrix is indefinite. It is a Green-kernel algebra fixture, not an
arithmetic sample-matrix enclosure.

Section 7 of the historical
[WeilConductorThreeRadiusFourScrewGreen.lean](WeilConductorThreeRadiusFourScrewGreen.lean)
at the starting revision records a written analytical actual-source
obstruction for finite gamma cutoffs through `10^19`. Its compact smooth
real odd witness already has a mean-zero derivative. The argument retains
the original signed prime inventory and uses simultaneous prime-phase
approximation. Its original analytical, computational, and verification
scope is preserved: this increment does not turn that written result or
its numerical records into a new kernel-checked theorem. It supplies an
essential hostile check against assuming that zero-sum reduction makes
every finite-gamma source positive. A coarse constrained matrix can be
positive while a truncated continuous form has negative directions; the
complete approximation allowance must remain present.

The subsequent
[actual two-cell certificate](WeilConductorThreeTwoCellCertificate.md)
proves the stronger source enclosure

\[
-\frac{29}{500}\le\mathrm{partialSourceKernel}(8,4)\le-\frac{17}{500}.
\]

At `M=8,N=1`, the actual sample points are `-2,2`, and exact complex zero-sum
reduction gives `-2*partialSourceKernel 8 4`. The supplied logarithmic,
square-root, gamma-constant, and exponential observations justify a reduced
real packet with center `(1/8) I_2`, radius `(1/16) I_2`, zero tolerance, and
Gram factor `(1/4) I_2`. Its source enclosure and acceptance by the existing
checker are proved separately. The original full-space matrix remains
indefinite.

The arithmetic return retains
`8 * kernelApproximationBudget 8 1 * E(f')`. The fixed packet's complete
budget exceeds `2^(-3)`, so this finite certificate does not provide the
joint all-precision producer. Its verification evidence is recorded at its
own exact source.

The continuous identity `B_(-|x-y|/2)(f') = E(f)` already follows from the
established absolute-kernel theorem. It does not bound derivative energy
uniformly by physical energy. The present budget retains `E(f')`, which
suffices for the conditional limit for each fixed test. Finite physical
metric comparisons and an all-precision sequence of actual enclosures and
accepted certificates with vanishing complete deficit remain separate tasks.

Exact congruence by columns `e_(i+1)-e_0` is an alternative description of
the finite-sum reduction, not an independent proof. Approximate moments
or approximately zero-sum coordinates would need a new residual bound;
the exact moments used here need none. No novel paper theorem, independent
external review, all-window or all-conductor sign, zero-side explicit
formula identification, or RH/GRH conclusion is claimed.

## Declaration and dependency correspondence

| Local declarations | Exact role |
| --- | --- |
| `reducedSampleMatrix`, `reducedCellMoments` | Actual source and exact moment specialization of pivot-zero coordinates. |
| `arithmeticValue_reduced_finite_error` | Existing arithmetic finite error returned through exact complex reduction. |
| `checked_reduced_arithmeticValue_lower` | Unchanged checker with arbitrary packet metric retained. |
| `reducedDerivativeMoments_energy_le` | Cell-mass and derivative-support return. |
| `constrainedApproximationBudget`, `constrainedApproximationBudget_eq` | Full identity-metric price and its algebraic decomposition. |
| `checked_identity_reduced_arithmeticValue_lower` | Accepted identity-metric packet returned to the original arithmetic source. |
| `exists_constrainedApproximationBudget_lt` | Unconditional index selection for a supplied nonnegative tolerance cap. |
| `arithmeticValue_nonneg_of_reduced_certificates` | Conditional sign implication from one exact joint dyadic production hypothesis. |

Primary maintained inputs at the starting revision are
[WeilConductorThreeKernelReturn.lean](WeilConductorThreeKernelReturn.lean),
[WeilConductorThreeKernelEnclosure.lean](WeilConductorThreeKernelEnclosure.lean),
and [RationalEnclosureCertificates.lean](../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RationalEnclosureCertificates.lean).
The new generic reduction and cell-energy modules have their own adjacent
source records. The existing finite checker, source hypotheses, pins,
and prior verification boundaries are unchanged.

## Verification evidence

The initial combined target build completed with failure after 547.536
seconds. Its root-source SHA-256 was
`f98797356ff4140b9bd087a23bc5ea9fa494dd276a4ecdc457c98a47606765df`.
The grid-specialization dependency built successfully in that attempt.
The only root-source error was the entrywise cast of the rational identity
matrix: simplification left the diagonal indicator conditional under a
rational-to-real cast. The corrected proof splits the equality of the two
indices explicitly. No statement, hypothesis, matrix, or error coefficient
changed.

The corrected complete target subsequently passed on 2026-11-20:

```text
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeConstrainedCertificates
```

The command exited zero in 317.222 seconds, with all 8953 required build jobs
successful or replayed and all four new source hashes unchanged throughout.
Lean reported 302 seconds for the final module. The compiler revision is
`5045d0056413266e57c625dcd7c365b10e377c52`; the toolchain and dependencies are
the unchanged pins above. The only new-source warning in the build closure
is the already recorded unused-section-variable warning in `sum_cellEnergy`.
No new-source warning was emitted for the combined module.

| New source | SHA-256 |
| --- | --- |
| `CellMomentEnergy.lean` | `d630e976c527552166a774ab3e1e53a533a7407c1b0d381852a28d79a5e362dd` |
| `ZeroSumQuadraticReduction.lean` | `eb844cf052e893f9ff8bb4cf9f07b665f630386a555ec5a212274e4a0ff6b609` |
| `WeilConductorThreeCellEnergy.lean` | `6e2d470cf5d43820a0ea44b95efa44a62a04b44f70b126f0c5d099ccfb18469a` |
| `WeilConductorThreeConstrainedCertificates.lean` | `66ae266082e65b81b597ae18a175cfcbd102c6a10c800828b8ccae15e81656a3` |

The separate transitive axiom audit passed on 2026-11-20 in 189.092 seconds.
It imported the compiled combined target in a new Lean invocation and used
`#print axioms` on all 37 public declarations, with exit status zero, no
missing declaration, and unchanged source hashes. Their axiom sets are
subsets of `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`,
native evaluation axiom, or additional mathematical axiom was reported.
The inventory consists of 28 named theorems and nine definitions. The two
private coordinate-elimination helpers are dependencies of the audited
public pairing theorem. This imported-environment axiom audit is distinct
from fresh replay of every proof term.

Supporting-module builds and diagnostic failures are recorded in their
adjacent records. Fresh proof-term replay is **NOT_RUN** for this new
increment.

The preceding arithmetic-return increment at the starting revision had
a successful source build and 54-public-declaration axiom audit. Its two
fresh-replay attempts remained operationally incomplete, one during
dependency import and one at a legacy/module-system compatibility guard.
Those historical outcomes neither verify nor reject the new proofs.
Independent external mathematical review and an independently implemented
kernel checker are **NOT_RUN**. Separate AI-assisted read-only source reviews
checked the exact complex constraint, metric normalization, source return,
joint production hypothesis, hostile control, and remaining mathematical
obligations. Those reviews are not independent proofs or fresh kernel replay.
