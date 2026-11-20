# Energy bounds for exact finite-partition moments

Local attribution: grwtsk contributors.

Maintained source: [CellMomentEnergy.lean](CellMomentEnergy.lean).
Starting repository revision:
[`2bf99849996eb52b0281003945e5f75fe08dbce6`](https://github.com/grwtsk/math/commit/2bf99849996eb52b0281003945e5f75fe08dbce6).
The mathematical consumer is the tolerance term in a certified finite
quadratic bound evaluated on the existing exact cell moments. The module
gives that term a quantitative input-energy price without identifying a
coordinate norm with a continuous Green norm.

## Exact domain and argument

Let `mu` be a finite measure, `cell : X -> iota` a total assignment to a
finite index type, and `C_i = {x | cell x = i}` measurable. For a complex
input `u`, assume both `u` and `norm u ^ 2` are integrable. Use the existing
moment convention

\[
m_i(u)=\operatorname{featureMoment}(\mu,\operatorname{cellFeature}(cell),u,i)
      =\int_{C_i}u\,d\mu.
\]

The norm of an integral is bounded by the integral of the norm. The existing
`IntegralKernelApproximation.l1_sq_le_mass_l2`, applied to `mu.restrict C_i`,
then gives

\[
|m_i(u)|^2\le\mu(C_i)\int_{C_i}|u|^2\,d\mu.
\]

Here the displayed masses are real-valued finite measures. The Lean result
`norm_setIntegral_sq_le_mass_energy` proves this statement for a single set.
It never divides by the set's measure, so null cells need no exceptional
branch. The inherited integrability hypotheses ensure that all integrals
used by the argument are genuine integrable expressions.

The fibers of a total assignment are disjoint and their union is the whole
space. Mathlib's `integral_iUnion_fintype` therefore gives

\[
\sum_i\int_{C_i}|u|^2\,d\mu=\int_X|u|^2\,d\mu.
\]

After summing the single-cell inequalities, any verified upper bound
`mu.real C_i <= h` yields

\[
\boxed{\sum_i|m_i(u)|^2\le h\int_X|u|^2\,d\mu.}
\]

The pointwise cell-mass bound is the only mesh premise. Neither a
point-sampled input nor an assumption that `u` lies in the indicator span
is used. The theorem applies to every input satisfying the stated L1/L2
conditions.

## Public declarations and maintained inputs

All declarations are in namespace
`GRWTSK.FunctionalAnalysis.CellMomentEnergy`.

| Declaration | Mathematical content |
| --- | --- |
| `norm_setIntegral_sq_le_mass_energy` | Squared norm of one exact set integral is bounded by its real measure times its squared-norm integral. |
| `sum_cellEnergy` | The complete measurable finite partition preserves total energy. |
| `sum_cellMoment_sq_le_weighted_energy` | The moment bound retains every cell's actual measure. |
| `sum_cellMoment_sq_le` | A uniform upper bound on the cell measures supplies the final moment-energy bound. |

The proof reuses the existing Cauchy--Schwarz estimate in
[IntegralKernelApproximation.lean](IntegralKernelApproximation.lean) and
the exact moment identification in
[FiniteKernelEnclosure.lean](FiniteKernelEnclosure.lean), at the starting
revision. It does not introduce a second moment definition or matrix checker.
The general finite-partition integration theorem comes from Mathlib
[`Integral/Bochner/Set.lean`](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Bochner/Set.lean).
The unchanged dependencies use Lean `4.34.1` and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Source comparison, hostile checks and scope

The single-cell inequality is the ordinary Cauchy--Schwarz inequality
against the constant function. For a positive-mass cell and an input
constant on that cell, equality holds. Its measure factor cannot be
dropped without changing the normalization. The partition sum is also
consistent with zero-mass cells and empty fibers.

For the real/imaginary split of the exact complex moment vector, its
identity-matrix quadratic is `sum_i |m_i|^2`. This gives an input-energy
bound for that particular coordinate metric. A different packet metric
still requires its own exact relation or comparison. No general metric is
silently replaced by the identity.

Specializing `u=f'` preserves derivative energy. Fixed compact support does
not uniformly bound derivative energy by the physical energy of `f`.
Such a comparison is unnecessary when this estimate is used only to make
a tolerance contribution vanish for each fixed test. Acceptance and
source enclosure of the required finite certificates remain separate
mathematical obligations.

This is a local consequence of maintained integration results, not a
claimed new paper theorem. The comparison with Cauchy--Schwarz describes
the shared analytic argument, not an independent proof or independent
external review. No arithmetic positivity or RH/GRH result is asserted.

## Verification evidence

The exact source passed
`lake build GRWTSK.FunctionalAnalysis.CellMomentEnergy` on 2026-11-20,
with exit status zero and its compiled module produced. The source SHA-256
is `d630e976c527552166a774ab3e1e53a533a7407c1b0d381852a28d79a5e362dd`.
The compiler reported an unused-section-variable warning for
`sum_cellEnergy`, whose finite-measure and decidable-equality parameters
are stronger than that auxiliary identity needs. There are no added axioms,
proof placeholders, or native evaluation steps.

The enclosing increment's aggregate transitive axiom audit is recorded in
[WeilConductorThreeConstrainedCertificates.md](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeConstrainedCertificates.md).
Fresh proof-term replay, independent external mathematical review, and an
independently implemented checker are **NOT_RUN** for this increment.
