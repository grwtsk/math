# Actual compact tests and the archimedean Fourier moments

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 42A38, 33B15.
Coordination: math#1801, scope comment 6815617192.

## Exact scope and evidence

`WeilFourierMoments.lean` is a SOURCE_PROOF_CANDIDATE. All its authored
proofs are filled in, but elaboration, fresh kernel replay, transitive axiom
auditing, independent analytical review and numerical functional certification
are NOT_RUN. The status includes all imported local Gamma/digamma and moment
candidates. Publication and source-text checks cannot promote them to accepted
proofs. No novelty is claimed; originality is UNASSESSED.

The increment supplies the actual-test premises left in
`ArchimedeanMomentBounds.squared_spectrum_finite_enclosure`. It uses the
existing `GRWTSK.NumberTheory.WeilNegativeWitness.Admissible`, whose definition
is `ContDiff R infinity f AND HasCompactSupport f`. In the pinned ContDiff
hierarchy, infinity is the smooth order; top is analytic order. The domain is
not silently changed to analytic compactly supported tests.

The test is an arbitrary complex-valued compact smooth function. There is no
reality or evenness restriction. Its unchanged underlying function is placed
in Mathlib Schwartz space with `HasCompactSupport.toSchwartzMap`; no cutoff,
projection, Gaussian replacement or supplied Fourier moment is introduced.
The temporary Schwartz representation is private and is not a new arithmetic
source or alternative Weil test domain.

## 1. Exact transform normalization

For real t define the literal plus-sign integral

    F_f(t) = integral_R f(x) exp(i*t*x) dx.                    (1)

The code writes the exponent as Complex.ofReal(t*x)*I. The pinned Mathlib
transform is

    mathlibFourier(f)(xi) = integral_R exp(-2*pi*i*x*xi) f(x) dx.

Consequently

    F_f(t) = mathlibFourier(f)(t/(-2*pi)).                    (2)

The theorem `plusFourier_eq_mathlib` proves (2) by equality of integrands;
`t/(-2*pi)=-t/(2*pi)`, and -2*pi*x*(t/(-2*pi))=t*x. The pi factor is nonzero.
The identity as an equality of the defined integrals holds for any function,
but all analytical applications below separately prove convergence.

For an admissible f, compact support and continuity make f integrable. The
complex exponential in (1) has norm one. The theorem
`admissible_plusFourier_integrable` explicitly supplies absolute convergence
at every real t. Thus the literal integral is not being used through its
nonintegrable default value.

## 2. Zeroth moment from the actual unchanged test

Let s be the Schwartz representation of f. Mathlib supplies that the Fourier
transform of s is Schwartz, hence its squared norm is integrable. Composition
with t -> t/(-2*pi) preserves integrability because this dilation is nonzero.
Thus the normalized density

    w_f(t) = |F_f(t)|^2/(2*pi)                              (3)

is integrable, as well as measurable (indeed continuous). Haar change of
variables gives the absolute Jacobian 2*pi, not -2*pi. Plancherel gives

    integral_R |mathlibFourier(s)(xi)|^2 dxi
      = integral_R |s(x)|^2 dx.

Combining this equality with (2), (3) proves

    integral_R w_f(t) dt = integral_R |f(x)|^2 dx.           (4)

The proof uses the primary `SchwartzMap.integral_norm_sq_fourier` theorem,
not an assumed energy-isometry field. Both integrability and the identity
are supplied in the new source. The theorem at the canonical test domain is
`admissible_zeroth_moment`.

## 3. Second moment: the derivative sign and energy

