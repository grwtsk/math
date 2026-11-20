# Integral-kernel approximation and certified quadratic bounds

Local source attribution: grwtsk contributors.

## Mathematical consumer

[`IntegralKernelApproximation.lean`](IntegralKernelApproximation.lean) supplies a quantitative
analytic step needed by the proposed certified Weil-window computations: a proved uniform
error bound for an actual integral kernel gives a proved error bound for its quadratic pairing.
The theorem does not assume the operator-norm estimate it is meant to justify.

This source is independent of a particular Weil distribution, PSWF basis, neural approximation,
or trace formula. Its consumer must supply the actual kernel approximation and its uniform error
certificate. The theorem can then transfer a certified approximate quadratic value to an interval
containing the true value.

## Definitions, hypotheses, and argument

For a finite measure `μ` on `X`, the kernel pairing is

\[
 B_K(u,v)=\int_{X\times X}\overline{u(x)}K(x,y)v(y)\,d(\mu\times\mu)(x,y).
\]

It is conjugate-linear in its first input. This convention must be accounted for when connecting
it to a Weil form that uses linearity in the first input. `kernelForm_eq_iterated` proves the
corresponding iterated integral by Fubini when the weighted kernel is integrable.

`integrable_integrand_of_bound` proves integrability from an almost-everywhere strongly measurable,
uniformly bounded kernel and two integrable inputs. The error theorem also accepts integrability
of the two actual weighted kernels directly; it does not conceal a domain or convergence assumption.

For `‖K(x,y)‖ ≤ ε`, the pointwise estimate is

\[
 |\overline{u(x)}K(x,y)v(y)|\le\epsilon |u(x)||v(y)|.
\]

Integrating, applying the triangle inequality, and factoring the product integral proves

\[
 |B_K(u,v)|\le\epsilon\left(\int_X |u|\,d\mu\right)
                           \left(\int_X |v|\,d\mu\right).
\]

For the quadratic case, the source proves the required Cauchy--Schwarz estimate directly.
Integrating `2ab ≤ a²+b²` over `X×X`, with `a=|u(x)|` and `b=|u(y)|`, yields

\[
 2\left(\int_X |u|\,d\mu\right)^2
 \le 2\mu(X)\int_X |u|^2\,d\mu.
\]

Both integrability of `u` and finiteness of the square-norm integral are explicit Lean hypotheses.
Thus no totalized nonintegrable integral is used as a numerical certificate. Applying the result
to the difference kernel and using integral linearity proves

\[
 |B_K(u,u)-B_L(u,u)|
 \le \epsilon\mu(X)\int_X |u|^2\,d\mu.
\]

The real-part theorem gives the corresponding lower and upper bounds even if the kernels are not
Hermitian. For Hermitian kernels the real-part values coincide with the real quadratic values;
the latter identification is a separate mathematical fact, not an implicit hypothesis here.

## The actual finite interval

`interval_kernelForm_error` takes the measure to be Lebesgue measure restricted to `[-A,A]`, with
`A ≥ 0`, and accepts a pointwise error bound for every pair of points in that square. It proves

\[
 |B_K(u,u)-B_L(u,u)|
 \le (2A\epsilon)\int_{-A}^A |u(x)|^2\,dx.
\]

The factor `2A` comes from the proved interval mass, not from a supplied norm estimate. It cannot
generally be removed: a constant error kernel and constant test function attain the bound.
Equivalently, the integral operator with constant kernel `ε` on an interval of length `2A`
acts on the constant function by multiplication by `2Aε`. This is a direct analytic check of
the normalization; no separate Lean theorem about operator norms is claimed.

## Declaration correspondence

All names have prefix `GRWTSK.FunctionalAnalysis.IntegralKernelApproximation`.

