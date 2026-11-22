# Finite sampling of the native conductor-three kernel

Local attribution: grwtsk contributors.

Maintained source: [WeilConductorThreeKernelSampling.lean](WeilConductorThreeKernelSampling.lean).
The namespace remains
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.
The unchanged source definitions are shared through
[WeilConductorThreeKernel.lean](WeilConductorThreeKernel.lean), extracted from
[WeilConductorThreeRadiusFourScrewGreen.lean](WeilConductorThreeRadiusFourScrewGreen.lean)
at `grwtsk/math@7dcbe07202484a7fdff0d631f6b1649ad64680c2`.
Publication and source-bound verification are tracked in
[issue #1839](https://github.com/grwtsk/math/issues/1839).

## Exact source and mathematical consumer

Let `g_M = partialSourceKernel M`, with the native conductor-three gamma
constant `c = gammaConstant 3 1`, rates `a_m = 2*m + 3/2`, and the literal
radius-four arithmetic inventory. The finite kernel is

\[
g_M(t)=-\frac{c|t|}{2}
-\sum_{m<M}\frac{1-e^{-a_m|t|}}{a_m^2}
+\sum_{n\in\mathrm{activePrimePowers}(4)}b_n(|t|-\log n)_+,
\qquad
b_n=\mathrm{primeWeight}(n)\operatorname{Re}(\overline{\chi_3(n)}).
\]

`primeHinges_eq_sum` derives this last sum from the actual `twistedPrime`
definition. Its factor two cancels exactly against the source hinge's
factor one half. The prime-power cutoff, original character and arithmetic
signs do not change. `activePrimePowers` is a finite integer inventory; zero
von-Mangoldt or character coefficients contribute zero. This theorem does
not replace that source by a newly enumerated list.

The mathematical consumer is
[WeilConductorThreeKernelEnclosure.lean](WeilConductorThreeKernelEnclosure.lean):
it combines the complete gamma-tail bound with this spatial sampling bound,
then returns a checked rational matrix inequality to the actual integrated
kernel form. A finite gamma expansion is still an infinite-rank integral
kernel. The spatial sampling here supplies the separate finite-rank step.

## Complete argument for the approximation bound

Set

\[
L_M=\frac{|c|}{2}+\sum_{m<M}a_m^{-1}+
\sum_{n\in\mathrm{activePrimePowers}(4)}|b_n|.
\]

Every term is nonnegative, and the formal development proves
`partialLipschitzConstant_nonneg` directly. Absolute arithmetic weights
appear only in this error allowance; they do not replace the signed
coefficients of `g_M`.

For real `a,b <= 0`, the inequality `exp(x) >= 1+x` and the identity
`exp(b)-exp(a)=exp(b)(1-exp(a-b))`, when `a <= b`, give
`|exp(a)-exp(b)| <= |a-b|`. Consequently

\[
\left|\frac{1-e^{-\alpha|s|}}{\alpha^2}
-\frac{1-e^{-\alpha|t|}}{\alpha^2}\right|
\le\alpha^{-1}|s-t|\quad(\alpha>0).
\]

The maps `t -> |t|` and `t -> max(t,0)` are each 1-Lipschitz, so every
arithmetic hinge has Lipschitz constant one. Summing the actual finite
terms and retaining each coefficient gives the global theorem

\[
|g_M(s)-g_M(t)|\le L_M|s-t|.
\]

It also yields the bundled Lipschitz property, hence continuity and
measurability, and the two-coordinate bound

\[
|g_M(x-y)-g_M(x'-y')|
\le L_M(|x-x'|+|y-y'|).
\]

No Lipschitz regularity of the full gamma kernel at the diagonal is
assumed. The finite head is used precisely so this finite constant is
available; the complete omitted gamma integral has its separate bound.

## Actual finite grid, including boundaries

For `N : Nat`, use `N+1` cells. Their exact midpoint representatives are

\[
c_i=-4+\frac{8(i+1/2)}{N+1},\quad 0\le i\le N.
\]

The total cell selector is

\[
i_N(x)=\min\left(\left\lfloor\frac{x+4}{8}(N+1)\right\rfloor_+,N\right).
\]

The floor is the natural-number floor. Clamping handles `x=4`, whose
unclamped floor would be `N+1`; the left endpoint maps to cell zero.
The theorem `gridCell_error` proves

\[
|x-c_{i_N(x)}|\le\frac4{N+1}\qquad(-4\le x\le4).
\]

The selector and each cell are proved measurable. Its definition outside
the fixed window is harmless because the consumer uses restricted Lebesgue
measure on `[-4,4]`. No sample of the input function is substituted for its
integral over a cell.

Define the actual sample matrix

\[
H^{M,N}_{ij}=g_M(c_i-c_j).
\]

`sampleMatrix_error` proves the uniform bound on **every point of the
square**, not only its sample points:

\[
|g_M(x-y)-H^{M,N}_{i_N(x),i_N(y)}|
\le\frac{8L_M}{N+1}.
\]

`sampleMatrix_uniform_approximation` proves that every positive requested
spatial accuracy admits a natural grid size, and every larger grid size
satisfies that accuracy on the whole square. It uses the Archimedean
property to choose an index; it is not an executable transcendental
arithmetic evaluator or a matrix-positivity certificate producer.

Together with the source-exact tail theorem in
[WeilConductorThreeKernelTruncation.lean](WeilConductorThreeKernelTruncation.lean),
this supplies the uniform full-source allowance

\[
\frac1{4M+1}+\frac{8L_M}{N+1}.
\]

Rational entry enclosures are a further computational layer. The sample
matrix entries here are the exact real expressions. Their enclosure radii
must still cover the native logarithms, gamma constant, exponential values
and all arithmetic sums.

## Source comparison and hostile checks

The source is even and vanishes at zero; both properties are proved for
`g_M`. Consequently every sample matrix is real symmetric with zero
diagonal. The `N=0` one-cell matrix is exactly zero. Its approximation cost
is still charged, and this control is not a positivity theorem for the
full source.

In fact a real symmetric matrix with zero diagonal and a nonzero
`(i,j)` entry cannot be positive semidefinite on all vectors: choose a
vector supported at `i,j` with opposite signs if that entry is positive,
or the same signs if it is negative. The resulting quadratic value is
negative. Thus raw uncentered source samples cannot supply a general
zero-tolerance sign certificate merely by increasing the grid. The
mean-zero derivative constraints, a centered kernel or an appropriate
metric comparison must be retained when pursuing an arithmetic sign.
This observation is a mathematical countercheck, not a new Lean theorem
in this file.

The kernel-form error is measured in the actual L2 mass of its input `u`.
If `u=f'`, this is derivative energy. A bound by that norm does not imply
a bound by the physical energy of `f`; Poincare's inequality has the wrong
direction for that substitution. The derivative/source identity,
physical Green metric, full-domain comparison, and arithmetic lower sign
remain separate obligations. No finite grid, accepted example, or
all-accuracy approximation proves RH/GRH.

## Provenance and evidence

This is a local mathematical consequence of the pinned source definitions,
using elementary exponential, absolute-value, finite-sum and floor
inequalities. No external paper theorem is imported as a new axiom, and
no global novelty is claimed. The original source's historical analytic
arguments retain their own evidence status; this file formalizes the
specific spatial approximation described above.

Lean source SHA256:
`6e5c6ff6f4cc6263c7de0b3cf5ec15170640db9fd3649c1c196317b650a0ac0c`.

The exact source passed pinned `lake build` and a separate direct Lean
elaboration with no source diagnostics, under Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`. The final combined build and
150-declaration transitive axiom audit passed; every audited axiom set is
contained in `propext`, `Classical.choice`, and `Quot.sound`. Fresh
Lean-kernel replay is reported separately, with its actual status and the
published source revision in issue #1839. Independent external
mathematical review and a separately implemented kernel checker are
**NOT_RUN**. Source review and a second script are not independent proofs.