The Schwartz derivative d=SchwartzMap.derivCLM C C s has underlying function
`deriv f`. Both f and its derivative are integrable, and f is differentiable.
The primary Fourier derivative theorem therefore applies:

    mathlibFourier(f')(xi) = 2*pi*i*xi * mathlibFourier(f)(xi).

Substitution xi=t/(-2*pi) proves the literal identity

    F_(f')(t) = -i*t*F_f(t).                               (5)

The declaration `admissible_plusFourier_deriv` retains the complex multiplier,
so the sign is checked before squaring it. The second-moment proof does not
infer differentiability or boundary behavior from a totalized derivative.
They come from the smooth unchanged Schwartz representative.

Taking squared norms in (5), using |i|=1, gives pointwise

    w_(f')(t) = t^2*w_f(t).                                (6)

Applying the already proved zeroth-moment result to the Schwartz derivative
supplies both integrability of the right side of (6) and its exact integral:

    integral_R t^2*w_f(t) dt = integral_R |f'(x)|^2 dx.      (7)

In particular, no assumption of a finite spectral moment remains. Both
physical squared norms are also proved integrable directly from Schwartz
membership. These are `admissible_spectral_integrability`,
`admissible_energy_integrable`, and `admissible_second_moment`.

As a comparison, direct integration by parts in (1) gives the same -i*t
multiplier because compact support removes its boundary term. Applying
Plancherel then gives (7). This is a comparison of the source normalization,
not an independent verification of the Lean file or an independent RH proof.

## 4. Consumer: actual-test archimedean enclosure

Retain the previous source definitions, for sigma>0:

    C(sigma,y) = Re psi(sigma+i*y)-Re psi(sigma),
    S_N(sigma,y) = sum_(0<=n<N) y^2/[(sigma+n)*((sigma+n)^2+y^2)],
    b(s)=1/(4*s^3)+1/(8*s^2),
    H_N(sigma)=sum_(0<=n<N)1/(sigma+n).

The actual spectral source is

    A(q,sigma,f) = integral_R w_f(t) *
      [log(q/pi)+Re psi(sigma+i*t/2)] dt.                    (8)

This is exactly `ArchimedeanMomentBounds.spectralFunctional` evaluated on the
literal spectrum of the actual test. The prior source establishes its
integrability from the moments, which this increment now supplies.

The finite approximation retains the entire baseline:

    A_(T,N) = [log(q/pi)+Re psi(sigma)] * integral_R |f|^2
              + integral_[-T,T] w_f(t)*S_N(sigma,t/2) dt.   (9)

`finiteApproximation_eq_physical_baseline` proves this form of the existing
finiteApproximation using (4), without introducing a second arithmetic
functional. Only the centered increment is truncated. No sign is assumed for
the baseline and no truncation of the mass is made.

For every q>=1, sigma>0, T>0, natural N, and every admissible f, applying the
previous source-exact enclosure with (3), (4), (7) proves

    0 <= A(q,sigma,f)-A_(T,N)(q,sigma,f)
      <= [b(sigma+N)+H_N(sigma)/T^2] * integral_R |f'|^2.   (10)

This is `admissible_archimedean_enclosure`. There is no supplied spectral
measurability, weighted-integrability, Fourier identity or moment premise.
The conductors q>=1 include conductor-one zeta, and sigma=1/4 or 3/4 supplies
both Dirichlet parity cases. Character/source identification in the complete
explicit formula is not manufactured by this local gamma calculation.

At N=1 and T=8, exact rational simplification yields the coefficients
541/2000 (sigma=1/4) and 1783/16464 (sigma=3/4). The source regression concludes
(10) for the actual admissible test with these coefficients times its
physical derivative energy; it does not test True or assume an arbitrary
spectrum meets the desired moment identity.

## 5. Remaining obligations and hostile checks

The complete Weil form still contains the signed prime powers and both zeta
pole orientations. Their source identities, character phases and the
inverse-character convention are unchanged. An archimedean truncation
estimate alone does not prove full-form positivity or RH/GRH.

The finite core in (9) is an integral. No certified quadrature, rational
baseline enclosure or actual nontrivial numerical certificate is executed
here. All-test/all-window positivity and universal certificate existence
remain separate mathematical obligations. The new result removes the test
moment supplier, not those obligations.

Checks against common false inferences:

- Replacing t/(-2*pi) by t changes both phase and normalization. The exact
  integrand identity (2) and complex derivative identity (5) detect this.
- Replacing the plus derivative factor -i*t by +i*t is false, although taking
  squared norms alone would hide the sign. Equation (5) is retained explicitly.
- A complex test need not have even spectral density; no parity/evenness of
  w_f is used. The ordinary real dilation covers the entire frequency line.
- Smooth order infinity is essential: analytic compact support would change
  the intended domain. All canonical tests are kept as given by Admissible.
- No Gaussian is asserted to have compact support. Schwartz functions are an
  intermediate proof domain; the published consumer uses the exact canonical
  compact predicate.
- Modulation preserves support and physical mass but can increase derivative
  energy. Equation (10) does not give a bound uniform over fixed support/mass
  without further derivative control.
- For f=0 both moments and the error vanish. N=0 is allowed; it leaves just
  the whole baseline. T>0 is retained to exclude division at zero.
- Imported local source candidates are not retrospectively promoted by these
  new source files or by a clean token scan.

## 6. Primary sources and verification

Inspected source main: 4363be401abeff44c5620dc3be90f757731c84c9.
Complete root tree: c7bc0f42f3ea073a36b51cc5bdc0073aff7f74c6.
Lean: leanprover/lean4:v4.34.1.
Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
Root AGENTS/CONTRIBUTING and default imports/CI/pin objects retain the inspected
identities. Direct AGENTS reads in GRWTSK, NumberTheory, the L-function parent
and this theorem subtree returned 404. No default imports or pins are changed.

Primary exact formal sources at that mathlib pin:

1. Moritz Doll, SchwartzSpace.Basic, blob
   5b4a9c9cc147973695cfef46415308ed215424ed:
   HasCompactSupport.toSchwartzMap, SchwartzMap.memLp, SchwartzMap.integrable.
2. Moritz Doll, SchwartzSpace.Deriv, blob
   18cc33e524832ffe005cf62621bb41c68a8de39f:
   SchwartzMap.derivCLM and its definitional evaluation.
3. Sebastien Gouezel and Moritz Doll, SchwartzSpace.Fourier, blob
   e626c83f68490fd8146d057a8ecca1f6863dfbc6:
   the Schwartz Fourier instance, fourier_coe, integral_norm_sq_fourier.
4. David Loeffler and upstream contributors, FourierTransform.lean, blob
   afb0c9ea45eb72c9c8a6b9db78f5deceb52a7193:
   Real.fourier_real_eq_integral_exp_smul.
   FourierTransformDeriv.lean, blob 54260b884936c9479ca6a212d8b1c2bb8f4db37f:
   Real.fourier_deriv, with all three of its hypotheses supplied.
5. MeasureTheory/Measure/Haar/NormedSpace.lean, blob
   d50348a103a29f7340c390e50696ddefaaef9dd3:
   Measure.integral_comp_div and Integrable.comp_div.
6. Local WeilNegativeWitness.lean, blob
   abd27c24bfac7422baa4c2482ae71e684b558ff0: Admissible, smooth-order migration v2.
7. Local ArchimedeanMomentBounds.lean, blob
   72d24ec6c700c124fcf09d6632f2f56d1010fb66:
   spectrumWeight, spectralFunctional, finiteApproximation,
   squared_spectrum_finite_enclosure and its actual digamma dependencies.

The mathematical argument is the classical Plancherel/differentiation
application to the supplied actual-source estimate. This is a local
consequence/adaptation of primary formal sources, not a claim to have directly
formalized an uninspected historical paper. Upstream implementations retain
their Apache-2.0 authorship/licenses through imports. Local work is AI-assisted
and attributed to grwtsk contributors. No independent reviewer is identified.
The eleven public theorems have individual adjacent provenance records.

The source-bound command, an obligation and NOT_RUN, is:

    lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilFourierMoments.lean

Audit signatures and transitive axioms of all eleven public theorems and
the reused local Gamma/digamma/moment source chain. The absence of admitted
proof text here does not establish that audit. No local Lean/Lake or verified
canonical skills checkout was available; the prescribed proof-automation
skill returned 404 at Noe main 8b50d43323f27bb13bdcae9f2e2b4a81c9895827.
Dependent execution was stopped. Ordinary source authoring, exact scalar
checks and authenticated publication do not establish kernel acceptance.
