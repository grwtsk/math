# Arithmetic return of the conductor-three integrated kernel

Local attribution: grwtsk contributors.

Maintained source:
[WeilConductorThreeKernelReturn.lean](WeilConductorThreeKernelReturn.lean).
Starting source: `grwtsk/math@5624239ab1a35db87d6eb8aa7771f68ad7117b74`.
Publication and exact-source verification evidence are coordinated in
[issue #1839](https://github.com/grwtsk/math/issues/1839).

## Exact statement and mathematical consumer

The consumer is the existing
`GRWTSK.NumberTheory.WeilQuadraticForm.primitiveArithmeticValue` in
[WeilConductorFrontier.lean](WeilConductorFrontier.lean), applied to the
native quadratic Dirichlet character modulo three and the radius-four
window. Its definition is unchanged. The principal theorem is
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen.arithmeticValue_eq_sourceKernelForm`:

```lean
primitiveArithmeticValue modThreeQuadratic modThreeQuadratic_isPrimitive
  modThreeQuadratic_nonprincipal 4 f = (sourceKernelForm (deriv f)).re
```

The hypotheses are `ContDiff ℝ 1 f`, `HasCompactSupport f`, and
`tsupport f ⊆ Icc (-4) 4`. They describe a globally C1 complex-valued
function with compact support in the closed source window. The character's
primitivity, nonprincipality, odd parity, and real-valuedness are established
for the actual native character, not added as unproved mathematical
assumptions. Neither parity nor real-valuedness is imposed on the test
function. No second derivative of the test function is required.

The whole-line identity precedes the interval restriction. In particular,
this is a proof of the source-return obligation named in
[the finite-enclosure record](WeilConductorThreeKernelEnclosure.md), not a
new definition that renames the arithmetic form as the integrated kernel.

## Primary analytical argument

Use the unchanged definitions

\[
C_f(r)=\int_{\mathbb R}\overline{f(t)}f(t+r)\,dt,
\qquad E(f)=\int_{\mathbb R}|f(t)|^2\,dt,
\]

\[
c=\mathrm{gammaConstant}(3,1),\qquad
\kappa(r)=\frac{e^{-3r/2}}{1-e^{-2r}},\qquad
b_n=\mathrm{primeWeight}(n)\operatorname{Re}\overline{\chi_3(n)}.
\]

The integrated source is exactly

\[
g(t)=-\frac c2|t|-\int_0^\infty\kappa(r)\min(|t|,r)\,dr
 +\sum_{n\in\mathrm{activePrimePowers}(4)}b_n(|t|-\log n)_+.
\]

All prime weights, signs, and the finite prime-power cutoff remain the
maintained source values.

### Two half-line integrations by parts

[KernelIntegrationByParts.lean](../../FunctionalAnalysis/KernelIntegrationByParts.lean)
proves a bilinear identity for compact C1 complex functions `F,G`:

\[
\int_{\mathbb R^2}F'(x)(x-y-r)_+G'(y)\,dx\,dy
 =-\int_{\mathbb R}F(y+r)G(y)\,dy.
\]

For fixed `x`, apply the fundamental theorem of calculus on the left
half-line to `(x-r-y)G(y)`. The product vanishes at its finite endpoint,
and compact support removes the infinite endpoint. This reduces the inner
integral to `integral_{y≤x-r} G(y)`. An integrable half-space indicator and
Fubini permit the other order of integration; the right-half-line integral
of `F'` is `-F(y+r)`. Compact support and continuity justify each product
integral. The reflected ramp follows by exchanging the two coordinates.

The positive and negative ramps sum to `(|x-y|-r)_+` for `r≥0`.
Set `F=conj f`, `G=f`; differentiation commutes with complex conjugation.
The two shifted products are conjugates. Thus, with the whole-line
conjugate-first pairing `B_K`,

\[
B_{(|\cdot|-r)_+}(f')=-2\operatorname{Re}C_f(r),\qquad
B_{|\cdot|}(f')=-2E(f).
\]

The second formula is the first at `r=0`. The elementary identity
`min(|t|,r)=|t|-(|t|-r)_+` gives

\[
B_{-\min(|\cdot|,r)}(f')
 =2E(f)-2\operatorname{Re}C_f(r)
 =E\bigl(f(\cdot+r)-f\bigr).
\]

The last equality follows by expanding the squared complex norm and using
translation invariance of Lebesgue measure. It retains both complex
orientations; replacing a conjugate correlation by the same correlation
without taking its real part would be incorrect.

### The entire gamma integral

[WeilConductorThreeKernelGamma.lean](WeilConductorThreeKernelGamma.lean)
establishes the actual product-space interchange. For `r>0` and every real
displacement `t`, the maintained gamma remainder estimate at cutoff zero
implies

\[
0\le\kappa(r)\min(|t|,r)\le\tfrac12e^{-r/2}.
\]

Consequently the absolute value of the triple integrand is bounded by

\[
\tfrac12e^{-r/2}|u(x)||u(y)|,
\]

which is integrable on `(0,∞) × ℝ × ℝ` for `u∈L1(ℝ)`.
This covers both the singular small-lag region and the infinite lag tail.
For a compact C1 test, `u=f'` is integrable. Fubini and the preceding minimum
identity therefore prove

\[
B_{-\int_0^\infty\kappa(r)\min(|\cdot|,r)dr}(f')
 =\int_0^\infty\kappa(r)E(f(\cdot+r)-f)\,dr.
\]

The integrability of the original `gammaCorrectionDensity 1 f` is proved
as a consequence. Lean's totalized value for a nonintegrable integral is
not used to conceal a missing domain argument.

### Character coefficients and source equality

[DirichletModThreeCharacterProperties.lean](DirichletModThreeCharacterProperties.lean)
proves the native character has conductor three, is primitive and odd, and
has zero imaginary part at every residue. It follows that

\[
\operatorname{Re}(\overline{\chi_3(n)}C_f(\log n))
 =\operatorname{Re}\overline{\chi_3(n)}\operatorname{Re}C_f(\log n).
\]

Each active prime-power index is at least two, so its logarithm is
nonnegative and the hinge identity applies. The finite sum returns
precisely the negative of the existing `twistedPrime` term, including its
factor of two. The absolute-value term returns `cE(f)`. The gamma term
returns the complete original correction. Adding them gives the
complex-cast whole-line arithmetic identity.

Finally `tsupport (deriv f) ⊆ tsupport f`. The product integrand vanishes
outside `[-4,4] × [-4,4]`, so restricting the product measure gives the
stated `sourceKernelForm` equality without a leftover boundary term.

## Returning the finite inequalities

Let `H^{M,N}` and `Δ_{M,N}` be the unchanged exact sample matrix and complete
gamma-plus-spatial budget in
[WeilConductorThreeKernelEnclosure.lean](WeilConductorThreeKernelEnclosure.lean).
Write `m_i(f') = integral_{C_i} f'` for its exact cell moments and
`A(f)=primitiveArithmeticValue χ₃ hp hn 4 f`.

`arithmeticValue_finite_error` proves

\[
\left|A(f)-\operatorname{Re}\bigl(m(f')^*H^{M,N}m(f')\bigr)\right|
 \le8\Delta_{M,N}E(f').
\]

The interval derivative energy equals whole-line derivative energy by the
same support argument. `arithmeticValue_uniform_finite_approximation`
then has the genuine uniform quantifiers

\[
\forall\epsilon>0\;\exists M,N\;\forall f\text{ in the stated domain},
\quad |A(f)-\operatorname{Re}(m^*Hm)|\le\epsilon E(f').
\]

The indices depend on the requested accuracy, not on the individual test.
This proves approximation, not positive matrix acceptance at every scale.

`checked_arithmeticValue_lower` retains both explicit hypotheses of the
existing rational checker: the packet really encloses the exact source
matrix, and its Boolean check succeeds. With `v` the real/imaginary split
of the exact moments, it concludes

\[
A(f)\ge-\tau v^TGv-8\Delta_{M,N}E(f').
\]

The packet's full metric and tolerance are retained. The one-cell
acceptance control specializes this to the genuine bound
`A(f) ≥ -8 Δ_{M,0} E(f')`; it does not discard the approximation penalty.
Compact-support FTC also proves `integral f'=0`, and exact cell partitioning
therefore proves `sum_i m_i(f')=0`.

## Declaration correspondence and source comparison

All public declarations below are in
`GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourScrewGreen`.

| Declarations | Argument or maintained source |
| --- | --- |
| `integrable_deriv_of_compactC1`, `integrable_deriv_sq_of_compactC1` | Continuous compact derivative; Mathlib L1/L2 and support APIs. |
| `shift_energy_eq` | Squared-norm expansion and translation invariance; same elementary argument as `OddShiftEnergySine.physical_shiftEnergy_eq_two_energy_sub_two_re_correlation` and `GammaThreeBandFloor.shiftEnergy_eq_two_energy_sub_two_re_correlation`, both under `GRWTSK.NumberTheory.WeilQuadraticForm`, at the starting revision. |
| `kernelForm_hinge_deriv`, `kernelForm_abs_deriv`, `kernelForm_neg_minimum_deriv` | Specialization of the new generic half-line FTC identities to `conj f,f`. |
| `integrable_gammaCorrectionDensity_of_compactC1`, `kernelForm_gamma_deriv` | New gamma product-space majorant/interchange followed by the minimum identity. |
| `kernelForm_prime_deriv` | Existing finite `primeHinges_eq_sum`, the proved real-valued native character, and the hinge identity. |
| `integrable_sourceKernel_deriv`, `wholeline_sourceKernel_deriv` | Sum of the actual integrable absolute, gamma, and prime components. |
| `deriv_eq_zero_outside_window`, `sourceKernelForm_deriv_eq_wholeline`, `arithmeticValue_eq_sourceKernelForm`, `window_deriv_energy_eq` | Derivative-support inclusion and restriction of Lebesgue measure; original arithmetic consumer. |
| `integral_deriv_eq_zero_of_compactC1`, `sum_derivativeCellMoments_eq_zero` | Half-line FTC and the existing exact finite-cell partition identity. |
| `checked_arithmeticValue_lower`, `oneCell_arithmeticValue_lower`, `arithmeticValue_finite_error`, `arithmeticValue_uniform_finite_approximation` | Return of the existing finite-enclosure theorems through the new source identity, preserving their complete budgets. |

The private zero-lag correlation computation repeats the elementary
`correlation_zero_eq_energy` argument in
[WeilCorrelationCellEvaluation.lean](WeilCorrelationCellEvaluation.lean).
These shared elementary arguments are disclosed rather than described as
independent proofs. They are reproduced locally to avoid importing the
unrelated larger analytic closures of the historical modules.

The exact underlying APIs and pins are Lean `v4.34.1` and
Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, from the unchanged project
manifest. These are local consequences of existing integration theory and
the maintained arithmetic definitions, not a claimed new paper theorem or
a formalization of an unspecified edition of a paper. The supporting
modules have their own adjacent declaration-level source records.

## Hostile checks and limits

As an analytic sign check, two integrations by parts replace a displacement
kernel `K(x-y)` by `-K''(x-y)` in the distributional description. The second
derivative of `|t|` is twice the point mass at zero, while the hinge at
positive lag has point masses at both orientations of that lag. These
recover the absolute and correlation signs above. This check explains the
same identity by another analytic description; no second Lean proof or
independent external verification is claimed.

The character simplification is false for a general complex coefficient:
if `chi=i` and `C=i`, `Re(conj chi * C)=1`, while
`Re(conj chi)*Re(C)=0`. Odd character parity alone cannot replace the
proved real-valuedness used here.

The approximation error is `E(f')`, not `E(f)`. The absolute-kernel theorem
already gives the continuous Green identity
`B_{-|x-y|/2}(f')=E(f)`. That identity does not convert an `E(f')` error into
an `E(f)` error. Oscillatory compact tests can have arbitrarily large
derivative energy relative to their physical energy, even with fixed
support. A bound in the physical energy requires a proved identification
or comparison of the finite packet metric on its actual coordinates and
control of any unresolved or mixed terms introduced by that comparison.

The exact sample matrix still has zero diagonal. Its positivity on all
unconstrained vectors is not supplied by derivative mean-zero, and no
positive sign is inferred from approximation alone. The follow-up
[constrained-certificate module](WeilConductorThreeConstrainedCertificates.md)
proves an exact complex zero-sum coordinate reduction and returns the
unchanged rational checker from that reduced matrix to this arithmetic
source. Its cell-energy bound controls an identity packet metric by
`8/(N+1) * E(f')`. The later
[actual two-cell certificate](WeilConductorThreeTwoCellCertificate.md)
supplies one accepted zero-tolerance packet at `M=8,N=1`, together with its
exact source enclosure and arithmetic lower bound. Its complete gamma and
spatial approximation cost remains positive. A joint all-precision producer
is still required.

One valid sign route can keep derivative energy throughout: for each fixed
test `f`, all-accuracy approximation gives an error tending to zero because
`E(f')` is finite. If accepted certificates at the same approximating indices
also have `tau_j * v_j(f)^T G_j v_j(f) -> 0`, the checked lower bounds imply
`A(f) >= 0` by taking the limit. Merely having `tau_j -> 0` is insufficient
when the coordinate metric factor is uncontrolled. This route needs no
uniform inequality `E(f') <= C E(f)`, but the required joint family of sign
certificates with vanishing total deficit has not been produced. The follow-up now
formalizes the conditional dyadic implication with a joint enclosure,
acceptance, identity-metric and complete-budget hypothesis at each stage.
Its separate parameter-selection theorem does not establish that production
hypothesis. Verification evidence for the later module is recorded at its
own exact source; the checks below retain their original scope.

This increment fixes conductor three and radius four. It does not prove a
cofinal all-window/all-conductor sign producer, identify the arithmetic
form with a zero-side explicit formula on a proved test space, or establish
RH/GRH. No neural-model, waveform, or Langlands analogy is used as a proof
premise.

## Verification evidence

The exact final source **passed**

```text
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilConductorThreeKernelReturn
```

under the unchanged Lean `4.34.1` and Mathlib pins. The successful combined
run completed in 376.593 seconds; the new return module emitted no warnings.
Existing dependency warnings retain their own scope. Its Lean source
SHA-256 is
`3e46690ff33eafa32fe283de07b6395d4bf1a44f2dd76cf7d796ff503cd35f68`.
Earlier authoring passes exposed scalar simplification, function-valued
integrability, and type-annotation issues. The corrected source passed
without changing its statements or weakening its hypotheses.

The aggregate transitive axiom audit **passed** for all **54 public source
declarations** across the four new modules: 50 named theorem declarations,
three definitions, and one abbreviation. It completed in 800.143 seconds
with every reported axiom set contained in `propext`, `Classical.choice`,
and `Quot.sound`. There were no missing declarations or unexpected axioms.
All four Lean source hashes matched the successful build throughout the
audit. The source contains no proof placeholders or added axioms.

Fresh proof-term replay was attempted separately and remains
**operationally incomplete**:

| Attempt | Actual outcome |
| --- | --- |
| Unchanged private dependency environment, with new-declaration absence guards | Timed out after 600.067 seconds while importing the base, before any declaration inventory or replay verdict. |
| Complete new proof bodies read from exact compiled files, with exported dependency imports | Failed after 72.546 seconds at Lean's legacy/module-system compatibility guard, before declaration replay. |

Neither attempt changed the source or object files, substituted axioms,
altered module headers, or produced a rejected mathematical proof. Neither
is reported as a successful fresh replay or relabeled as an unperformed
check. The ordinary source build and transitive axiom audit remain the
completed formal evidence. A structural inventory of compiled constants
is not a proof replay.

Separate AI-assisted source reviews checked the actual coefficients,
complex orientations, domain, gamma interchange, and all finite budgets.
The distributional comparison above is an analytic sign check, not a
second formal proof. Independent external mathematical review and an
independently implemented kernel checker are **NOT_RUN**. Full exact-source
publication evidence and the preserved earlier verification history are
recorded in [issue #1839](https://github.com/grwtsk/math/issues/1839).