| Declarations | Content |
| --- | --- |
| `integrand`, `kernelForm` | The specified complex product-integral pairing. |
| `integrand_norm_le` | The pointwise majorant. |
| `integrable_integrand_of_bound` | Integrability derived from a measurable bounded kernel and L1 inputs. |
| `norm_kernelForm_le_l1` | The L1 estimate from the pointwise majorant. |
| `l1_sq_le_mass_l2` | The proved finite-measure Cauchy--Schwarz inequality. |
| `norm_kernelForm_le_l2` | The quadratic estimate with total measure. |
| `kernelForm_sub`, `norm_kernelForm_sub_le_l2` | Linearity in the kernel and the actual difference estimate. |
| `kernelForm_eq_iterated` | Fubini with the precise integrability hypothesis. |
| `kernelForm_real_sandwich` | Certified lower and upper real-part bounds. |
| `interval_mass`, `interval_kernelForm_error` | Actual Lebesgue interval mass and the `2Aε` specialization. |

## Sources and proof comparison

This is a locally authored consequence of standard integration inequalities. It is not presented
as a new analytic theorem or as a formalization of a paper's Weil-operator identification.
The source uses Mathlib revision `d13f23b723b8a846827a245b89c10fc7d3f11612`:

- [Product integration](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Prod.lean),
  Floris van Doorn: `Integrable.mul_prod`, `integral_prod`, `integral_prod_mul`, `integral_fun_fst`,
  and `integral_fun_snd`.
- [Bochner integration](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/Bochner/Basic.lean),
  Zhouhang Zhou, Yury Kudryashov, Sébastien Gouëzel, and Rémy Degenne:
  the triangle inequality for integrals, integral monotonicity, and integral linearity.
- [Lebesgue measure](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Measure/Lebesgue/Basic.lean),
  Johannes Hölzl, Sébastien Gouëzel, and Yury Kudryashov: `Real.volume_real_Icc_of_le`.

An alternative analytic route is Cauchy--Schwarz against the constant function followed by the
Schur bound for the kernel. The implemented proof instead establishes the needed scalar
Cauchy--Schwarz inequality by integrating an elementary square inequality. Both routes use the
same finite-measure and integrability hypotheses. The source does not claim independent
mathematical validation merely because two routes are described.

## Remaining return to the Weil problem

To apply this result to an integrated Weil kernel, first prove the exact distribution-to-kernel
identity, select its test-function domain and boundary conditions, and identify the appropriate
input (`u=f'` if the source identity uses derivatives). The bound is then on the corresponding
derivative energy; it is not automatically an L2 bound for `f` itself. The original unbounded
Weil operator and a bounded integrated kernel remain different mathematical objects.

A finite matrix approximation still needs certified discretization and complement bounds.
Passing to an infinite space additionally needs the stated density, convergence, or cofinal
arguments and a producer of the certificates at the required scales. This source proves none
of RH, GRH, the global Weil positivity criterion, or the existence of an all-scale positive
certificate family.

## Verification

The source with SHA-256
`cc0c752f874cd6c69f1f846ed2b398ff0f2a504c376e35341ffcc268cf2a7e6b`
compiled in a fresh Lean process on 2026-11-20 under Lean `4.34.1` and the unchanged Mathlib
revision above, without warnings or errors. All 13 named declarations, including all 11 theorems,
were inspected using transitive `#print axioms`. Each depends only on `propext`,
`Classical.choice`, and `Quot.sound`; there is no `sorryAx` or additional mathematical axiom.

Standalone checker implemented independently of Lean: `NOT_RUN`. A separate
AI-assisted mathematical review checked the product-measure argument, the
sharp interval factor, conjugation convention, integrability, and real-part
sandwich, finding no blocking issue. It did not establish a Weil-kernel identity.
Whole-repository build and remote CI: `NOT_RUN`.

## Final integration verification

This exact source was included in the successful combined `leanchecker --fresh`
replay of the eight core modules and their imported constants under the pinned
Lean toolchain. The combined declaration audit also passed, with no axioms outside
`propext`, `Classical.choice`, and `Quot.sound`. This is a fresh Lean-kernel replay,
not a checker implemented independently of Lean. The coordinating
[issue #1839](https://github.com/grwtsk/math/issues/1839) binds the final publication
to these source hashes and records the separately checked binary-character module.
